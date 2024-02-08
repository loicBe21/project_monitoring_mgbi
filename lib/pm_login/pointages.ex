defmodule PmLogin.Pointages do
 @moduledoc """
  The Pointages context.
  """
  #import Ecto.Changeset
  import Ecto.Query, warn: false
  alias PmLogin.Repo

  alias PmLogin.Pointages.LaunchType
  alias PmLogin.Pointages.TaskTracing
  alias PmLogin.Monitoring



   def create_task_tracing_from_list(data_list) do
    IO.inspect data_list
    [id, date, start_time, end_time, duration, is_pause, launch_type_id, task_id, user_id, is_recorded, inserted_at, updated_at] = data_list

    %TaskTracing{
      date: date,
      start_time: start_time,
      end_time: end_time,
      duration: duration,
      is_pause: is_pause,
      is_recorded: is_recorded,
      launch_type_id: launch_type_id,  # Assurez-vous que la colonne de lancement est présente dans votre requête SQL
      task_id: task_id,
      user_id: user_id ,
      inserted_at: inserted_at ,
      updated_at: updated_at,
      id: id ,

      # Vous pouvez également inclure d'autres champs en fonction de votre schéma
    }
  end



   #manomboka eto nenaa aaaaa


  #fecth all type lauch
  def get_lauch_types do
    Repo.all(LaunchType)
  end

  def play_changeset(attrs) do
    TaskTracing.play_changeset(%TaskTracing{} , attrs)
  end

  def pause_changeset(attrs) do
    TaskTracing.pause_changeset(%TaskTracing{} , attrs)
  end

  def end_changeset(task_trace , attrs) do

    TaskTracing.end_changeset(task_trace , attrs)

  end




#PmLogin.Monitoring.get_current_record_by_user_id(94)




  def get_current_record_by_user_id(id_user) do
    sql_query = "SELECT * FROM v_current_record WHERE user_id= $1"
    params = [id_user]
    case Ecto.Adapters.SQL.query(Repo, sql_query, params) do
      {:ok, %Postgrex.Result{rows: rows} } ->
        # La requête a réussi, vous pouvez utiliser le résultat
        #Repo.all(TaskTracing, rows)
        if Enum.empty?(rows) do
          # Aucun enregistrement trouvé, peut-être renvoyer une liste vide ou un autre indicateur
          []
        else
          # Convertir les résultats en struct TaskTracing si nécessaire

           Enum.map(rows, &create_task_tracing_from_list/1)
        end
      {:error, reason} ->
        IO.inspect reason
    end
  end


  def get_details_task_in_record(id_user) do
    case get_current_record_by_user_id(id_user) do
      record_list ->
        if Enum.empty?(record_list) do
          nil
        else
          current_record = hd(record_list)
          curent_task_in_record_id = current_record
        end
    end

  end


  defp save_task_trace(task_trace_changeset) do
     case Repo.insert(task_trace_changeset) do
        {:ok, _record} ->
          IO.puts "mety eeeee"
        {:error, task_trace_changeset} ->
          task_trace_changeset
      end
  end


   defp update_task_trace(task_trace_changeset) do
     case Repo.update(task_trace_changeset) do
        {:ok, _record} ->
          IO.puts "mety eeeee"
        {:error, task_trace_changeset} ->
          task_trace_changeset
      end
  end


  defp persist_play_trace(task_trace_changest) do
    task_id = Ecto.Changeset.get_field(task_trace_changest, :task_id)
    user_id = Ecto.Changeset.get_field(task_trace_changest, :user_id)
    task =Monitoring.get_task_with_card!(task_id)
    if task.status_id == 1 do
      save_task_trace(task_trace_changest)
      Monitoring.put_task_to_ongoing(task,user_id)
    else
      save_task_trace(task_trace_changest)
    end

  end

  defp task_is_recordable(task) do
    valid_status_ids = [4, 5, 6]
    not Enum.member?(valid_status_ids, task.status_id)
  end


  def start_record(task_id , user_id) do
   #get current record_task
    task =Monitoring.get_task_with_card!(task_id)
    case task_is_recordable(task) do
      true ->
        current_task_record = get_current_record_by_user_id(user_id)
        if Enum.empty?(current_task_record) do
            persist_play_trace(play_changeset(%{task_id: task_id , user_id: user_id}))
        else
            on_record_task = hd(current_task_record)
            update_task_trace(end_changeset( on_record_task, %{end_time: NaiveDateTime.local_now()}))
            persist_play_trace(play_changeset(%{task_id: task_id , user_id: user_id}))
        end
        {:ok, "Enregistrement de tâche commencé avec succès"}
      false ->
        # La tâche ne peut pas être enregistrée, renvoyer une erreur
        {:error, "La tâche ne peut pas être enregistrée dans son état actuel"}

    end

  end




  def stop_record(task_id ,  user_id , reason_id) do

    current_task_record = get_current_record_by_user_id(user_id)
    on_record_task = hd(current_task_record)
    if task_id == on_record_task.task_id do
      IO.puts "makato zany aloha ***********"
      IO.inspect on_record_task
      val = update_task_trace(end_changeset( on_record_task, %{end_time: NaiveDateTime.local_now()}))
      IO.inspect val
      save_task_trace(pause_changeset(%{task_id: task_id , user_id: user_id , launch_type_id: reason_id}))

    else
      IO.inspect task_id
      IO.inspect on_record_task.task_id
    end
  end


  def list_my_record(user_id , today) do
    #today = NaiveDateTime.local_now() |> NaiveDateTime.to_date()
    sql_query =  "SELECT * FROM task_tracings where date=$1  and user_id= $2"
    case Ecto.Adapters.SQL.query(Repo, sql_query, [today , user_id]) do
      {:ok, %Postgrex.Result{rows: rows} } ->
        # La requête a réussi, vous pouvez utiliser le résultat
        #Repo.all(TaskTracing, rows)
        if Enum.empty?(rows) do
          # Aucun enregistrement trouvé, peut-être renvoyer une liste vide ou un autre indicateur
          []
        else
          # Convertir les résultats en struct TaskTracing si nécessaire
           Enum.map(rows, &create_task_tracing_from_list/1)
        end
      {:error, reason} ->
        IO.inspect reason
    end
  end

  def list_my_record_todays(user_id) do
      today = NaiveDateTime.local_now() |> NaiveDateTime.to_date()
      list_my_record(user_id , today)
  end









  def test_changeset() do
     attrs = %{task_id: 789, user_id: 101}
     attrs_1 = %{task_id: 789, user_id: 101 ,duration: -99 ,is_pause: false ,is_recorded: true , launch_type_id: 2 , start_time: NaiveDateTime.utc_now , end_time: NaiveDateTime.add(NaiveDateTime.utc_now , 30) }
     TaskTracing.play_changeset(%TaskTracing{} , attrs)
     TaskTracing.update_changeset(%TaskTracing{} , attrs_1)
  end


end
