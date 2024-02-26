defmodule PmLoginWeb.SaisieTempsController do

  use PmLoginWeb, :controller
  alias Phoenix.LiveView

  def index(conn, _params) do
    LiveView.Controller.live_render(conn , PmLoginWeb.SaisieTemps.IndexLive ,session: %{"curr_user_id" => get_session(conn, :curr_user_id)}, router: PmLoginWeb.Router)
  end
  def index_admin(conn, _params) do
    LiveView.Controller.live_render(conn , PmLoginWeb.SaisieTemps.AdminIndexLive ,session: %{"curr_user_id" => get_session(conn, :curr_user_id)}, router: PmLoginWeb.Router)
  end

   def details(conn, %{"id" => id , "date" => date }) do
    LiveView.Controller.live_render(conn , PmLoginWeb.SaisieTemps.SaisieDetailsLive ,session: %{"curr_user_id" => get_session(conn, :curr_user_id) , "user_id" => id , "date" => date}, router: PmLoginWeb.Router)
  end


end
