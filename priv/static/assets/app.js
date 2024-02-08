(() => {
  var __create = Object.create;
  var __defProp = Object.defineProperty;
  var __defProps = Object.defineProperties;
  var __getOwnPropDesc = Object.getOwnPropertyDescriptor;
  var __getOwnPropDescs = Object.getOwnPropertyDescriptors;
  var __getOwnPropNames = Object.getOwnPropertyNames;
  var __getOwnPropSymbols = Object.getOwnPropertySymbols;
  var __getProtoOf = Object.getPrototypeOf;
  var __hasOwnProp = Object.prototype.hasOwnProperty;
  var __propIsEnum = Object.prototype.propertyIsEnumerable;
  var __defNormalProp = (obj, key, value) => key in obj ? __defProp(obj, key, { enumerable: true, configurable: true, writable: true, value }) : obj[key] = value;
  var __spreadValues = (a, b) => {
    for (var prop in b || (b = {}))
      if (__hasOwnProp.call(b, prop))
        __defNormalProp(a, prop, b[prop]);
    if (__getOwnPropSymbols)
      for (var prop of __getOwnPropSymbols(b)) {
        if (__propIsEnum.call(b, prop))
          __defNormalProp(a, prop, b[prop]);
      }
    return a;
  };
  var __spreadProps = (a, b) => __defProps(a, __getOwnPropDescs(b));
  var __markAsModule = (target) => __defProp(target, "__esModule", { value: true });
  var __commonJS = (cb, mod) => function __require() {
    return mod || (0, cb[Object.keys(cb)[0]])((mod = { exports: {} }).exports, mod), mod.exports;
  };
  var __reExport = (target, module, desc) => {
    if (module && typeof module === "object" || typeof module === "function") {
      for (let key of __getOwnPropNames(module))
        if (!__hasOwnProp.call(target, key) && key !== "default")
          __defProp(target, key, { get: () => module[key], enumerable: !(desc = __getOwnPropDesc(module, key)) || desc.enumerable });
    }
    return target;
  };
  var __toModule = (module) => {
    return __reExport(__markAsModule(__defProp(module != null ? __create(__getProtoOf(module)) : {}, "default", module && module.__esModule && "default" in module ? { get: () => module.default, enumerable: true } : { value: module, enumerable: true })), module);
  };

  // node_modules/@shopify/draggable/lib/draggable.bundle.js
  var require_draggable_bundle = __commonJS({
    "node_modules/@shopify/draggable/lib/draggable.bundle.js"(exports, module) {
      (function webpackUniversalModuleDefinition(root, factory) {
        if (typeof exports === "object" && typeof module === "object")
          module.exports = factory();
        else if (typeof define === "function" && define.amd)
          define("Draggable", [], factory);
        else if (typeof exports === "object")
          exports["Draggable"] = factory();
        else
          root["Draggable"] = factory();
      })(window, function() {
        return function(modules) {
          var installedModules = {};
          function __webpack_require__(moduleId) {
            if (installedModules[moduleId]) {
              return installedModules[moduleId].exports;
            }
            var module2 = installedModules[moduleId] = {
              i: moduleId,
              l: false,
              exports: {}
            };
            modules[moduleId].call(module2.exports, module2, module2.exports, __webpack_require__);
            module2.l = true;
            return module2.exports;
          }
          __webpack_require__.m = modules;
          __webpack_require__.c = installedModules;
          __webpack_require__.d = function(exports2, name, getter) {
            if (!__webpack_require__.o(exports2, name)) {
              Object.defineProperty(exports2, name, { enumerable: true, get: getter });
            }
          };
          __webpack_require__.r = function(exports2) {
            if (typeof Symbol !== "undefined" && Symbol.toStringTag) {
              Object.defineProperty(exports2, Symbol.toStringTag, { value: "Module" });
            }
            Object.defineProperty(exports2, "__esModule", { value: true });
          };
          __webpack_require__.t = function(value, mode) {
            if (mode & 1)
              value = __webpack_require__(value);
            if (mode & 8)
              return value;
            if (mode & 4 && typeof value === "object" && value && value.__esModule)
              return value;
            var ns = Object.create(null);
            __webpack_require__.r(ns);
            Object.defineProperty(ns, "default", { enumerable: true, value });
            if (mode & 2 && typeof value != "string")
              for (var key in value)
                __webpack_require__.d(ns, key, function(key2) {
                  return value[key2];
                }.bind(null, key));
            return ns;
          };
          __webpack_require__.n = function(module2) {
            var getter = module2 && module2.__esModule ? function getDefault() {
              return module2["default"];
            } : function getModuleExports() {
              return module2;
            };
            __webpack_require__.d(getter, "a", getter);
            return getter;
          };
          __webpack_require__.o = function(object, property) {
            return Object.prototype.hasOwnProperty.call(object, property);
          };
          __webpack_require__.p = "";
          return __webpack_require__(__webpack_require__.s = 66);
        }([
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            var _AbstractEvent = __webpack_require__(64);
            var _AbstractEvent2 = _interopRequireDefault(_AbstractEvent);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            exports2.default = _AbstractEvent2.default;
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            var _AbstractPlugin = __webpack_require__(60);
            var _AbstractPlugin2 = _interopRequireDefault(_AbstractPlugin);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            exports2.default = _AbstractPlugin2.default;
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            var _closest = __webpack_require__(51);
            Object.defineProperty(exports2, "closest", {
              enumerable: true,
              get: function() {
                return _interopRequireDefault(_closest).default;
              }
            });
            var _requestNextAnimationFrame = __webpack_require__(49);
            Object.defineProperty(exports2, "requestNextAnimationFrame", {
              enumerable: true,
              get: function() {
                return _interopRequireDefault(_requestNextAnimationFrame).default;
              }
            });
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            var _SensorEvent = __webpack_require__(44);
            Object.keys(_SensorEvent).forEach(function(key) {
              if (key === "default" || key === "__esModule")
                return;
              Object.defineProperty(exports2, key, {
                enumerable: true,
                get: function() {
                  return _SensorEvent[key];
                }
              });
            });
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            var _Sensor = __webpack_require__(47);
            var _Sensor2 = _interopRequireDefault(_Sensor);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            exports2.default = _Sensor2.default;
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            var _DragEvent = __webpack_require__(14);
            Object.keys(_DragEvent).forEach(function(key) {
              if (key === "default" || key === "__esModule")
                return;
              Object.defineProperty(exports2, key, {
                enumerable: true,
                get: function() {
                  return _DragEvent[key];
                }
              });
            });
            var _DraggableEvent = __webpack_require__(13);
            Object.keys(_DraggableEvent).forEach(function(key) {
              if (key === "default" || key === "__esModule")
                return;
              Object.defineProperty(exports2, key, {
                enumerable: true,
                get: function() {
                  return _DraggableEvent[key];
                }
              });
            });
            var _Plugins = __webpack_require__(12);
            Object.keys(_Plugins).forEach(function(key) {
              if (key === "default" || key === "__esModule")
                return;
              Object.defineProperty(exports2, key, {
                enumerable: true,
                get: function() {
                  return _Plugins[key];
                }
              });
            });
            var _Sensors = __webpack_require__(6);
            Object.keys(_Sensors).forEach(function(key) {
              if (key === "default" || key === "__esModule")
                return;
              Object.defineProperty(exports2, key, {
                enumerable: true,
                get: function() {
                  return _Sensors[key];
                }
              });
            });
            var _Draggable = __webpack_require__(37);
            var _Draggable2 = _interopRequireDefault(_Draggable);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            exports2.default = _Draggable2.default;
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            var _Sensor = __webpack_require__(4);
            Object.defineProperty(exports2, "Sensor", {
              enumerable: true,
              get: function() {
                return _interopRequireDefault(_Sensor).default;
              }
            });
            var _MouseSensor = __webpack_require__(46);
            Object.defineProperty(exports2, "MouseSensor", {
              enumerable: true,
              get: function() {
                return _interopRequireDefault(_MouseSensor).default;
              }
            });
            var _TouchSensor = __webpack_require__(43);
            Object.defineProperty(exports2, "TouchSensor", {
              enumerable: true,
              get: function() {
                return _interopRequireDefault(_TouchSensor).default;
              }
            });
            var _DragSensor = __webpack_require__(41);
            Object.defineProperty(exports2, "DragSensor", {
              enumerable: true,
              get: function() {
                return _interopRequireDefault(_DragSensor).default;
              }
            });
            var _ForceTouchSensor = __webpack_require__(39);
            Object.defineProperty(exports2, "ForceTouchSensor", {
              enumerable: true,
              get: function() {
                return _interopRequireDefault(_ForceTouchSensor).default;
              }
            });
            var _SensorEvent = __webpack_require__(3);
            Object.keys(_SensorEvent).forEach(function(key) {
              if (key === "default" || key === "__esModule")
                return;
              Object.defineProperty(exports2, key, {
                enumerable: true,
                get: function() {
                  return _SensorEvent[key];
                }
              });
            });
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            var _SnappableEvent = __webpack_require__(18);
            Object.keys(_SnappableEvent).forEach(function(key) {
              if (key === "default" || key === "__esModule")
                return;
              Object.defineProperty(exports2, key, {
                enumerable: true,
                get: function() {
                  return _SnappableEvent[key];
                }
              });
            });
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            var _CollidableEvent = __webpack_require__(23);
            Object.keys(_CollidableEvent).forEach(function(key) {
              if (key === "default" || key === "__esModule")
                return;
              Object.defineProperty(exports2, key, {
                enumerable: true,
                get: function() {
                  return _CollidableEvent[key];
                }
              });
            });
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            var _SortableEvent = __webpack_require__(27);
            Object.keys(_SortableEvent).forEach(function(key) {
              if (key === "default" || key === "__esModule")
                return;
              Object.defineProperty(exports2, key, {
                enumerable: true,
                get: function() {
                  return _SortableEvent[key];
                }
              });
            });
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            var _SwappableEvent = __webpack_require__(30);
            Object.keys(_SwappableEvent).forEach(function(key) {
              if (key === "default" || key === "__esModule")
                return;
              Object.defineProperty(exports2, key, {
                enumerable: true,
                get: function() {
                  return _SwappableEvent[key];
                }
              });
            });
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            var _DroppableEvent = __webpack_require__(33);
            Object.keys(_DroppableEvent).forEach(function(key) {
              if (key === "default" || key === "__esModule")
                return;
              Object.defineProperty(exports2, key, {
                enumerable: true,
                get: function() {
                  return _DroppableEvent[key];
                }
              });
            });
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            var _Announcement = __webpack_require__(62);
            Object.defineProperty(exports2, "Announcement", {
              enumerable: true,
              get: function() {
                return _interopRequireDefault(_Announcement).default;
              }
            });
            Object.defineProperty(exports2, "defaultAnnouncementOptions", {
              enumerable: true,
              get: function() {
                return _Announcement.defaultOptions;
              }
            });
            var _Focusable = __webpack_require__(59);
            Object.defineProperty(exports2, "Focusable", {
              enumerable: true,
              get: function() {
                return _interopRequireDefault(_Focusable).default;
              }
            });
            var _Mirror = __webpack_require__(57);
            Object.defineProperty(exports2, "Mirror", {
              enumerable: true,
              get: function() {
                return _interopRequireDefault(_Mirror).default;
              }
            });
            Object.defineProperty(exports2, "defaultMirrorOptions", {
              enumerable: true,
              get: function() {
                return _Mirror.defaultOptions;
              }
            });
            var _Scrollable = __webpack_require__(53);
            Object.defineProperty(exports2, "Scrollable", {
              enumerable: true,
              get: function() {
                return _interopRequireDefault(_Scrollable).default;
              }
            });
            Object.defineProperty(exports2, "defaultScrollableOptions", {
              enumerable: true,
              get: function() {
                return _Scrollable.defaultOptions;
              }
            });
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            var _DraggableEvent = __webpack_require__(63);
            Object.keys(_DraggableEvent).forEach(function(key) {
              if (key === "default" || key === "__esModule")
                return;
              Object.defineProperty(exports2, key, {
                enumerable: true,
                get: function() {
                  return _DraggableEvent[key];
                }
              });
            });
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            var _DragEvent = __webpack_require__(65);
            Object.keys(_DragEvent).forEach(function(key) {
              if (key === "default" || key === "__esModule")
                return;
              Object.defineProperty(exports2, key, {
                enumerable: true,
                get: function() {
                  return _DragEvent[key];
                }
              });
            });
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            exports2.defaultOptions = void 0;
            var _extends = Object.assign || function(target) {
              for (var i = 1; i < arguments.length; i++) {
                var source = arguments[i];
                for (var key in source) {
                  if (Object.prototype.hasOwnProperty.call(source, key)) {
                    target[key] = source[key];
                  }
                }
              }
              return target;
            };
            var _AbstractPlugin = __webpack_require__(1);
            var _AbstractPlugin2 = _interopRequireDefault(_AbstractPlugin);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            const onSortableSorted = Symbol("onSortableSorted");
            const defaultOptions = exports2.defaultOptions = {
              duration: 150,
              easingFunction: "ease-in-out",
              horizontal: false
            };
            class SwapAnimation extends _AbstractPlugin2.default {
              constructor(draggable) {
                super(draggable);
                this.options = _extends({}, defaultOptions, this.getOptions());
                this.lastAnimationFrame = null;
                this[onSortableSorted] = this[onSortableSorted].bind(this);
              }
              attach() {
                this.draggable.on("sortable:sorted", this[onSortableSorted]);
              }
              detach() {
                this.draggable.off("sortable:sorted", this[onSortableSorted]);
              }
              getOptions() {
                return this.draggable.options.swapAnimation || {};
              }
              [onSortableSorted]({ oldIndex, newIndex, dragEvent }) {
                const { source, over } = dragEvent;
                cancelAnimationFrame(this.lastAnimationFrame);
                this.lastAnimationFrame = requestAnimationFrame(() => {
                  if (oldIndex >= newIndex) {
                    animate(source, over, this.options);
                  } else {
                    animate(over, source, this.options);
                  }
                });
              }
            }
            exports2.default = SwapAnimation;
            function animate(from, to, { duration, easingFunction, horizontal }) {
              for (const element of [from, to]) {
                element.style.pointerEvents = "none";
              }
              if (horizontal) {
                const width = from.offsetWidth;
                from.style.transform = `translate3d(${width}px, 0, 0)`;
                to.style.transform = `translate3d(-${width}px, 0, 0)`;
              } else {
                const height = from.offsetHeight;
                from.style.transform = `translate3d(0, ${height}px, 0)`;
                to.style.transform = `translate3d(0, -${height}px, 0)`;
              }
              requestAnimationFrame(() => {
                for (const element of [from, to]) {
                  element.addEventListener("transitionend", resetElementOnTransitionEnd);
                  element.style.transition = `transform ${duration}ms ${easingFunction}`;
                  element.style.transform = "";
                }
              });
            }
            function resetElementOnTransitionEnd(event) {
              event.target.style.transition = "";
              event.target.style.pointerEvents = "";
              event.target.removeEventListener("transitionend", resetElementOnTransitionEnd);
            }
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            exports2.defaultOptions = void 0;
            var _SwapAnimation = __webpack_require__(15);
            var _SwapAnimation2 = _interopRequireDefault(_SwapAnimation);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            exports2.default = _SwapAnimation2.default;
            exports2.defaultOptions = _SwapAnimation.defaultOptions;
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            var _AbstractPlugin = __webpack_require__(1);
            var _AbstractPlugin2 = _interopRequireDefault(_AbstractPlugin);
            var _SnappableEvent = __webpack_require__(7);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            const onDragStart = Symbol("onDragStart");
            const onDragStop = Symbol("onDragStop");
            const onDragOver = Symbol("onDragOver");
            const onDragOut = Symbol("onDragOut");
            const onMirrorCreated = Symbol("onMirrorCreated");
            const onMirrorDestroy = Symbol("onMirrorDestroy");
            class Snappable extends _AbstractPlugin2.default {
              constructor(draggable) {
                super(draggable);
                this.firstSource = null;
                this.mirror = null;
                this[onDragStart] = this[onDragStart].bind(this);
                this[onDragStop] = this[onDragStop].bind(this);
                this[onDragOver] = this[onDragOver].bind(this);
                this[onDragOut] = this[onDragOut].bind(this);
                this[onMirrorCreated] = this[onMirrorCreated].bind(this);
                this[onMirrorDestroy] = this[onMirrorDestroy].bind(this);
              }
              attach() {
                this.draggable.on("drag:start", this[onDragStart]).on("drag:stop", this[onDragStop]).on("drag:over", this[onDragOver]).on("drag:out", this[onDragOut]).on("droppable:over", this[onDragOver]).on("droppable:out", this[onDragOut]).on("mirror:created", this[onMirrorCreated]).on("mirror:destroy", this[onMirrorDestroy]);
              }
              detach() {
                this.draggable.off("drag:start", this[onDragStart]).off("drag:stop", this[onDragStop]).off("drag:over", this[onDragOver]).off("drag:out", this[onDragOut]).off("droppable:over", this[onDragOver]).off("droppable:out", this[onDragOut]).off("mirror:created", this[onMirrorCreated]).off("mirror:destroy", this[onMirrorDestroy]);
              }
              [onDragStart](event) {
                if (event.canceled()) {
                  return;
                }
                this.firstSource = event.source;
              }
              [onDragStop]() {
                this.firstSource = null;
              }
              [onDragOver](event) {
                if (event.canceled()) {
                  return;
                }
                const source = event.source || event.dragEvent.source;
                if (source === this.firstSource) {
                  this.firstSource = null;
                  return;
                }
                const snapInEvent = new _SnappableEvent.SnapInEvent({
                  dragEvent: event,
                  snappable: event.over || event.droppable
                });
                this.draggable.trigger(snapInEvent);
                if (snapInEvent.canceled()) {
                  return;
                }
                if (this.mirror) {
                  this.mirror.style.display = "none";
                }
                source.classList.remove(this.draggable.getClassNameFor("source:dragging"));
                source.classList.add(this.draggable.getClassNameFor("source:placed"));
                setTimeout(() => {
                  source.classList.remove(this.draggable.getClassNameFor("source:placed"));
                }, this.draggable.options.placedTimeout);
              }
              [onDragOut](event) {
                if (event.canceled()) {
                  return;
                }
                const source = event.source || event.dragEvent.source;
                const snapOutEvent = new _SnappableEvent.SnapOutEvent({
                  dragEvent: event,
                  snappable: event.over || event.droppable
                });
                this.draggable.trigger(snapOutEvent);
                if (snapOutEvent.canceled()) {
                  return;
                }
                if (this.mirror) {
                  this.mirror.style.display = "";
                }
                source.classList.add(this.draggable.getClassNameFor("source:dragging"));
              }
              [onMirrorCreated]({ mirror }) {
                this.mirror = mirror;
              }
              [onMirrorDestroy]() {
                this.mirror = null;
              }
            }
            exports2.default = Snappable;
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            exports2.SnapOutEvent = exports2.SnapInEvent = exports2.SnapEvent = void 0;
            var _AbstractEvent = __webpack_require__(0);
            var _AbstractEvent2 = _interopRequireDefault(_AbstractEvent);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            class SnapEvent extends _AbstractEvent2.default {
              get dragEvent() {
                return this.data.dragEvent;
              }
              get snappable() {
                return this.data.snappable;
              }
            }
            exports2.SnapEvent = SnapEvent;
            SnapEvent.type = "snap";
            class SnapInEvent extends SnapEvent {
            }
            exports2.SnapInEvent = SnapInEvent;
            SnapInEvent.type = "snap:in";
            SnapInEvent.cancelable = true;
            class SnapOutEvent extends SnapEvent {
            }
            exports2.SnapOutEvent = SnapOutEvent;
            SnapOutEvent.type = "snap:out";
            SnapOutEvent.cancelable = true;
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            var _SnappableEvent = __webpack_require__(7);
            Object.keys(_SnappableEvent).forEach(function(key) {
              if (key === "default" || key === "__esModule")
                return;
              Object.defineProperty(exports2, key, {
                enumerable: true,
                get: function() {
                  return _SnappableEvent[key];
                }
              });
            });
            var _Snappable = __webpack_require__(17);
            var _Snappable2 = _interopRequireDefault(_Snappable);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            exports2.default = _Snappable2.default;
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            exports2.defaultOptions = void 0;
            var _extends = Object.assign || function(target) {
              for (var i = 1; i < arguments.length; i++) {
                var source = arguments[i];
                for (var key in source) {
                  if (Object.prototype.hasOwnProperty.call(source, key)) {
                    target[key] = source[key];
                  }
                }
              }
              return target;
            };
            var _AbstractPlugin = __webpack_require__(1);
            var _AbstractPlugin2 = _interopRequireDefault(_AbstractPlugin);
            var _utils = __webpack_require__(2);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            const onMirrorCreated = Symbol("onMirrorCreated");
            const onMirrorDestroy = Symbol("onMirrorDestroy");
            const onDragOver = Symbol("onDragOver");
            const resize = Symbol("resize");
            const defaultOptions = exports2.defaultOptions = {};
            class ResizeMirror extends _AbstractPlugin2.default {
              constructor(draggable) {
                super(draggable);
                this.options = _extends({}, defaultOptions, this.getOptions());
                this.lastWidth = 0;
                this.lastHeight = 0;
                this.mirror = null;
                this[onMirrorCreated] = this[onMirrorCreated].bind(this);
                this[onMirrorDestroy] = this[onMirrorDestroy].bind(this);
                this[onDragOver] = this[onDragOver].bind(this);
              }
              attach() {
                this.draggable.on("mirror:created", this[onMirrorCreated]).on("drag:over", this[onDragOver]).on("drag:over:container", this[onDragOver]);
              }
              detach() {
                this.draggable.off("mirror:created", this[onMirrorCreated]).off("mirror:destroy", this[onMirrorDestroy]).off("drag:over", this[onDragOver]).off("drag:over:container", this[onDragOver]);
              }
              getOptions() {
                return this.draggable.options.resizeMirror || {};
              }
              [onMirrorCreated]({ mirror }) {
                this.mirror = mirror;
              }
              [onMirrorDestroy]() {
                this.mirror = null;
              }
              [onDragOver](dragEvent) {
                this[resize](dragEvent);
              }
              [resize]({ overContainer, over }) {
                requestAnimationFrame(() => {
                  if (this.mirror.parentNode !== overContainer) {
                    overContainer.appendChild(this.mirror);
                  }
                  const overElement = over || this.draggable.getDraggableElementsForContainer(overContainer)[0];
                  if (!overElement) {
                    return;
                  }
                  (0, _utils.requestNextAnimationFrame)(() => {
                    const overRect = overElement.getBoundingClientRect();
                    if (this.lastHeight === overRect.height && this.lastWidth === overRect.width) {
                      return;
                    }
                    this.mirror.style.width = `${overRect.width}px`;
                    this.mirror.style.height = `${overRect.height}px`;
                    this.lastWidth = overRect.width;
                    this.lastHeight = overRect.height;
                  });
                });
              }
            }
            exports2.default = ResizeMirror;
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            exports2.defaultOptions = void 0;
            var _ResizeMirror = __webpack_require__(20);
            var _ResizeMirror2 = _interopRequireDefault(_ResizeMirror);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            exports2.default = _ResizeMirror2.default;
            exports2.defaultOptions = _ResizeMirror.defaultOptions;
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            var _AbstractPlugin = __webpack_require__(1);
            var _AbstractPlugin2 = _interopRequireDefault(_AbstractPlugin);
            var _utils = __webpack_require__(2);
            var _CollidableEvent = __webpack_require__(8);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            const onDragMove = Symbol("onDragMove");
            const onDragStop = Symbol("onDragStop");
            const onRequestAnimationFrame = Symbol("onRequestAnimationFrame");
            class Collidable extends _AbstractPlugin2.default {
              constructor(draggable) {
                super(draggable);
                this.currentlyCollidingElement = null;
                this.lastCollidingElement = null;
                this.currentAnimationFrame = null;
                this[onDragMove] = this[onDragMove].bind(this);
                this[onDragStop] = this[onDragStop].bind(this);
                this[onRequestAnimationFrame] = this[onRequestAnimationFrame].bind(this);
              }
              attach() {
                this.draggable.on("drag:move", this[onDragMove]).on("drag:stop", this[onDragStop]);
              }
              detach() {
                this.draggable.off("drag:move", this[onDragMove]).off("drag:stop", this[onDragStop]);
              }
              getCollidables() {
                const collidables = this.draggable.options.collidables;
                if (typeof collidables === "string") {
                  return Array.prototype.slice.call(document.querySelectorAll(collidables));
                } else if (collidables instanceof NodeList || collidables instanceof Array) {
                  return Array.prototype.slice.call(collidables);
                } else if (collidables instanceof HTMLElement) {
                  return [collidables];
                } else if (typeof collidables === "function") {
                  return collidables();
                } else {
                  return [];
                }
              }
              [onDragMove](event) {
                const target = event.sensorEvent.target;
                this.currentAnimationFrame = requestAnimationFrame(this[onRequestAnimationFrame](target));
                if (this.currentlyCollidingElement) {
                  event.cancel();
                }
                const collidableInEvent = new _CollidableEvent.CollidableInEvent({
                  dragEvent: event,
                  collidingElement: this.currentlyCollidingElement
                });
                const collidableOutEvent = new _CollidableEvent.CollidableOutEvent({
                  dragEvent: event,
                  collidingElement: this.lastCollidingElement
                });
                const enteringCollidable = Boolean(this.currentlyCollidingElement && this.lastCollidingElement !== this.currentlyCollidingElement);
                const leavingCollidable = Boolean(!this.currentlyCollidingElement && this.lastCollidingElement);
                if (enteringCollidable) {
                  if (this.lastCollidingElement) {
                    this.draggable.trigger(collidableOutEvent);
                  }
                  this.draggable.trigger(collidableInEvent);
                } else if (leavingCollidable) {
                  this.draggable.trigger(collidableOutEvent);
                }
                this.lastCollidingElement = this.currentlyCollidingElement;
              }
              [onDragStop](event) {
                const lastCollidingElement = this.currentlyCollidingElement || this.lastCollidingElement;
                const collidableOutEvent = new _CollidableEvent.CollidableOutEvent({
                  dragEvent: event,
                  collidingElement: lastCollidingElement
                });
                if (lastCollidingElement) {
                  this.draggable.trigger(collidableOutEvent);
                }
                this.lastCollidingElement = null;
                this.currentlyCollidingElement = null;
              }
              [onRequestAnimationFrame](target) {
                return () => {
                  const collidables = this.getCollidables();
                  this.currentlyCollidingElement = (0, _utils.closest)(target, (element) => collidables.includes(element));
                };
              }
            }
            exports2.default = Collidable;
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            exports2.CollidableOutEvent = exports2.CollidableInEvent = exports2.CollidableEvent = void 0;
            var _AbstractEvent = __webpack_require__(0);
            var _AbstractEvent2 = _interopRequireDefault(_AbstractEvent);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            class CollidableEvent extends _AbstractEvent2.default {
              get dragEvent() {
                return this.data.dragEvent;
              }
            }
            exports2.CollidableEvent = CollidableEvent;
            CollidableEvent.type = "collidable";
            class CollidableInEvent extends CollidableEvent {
              get collidingElement() {
                return this.data.collidingElement;
              }
            }
            exports2.CollidableInEvent = CollidableInEvent;
            CollidableInEvent.type = "collidable:in";
            class CollidableOutEvent extends CollidableEvent {
              get collidingElement() {
                return this.data.collidingElement;
              }
            }
            exports2.CollidableOutEvent = CollidableOutEvent;
            CollidableOutEvent.type = "collidable:out";
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            var _CollidableEvent = __webpack_require__(8);
            Object.keys(_CollidableEvent).forEach(function(key) {
              if (key === "default" || key === "__esModule")
                return;
              Object.defineProperty(exports2, key, {
                enumerable: true,
                get: function() {
                  return _CollidableEvent[key];
                }
              });
            });
            var _Collidable = __webpack_require__(22);
            var _Collidable2 = _interopRequireDefault(_Collidable);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            exports2.default = _Collidable2.default;
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            var _Collidable = __webpack_require__(24);
            Object.defineProperty(exports2, "Collidable", {
              enumerable: true,
              get: function() {
                return _interopRequireDefault(_Collidable).default;
              }
            });
            var _ResizeMirror = __webpack_require__(21);
            Object.defineProperty(exports2, "ResizeMirror", {
              enumerable: true,
              get: function() {
                return _interopRequireDefault(_ResizeMirror).default;
              }
            });
            Object.defineProperty(exports2, "defaultResizeMirrorOptions", {
              enumerable: true,
              get: function() {
                return _ResizeMirror.defaultOptions;
              }
            });
            var _Snappable = __webpack_require__(19);
            Object.defineProperty(exports2, "Snappable", {
              enumerable: true,
              get: function() {
                return _interopRequireDefault(_Snappable).default;
              }
            });
            var _SwapAnimation = __webpack_require__(16);
            Object.defineProperty(exports2, "SwapAnimation", {
              enumerable: true,
              get: function() {
                return _interopRequireDefault(_SwapAnimation).default;
              }
            });
            Object.defineProperty(exports2, "defaultSwapAnimationOptions", {
              enumerable: true,
              get: function() {
                return _SwapAnimation.defaultOptions;
              }
            });
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            var _extends = Object.assign || function(target) {
              for (var i = 1; i < arguments.length; i++) {
                var source = arguments[i];
                for (var key in source) {
                  if (Object.prototype.hasOwnProperty.call(source, key)) {
                    target[key] = source[key];
                  }
                }
              }
              return target;
            };
            var _Draggable = __webpack_require__(5);
            var _Draggable2 = _interopRequireDefault(_Draggable);
            var _SortableEvent = __webpack_require__(9);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            const onDragStart = Symbol("onDragStart");
            const onDragOverContainer = Symbol("onDragOverContainer");
            const onDragOver = Symbol("onDragOver");
            const onDragStop = Symbol("onDragStop");
            function onSortableSortedDefaultAnnouncement({ dragEvent }) {
              const sourceText = dragEvent.source.textContent.trim() || dragEvent.source.id || "sortable element";
              if (dragEvent.over) {
                const overText = dragEvent.over.textContent.trim() || dragEvent.over.id || "sortable element";
                const isFollowing = dragEvent.source.compareDocumentPosition(dragEvent.over) & Node.DOCUMENT_POSITION_FOLLOWING;
                if (isFollowing) {
                  return `Placed ${sourceText} after ${overText}`;
                } else {
                  return `Placed ${sourceText} before ${overText}`;
                }
              } else {
                return `Placed ${sourceText} into a different container`;
              }
            }
            const defaultAnnouncements = {
              "sortable:sorted": onSortableSortedDefaultAnnouncement
            };
            class Sortable2 extends _Draggable2.default {
              constructor(containers = [], options = {}) {
                super(containers, _extends({}, options, {
                  announcements: _extends({}, defaultAnnouncements, options.announcements || {})
                }));
                this.startIndex = null;
                this.startContainer = null;
                this[onDragStart] = this[onDragStart].bind(this);
                this[onDragOverContainer] = this[onDragOverContainer].bind(this);
                this[onDragOver] = this[onDragOver].bind(this);
                this[onDragStop] = this[onDragStop].bind(this);
                this.on("drag:start", this[onDragStart]).on("drag:over:container", this[onDragOverContainer]).on("drag:over", this[onDragOver]).on("drag:stop", this[onDragStop]);
              }
              destroy() {
                super.destroy();
                this.off("drag:start", this[onDragStart]).off("drag:over:container", this[onDragOverContainer]).off("drag:over", this[onDragOver]).off("drag:stop", this[onDragStop]);
              }
              index(element) {
                return this.getDraggableElementsForContainer(element.parentNode).indexOf(element);
              }
              [onDragStart](event) {
                this.startContainer = event.source.parentNode;
                this.startIndex = this.index(event.source);
                const sortableStartEvent = new _SortableEvent.SortableStartEvent({
                  dragEvent: event,
                  startIndex: this.startIndex,
                  startContainer: this.startContainer
                });
                this.trigger(sortableStartEvent);
                if (sortableStartEvent.canceled()) {
                  event.cancel();
                }
              }
              [onDragOverContainer](event) {
                if (event.canceled()) {
                  return;
                }
                const { source, over, overContainer } = event;
                const oldIndex = this.index(source);
                const sortableSortEvent = new _SortableEvent.SortableSortEvent({
                  dragEvent: event,
                  currentIndex: oldIndex,
                  source,
                  over
                });
                this.trigger(sortableSortEvent);
                if (sortableSortEvent.canceled()) {
                  return;
                }
                const children = this.getDraggableElementsForContainer(overContainer);
                const moves = move({ source, over, overContainer, children });
                if (!moves) {
                  return;
                }
                const { oldContainer, newContainer } = moves;
                const newIndex = this.index(event.source);
                const sortableSortedEvent = new _SortableEvent.SortableSortedEvent({
                  dragEvent: event,
                  oldIndex,
                  newIndex,
                  oldContainer,
                  newContainer
                });
                this.trigger(sortableSortedEvent);
              }
              [onDragOver](event) {
                if (event.over === event.originalSource || event.over === event.source) {
                  return;
                }
                const { source, over, overContainer } = event;
                const oldIndex = this.index(source);
                const sortableSortEvent = new _SortableEvent.SortableSortEvent({
                  dragEvent: event,
                  currentIndex: oldIndex,
                  source,
                  over
                });
                this.trigger(sortableSortEvent);
                if (sortableSortEvent.canceled()) {
                  return;
                }
                const children = this.getDraggableElementsForContainer(overContainer);
                const moves = move({ source, over, overContainer, children });
                if (!moves) {
                  return;
                }
                const { oldContainer, newContainer } = moves;
                const newIndex = this.index(source);
                const sortableSortedEvent = new _SortableEvent.SortableSortedEvent({
                  dragEvent: event,
                  oldIndex,
                  newIndex,
                  oldContainer,
                  newContainer
                });
                this.trigger(sortableSortedEvent);
              }
              [onDragStop](event) {
                const sortableStopEvent = new _SortableEvent.SortableStopEvent({
                  dragEvent: event,
                  oldIndex: this.startIndex,
                  newIndex: this.index(event.source),
                  oldContainer: this.startContainer,
                  newContainer: event.source.parentNode
                });
                this.trigger(sortableStopEvent);
                this.startIndex = null;
                this.startContainer = null;
              }
            }
            exports2.default = Sortable2;
            function index(element) {
              return Array.prototype.indexOf.call(element.parentNode.children, element);
            }
            function move({ source, over, overContainer, children }) {
              const emptyOverContainer = !children.length;
              const differentContainer = source.parentNode !== overContainer;
              const sameContainer = over && !differentContainer;
              if (emptyOverContainer) {
                return moveInsideEmptyContainer(source, overContainer);
              } else if (sameContainer) {
                return moveWithinContainer(source, over);
              } else if (differentContainer) {
                return moveOutsideContainer(source, over, overContainer);
              } else {
                return null;
              }
            }
            function moveInsideEmptyContainer(source, overContainer) {
              const oldContainer = source.parentNode;
              overContainer.appendChild(source);
              return { oldContainer, newContainer: overContainer };
            }
            function moveWithinContainer(source, over) {
              const oldIndex = index(source);
              const newIndex = index(over);
              if (oldIndex < newIndex) {
                source.parentNode.insertBefore(source, over.nextElementSibling);
              } else {
                source.parentNode.insertBefore(source, over);
              }
              return { oldContainer: source.parentNode, newContainer: source.parentNode };
            }
            function moveOutsideContainer(source, over, overContainer) {
              const oldContainer = source.parentNode;
              if (over) {
                over.parentNode.insertBefore(source, over);
              } else {
                overContainer.appendChild(source);
              }
              return { oldContainer, newContainer: source.parentNode };
            }
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            exports2.SortableStopEvent = exports2.SortableSortedEvent = exports2.SortableSortEvent = exports2.SortableStartEvent = exports2.SortableEvent = void 0;
            var _AbstractEvent = __webpack_require__(0);
            var _AbstractEvent2 = _interopRequireDefault(_AbstractEvent);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            class SortableEvent extends _AbstractEvent2.default {
              get dragEvent() {
                return this.data.dragEvent;
              }
            }
            exports2.SortableEvent = SortableEvent;
            SortableEvent.type = "sortable";
            class SortableStartEvent extends SortableEvent {
              get startIndex() {
                return this.data.startIndex;
              }
              get startContainer() {
                return this.data.startContainer;
              }
            }
            exports2.SortableStartEvent = SortableStartEvent;
            SortableStartEvent.type = "sortable:start";
            SortableStartEvent.cancelable = true;
            class SortableSortEvent extends SortableEvent {
              get currentIndex() {
                return this.data.currentIndex;
              }
              get over() {
                return this.data.oldIndex;
              }
              get overContainer() {
                return this.data.newIndex;
              }
            }
            exports2.SortableSortEvent = SortableSortEvent;
            SortableSortEvent.type = "sortable:sort";
            SortableSortEvent.cancelable = true;
            class SortableSortedEvent extends SortableEvent {
              get oldIndex() {
                return this.data.oldIndex;
              }
              get newIndex() {
                return this.data.newIndex;
              }
              get oldContainer() {
                return this.data.oldContainer;
              }
              get newContainer() {
                return this.data.newContainer;
              }
            }
            exports2.SortableSortedEvent = SortableSortedEvent;
            SortableSortedEvent.type = "sortable:sorted";
            class SortableStopEvent extends SortableEvent {
              get oldIndex() {
                return this.data.oldIndex;
              }
              get newIndex() {
                return this.data.newIndex;
              }
              get oldContainer() {
                return this.data.oldContainer;
              }
              get newContainer() {
                return this.data.newContainer;
              }
            }
            exports2.SortableStopEvent = SortableStopEvent;
            SortableStopEvent.type = "sortable:stop";
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            var _SortableEvent = __webpack_require__(9);
            Object.keys(_SortableEvent).forEach(function(key) {
              if (key === "default" || key === "__esModule")
                return;
              Object.defineProperty(exports2, key, {
                enumerable: true,
                get: function() {
                  return _SortableEvent[key];
                }
              });
            });
            var _Sortable = __webpack_require__(26);
            var _Sortable2 = _interopRequireDefault(_Sortable);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            exports2.default = _Sortable2.default;
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            var _extends = Object.assign || function(target) {
              for (var i = 1; i < arguments.length; i++) {
                var source = arguments[i];
                for (var key in source) {
                  if (Object.prototype.hasOwnProperty.call(source, key)) {
                    target[key] = source[key];
                  }
                }
              }
              return target;
            };
            var _Draggable = __webpack_require__(5);
            var _Draggable2 = _interopRequireDefault(_Draggable);
            var _SwappableEvent = __webpack_require__(10);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            const onDragStart = Symbol("onDragStart");
            const onDragOver = Symbol("onDragOver");
            const onDragStop = Symbol("onDragStop");
            function onSwappableSwappedDefaultAnnouncement({ dragEvent, swappedElement }) {
              const sourceText = dragEvent.source.textContent.trim() || dragEvent.source.id || "swappable element";
              const overText = swappedElement.textContent.trim() || swappedElement.id || "swappable element";
              return `Swapped ${sourceText} with ${overText}`;
            }
            const defaultAnnouncements = {
              "swappabled:swapped": onSwappableSwappedDefaultAnnouncement
            };
            class Swappable extends _Draggable2.default {
              constructor(containers = [], options = {}) {
                super(containers, _extends({}, options, {
                  announcements: _extends({}, defaultAnnouncements, options.announcements || {})
                }));
                this.lastOver = null;
                this[onDragStart] = this[onDragStart].bind(this);
                this[onDragOver] = this[onDragOver].bind(this);
                this[onDragStop] = this[onDragStop].bind(this);
                this.on("drag:start", this[onDragStart]).on("drag:over", this[onDragOver]).on("drag:stop", this[onDragStop]);
              }
              destroy() {
                super.destroy();
                this.off("drag:start", this._onDragStart).off("drag:over", this._onDragOver).off("drag:stop", this._onDragStop);
              }
              [onDragStart](event) {
                const swappableStartEvent = new _SwappableEvent.SwappableStartEvent({
                  dragEvent: event
                });
                this.trigger(swappableStartEvent);
                if (swappableStartEvent.canceled()) {
                  event.cancel();
                }
              }
              [onDragOver](event) {
                if (event.over === event.originalSource || event.over === event.source || event.canceled()) {
                  return;
                }
                const swappableSwapEvent = new _SwappableEvent.SwappableSwapEvent({
                  dragEvent: event,
                  over: event.over,
                  overContainer: event.overContainer
                });
                this.trigger(swappableSwapEvent);
                if (swappableSwapEvent.canceled()) {
                  return;
                }
                if (this.lastOver && this.lastOver !== event.over) {
                  swap(this.lastOver, event.source);
                }
                if (this.lastOver === event.over) {
                  this.lastOver = null;
                } else {
                  this.lastOver = event.over;
                }
                swap(event.source, event.over);
                const swappableSwappedEvent = new _SwappableEvent.SwappableSwappedEvent({
                  dragEvent: event,
                  swappedElement: event.over
                });
                this.trigger(swappableSwappedEvent);
              }
              [onDragStop](event) {
                const swappableStopEvent = new _SwappableEvent.SwappableStopEvent({
                  dragEvent: event
                });
                this.trigger(swappableStopEvent);
                this.lastOver = null;
              }
            }
            exports2.default = Swappable;
            function withTempElement(callback) {
              const tmpElement = document.createElement("div");
              callback(tmpElement);
              tmpElement.parentNode.removeChild(tmpElement);
            }
            function swap(source, over) {
              const overParent = over.parentNode;
              const sourceParent = source.parentNode;
              withTempElement((tmpElement) => {
                sourceParent.insertBefore(tmpElement, source);
                overParent.insertBefore(source, over);
                sourceParent.insertBefore(over, tmpElement);
              });
            }
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            exports2.SwappableStopEvent = exports2.SwappableSwappedEvent = exports2.SwappableSwapEvent = exports2.SwappableStartEvent = exports2.SwappableEvent = void 0;
            var _AbstractEvent = __webpack_require__(0);
            var _AbstractEvent2 = _interopRequireDefault(_AbstractEvent);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            class SwappableEvent extends _AbstractEvent2.default {
              get dragEvent() {
                return this.data.dragEvent;
              }
            }
            exports2.SwappableEvent = SwappableEvent;
            SwappableEvent.type = "swappable";
            class SwappableStartEvent extends SwappableEvent {
            }
            exports2.SwappableStartEvent = SwappableStartEvent;
            SwappableStartEvent.type = "swappable:start";
            SwappableStartEvent.cancelable = true;
            class SwappableSwapEvent extends SwappableEvent {
              get over() {
                return this.data.over;
              }
              get overContainer() {
                return this.data.overContainer;
              }
            }
            exports2.SwappableSwapEvent = SwappableSwapEvent;
            SwappableSwapEvent.type = "swappable:swap";
            SwappableSwapEvent.cancelable = true;
            class SwappableSwappedEvent extends SwappableEvent {
              get swappedElement() {
                return this.data.swappedElement;
              }
            }
            exports2.SwappableSwappedEvent = SwappableSwappedEvent;
            SwappableSwappedEvent.type = "swappable:swapped";
            class SwappableStopEvent extends SwappableEvent {
            }
            exports2.SwappableStopEvent = SwappableStopEvent;
            SwappableStopEvent.type = "swappable:stop";
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            var _SwappableEvent = __webpack_require__(10);
            Object.keys(_SwappableEvent).forEach(function(key) {
              if (key === "default" || key === "__esModule")
                return;
              Object.defineProperty(exports2, key, {
                enumerable: true,
                get: function() {
                  return _SwappableEvent[key];
                }
              });
            });
            var _Swappable = __webpack_require__(29);
            var _Swappable2 = _interopRequireDefault(_Swappable);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            exports2.default = _Swappable2.default;
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            var _extends = Object.assign || function(target) {
              for (var i = 1; i < arguments.length; i++) {
                var source = arguments[i];
                for (var key in source) {
                  if (Object.prototype.hasOwnProperty.call(source, key)) {
                    target[key] = source[key];
                  }
                }
              }
              return target;
            };
            var _utils = __webpack_require__(2);
            var _Draggable = __webpack_require__(5);
            var _Draggable2 = _interopRequireDefault(_Draggable);
            var _DroppableEvent = __webpack_require__(11);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            const onDragStart = Symbol("onDragStart");
            const onDragMove = Symbol("onDragMove");
            const onDragStop = Symbol("onDragStop");
            const dropInDropzone = Symbol("dropInDropZone");
            const returnToOriginalDropzone = Symbol("returnToOriginalDropzone");
            const closestDropzone = Symbol("closestDropzone");
            const getDropzones = Symbol("getDropzones");
            function onDroppableDroppedDefaultAnnouncement({ dragEvent, dropzone }) {
              const sourceText = dragEvent.source.textContent.trim() || dragEvent.source.id || "draggable element";
              const dropzoneText = dropzone.textContent.trim() || dropzone.id || "droppable element";
              return `Dropped ${sourceText} into ${dropzoneText}`;
            }
            function onDroppableReturnedDefaultAnnouncement({ dragEvent, dropzone }) {
              const sourceText = dragEvent.source.textContent.trim() || dragEvent.source.id || "draggable element";
              const dropzoneText = dropzone.textContent.trim() || dropzone.id || "droppable element";
              return `Returned ${sourceText} from ${dropzoneText}`;
            }
            const defaultAnnouncements = {
              "droppable:dropped": onDroppableDroppedDefaultAnnouncement,
              "droppable:returned": onDroppableReturnedDefaultAnnouncement
            };
            const defaultClasses = {
              "droppable:active": "draggable-dropzone--active",
              "droppable:occupied": "draggable-dropzone--occupied"
            };
            const defaultOptions = {
              dropzone: ".draggable-droppable"
            };
            class Droppable extends _Draggable2.default {
              constructor(containers = [], options = {}) {
                super(containers, _extends({}, defaultOptions, options, {
                  classes: _extends({}, defaultClasses, options.classes || {}),
                  announcements: _extends({}, defaultAnnouncements, options.announcements || {})
                }));
                this.dropzones = null;
                this.lastDropzone = null;
                this.initialDropzone = null;
                this[onDragStart] = this[onDragStart].bind(this);
                this[onDragMove] = this[onDragMove].bind(this);
                this[onDragStop] = this[onDragStop].bind(this);
                this.on("drag:start", this[onDragStart]).on("drag:move", this[onDragMove]).on("drag:stop", this[onDragStop]);
              }
              destroy() {
                super.destroy();
                this.off("drag:start", this[onDragStart]).off("drag:move", this[onDragMove]).off("drag:stop", this[onDragStop]);
              }
              [onDragStart](event) {
                if (event.canceled()) {
                  return;
                }
                this.dropzones = [...this[getDropzones]()];
                const dropzone = (0, _utils.closest)(event.sensorEvent.target, this.options.dropzone);
                if (!dropzone) {
                  event.cancel();
                  return;
                }
                const droppableStartEvent = new _DroppableEvent.DroppableStartEvent({
                  dragEvent: event,
                  dropzone
                });
                this.trigger(droppableStartEvent);
                if (droppableStartEvent.canceled()) {
                  event.cancel();
                  return;
                }
                this.initialDropzone = dropzone;
                for (const dropzoneElement of this.dropzones) {
                  if (dropzoneElement.classList.contains(this.getClassNameFor("droppable:occupied"))) {
                    continue;
                  }
                  dropzoneElement.classList.add(this.getClassNameFor("droppable:active"));
                }
              }
              [onDragMove](event) {
                if (event.canceled()) {
                  return;
                }
                const dropzone = this[closestDropzone](event.sensorEvent.target);
                const overEmptyDropzone = dropzone && !dropzone.classList.contains(this.getClassNameFor("droppable:occupied"));
                if (overEmptyDropzone && this[dropInDropzone](event, dropzone)) {
                  this.lastDropzone = dropzone;
                } else if ((!dropzone || dropzone === this.initialDropzone) && this.lastDropzone) {
                  this[returnToOriginalDropzone](event);
                  this.lastDropzone = null;
                }
              }
              [onDragStop](event) {
                const droppableStopEvent = new _DroppableEvent.DroppableStopEvent({
                  dragEvent: event,
                  dropzone: this.lastDropzone || this.initialDropzone
                });
                this.trigger(droppableStopEvent);
                const occupiedClass = this.getClassNameFor("droppable:occupied");
                for (const dropzone of this.dropzones) {
                  dropzone.classList.remove(this.getClassNameFor("droppable:active"));
                }
                if (this.lastDropzone && this.lastDropzone !== this.initialDropzone) {
                  this.initialDropzone.classList.remove(occupiedClass);
                }
                this.dropzones = null;
                this.lastDropzone = null;
                this.initialDropzone = null;
              }
              [dropInDropzone](event, dropzone) {
                const droppableDroppedEvent = new _DroppableEvent.DroppableDroppedEvent({
                  dragEvent: event,
                  dropzone
                });
                this.trigger(droppableDroppedEvent);
                if (droppableDroppedEvent.canceled()) {
                  return false;
                }
                const occupiedClass = this.getClassNameFor("droppable:occupied");
                if (this.lastDropzone) {
                  this.lastDropzone.classList.remove(occupiedClass);
                }
                dropzone.appendChild(event.source);
                dropzone.classList.add(occupiedClass);
                return true;
              }
              [returnToOriginalDropzone](event) {
                const droppableReturnedEvent = new _DroppableEvent.DroppableReturnedEvent({
                  dragEvent: event,
                  dropzone: this.lastDropzone
                });
                this.trigger(droppableReturnedEvent);
                if (droppableReturnedEvent.canceled()) {
                  return;
                }
                this.initialDropzone.appendChild(event.source);
                this.lastDropzone.classList.remove(this.getClassNameFor("droppable:occupied"));
              }
              [closestDropzone](target) {
                if (!this.dropzones) {
                  return null;
                }
                return (0, _utils.closest)(target, this.dropzones);
              }
              [getDropzones]() {
                const dropzone = this.options.dropzone;
                if (typeof dropzone === "string") {
                  return document.querySelectorAll(dropzone);
                } else if (dropzone instanceof NodeList || dropzone instanceof Array) {
                  return dropzone;
                } else if (typeof dropzone === "function") {
                  return dropzone();
                } else {
                  return [];
                }
              }
            }
            exports2.default = Droppable;
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            exports2.DroppableStopEvent = exports2.DroppableReturnedEvent = exports2.DroppableDroppedEvent = exports2.DroppableStartEvent = exports2.DroppableEvent = void 0;
            var _AbstractEvent = __webpack_require__(0);
            var _AbstractEvent2 = _interopRequireDefault(_AbstractEvent);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            class DroppableEvent extends _AbstractEvent2.default {
              get dragEvent() {
                return this.data.dragEvent;
              }
            }
            exports2.DroppableEvent = DroppableEvent;
            DroppableEvent.type = "droppable";
            class DroppableStartEvent extends DroppableEvent {
              get dropzone() {
                return this.data.dropzone;
              }
            }
            exports2.DroppableStartEvent = DroppableStartEvent;
            DroppableStartEvent.type = "droppable:start";
            DroppableStartEvent.cancelable = true;
            class DroppableDroppedEvent extends DroppableEvent {
              get dropzone() {
                return this.data.dropzone;
              }
            }
            exports2.DroppableDroppedEvent = DroppableDroppedEvent;
            DroppableDroppedEvent.type = "droppable:dropped";
            DroppableDroppedEvent.cancelable = true;
            class DroppableReturnedEvent extends DroppableEvent {
              get dropzone() {
                return this.data.dropzone;
              }
            }
            exports2.DroppableReturnedEvent = DroppableReturnedEvent;
            DroppableReturnedEvent.type = "droppable:returned";
            DroppableReturnedEvent.cancelable = true;
            class DroppableStopEvent extends DroppableEvent {
              get dropzone() {
                return this.data.dropzone;
              }
            }
            exports2.DroppableStopEvent = DroppableStopEvent;
            DroppableStopEvent.type = "droppable:stop";
            DroppableStopEvent.cancelable = true;
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            var _DroppableEvent = __webpack_require__(11);
            Object.keys(_DroppableEvent).forEach(function(key) {
              if (key === "default" || key === "__esModule")
                return;
              Object.defineProperty(exports2, key, {
                enumerable: true,
                get: function() {
                  return _DroppableEvent[key];
                }
              });
            });
            var _Droppable = __webpack_require__(32);
            var _Droppable2 = _interopRequireDefault(_Droppable);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            exports2.default = _Droppable2.default;
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            class Emitter {
              constructor() {
                this.callbacks = {};
              }
              on(type, ...callbacks) {
                if (!this.callbacks[type]) {
                  this.callbacks[type] = [];
                }
                this.callbacks[type].push(...callbacks);
                return this;
              }
              off(type, callback) {
                if (!this.callbacks[type]) {
                  return null;
                }
                const copy = this.callbacks[type].slice(0);
                for (let i = 0; i < copy.length; i++) {
                  if (callback === copy[i]) {
                    this.callbacks[type].splice(i, 1);
                  }
                }
                return this;
              }
              trigger(event) {
                if (!this.callbacks[event.type]) {
                  return null;
                }
                const callbacks = [...this.callbacks[event.type]];
                const caughtErrors = [];
                for (let i = callbacks.length - 1; i >= 0; i--) {
                  const callback = callbacks[i];
                  try {
                    callback(event);
                  } catch (error) {
                    caughtErrors.push(error);
                  }
                }
                if (caughtErrors.length) {
                  console.error(`Draggable caught errors while triggering '${event.type}'`, caughtErrors);
                }
                return this;
              }
            }
            exports2.default = Emitter;
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            var _Emitter = __webpack_require__(35);
            var _Emitter2 = _interopRequireDefault(_Emitter);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            exports2.default = _Emitter2.default;
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            exports2.defaultOptions = void 0;
            var _extends = Object.assign || function(target) {
              for (var i = 1; i < arguments.length; i++) {
                var source = arguments[i];
                for (var key in source) {
                  if (Object.prototype.hasOwnProperty.call(source, key)) {
                    target[key] = source[key];
                  }
                }
              }
              return target;
            };
            var _utils = __webpack_require__(2);
            var _Plugins = __webpack_require__(12);
            var _Emitter = __webpack_require__(36);
            var _Emitter2 = _interopRequireDefault(_Emitter);
            var _Sensors = __webpack_require__(6);
            var _DraggableEvent = __webpack_require__(13);
            var _DragEvent = __webpack_require__(14);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            const onDragStart = Symbol("onDragStart");
            const onDragMove = Symbol("onDragMove");
            const onDragStop = Symbol("onDragStop");
            const onDragPressure = Symbol("onDragPressure");
            const defaultAnnouncements = {
              "drag:start": (event) => `Picked up ${event.source.textContent.trim() || event.source.id || "draggable element"}`,
              "drag:stop": (event) => `Released ${event.source.textContent.trim() || event.source.id || "draggable element"}`
            };
            const defaultClasses = {
              "container:dragging": "draggable-container--is-dragging",
              "source:dragging": "draggable-source--is-dragging",
              "source:placed": "draggable-source--placed",
              "container:placed": "draggable-container--placed",
              "body:dragging": "draggable--is-dragging",
              "draggable:over": "draggable--over",
              "container:over": "draggable-container--over",
              "source:original": "draggable--original",
              mirror: "draggable-mirror"
            };
            const defaultOptions = exports2.defaultOptions = {
              draggable: ".draggable-source",
              handle: null,
              delay: 100,
              placedTimeout: 800,
              plugins: [],
              sensors: []
            };
            class Draggable {
              constructor(containers = [document.body], options = {}) {
                if (containers instanceof NodeList || containers instanceof Array) {
                  this.containers = [...containers];
                } else if (containers instanceof HTMLElement) {
                  this.containers = [containers];
                } else {
                  throw new Error("Draggable containers are expected to be of type `NodeList`, `HTMLElement[]` or `HTMLElement`");
                }
                this.options = _extends({}, defaultOptions, options, {
                  classes: _extends({}, defaultClasses, options.classes || {}),
                  announcements: _extends({}, defaultAnnouncements, options.announcements || {})
                });
                this.emitter = new _Emitter2.default();
                this.dragging = false;
                this.plugins = [];
                this.sensors = [];
                this[onDragStart] = this[onDragStart].bind(this);
                this[onDragMove] = this[onDragMove].bind(this);
                this[onDragStop] = this[onDragStop].bind(this);
                this[onDragPressure] = this[onDragPressure].bind(this);
                document.addEventListener("drag:start", this[onDragStart], true);
                document.addEventListener("drag:move", this[onDragMove], true);
                document.addEventListener("drag:stop", this[onDragStop], true);
                document.addEventListener("drag:pressure", this[onDragPressure], true);
                const defaultPlugins = Object.values(Draggable.Plugins).map((Plugin) => Plugin);
                const defaultSensors = [_Sensors.MouseSensor, _Sensors.TouchSensor];
                this.addPlugin(...[...defaultPlugins, ...this.options.plugins]);
                this.addSensor(...[...defaultSensors, ...this.options.sensors]);
                const draggableInitializedEvent = new _DraggableEvent.DraggableInitializedEvent({
                  draggable: this
                });
                this.on("mirror:created", ({ mirror }) => this.mirror = mirror);
                this.on("mirror:destroy", () => this.mirror = null);
                this.trigger(draggableInitializedEvent);
              }
              destroy() {
                document.removeEventListener("drag:start", this[onDragStart], true);
                document.removeEventListener("drag:move", this[onDragMove], true);
                document.removeEventListener("drag:stop", this[onDragStop], true);
                document.removeEventListener("drag:pressure", this[onDragPressure], true);
                const draggableDestroyEvent = new _DraggableEvent.DraggableDestroyEvent({
                  draggable: this
                });
                this.trigger(draggableDestroyEvent);
                this.removePlugin(...this.plugins.map((plugin) => plugin.constructor));
                this.removeSensor(...this.sensors.map((sensor) => sensor.constructor));
              }
              addPlugin(...plugins) {
                const activePlugins = plugins.map((Plugin) => new Plugin(this));
                activePlugins.forEach((plugin) => plugin.attach());
                this.plugins = [...this.plugins, ...activePlugins];
                return this;
              }
              removePlugin(...plugins) {
                const removedPlugins = this.plugins.filter((plugin) => plugins.includes(plugin.constructor));
                removedPlugins.forEach((plugin) => plugin.detach());
                this.plugins = this.plugins.filter((plugin) => !plugins.includes(plugin.constructor));
                return this;
              }
              addSensor(...sensors) {
                const activeSensors = sensors.map((Sensor) => new Sensor(this.containers, this.options));
                activeSensors.forEach((sensor) => sensor.attach());
                this.sensors = [...this.sensors, ...activeSensors];
                return this;
              }
              removeSensor(...sensors) {
                const removedSensors = this.sensors.filter((sensor) => sensors.includes(sensor.constructor));
                removedSensors.forEach((sensor) => sensor.detach());
                this.sensors = this.sensors.filter((sensor) => !sensors.includes(sensor.constructor));
                return this;
              }
              addContainer(...containers) {
                this.containers = [...this.containers, ...containers];
                this.sensors.forEach((sensor) => sensor.addContainer(...containers));
                return this;
              }
              removeContainer(...containers) {
                this.containers = this.containers.filter((container) => !containers.includes(container));
                this.sensors.forEach((sensor) => sensor.removeContainer(...containers));
                return this;
              }
              on(type, ...callbacks) {
                this.emitter.on(type, ...callbacks);
                return this;
              }
              off(type, callback) {
                this.emitter.off(type, callback);
                return this;
              }
              trigger(event) {
                this.emitter.trigger(event);
                return this;
              }
              getClassNameFor(name) {
                return this.options.classes[name];
              }
              isDragging() {
                return Boolean(this.dragging);
              }
              getDraggableElements() {
                return this.containers.reduce((current, container) => {
                  return [...current, ...this.getDraggableElementsForContainer(container)];
                }, []);
              }
              getDraggableElementsForContainer(container) {
                const allDraggableElements = container.querySelectorAll(this.options.draggable);
                return [...allDraggableElements].filter((childElement) => {
                  return childElement !== this.originalSource && childElement !== this.mirror;
                });
              }
              [onDragStart](event) {
                const sensorEvent = getSensorEvent(event);
                const { target, container } = sensorEvent;
                if (!this.containers.includes(container)) {
                  return;
                }
                if (this.options.handle && target && !(0, _utils.closest)(target, this.options.handle)) {
                  sensorEvent.cancel();
                  return;
                }
                this.originalSource = (0, _utils.closest)(target, this.options.draggable);
                this.sourceContainer = container;
                if (!this.originalSource) {
                  sensorEvent.cancel();
                  return;
                }
                if (this.lastPlacedSource && this.lastPlacedContainer) {
                  clearTimeout(this.placedTimeoutID);
                  this.lastPlacedSource.classList.remove(this.getClassNameFor("source:placed"));
                  this.lastPlacedContainer.classList.remove(this.getClassNameFor("container:placed"));
                }
                this.source = this.originalSource.cloneNode(true);
                this.originalSource.parentNode.insertBefore(this.source, this.originalSource);
                this.originalSource.style.display = "none";
                const dragEvent = new _DragEvent.DragStartEvent({
                  source: this.source,
                  originalSource: this.originalSource,
                  sourceContainer: container,
                  sensorEvent
                });
                this.trigger(dragEvent);
                this.dragging = !dragEvent.canceled();
                if (dragEvent.canceled()) {
                  this.source.parentNode.removeChild(this.source);
                  this.originalSource.style.display = null;
                  return;
                }
                this.originalSource.classList.add(this.getClassNameFor("source:original"));
                this.source.classList.add(this.getClassNameFor("source:dragging"));
                this.sourceContainer.classList.add(this.getClassNameFor("container:dragging"));
                document.body.classList.add(this.getClassNameFor("body:dragging"));
                applyUserSelect(document.body, "none");
                requestAnimationFrame(() => {
                  const oldSensorEvent = getSensorEvent(event);
                  const newSensorEvent = oldSensorEvent.clone({ target: this.source });
                  this[onDragMove](_extends({}, event, {
                    detail: newSensorEvent
                  }));
                });
              }
              [onDragMove](event) {
                if (!this.dragging) {
                  return;
                }
                const sensorEvent = getSensorEvent(event);
                const { container } = sensorEvent;
                let target = sensorEvent.target;
                const dragMoveEvent = new _DragEvent.DragMoveEvent({
                  source: this.source,
                  originalSource: this.originalSource,
                  sourceContainer: container,
                  sensorEvent
                });
                this.trigger(dragMoveEvent);
                if (dragMoveEvent.canceled()) {
                  sensorEvent.cancel();
                }
                target = (0, _utils.closest)(target, this.options.draggable);
                const withinCorrectContainer = (0, _utils.closest)(sensorEvent.target, this.containers);
                const overContainer = sensorEvent.overContainer || withinCorrectContainer;
                const isLeavingContainer = this.currentOverContainer && overContainer !== this.currentOverContainer;
                const isLeavingDraggable = this.currentOver && target !== this.currentOver;
                const isOverContainer = overContainer && this.currentOverContainer !== overContainer;
                const isOverDraggable = withinCorrectContainer && target && this.currentOver !== target;
                if (isLeavingDraggable) {
                  const dragOutEvent = new _DragEvent.DragOutEvent({
                    source: this.source,
                    originalSource: this.originalSource,
                    sourceContainer: container,
                    sensorEvent,
                    over: this.currentOver
                  });
                  this.currentOver.classList.remove(this.getClassNameFor("draggable:over"));
                  this.currentOver = null;
                  this.trigger(dragOutEvent);
                }
                if (isLeavingContainer) {
                  const dragOutContainerEvent = new _DragEvent.DragOutContainerEvent({
                    source: this.source,
                    originalSource: this.originalSource,
                    sourceContainer: container,
                    sensorEvent,
                    overContainer: this.currentOverContainer
                  });
                  this.currentOverContainer.classList.remove(this.getClassNameFor("container:over"));
                  this.currentOverContainer = null;
                  this.trigger(dragOutContainerEvent);
                }
                if (isOverContainer) {
                  overContainer.classList.add(this.getClassNameFor("container:over"));
                  const dragOverContainerEvent = new _DragEvent.DragOverContainerEvent({
                    source: this.source,
                    originalSource: this.originalSource,
                    sourceContainer: container,
                    sensorEvent,
                    overContainer
                  });
                  this.currentOverContainer = overContainer;
                  this.trigger(dragOverContainerEvent);
                }
                if (isOverDraggable) {
                  target.classList.add(this.getClassNameFor("draggable:over"));
                  const dragOverEvent = new _DragEvent.DragOverEvent({
                    source: this.source,
                    originalSource: this.originalSource,
                    sourceContainer: container,
                    sensorEvent,
                    overContainer,
                    over: target
                  });
                  this.currentOver = target;
                  this.trigger(dragOverEvent);
                }
              }
              [onDragStop](event) {
                if (!this.dragging) {
                  return;
                }
                this.dragging = false;
                const dragStopEvent = new _DragEvent.DragStopEvent({
                  source: this.source,
                  originalSource: this.originalSource,
                  sensorEvent: event.sensorEvent,
                  sourceContainer: this.sourceContainer
                });
                this.trigger(dragStopEvent);
                this.source.parentNode.insertBefore(this.originalSource, this.source);
                this.source.parentNode.removeChild(this.source);
                this.originalSource.style.display = "";
                this.source.classList.remove(this.getClassNameFor("source:dragging"));
                this.originalSource.classList.remove(this.getClassNameFor("source:original"));
                this.originalSource.classList.add(this.getClassNameFor("source:placed"));
                this.sourceContainer.classList.add(this.getClassNameFor("container:placed"));
                this.sourceContainer.classList.remove(this.getClassNameFor("container:dragging"));
                document.body.classList.remove(this.getClassNameFor("body:dragging"));
                applyUserSelect(document.body, "");
                if (this.currentOver) {
                  this.currentOver.classList.remove(this.getClassNameFor("draggable:over"));
                }
                if (this.currentOverContainer) {
                  this.currentOverContainer.classList.remove(this.getClassNameFor("container:over"));
                }
                this.lastPlacedSource = this.originalSource;
                this.lastPlacedContainer = this.sourceContainer;
                this.placedTimeoutID = setTimeout(() => {
                  if (this.lastPlacedSource) {
                    this.lastPlacedSource.classList.remove(this.getClassNameFor("source:placed"));
                  }
                  if (this.lastPlacedContainer) {
                    this.lastPlacedContainer.classList.remove(this.getClassNameFor("container:placed"));
                  }
                  this.lastPlacedSource = null;
                  this.lastPlacedContainer = null;
                }, this.options.placedTimeout);
                this.source = null;
                this.originalSource = null;
                this.currentOverContainer = null;
                this.currentOver = null;
                this.sourceContainer = null;
              }
              [onDragPressure](event) {
                if (!this.dragging) {
                  return;
                }
                const sensorEvent = getSensorEvent(event);
                const source = this.source || (0, _utils.closest)(sensorEvent.originalEvent.target, this.options.draggable);
                const dragPressureEvent = new _DragEvent.DragPressureEvent({
                  sensorEvent,
                  source,
                  pressure: sensorEvent.pressure
                });
                this.trigger(dragPressureEvent);
              }
            }
            exports2.default = Draggable;
            Draggable.Plugins = { Announcement: _Plugins.Announcement, Focusable: _Plugins.Focusable, Mirror: _Plugins.Mirror, Scrollable: _Plugins.Scrollable };
            function getSensorEvent(event) {
              return event.detail;
            }
            function applyUserSelect(element, value) {
              element.style.webkitUserSelect = value;
              element.style.mozUserSelect = value;
              element.style.msUserSelect = value;
              element.style.oUserSelect = value;
              element.style.userSelect = value;
            }
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            var _Sensor = __webpack_require__(4);
            var _Sensor2 = _interopRequireDefault(_Sensor);
            var _SensorEvent = __webpack_require__(3);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            const onMouseForceWillBegin = Symbol("onMouseForceWillBegin");
            const onMouseForceDown = Symbol("onMouseForceDown");
            const onMouseDown = Symbol("onMouseDown");
            const onMouseForceChange = Symbol("onMouseForceChange");
            const onMouseMove = Symbol("onMouseMove");
            const onMouseUp = Symbol("onMouseUp");
            const onMouseForceGlobalChange = Symbol("onMouseForceGlobalChange");
            class ForceTouchSensor extends _Sensor2.default {
              constructor(containers = [], options = {}) {
                super(containers, options);
                this.mightDrag = false;
                this[onMouseForceWillBegin] = this[onMouseForceWillBegin].bind(this);
                this[onMouseForceDown] = this[onMouseForceDown].bind(this);
                this[onMouseDown] = this[onMouseDown].bind(this);
                this[onMouseForceChange] = this[onMouseForceChange].bind(this);
                this[onMouseMove] = this[onMouseMove].bind(this);
                this[onMouseUp] = this[onMouseUp].bind(this);
              }
              attach() {
                for (const container of this.containers) {
                  container.addEventListener("webkitmouseforcewillbegin", this[onMouseForceWillBegin], false);
                  container.addEventListener("webkitmouseforcedown", this[onMouseForceDown], false);
                  container.addEventListener("mousedown", this[onMouseDown], true);
                  container.addEventListener("webkitmouseforcechanged", this[onMouseForceChange], false);
                }
                document.addEventListener("mousemove", this[onMouseMove]);
                document.addEventListener("mouseup", this[onMouseUp]);
              }
              detach() {
                for (const container of this.containers) {
                  container.removeEventListener("webkitmouseforcewillbegin", this[onMouseForceWillBegin], false);
                  container.removeEventListener("webkitmouseforcedown", this[onMouseForceDown], false);
                  container.removeEventListener("mousedown", this[onMouseDown], true);
                  container.removeEventListener("webkitmouseforcechanged", this[onMouseForceChange], false);
                }
                document.removeEventListener("mousemove", this[onMouseMove]);
                document.removeEventListener("mouseup", this[onMouseUp]);
              }
              [onMouseForceWillBegin](event) {
                event.preventDefault();
                this.mightDrag = true;
              }
              [onMouseForceDown](event) {
                if (this.dragging) {
                  return;
                }
                const target = document.elementFromPoint(event.clientX, event.clientY);
                const container = event.currentTarget;
                const dragStartEvent = new _SensorEvent.DragStartSensorEvent({
                  clientX: event.clientX,
                  clientY: event.clientY,
                  target,
                  container,
                  originalEvent: event
                });
                this.trigger(container, dragStartEvent);
                this.currentContainer = container;
                this.dragging = !dragStartEvent.canceled();
                this.mightDrag = false;
              }
              [onMouseUp](event) {
                if (!this.dragging) {
                  return;
                }
                const dragStopEvent = new _SensorEvent.DragStopSensorEvent({
                  clientX: event.clientX,
                  clientY: event.clientY,
                  target: null,
                  container: this.currentContainer,
                  originalEvent: event
                });
                this.trigger(this.currentContainer, dragStopEvent);
                this.currentContainer = null;
                this.dragging = false;
                this.mightDrag = false;
              }
              [onMouseDown](event) {
                if (!this.mightDrag) {
                  return;
                }
                event.stopPropagation();
                event.stopImmediatePropagation();
                event.preventDefault();
              }
              [onMouseMove](event) {
                if (!this.dragging) {
                  return;
                }
                const target = document.elementFromPoint(event.clientX, event.clientY);
                const dragMoveEvent = new _SensorEvent.DragMoveSensorEvent({
                  clientX: event.clientX,
                  clientY: event.clientY,
                  target,
                  container: this.currentContainer,
                  originalEvent: event
                });
                this.trigger(this.currentContainer, dragMoveEvent);
              }
              [onMouseForceChange](event) {
                if (this.dragging) {
                  return;
                }
                const target = event.target;
                const container = event.currentTarget;
                const dragPressureEvent = new _SensorEvent.DragPressureSensorEvent({
                  pressure: event.webkitForce,
                  clientX: event.clientX,
                  clientY: event.clientY,
                  target,
                  container,
                  originalEvent: event
                });
                this.trigger(container, dragPressureEvent);
              }
              [onMouseForceGlobalChange](event) {
                if (!this.dragging) {
                  return;
                }
                const target = event.target;
                const dragPressureEvent = new _SensorEvent.DragPressureSensorEvent({
                  pressure: event.webkitForce,
                  clientX: event.clientX,
                  clientY: event.clientY,
                  target,
                  container: this.currentContainer,
                  originalEvent: event
                });
                this.trigger(this.currentContainer, dragPressureEvent);
              }
            }
            exports2.default = ForceTouchSensor;
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            var _ForceTouchSensor = __webpack_require__(38);
            var _ForceTouchSensor2 = _interopRequireDefault(_ForceTouchSensor);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            exports2.default = _ForceTouchSensor2.default;
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            var _utils = __webpack_require__(2);
            var _Sensor = __webpack_require__(4);
            var _Sensor2 = _interopRequireDefault(_Sensor);
            var _SensorEvent = __webpack_require__(3);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            const onMouseDown = Symbol("onMouseDown");
            const onMouseUp = Symbol("onMouseUp");
            const onDragStart = Symbol("onDragStart");
            const onDragOver = Symbol("onDragOver");
            const onDragEnd = Symbol("onDragEnd");
            const onDrop = Symbol("onDrop");
            const reset = Symbol("reset");
            class DragSensor extends _Sensor2.default {
              constructor(containers = [], options = {}) {
                super(containers, options);
                this.mouseDownTimeout = null;
                this.draggableElement = null;
                this.nativeDraggableElement = null;
                this[onMouseDown] = this[onMouseDown].bind(this);
                this[onMouseUp] = this[onMouseUp].bind(this);
                this[onDragStart] = this[onDragStart].bind(this);
                this[onDragOver] = this[onDragOver].bind(this);
                this[onDragEnd] = this[onDragEnd].bind(this);
                this[onDrop] = this[onDrop].bind(this);
              }
              attach() {
                document.addEventListener("mousedown", this[onMouseDown], true);
              }
              detach() {
                document.removeEventListener("mousedown", this[onMouseDown], true);
              }
              [onDragStart](event) {
                event.dataTransfer.setData("text", "");
                event.dataTransfer.effectAllowed = this.options.type;
                const target = document.elementFromPoint(event.clientX, event.clientY);
                this.currentContainer = (0, _utils.closest)(event.target, this.containers);
                if (!this.currentContainer) {
                  return;
                }
                const dragStartEvent = new _SensorEvent.DragStartSensorEvent({
                  clientX: event.clientX,
                  clientY: event.clientY,
                  target,
                  container: this.currentContainer,
                  originalEvent: event
                });
                setTimeout(() => {
                  this.trigger(this.currentContainer, dragStartEvent);
                  if (dragStartEvent.canceled()) {
                    this.dragging = false;
                  } else {
                    this.dragging = true;
                  }
                }, 0);
              }
              [onDragOver](event) {
                if (!this.dragging) {
                  return;
                }
                const target = document.elementFromPoint(event.clientX, event.clientY);
                const container = this.currentContainer;
                const dragMoveEvent = new _SensorEvent.DragMoveSensorEvent({
                  clientX: event.clientX,
                  clientY: event.clientY,
                  target,
                  container,
                  originalEvent: event
                });
                this.trigger(container, dragMoveEvent);
                if (!dragMoveEvent.canceled()) {
                  event.preventDefault();
                  event.dataTransfer.dropEffect = this.options.type;
                }
              }
              [onDragEnd](event) {
                if (!this.dragging) {
                  return;
                }
                document.removeEventListener("mouseup", this[onMouseUp], true);
                const target = document.elementFromPoint(event.clientX, event.clientY);
                const container = this.currentContainer;
                const dragStopEvent = new _SensorEvent.DragStopSensorEvent({
                  clientX: event.clientX,
                  clientY: event.clientY,
                  target,
                  container,
                  originalEvent: event
                });
                this.trigger(container, dragStopEvent);
                this.dragging = false;
                this[reset]();
              }
              [onDrop](event) {
                event.preventDefault();
              }
              [onMouseDown](event) {
                if (event.target && (event.target.form || event.target.contenteditable)) {
                  return;
                }
                const nativeDraggableElement = (0, _utils.closest)(event.target, (element) => element.draggable);
                if (nativeDraggableElement) {
                  nativeDraggableElement.draggable = false;
                  this.nativeDraggableElement = nativeDraggableElement;
                }
                document.addEventListener("mouseup", this[onMouseUp], true);
                document.addEventListener("dragstart", this[onDragStart], false);
                document.addEventListener("dragover", this[onDragOver], false);
                document.addEventListener("dragend", this[onDragEnd], false);
                document.addEventListener("drop", this[onDrop], false);
                const target = (0, _utils.closest)(event.target, this.options.draggable);
                if (!target) {
                  return;
                }
                this.mouseDownTimeout = setTimeout(() => {
                  target.draggable = true;
                  this.draggableElement = target;
                }, this.options.delay);
              }
              [onMouseUp]() {
                this[reset]();
              }
              [reset]() {
                clearTimeout(this.mouseDownTimeout);
                document.removeEventListener("mouseup", this[onMouseUp], true);
                document.removeEventListener("dragstart", this[onDragStart], false);
                document.removeEventListener("dragover", this[onDragOver], false);
                document.removeEventListener("dragend", this[onDragEnd], false);
                document.removeEventListener("drop", this[onDrop], false);
                if (this.nativeDraggableElement) {
                  this.nativeDraggableElement.draggable = true;
                  this.nativeDraggableElement = null;
                }
                if (this.draggableElement) {
                  this.draggableElement.draggable = false;
                  this.draggableElement = null;
                }
              }
            }
            exports2.default = DragSensor;
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            var _DragSensor = __webpack_require__(40);
            var _DragSensor2 = _interopRequireDefault(_DragSensor);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            exports2.default = _DragSensor2.default;
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            var _utils = __webpack_require__(2);
            var _Sensor = __webpack_require__(4);
            var _Sensor2 = _interopRequireDefault(_Sensor);
            var _SensorEvent = __webpack_require__(3);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            const onTouchStart = Symbol("onTouchStart");
            const onTouchHold = Symbol("onTouchHold");
            const onTouchEnd = Symbol("onTouchEnd");
            const onTouchMove = Symbol("onTouchMove");
            let preventScrolling = false;
            window.addEventListener("touchmove", (event) => {
              if (!preventScrolling) {
                return;
              }
              event.preventDefault();
            }, { passive: false });
            class TouchSensor extends _Sensor2.default {
              constructor(containers = [], options = {}) {
                super(containers, options);
                this.currentScrollableParent = null;
                this.tapTimeout = null;
                this.touchMoved = false;
                this[onTouchStart] = this[onTouchStart].bind(this);
                this[onTouchHold] = this[onTouchHold].bind(this);
                this[onTouchEnd] = this[onTouchEnd].bind(this);
                this[onTouchMove] = this[onTouchMove].bind(this);
              }
              attach() {
                document.addEventListener("touchstart", this[onTouchStart]);
              }
              detach() {
                document.removeEventListener("touchstart", this[onTouchStart]);
              }
              [onTouchStart](event) {
                const container = (0, _utils.closest)(event.target, this.containers);
                if (!container) {
                  return;
                }
                document.addEventListener("touchmove", this[onTouchMove]);
                document.addEventListener("touchend", this[onTouchEnd]);
                document.addEventListener("touchcancel", this[onTouchEnd]);
                container.addEventListener("contextmenu", onContextMenu);
                this.currentContainer = container;
                this.tapTimeout = setTimeout(this[onTouchHold](event, container), this.options.delay);
              }
              [onTouchHold](event, container) {
                return () => {
                  if (this.touchMoved) {
                    return;
                  }
                  const touch = event.touches[0] || event.changedTouches[0];
                  const target = event.target;
                  const dragStartEvent = new _SensorEvent.DragStartSensorEvent({
                    clientX: touch.pageX,
                    clientY: touch.pageY,
                    target,
                    container,
                    originalEvent: event
                  });
                  this.trigger(container, dragStartEvent);
                  this.dragging = !dragStartEvent.canceled();
                  preventScrolling = this.dragging;
                };
              }
              [onTouchMove](event) {
                this.touchMoved = true;
                if (!this.dragging) {
                  return;
                }
                const touch = event.touches[0] || event.changedTouches[0];
                const target = document.elementFromPoint(touch.pageX - window.scrollX, touch.pageY - window.scrollY);
                const dragMoveEvent = new _SensorEvent.DragMoveSensorEvent({
                  clientX: touch.pageX,
                  clientY: touch.pageY,
                  target,
                  container: this.currentContainer,
                  originalEvent: event
                });
                this.trigger(this.currentContainer, dragMoveEvent);
              }
              [onTouchEnd](event) {
                this.touchMoved = false;
                preventScrolling = false;
                document.removeEventListener("touchend", this[onTouchEnd]);
                document.removeEventListener("touchcancel", this[onTouchEnd]);
                document.removeEventListener("touchmove", this[onTouchMove]);
                if (this.currentContainer) {
                  this.currentContainer.removeEventListener("contextmenu", onContextMenu);
                }
                clearTimeout(this.tapTimeout);
                if (!this.dragging) {
                  return;
                }
                const touch = event.touches[0] || event.changedTouches[0];
                const target = document.elementFromPoint(touch.pageX - window.scrollX, touch.pageY - window.scrollY);
                event.preventDefault();
                const dragStopEvent = new _SensorEvent.DragStopSensorEvent({
                  clientX: touch.pageX,
                  clientY: touch.pageY,
                  target,
                  container: this.currentContainer,
                  originalEvent: event
                });
                this.trigger(this.currentContainer, dragStopEvent);
                this.currentContainer = null;
                this.dragging = false;
              }
            }
            exports2.default = TouchSensor;
            function onContextMenu(event) {
              event.preventDefault();
              event.stopPropagation();
            }
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            var _TouchSensor = __webpack_require__(42);
            var _TouchSensor2 = _interopRequireDefault(_TouchSensor);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            exports2.default = _TouchSensor2.default;
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            exports2.DragPressureSensorEvent = exports2.DragStopSensorEvent = exports2.DragMoveSensorEvent = exports2.DragStartSensorEvent = exports2.SensorEvent = void 0;
            var _AbstractEvent = __webpack_require__(0);
            var _AbstractEvent2 = _interopRequireDefault(_AbstractEvent);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            class SensorEvent extends _AbstractEvent2.default {
              get originalEvent() {
                return this.data.originalEvent;
              }
              get clientX() {
                return this.data.clientX;
              }
              get clientY() {
                return this.data.clientY;
              }
              get target() {
                return this.data.target;
              }
              get container() {
                return this.data.container;
              }
              get pressure() {
                return this.data.pressure;
              }
            }
            exports2.SensorEvent = SensorEvent;
            class DragStartSensorEvent extends SensorEvent {
            }
            exports2.DragStartSensorEvent = DragStartSensorEvent;
            DragStartSensorEvent.type = "drag:start";
            class DragMoveSensorEvent extends SensorEvent {
            }
            exports2.DragMoveSensorEvent = DragMoveSensorEvent;
            DragMoveSensorEvent.type = "drag:move";
            class DragStopSensorEvent extends SensorEvent {
            }
            exports2.DragStopSensorEvent = DragStopSensorEvent;
            DragStopSensorEvent.type = "drag:stop";
            class DragPressureSensorEvent extends SensorEvent {
            }
            exports2.DragPressureSensorEvent = DragPressureSensorEvent;
            DragPressureSensorEvent.type = "drag:pressure";
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            var _utils = __webpack_require__(2);
            var _Sensor = __webpack_require__(4);
            var _Sensor2 = _interopRequireDefault(_Sensor);
            var _SensorEvent = __webpack_require__(3);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            const onContextMenuWhileDragging = Symbol("onContextMenuWhileDragging");
            const onMouseDown = Symbol("onMouseDown");
            const onMouseMove = Symbol("onMouseMove");
            const onMouseUp = Symbol("onMouseUp");
            class MouseSensor extends _Sensor2.default {
              constructor(containers = [], options = {}) {
                super(containers, options);
                this.mouseDown = false;
                this.mouseDownTimeout = null;
                this.openedContextMenu = false;
                this[onContextMenuWhileDragging] = this[onContextMenuWhileDragging].bind(this);
                this[onMouseDown] = this[onMouseDown].bind(this);
                this[onMouseMove] = this[onMouseMove].bind(this);
                this[onMouseUp] = this[onMouseUp].bind(this);
              }
              attach() {
                document.addEventListener("mousedown", this[onMouseDown], true);
              }
              detach() {
                document.removeEventListener("mousedown", this[onMouseDown], true);
              }
              [onMouseDown](event) {
                if (event.button !== 0 || event.ctrlKey || event.metaKey) {
                  return;
                }
                document.addEventListener("mouseup", this[onMouseUp]);
                const target = document.elementFromPoint(event.clientX, event.clientY);
                const container = (0, _utils.closest)(target, this.containers);
                if (!container) {
                  return;
                }
                document.addEventListener("dragstart", preventNativeDragStart);
                this.mouseDown = true;
                clearTimeout(this.mouseDownTimeout);
                this.mouseDownTimeout = setTimeout(() => {
                  if (!this.mouseDown) {
                    return;
                  }
                  const dragStartEvent = new _SensorEvent.DragStartSensorEvent({
                    clientX: event.clientX,
                    clientY: event.clientY,
                    target,
                    container,
                    originalEvent: event
                  });
                  this.trigger(container, dragStartEvent);
                  this.currentContainer = container;
                  this.dragging = !dragStartEvent.canceled();
                  if (this.dragging) {
                    document.addEventListener("contextmenu", this[onContextMenuWhileDragging]);
                    document.addEventListener("mousemove", this[onMouseMove]);
                  }
                }, this.options.delay);
              }
              [onMouseMove](event) {
                if (!this.dragging) {
                  return;
                }
                const target = document.elementFromPoint(event.clientX, event.clientY);
                const dragMoveEvent = new _SensorEvent.DragMoveSensorEvent({
                  clientX: event.clientX,
                  clientY: event.clientY,
                  target,
                  container: this.currentContainer,
                  originalEvent: event
                });
                this.trigger(this.currentContainer, dragMoveEvent);
              }
              [onMouseUp](event) {
                this.mouseDown = Boolean(this.openedContextMenu);
                if (this.openedContextMenu) {
                  this.openedContextMenu = false;
                  return;
                }
                document.removeEventListener("mouseup", this[onMouseUp]);
                document.removeEventListener("dragstart", preventNativeDragStart);
                if (!this.dragging) {
                  return;
                }
                const target = document.elementFromPoint(event.clientX, event.clientY);
                const dragStopEvent = new _SensorEvent.DragStopSensorEvent({
                  clientX: event.clientX,
                  clientY: event.clientY,
                  target,
                  container: this.currentContainer,
                  originalEvent: event
                });
                this.trigger(this.currentContainer, dragStopEvent);
                document.removeEventListener("contextmenu", this[onContextMenuWhileDragging]);
                document.removeEventListener("mousemove", this[onMouseMove]);
                this.currentContainer = null;
                this.dragging = false;
              }
              [onContextMenuWhileDragging](event) {
                event.preventDefault();
                this.openedContextMenu = true;
              }
            }
            exports2.default = MouseSensor;
            function preventNativeDragStart(event) {
              event.preventDefault();
            }
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            var _MouseSensor = __webpack_require__(45);
            var _MouseSensor2 = _interopRequireDefault(_MouseSensor);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            exports2.default = _MouseSensor2.default;
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            var _extends = Object.assign || function(target) {
              for (var i = 1; i < arguments.length; i++) {
                var source = arguments[i];
                for (var key in source) {
                  if (Object.prototype.hasOwnProperty.call(source, key)) {
                    target[key] = source[key];
                  }
                }
              }
              return target;
            };
            class Sensor {
              constructor(containers = [], options = {}) {
                this.containers = [...containers];
                this.options = _extends({}, options);
                this.dragging = false;
                this.currentContainer = null;
              }
              attach() {
                return this;
              }
              detach() {
                return this;
              }
              addContainer(...containers) {
                this.containers = [...this.containers, ...containers];
              }
              removeContainer(...containers) {
                this.containers = this.containers.filter((container) => !containers.includes(container));
              }
              trigger(element, sensorEvent) {
                const event = document.createEvent("Event");
                event.detail = sensorEvent;
                event.initEvent(sensorEvent.type, true, true);
                element.dispatchEvent(event);
                this.lastEvent = sensorEvent;
                return sensorEvent;
              }
            }
            exports2.default = Sensor;
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            exports2.default = requestNextAnimationFrame;
            function requestNextAnimationFrame(callback) {
              return requestAnimationFrame(() => {
                requestAnimationFrame(callback);
              });
            }
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            var _requestNextAnimationFrame = __webpack_require__(48);
            var _requestNextAnimationFrame2 = _interopRequireDefault(_requestNextAnimationFrame);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            exports2.default = _requestNextAnimationFrame2.default;
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            exports2.default = closest;
            const matchFunction = Element.prototype.matches || Element.prototype.webkitMatchesSelector || Element.prototype.mozMatchesSelector || Element.prototype.msMatchesSelector;
            function closest(element, value) {
              if (!element) {
                return null;
              }
              const selector = value;
              const callback = value;
              const nodeList = value;
              const singleElement = value;
              const isSelector = Boolean(typeof value === "string");
              const isFunction = Boolean(typeof value === "function");
              const isNodeList = Boolean(value instanceof NodeList || value instanceof Array);
              const isElement = Boolean(value instanceof HTMLElement);
              function conditionFn(currentElement) {
                if (!currentElement) {
                  return currentElement;
                } else if (isSelector) {
                  return matchFunction.call(currentElement, selector);
                } else if (isNodeList) {
                  return [...nodeList].includes(currentElement);
                } else if (isElement) {
                  return singleElement === currentElement;
                } else if (isFunction) {
                  return callback(currentElement);
                } else {
                  return null;
                }
              }
              let current = element;
              do {
                current = current.correspondingUseElement || current.correspondingElement || current;
                if (conditionFn(current)) {
                  return current;
                }
                current = current.parentNode;
              } while (current && current !== document.body && current !== document);
              return null;
            }
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            var _closest = __webpack_require__(50);
            var _closest2 = _interopRequireDefault(_closest);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            exports2.default = _closest2.default;
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            exports2.defaultOptions = exports2.scroll = exports2.onDragStop = exports2.onDragMove = exports2.onDragStart = void 0;
            var _extends = Object.assign || function(target) {
              for (var i = 1; i < arguments.length; i++) {
                var source = arguments[i];
                for (var key in source) {
                  if (Object.prototype.hasOwnProperty.call(source, key)) {
                    target[key] = source[key];
                  }
                }
              }
              return target;
            };
            var _AbstractPlugin = __webpack_require__(1);
            var _AbstractPlugin2 = _interopRequireDefault(_AbstractPlugin);
            var _utils = __webpack_require__(2);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            const onDragStart = exports2.onDragStart = Symbol("onDragStart");
            const onDragMove = exports2.onDragMove = Symbol("onDragMove");
            const onDragStop = exports2.onDragStop = Symbol("onDragStop");
            const scroll = exports2.scroll = Symbol("scroll");
            const defaultOptions = exports2.defaultOptions = {
              speed: 6,
              sensitivity: 50,
              scrollableElements: []
            };
            class Scrollable extends _AbstractPlugin2.default {
              constructor(draggable) {
                super(draggable);
                this.options = _extends({}, defaultOptions, this.getOptions());
                this.currentMousePosition = null;
                this.scrollAnimationFrame = null;
                this.scrollableElement = null;
                this.findScrollableElementFrame = null;
                this[onDragStart] = this[onDragStart].bind(this);
                this[onDragMove] = this[onDragMove].bind(this);
                this[onDragStop] = this[onDragStop].bind(this);
                this[scroll] = this[scroll].bind(this);
              }
              attach() {
                this.draggable.on("drag:start", this[onDragStart]).on("drag:move", this[onDragMove]).on("drag:stop", this[onDragStop]);
              }
              detach() {
                this.draggable.off("drag:start", this[onDragStart]).off("drag:move", this[onDragMove]).off("drag:stop", this[onDragStop]);
              }
              getOptions() {
                return this.draggable.options.scrollable || {};
              }
              getScrollableElement(target) {
                if (this.hasDefinedScrollableElements()) {
                  return (0, _utils.closest)(target, this.options.scrollableElements) || document.documentElement;
                } else {
                  return closestScrollableElement(target);
                }
              }
              hasDefinedScrollableElements() {
                return Boolean(this.options.scrollableElements.length !== 0);
              }
              [onDragStart](dragEvent) {
                this.findScrollableElementFrame = requestAnimationFrame(() => {
                  this.scrollableElement = this.getScrollableElement(dragEvent.source);
                });
              }
              [onDragMove](dragEvent) {
                this.findScrollableElementFrame = requestAnimationFrame(() => {
                  this.scrollableElement = this.getScrollableElement(dragEvent.sensorEvent.target);
                });
                if (!this.scrollableElement) {
                  return;
                }
                const sensorEvent = dragEvent.sensorEvent;
                const scrollOffset = { x: 0, y: 0 };
                if ("ontouchstart" in window) {
                  scrollOffset.y = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop || 0;
                  scrollOffset.x = window.pageXOffset || document.documentElement.scrollLeft || document.body.scrollLeft || 0;
                }
                this.currentMousePosition = {
                  clientX: sensorEvent.clientX - scrollOffset.x,
                  clientY: sensorEvent.clientY - scrollOffset.y
                };
                this.scrollAnimationFrame = requestAnimationFrame(this[scroll]);
              }
              [onDragStop]() {
                cancelAnimationFrame(this.scrollAnimationFrame);
                cancelAnimationFrame(this.findScrollableElementFrame);
                this.scrollableElement = null;
                this.scrollAnimationFrame = null;
                this.findScrollableElementFrame = null;
                this.currentMousePosition = null;
              }
              [scroll]() {
                if (!this.scrollableElement || !this.currentMousePosition) {
                  return;
                }
                cancelAnimationFrame(this.scrollAnimationFrame);
                const { speed, sensitivity } = this.options;
                const rect = this.scrollableElement.getBoundingClientRect();
                const bottomCutOff = rect.bottom > window.innerHeight;
                const topCutOff = rect.top < 0;
                const cutOff = topCutOff || bottomCutOff;
                const documentScrollingElement = getDocumentScrollingElement();
                const scrollableElement = this.scrollableElement;
                const clientX = this.currentMousePosition.clientX;
                const clientY = this.currentMousePosition.clientY;
                if (scrollableElement !== document.body && scrollableElement !== document.documentElement && !cutOff) {
                  const { offsetHeight, offsetWidth } = scrollableElement;
                  if (rect.top + offsetHeight - clientY < sensitivity) {
                    scrollableElement.scrollTop += speed;
                  } else if (clientY - rect.top < sensitivity) {
                    scrollableElement.scrollTop -= speed;
                  }
                  if (rect.left + offsetWidth - clientX < sensitivity) {
                    scrollableElement.scrollLeft += speed;
                  } else if (clientX - rect.left < sensitivity) {
                    scrollableElement.scrollLeft -= speed;
                  }
                } else {
                  const { innerHeight, innerWidth } = window;
                  if (clientY < sensitivity) {
                    documentScrollingElement.scrollTop -= speed;
                  } else if (innerHeight - clientY < sensitivity) {
                    documentScrollingElement.scrollTop += speed;
                  }
                  if (clientX < sensitivity) {
                    documentScrollingElement.scrollLeft -= speed;
                  } else if (innerWidth - clientX < sensitivity) {
                    documentScrollingElement.scrollLeft += speed;
                  }
                }
                this.scrollAnimationFrame = requestAnimationFrame(this[scroll]);
              }
            }
            exports2.default = Scrollable;
            function hasOverflow(element) {
              const overflowRegex = /(auto|scroll)/;
              const computedStyles = getComputedStyle(element, null);
              const overflow = computedStyles.getPropertyValue("overflow") + computedStyles.getPropertyValue("overflow-y") + computedStyles.getPropertyValue("overflow-x");
              return overflowRegex.test(overflow);
            }
            function isStaticallyPositioned(element) {
              const position = getComputedStyle(element).getPropertyValue("position");
              return position === "static";
            }
            function closestScrollableElement(element) {
              if (!element) {
                return getDocumentScrollingElement();
              }
              const position = getComputedStyle(element).getPropertyValue("position");
              const excludeStaticParents = position === "absolute";
              const scrollableElement = (0, _utils.closest)(element, (parent) => {
                if (excludeStaticParents && isStaticallyPositioned(parent)) {
                  return false;
                }
                return hasOverflow(parent);
              });
              if (position === "fixed" || !scrollableElement) {
                return getDocumentScrollingElement();
              } else {
                return scrollableElement;
              }
            }
            function getDocumentScrollingElement() {
              return document.scrollingElement || document.documentElement;
            }
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            exports2.defaultOptions = void 0;
            var _Scrollable = __webpack_require__(52);
            var _Scrollable2 = _interopRequireDefault(_Scrollable);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            exports2.default = _Scrollable2.default;
            exports2.defaultOptions = _Scrollable.defaultOptions;
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            exports2.MirrorDestroyEvent = exports2.MirrorMoveEvent = exports2.MirrorAttachedEvent = exports2.MirrorCreatedEvent = exports2.MirrorCreateEvent = exports2.MirrorEvent = void 0;
            var _AbstractEvent = __webpack_require__(0);
            var _AbstractEvent2 = _interopRequireDefault(_AbstractEvent);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            class MirrorEvent extends _AbstractEvent2.default {
              get source() {
                return this.data.source;
              }
              get originalSource() {
                return this.data.originalSource;
              }
              get sourceContainer() {
                return this.data.sourceContainer;
              }
              get sensorEvent() {
                return this.data.sensorEvent;
              }
              get dragEvent() {
                return this.data.dragEvent;
              }
              get originalEvent() {
                if (this.sensorEvent) {
                  return this.sensorEvent.originalEvent;
                }
                return null;
              }
            }
            exports2.MirrorEvent = MirrorEvent;
            class MirrorCreateEvent extends MirrorEvent {
            }
            exports2.MirrorCreateEvent = MirrorCreateEvent;
            MirrorCreateEvent.type = "mirror:create";
            class MirrorCreatedEvent extends MirrorEvent {
              get mirror() {
                return this.data.mirror;
              }
            }
            exports2.MirrorCreatedEvent = MirrorCreatedEvent;
            MirrorCreatedEvent.type = "mirror:created";
            class MirrorAttachedEvent extends MirrorEvent {
              get mirror() {
                return this.data.mirror;
              }
            }
            exports2.MirrorAttachedEvent = MirrorAttachedEvent;
            MirrorAttachedEvent.type = "mirror:attached";
            class MirrorMoveEvent extends MirrorEvent {
              get mirror() {
                return this.data.mirror;
              }
            }
            exports2.MirrorMoveEvent = MirrorMoveEvent;
            MirrorMoveEvent.type = "mirror:move";
            MirrorMoveEvent.cancelable = true;
            class MirrorDestroyEvent extends MirrorEvent {
              get mirror() {
                return this.data.mirror;
              }
            }
            exports2.MirrorDestroyEvent = MirrorDestroyEvent;
            MirrorDestroyEvent.type = "mirror:destroy";
            MirrorDestroyEvent.cancelable = true;
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            var _MirrorEvent = __webpack_require__(54);
            Object.keys(_MirrorEvent).forEach(function(key) {
              if (key === "default" || key === "__esModule")
                return;
              Object.defineProperty(exports2, key, {
                enumerable: true,
                get: function() {
                  return _MirrorEvent[key];
                }
              });
            });
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            exports2.defaultOptions = exports2.getAppendableContainer = exports2.onScroll = exports2.onMirrorMove = exports2.onMirrorCreated = exports2.onDragStop = exports2.onDragMove = exports2.onDragStart = void 0;
            var _extends = Object.assign || function(target) {
              for (var i = 1; i < arguments.length; i++) {
                var source = arguments[i];
                for (var key in source) {
                  if (Object.prototype.hasOwnProperty.call(source, key)) {
                    target[key] = source[key];
                  }
                }
              }
              return target;
            };
            var _AbstractPlugin = __webpack_require__(1);
            var _AbstractPlugin2 = _interopRequireDefault(_AbstractPlugin);
            var _MirrorEvent = __webpack_require__(55);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            function _objectWithoutProperties(obj, keys) {
              var target = {};
              for (var i in obj) {
                if (keys.indexOf(i) >= 0)
                  continue;
                if (!Object.prototype.hasOwnProperty.call(obj, i))
                  continue;
                target[i] = obj[i];
              }
              return target;
            }
            const onDragStart = exports2.onDragStart = Symbol("onDragStart");
            const onDragMove = exports2.onDragMove = Symbol("onDragMove");
            const onDragStop = exports2.onDragStop = Symbol("onDragStop");
            const onMirrorCreated = exports2.onMirrorCreated = Symbol("onMirrorCreated");
            const onMirrorMove = exports2.onMirrorMove = Symbol("onMirrorMove");
            const onScroll = exports2.onScroll = Symbol("onScroll");
            const getAppendableContainer = exports2.getAppendableContainer = Symbol("getAppendableContainer");
            const defaultOptions = exports2.defaultOptions = {
              constrainDimensions: false,
              xAxis: true,
              yAxis: true,
              cursorOffsetX: null,
              cursorOffsetY: null
            };
            class Mirror extends _AbstractPlugin2.default {
              constructor(draggable) {
                super(draggable);
                this.options = _extends({}, defaultOptions, this.getOptions());
                this.scrollOffset = { x: 0, y: 0 };
                this.initialScrollOffset = {
                  x: window.scrollX,
                  y: window.scrollY
                };
                this[onDragStart] = this[onDragStart].bind(this);
                this[onDragMove] = this[onDragMove].bind(this);
                this[onDragStop] = this[onDragStop].bind(this);
                this[onMirrorCreated] = this[onMirrorCreated].bind(this);
                this[onMirrorMove] = this[onMirrorMove].bind(this);
                this[onScroll] = this[onScroll].bind(this);
              }
              attach() {
                this.draggable.on("drag:start", this[onDragStart]).on("drag:move", this[onDragMove]).on("drag:stop", this[onDragStop]).on("mirror:created", this[onMirrorCreated]).on("mirror:move", this[onMirrorMove]);
              }
              detach() {
                this.draggable.off("drag:start", this[onDragStart]).off("drag:move", this[onDragMove]).off("drag:stop", this[onDragStop]).off("mirror:created", this[onMirrorCreated]).off("mirror:move", this[onMirrorMove]);
              }
              getOptions() {
                return this.draggable.options.mirror || {};
              }
              [onDragStart](dragEvent) {
                if (dragEvent.canceled()) {
                  return;
                }
                if ("ontouchstart" in window) {
                  document.addEventListener("scroll", this[onScroll], true);
                }
                this.initialScrollOffset = {
                  x: window.scrollX,
                  y: window.scrollY
                };
                const { source, originalSource, sourceContainer, sensorEvent } = dragEvent;
                const mirrorCreateEvent = new _MirrorEvent.MirrorCreateEvent({
                  source,
                  originalSource,
                  sourceContainer,
                  sensorEvent,
                  dragEvent
                });
                this.draggable.trigger(mirrorCreateEvent);
                if (isNativeDragEvent(sensorEvent) || mirrorCreateEvent.canceled()) {
                  return;
                }
                const appendableContainer = this[getAppendableContainer](source) || sourceContainer;
                this.mirror = source.cloneNode(true);
                const mirrorCreatedEvent = new _MirrorEvent.MirrorCreatedEvent({
                  source,
                  originalSource,
                  sourceContainer,
                  sensorEvent,
                  dragEvent,
                  mirror: this.mirror
                });
                const mirrorAttachedEvent = new _MirrorEvent.MirrorAttachedEvent({
                  source,
                  originalSource,
                  sourceContainer,
                  sensorEvent,
                  dragEvent,
                  mirror: this.mirror
                });
                this.draggable.trigger(mirrorCreatedEvent);
                appendableContainer.appendChild(this.mirror);
                this.draggable.trigger(mirrorAttachedEvent);
              }
              [onDragMove](dragEvent) {
                if (!this.mirror || dragEvent.canceled()) {
                  return;
                }
                const { source, originalSource, sourceContainer, sensorEvent } = dragEvent;
                const mirrorMoveEvent = new _MirrorEvent.MirrorMoveEvent({
                  source,
                  originalSource,
                  sourceContainer,
                  sensorEvent,
                  dragEvent,
                  mirror: this.mirror
                });
                this.draggable.trigger(mirrorMoveEvent);
              }
              [onDragStop](dragEvent) {
                if ("ontouchstart" in window) {
                  document.removeEventListener("scroll", this[onScroll], true);
                }
                this.initialScrollOffset = { x: 0, y: 0 };
                this.scrollOffset = { x: 0, y: 0 };
                if (!this.mirror) {
                  return;
                }
                const { source, sourceContainer, sensorEvent } = dragEvent;
                const mirrorDestroyEvent = new _MirrorEvent.MirrorDestroyEvent({
                  source,
                  mirror: this.mirror,
                  sourceContainer,
                  sensorEvent,
                  dragEvent
                });
                this.draggable.trigger(mirrorDestroyEvent);
                if (!mirrorDestroyEvent.canceled()) {
                  this.mirror.parentNode.removeChild(this.mirror);
                }
              }
              [onScroll]() {
                this.scrollOffset = {
                  x: window.scrollX - this.initialScrollOffset.x,
                  y: window.scrollY - this.initialScrollOffset.y
                };
              }
              [onMirrorCreated]({ mirror, source, sensorEvent }) {
                const mirrorClass = this.draggable.getClassNameFor("mirror");
                const setState = (_ref) => {
                  let { mirrorOffset, initialX, initialY } = _ref, args = _objectWithoutProperties(_ref, ["mirrorOffset", "initialX", "initialY"]);
                  this.mirrorOffset = mirrorOffset;
                  this.initialX = initialX;
                  this.initialY = initialY;
                  return _extends({ mirrorOffset, initialX, initialY }, args);
                };
                const initialState = {
                  mirror,
                  source,
                  sensorEvent,
                  mirrorClass,
                  scrollOffset: this.scrollOffset,
                  options: this.options
                };
                return Promise.resolve(initialState).then(computeMirrorDimensions).then(calculateMirrorOffset).then(resetMirror).then(addMirrorClasses).then(positionMirror({ initial: true })).then(removeMirrorID).then(setState);
              }
              [onMirrorMove](mirrorEvent) {
                if (mirrorEvent.canceled()) {
                  return null;
                }
                const initialState = {
                  mirror: mirrorEvent.mirror,
                  sensorEvent: mirrorEvent.sensorEvent,
                  mirrorOffset: this.mirrorOffset,
                  options: this.options,
                  initialX: this.initialX,
                  initialY: this.initialY,
                  scrollOffset: this.scrollOffset
                };
                return Promise.resolve(initialState).then(positionMirror({ raf: true }));
              }
              [getAppendableContainer](source) {
                const appendTo = this.options.appendTo;
                if (typeof appendTo === "string") {
                  return document.querySelector(appendTo);
                } else if (appendTo instanceof HTMLElement) {
                  return appendTo;
                } else if (typeof appendTo === "function") {
                  return appendTo(source);
                } else {
                  return source.parentNode;
                }
              }
            }
            exports2.default = Mirror;
            function computeMirrorDimensions(_ref2) {
              let { source } = _ref2, args = _objectWithoutProperties(_ref2, ["source"]);
              return withPromise((resolve) => {
                const sourceRect = source.getBoundingClientRect();
                resolve(_extends({ source, sourceRect }, args));
              });
            }
            function calculateMirrorOffset(_ref3) {
              let { sensorEvent, sourceRect, options } = _ref3, args = _objectWithoutProperties(_ref3, ["sensorEvent", "sourceRect", "options"]);
              return withPromise((resolve) => {
                const top = options.cursorOffsetY === null ? sensorEvent.clientY - sourceRect.top : options.cursorOffsetY;
                const left = options.cursorOffsetX === null ? sensorEvent.clientX - sourceRect.left : options.cursorOffsetX;
                const mirrorOffset = { top, left };
                resolve(_extends({ sensorEvent, sourceRect, mirrorOffset, options }, args));
              });
            }
            function resetMirror(_ref4) {
              let { mirror, source, options } = _ref4, args = _objectWithoutProperties(_ref4, ["mirror", "source", "options"]);
              return withPromise((resolve) => {
                let offsetHeight;
                let offsetWidth;
                if (options.constrainDimensions) {
                  const computedSourceStyles = getComputedStyle(source);
                  offsetHeight = computedSourceStyles.getPropertyValue("height");
                  offsetWidth = computedSourceStyles.getPropertyValue("width");
                }
                mirror.style.position = "fixed";
                mirror.style.pointerEvents = "none";
                mirror.style.top = 0;
                mirror.style.left = 0;
                mirror.style.margin = 0;
                if (options.constrainDimensions) {
                  mirror.style.height = offsetHeight;
                  mirror.style.width = offsetWidth;
                }
                resolve(_extends({ mirror, source, options }, args));
              });
            }
            function addMirrorClasses(_ref5) {
              let { mirror, mirrorClass } = _ref5, args = _objectWithoutProperties(_ref5, ["mirror", "mirrorClass"]);
              return withPromise((resolve) => {
                mirror.classList.add(mirrorClass);
                resolve(_extends({ mirror, mirrorClass }, args));
              });
            }
            function removeMirrorID(_ref6) {
              let { mirror } = _ref6, args = _objectWithoutProperties(_ref6, ["mirror"]);
              return withPromise((resolve) => {
                mirror.removeAttribute("id");
                delete mirror.id;
                resolve(_extends({ mirror }, args));
              });
            }
            function positionMirror({ withFrame = false, initial = false } = {}) {
              return (_ref7) => {
                let { mirror, sensorEvent, mirrorOffset, initialY, initialX, scrollOffset, options } = _ref7, args = _objectWithoutProperties(_ref7, ["mirror", "sensorEvent", "mirrorOffset", "initialY", "initialX", "scrollOffset", "options"]);
                return withPromise((resolve) => {
                  const result = _extends({
                    mirror,
                    sensorEvent,
                    mirrorOffset,
                    options
                  }, args);
                  if (mirrorOffset) {
                    const x = sensorEvent.clientX - mirrorOffset.left - scrollOffset.x;
                    const y = sensorEvent.clientY - mirrorOffset.top - scrollOffset.y;
                    if (options.xAxis && options.yAxis || initial) {
                      mirror.style.transform = `translate3d(${x}px, ${y}px, 0)`;
                    } else if (options.xAxis && !options.yAxis) {
                      mirror.style.transform = `translate3d(${x}px, ${initialY}px, 0)`;
                    } else if (options.yAxis && !options.xAxis) {
                      mirror.style.transform = `translate3d(${initialX}px, ${y}px, 0)`;
                    }
                    if (initial) {
                      result.initialX = x;
                      result.initialY = y;
                    }
                  }
                  resolve(result);
                }, { frame: withFrame });
              };
            }
            function withPromise(callback, { raf = false } = {}) {
              return new Promise((resolve, reject) => {
                if (raf) {
                  requestAnimationFrame(() => {
                    callback(resolve, reject);
                  });
                } else {
                  callback(resolve, reject);
                }
              });
            }
            function isNativeDragEvent(sensorEvent) {
              return /^drag/.test(sensorEvent.originalEvent.type);
            }
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            exports2.defaultOptions = void 0;
            var _Mirror = __webpack_require__(56);
            var _Mirror2 = _interopRequireDefault(_Mirror);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            exports2.default = _Mirror2.default;
            exports2.defaultOptions = _Mirror.defaultOptions;
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            var _extends = Object.assign || function(target) {
              for (var i = 1; i < arguments.length; i++) {
                var source = arguments[i];
                for (var key in source) {
                  if (Object.prototype.hasOwnProperty.call(source, key)) {
                    target[key] = source[key];
                  }
                }
              }
              return target;
            };
            var _AbstractPlugin = __webpack_require__(1);
            var _AbstractPlugin2 = _interopRequireDefault(_AbstractPlugin);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            const onInitialize = Symbol("onInitialize");
            const onDestroy = Symbol("onDestroy");
            const defaultOptions = {};
            class Focusable extends _AbstractPlugin2.default {
              constructor(draggable) {
                super(draggable);
                this.options = _extends({}, defaultOptions, this.getOptions());
                this[onInitialize] = this[onInitialize].bind(this);
                this[onDestroy] = this[onDestroy].bind(this);
              }
              attach() {
                this.draggable.on("draggable:initialize", this[onInitialize]).on("draggable:destroy", this[onDestroy]);
              }
              detach() {
                this.draggable.off("draggable:initialize", this[onInitialize]).off("draggable:destroy", this[onDestroy]);
              }
              getOptions() {
                return this.draggable.options.focusable || {};
              }
              getElements() {
                return [...this.draggable.containers, ...this.draggable.getDraggableElements()];
              }
              [onInitialize]() {
                requestAnimationFrame(() => {
                  this.getElements().forEach((element) => decorateElement(element));
                });
              }
              [onDestroy]() {
                requestAnimationFrame(() => {
                  this.getElements().forEach((element) => stripElement(element));
                });
              }
            }
            exports2.default = Focusable;
            const elementsWithMissingTabIndex = [];
            function decorateElement(element) {
              const hasMissingTabIndex = Boolean(!element.getAttribute("tabindex") && element.tabIndex === -1);
              if (hasMissingTabIndex) {
                elementsWithMissingTabIndex.push(element);
                element.tabIndex = 0;
              }
            }
            function stripElement(element) {
              const tabIndexElementPosition = elementsWithMissingTabIndex.indexOf(element);
              if (tabIndexElementPosition !== -1) {
                element.tabIndex = -1;
                elementsWithMissingTabIndex.splice(tabIndexElementPosition, 1);
              }
            }
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            var _Focusable = __webpack_require__(58);
            var _Focusable2 = _interopRequireDefault(_Focusable);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            exports2.default = _Focusable2.default;
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            class AbstractPlugin {
              constructor(draggable) {
                this.draggable = draggable;
              }
              attach() {
                throw new Error("Not Implemented");
              }
              detach() {
                throw new Error("Not Implemented");
              }
            }
            exports2.default = AbstractPlugin;
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            exports2.defaultOptions = void 0;
            var _extends = Object.assign || function(target) {
              for (var i = 1; i < arguments.length; i++) {
                var source = arguments[i];
                for (var key in source) {
                  if (Object.prototype.hasOwnProperty.call(source, key)) {
                    target[key] = source[key];
                  }
                }
              }
              return target;
            };
            var _AbstractPlugin = __webpack_require__(1);
            var _AbstractPlugin2 = _interopRequireDefault(_AbstractPlugin);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            const onInitialize = Symbol("onInitialize");
            const onDestroy = Symbol("onDestroy");
            const announceEvent = Symbol("announceEvent");
            const announceMessage = Symbol("announceMessage");
            const ARIA_RELEVANT = "aria-relevant";
            const ARIA_ATOMIC = "aria-atomic";
            const ARIA_LIVE = "aria-live";
            const ROLE = "role";
            const defaultOptions = exports2.defaultOptions = {
              expire: 7e3
            };
            class Announcement extends _AbstractPlugin2.default {
              constructor(draggable) {
                super(draggable);
                this.options = _extends({}, defaultOptions, this.getOptions());
                this.originalTriggerMethod = this.draggable.trigger;
                this[onInitialize] = this[onInitialize].bind(this);
                this[onDestroy] = this[onDestroy].bind(this);
              }
              attach() {
                this.draggable.on("draggable:initialize", this[onInitialize]);
              }
              detach() {
                this.draggable.off("draggable:destroy", this[onDestroy]);
              }
              getOptions() {
                return this.draggable.options.announcements || {};
              }
              [announceEvent](event) {
                const message = this.options[event.type];
                if (message && typeof message === "string") {
                  this[announceMessage](message);
                }
                if (message && typeof message === "function") {
                  this[announceMessage](message(event));
                }
              }
              [announceMessage](message) {
                announce(message, { expire: this.options.expire });
              }
              [onInitialize]() {
                this.draggable.trigger = (event) => {
                  try {
                    this[announceEvent](event);
                  } finally {
                    this.originalTriggerMethod.call(this.draggable, event);
                  }
                };
              }
              [onDestroy]() {
                this.draggable.trigger = this.originalTriggerMethod;
              }
            }
            exports2.default = Announcement;
            const liveRegion = createRegion();
            function announce(message, { expire }) {
              const element = document.createElement("div");
              element.textContent = message;
              liveRegion.appendChild(element);
              return setTimeout(() => {
                liveRegion.removeChild(element);
              }, expire);
            }
            function createRegion() {
              const element = document.createElement("div");
              element.setAttribute("id", "draggable-live-region");
              element.setAttribute(ARIA_RELEVANT, "additions");
              element.setAttribute(ARIA_ATOMIC, "true");
              element.setAttribute(ARIA_LIVE, "assertive");
              element.setAttribute(ROLE, "log");
              element.style.position = "fixed";
              element.style.width = "1px";
              element.style.height = "1px";
              element.style.top = "-1px";
              element.style.overflow = "hidden";
              return element;
            }
            document.addEventListener("DOMContentLoaded", () => {
              document.body.appendChild(liveRegion);
            });
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            exports2.defaultOptions = void 0;
            var _Announcement = __webpack_require__(61);
            var _Announcement2 = _interopRequireDefault(_Announcement);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            exports2.default = _Announcement2.default;
            exports2.defaultOptions = _Announcement.defaultOptions;
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            exports2.DraggableDestroyEvent = exports2.DraggableInitializedEvent = exports2.DraggableEvent = void 0;
            var _AbstractEvent = __webpack_require__(0);
            var _AbstractEvent2 = _interopRequireDefault(_AbstractEvent);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            class DraggableEvent extends _AbstractEvent2.default {
              get draggable() {
                return this.data.draggable;
              }
            }
            exports2.DraggableEvent = DraggableEvent;
            DraggableEvent.type = "draggable";
            class DraggableInitializedEvent extends DraggableEvent {
            }
            exports2.DraggableInitializedEvent = DraggableInitializedEvent;
            DraggableInitializedEvent.type = "draggable:initialize";
            class DraggableDestroyEvent extends DraggableEvent {
            }
            exports2.DraggableDestroyEvent = DraggableDestroyEvent;
            DraggableDestroyEvent.type = "draggable:destroy";
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            var _extends = Object.assign || function(target) {
              for (var i = 1; i < arguments.length; i++) {
                var source = arguments[i];
                for (var key in source) {
                  if (Object.prototype.hasOwnProperty.call(source, key)) {
                    target[key] = source[key];
                  }
                }
              }
              return target;
            };
            const canceled = Symbol("canceled");
            class AbstractEvent {
              constructor(data) {
                this[canceled] = false;
                this.data = data;
              }
              get type() {
                return this.constructor.type;
              }
              get cancelable() {
                return this.constructor.cancelable;
              }
              cancel() {
                this[canceled] = true;
              }
              canceled() {
                return Boolean(this[canceled]);
              }
              clone(data) {
                return new this.constructor(_extends({}, this.data, data));
              }
            }
            exports2.default = AbstractEvent;
            AbstractEvent.type = "event";
            AbstractEvent.cancelable = false;
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            exports2.DragStopEvent = exports2.DragPressureEvent = exports2.DragOutContainerEvent = exports2.DragOverContainerEvent = exports2.DragOutEvent = exports2.DragOverEvent = exports2.DragMoveEvent = exports2.DragStartEvent = exports2.DragEvent = void 0;
            var _AbstractEvent = __webpack_require__(0);
            var _AbstractEvent2 = _interopRequireDefault(_AbstractEvent);
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            class DragEvent extends _AbstractEvent2.default {
              get source() {
                return this.data.source;
              }
              get originalSource() {
                return this.data.originalSource;
              }
              get mirror() {
                return this.data.mirror;
              }
              get sourceContainer() {
                return this.data.sourceContainer;
              }
              get sensorEvent() {
                return this.data.sensorEvent;
              }
              get originalEvent() {
                if (this.sensorEvent) {
                  return this.sensorEvent.originalEvent;
                }
                return null;
              }
            }
            exports2.DragEvent = DragEvent;
            DragEvent.type = "drag";
            class DragStartEvent extends DragEvent {
            }
            exports2.DragStartEvent = DragStartEvent;
            DragStartEvent.type = "drag:start";
            DragStartEvent.cancelable = true;
            class DragMoveEvent extends DragEvent {
            }
            exports2.DragMoveEvent = DragMoveEvent;
            DragMoveEvent.type = "drag:move";
            class DragOverEvent extends DragEvent {
              get overContainer() {
                return this.data.overContainer;
              }
              get over() {
                return this.data.over;
              }
            }
            exports2.DragOverEvent = DragOverEvent;
            DragOverEvent.type = "drag:over";
            DragOverEvent.cancelable = true;
            class DragOutEvent extends DragEvent {
              get overContainer() {
                return this.data.overContainer;
              }
              get over() {
                return this.data.over;
              }
            }
            exports2.DragOutEvent = DragOutEvent;
            DragOutEvent.type = "drag:out";
            class DragOverContainerEvent extends DragEvent {
              get overContainer() {
                return this.data.overContainer;
              }
            }
            exports2.DragOverContainerEvent = DragOverContainerEvent;
            DragOverContainerEvent.type = "drag:over:container";
            class DragOutContainerEvent extends DragEvent {
              get overContainer() {
                return this.data.overContainer;
              }
            }
            exports2.DragOutContainerEvent = DragOutContainerEvent;
            DragOutContainerEvent.type = "drag:out:container";
            class DragPressureEvent extends DragEvent {
              get pressure() {
                return this.data.pressure;
              }
            }
            exports2.DragPressureEvent = DragPressureEvent;
            DragPressureEvent.type = "drag:pressure";
            class DragStopEvent extends DragEvent {
            }
            exports2.DragStopEvent = DragStopEvent;
            DragStopEvent.type = "drag:stop";
          },
          function(module2, exports2, __webpack_require__) {
            "use strict";
            Object.defineProperty(exports2, "__esModule", {
              value: true
            });
            exports2.Plugins = exports2.Sensors = exports2.Sortable = exports2.Swappable = exports2.Droppable = exports2.Draggable = exports2.BasePlugin = exports2.BaseEvent = void 0;
            var _Draggable = __webpack_require__(5);
            Object.defineProperty(exports2, "Draggable", {
              enumerable: true,
              get: function() {
                return _interopRequireDefault(_Draggable).default;
              }
            });
            var _Droppable = __webpack_require__(34);
            Object.defineProperty(exports2, "Droppable", {
              enumerable: true,
              get: function() {
                return _interopRequireDefault(_Droppable).default;
              }
            });
            var _Swappable = __webpack_require__(31);
            Object.defineProperty(exports2, "Swappable", {
              enumerable: true,
              get: function() {
                return _interopRequireDefault(_Swappable).default;
              }
            });
            var _Sortable = __webpack_require__(28);
            Object.defineProperty(exports2, "Sortable", {
              enumerable: true,
              get: function() {
                return _interopRequireDefault(_Sortable).default;
              }
            });
            var _AbstractEvent = __webpack_require__(0);
            var _AbstractEvent2 = _interopRequireDefault(_AbstractEvent);
            var _AbstractPlugin = __webpack_require__(1);
            var _AbstractPlugin2 = _interopRequireDefault(_AbstractPlugin);
            var _Sensors = __webpack_require__(6);
            var Sensors = _interopRequireWildcard(_Sensors);
            var _Plugins = __webpack_require__(25);
            var Plugins2 = _interopRequireWildcard(_Plugins);
            function _interopRequireWildcard(obj) {
              if (obj && obj.__esModule) {
                return obj;
              } else {
                var newObj = {};
                if (obj != null) {
                  for (var key in obj) {
                    if (Object.prototype.hasOwnProperty.call(obj, key))
                      newObj[key] = obj[key];
                  }
                }
                newObj.default = obj;
                return newObj;
              }
            }
            function _interopRequireDefault(obj) {
              return obj && obj.__esModule ? obj : { default: obj };
            }
            exports2.BaseEvent = _AbstractEvent2.default;
            exports2.BasePlugin = _AbstractPlugin2.default;
            exports2.Sensors = Sensors;
            exports2.Plugins = Plugins2;
          }
        ]);
      });
    }
  });

  // vendor/topbar.js
  var require_topbar = __commonJS({
    "vendor/topbar.js"(exports, module) {
      (function(window2, document2) {
        "use strict";
        (function() {
          var lastTime = 0;
          var vendors = ["ms", "moz", "webkit", "o"];
          for (var x = 0; x < vendors.length && !window2.requestAnimationFrame; ++x) {
            window2.requestAnimationFrame = window2[vendors[x] + "RequestAnimationFrame"];
            window2.cancelAnimationFrame = window2[vendors[x] + "CancelAnimationFrame"] || window2[vendors[x] + "CancelRequestAnimationFrame"];
          }
          if (!window2.requestAnimationFrame)
            window2.requestAnimationFrame = function(callback, element) {
              var currTime = new Date().getTime();
              var timeToCall = Math.max(0, 16 - (currTime - lastTime));
              var id = window2.setTimeout(function() {
                callback(currTime + timeToCall);
              }, timeToCall);
              lastTime = currTime + timeToCall;
              return id;
            };
          if (!window2.cancelAnimationFrame)
            window2.cancelAnimationFrame = function(id) {
              clearTimeout(id);
            };
        })();
        var canvas, progressTimerId, fadeTimerId, currentProgress, showing, addEvent = function(elem, type, handler) {
          if (elem.addEventListener)
            elem.addEventListener(type, handler, false);
          else if (elem.attachEvent)
            elem.attachEvent("on" + type, handler);
          else
            elem["on" + type] = handler;
        }, options = {
          autoRun: true,
          barThickness: 3,
          barColors: {
            0: "rgba(26,  188, 156, .9)",
            ".25": "rgba(52,  152, 219, .9)",
            ".50": "rgba(241, 196, 15,  .9)",
            ".75": "rgba(230, 126, 34,  .9)",
            "1.0": "rgba(211, 84,  0,   .9)"
          },
          shadowBlur: 10,
          shadowColor: "rgba(0,   0,   0,   .6)",
          className: null
        }, repaint = function() {
          canvas.width = window2.innerWidth;
          canvas.height = options.barThickness * 5;
          var ctx = canvas.getContext("2d");
          ctx.shadowBlur = options.shadowBlur;
          ctx.shadowColor = options.shadowColor;
          var lineGradient = ctx.createLinearGradient(0, 0, canvas.width, 0);
          for (var stop in options.barColors)
            lineGradient.addColorStop(stop, options.barColors[stop]);
          ctx.lineWidth = options.barThickness;
          ctx.beginPath();
          ctx.moveTo(0, options.barThickness / 2);
          ctx.lineTo(Math.ceil(currentProgress * canvas.width), options.barThickness / 2);
          ctx.strokeStyle = lineGradient;
          ctx.stroke();
        }, createCanvas = function() {
          canvas = document2.createElement("canvas");
          var style = canvas.style;
          style.position = "fixed";
          style.top = style.left = style.right = style.margin = style.padding = 0;
          style.zIndex = 100001;
          style.display = "none";
          if (options.className)
            canvas.classList.add(options.className);
          document2.body.appendChild(canvas);
          addEvent(window2, "resize", repaint);
        }, topbar2 = {
          config: function(opts) {
            for (var key in opts)
              if (options.hasOwnProperty(key))
                options[key] = opts[key];
          },
          show: function() {
            if (showing)
              return;
            showing = true;
            if (fadeTimerId !== null)
              window2.cancelAnimationFrame(fadeTimerId);
            if (!canvas)
              createCanvas();
            canvas.style.opacity = 1;
            canvas.style.display = "block";
            topbar2.progress(0);
            if (options.autoRun) {
              (function loop() {
                progressTimerId = window2.requestAnimationFrame(loop);
                topbar2.progress("+" + 0.05 * Math.pow(1 - Math.sqrt(currentProgress), 2));
              })();
            }
          },
          progress: function(to) {
            if (typeof to === "undefined")
              return currentProgress;
            if (typeof to === "string") {
              to = (to.indexOf("+") >= 0 || to.indexOf("-") >= 0 ? currentProgress : 0) + parseFloat(to);
            }
            currentProgress = to > 1 ? 1 : to;
            repaint();
            return currentProgress;
          },
          hide: function() {
            if (!showing)
              return;
            showing = false;
            if (progressTimerId != null) {
              window2.cancelAnimationFrame(progressTimerId);
              progressTimerId = null;
            }
            (function loop() {
              if (topbar2.progress("+.1") >= 1) {
                canvas.style.opacity -= 0.05;
                if (canvas.style.opacity <= 0.05) {
                  canvas.style.display = "none";
                  fadeTimerId = null;
                  return;
                }
              }
              fadeTimerId = window2.requestAnimationFrame(loop);
            })();
          }
        };
        if (typeof module === "object" && typeof module.exports === "object") {
          module.exports = topbar2;
        } else if (typeof define === "function" && define.amd) {
          define(function() {
            return topbar2;
          });
        } else {
          this.topbar = topbar2;
        }
      }).call(exports, window, document);
    }
  });

  // node_modules/chart.js/dist/chart.js
  var require_chart = __commonJS({
    "node_modules/chart.js/dist/chart.js"(exports, module) {
      (function(global2, factory) {
        typeof exports === "object" && typeof module !== "undefined" ? module.exports = factory() : typeof define === "function" && define.amd ? define(factory) : (global2 = typeof globalThis !== "undefined" ? globalThis : global2 || self, global2.Chart = factory());
      })(exports, function() {
        "use strict";
        function fontString(pixelSize, fontStyle, fontFamily) {
          return fontStyle + " " + pixelSize + "px " + fontFamily;
        }
        const requestAnimFrame = function() {
          if (typeof window === "undefined") {
            return function(callback2) {
              return callback2();
            };
          }
          return window.requestAnimationFrame;
        }();
        function throttled(fn, thisArg, updateFn) {
          const updateArgs = updateFn || ((args2) => Array.prototype.slice.call(args2));
          let ticking = false;
          let args = [];
          return function(...rest) {
            args = updateArgs(rest);
            if (!ticking) {
              ticking = true;
              requestAnimFrame.call(window, () => {
                ticking = false;
                fn.apply(thisArg, args);
              });
            }
          };
        }
        function debounce(fn, delay) {
          let timeout;
          return function(...args) {
            if (delay) {
              clearTimeout(timeout);
              timeout = setTimeout(fn, delay, args);
            } else {
              fn.apply(this, args);
            }
            return delay;
          };
        }
        const _toLeftRightCenter = (align) => align === "start" ? "left" : align === "end" ? "right" : "center";
        const _alignStartEnd = (align, start, end) => align === "start" ? start : align === "end" ? end : (start + end) / 2;
        const _textX = (align, left, right, rtl) => {
          const check = rtl ? "left" : "right";
          return align === check ? right : align === "center" ? (left + right) / 2 : left;
        };
        class Animator {
          constructor() {
            this._request = null;
            this._charts = /* @__PURE__ */ new Map();
            this._running = false;
            this._lastDate = void 0;
          }
          _notify(chart2, anims, date, type) {
            const callbacks = anims.listeners[type];
            const numSteps = anims.duration;
            callbacks.forEach((fn) => fn({
              chart: chart2,
              initial: anims.initial,
              numSteps,
              currentStep: Math.min(date - anims.start, numSteps)
            }));
          }
          _refresh() {
            if (this._request) {
              return;
            }
            this._running = true;
            this._request = requestAnimFrame.call(window, () => {
              this._update();
              this._request = null;
              if (this._running) {
                this._refresh();
              }
            });
          }
          _update(date = Date.now()) {
            let remaining = 0;
            this._charts.forEach((anims, chart2) => {
              if (!anims.running || !anims.items.length) {
                return;
              }
              const items = anims.items;
              let i = items.length - 1;
              let draw2 = false;
              let item;
              for (; i >= 0; --i) {
                item = items[i];
                if (item._active) {
                  if (item._total > anims.duration) {
                    anims.duration = item._total;
                  }
                  item.tick(date);
                  draw2 = true;
                } else {
                  items[i] = items[items.length - 1];
                  items.pop();
                }
              }
              if (draw2) {
                chart2.draw();
                this._notify(chart2, anims, date, "progress");
              }
              if (!items.length) {
                anims.running = false;
                this._notify(chart2, anims, date, "complete");
                anims.initial = false;
              }
              remaining += items.length;
            });
            this._lastDate = date;
            if (remaining === 0) {
              this._running = false;
            }
          }
          _getAnims(chart2) {
            const charts = this._charts;
            let anims = charts.get(chart2);
            if (!anims) {
              anims = {
                running: false,
                initial: true,
                items: [],
                listeners: {
                  complete: [],
                  progress: []
                }
              };
              charts.set(chart2, anims);
            }
            return anims;
          }
          listen(chart2, event, cb) {
            this._getAnims(chart2).listeners[event].push(cb);
          }
          add(chart2, items) {
            if (!items || !items.length) {
              return;
            }
            this._getAnims(chart2).items.push(...items);
          }
          has(chart2) {
            return this._getAnims(chart2).items.length > 0;
          }
          start(chart2) {
            const anims = this._charts.get(chart2);
            if (!anims) {
              return;
            }
            anims.running = true;
            anims.start = Date.now();
            anims.duration = anims.items.reduce((acc, cur) => Math.max(acc, cur._duration), 0);
            this._refresh();
          }
          running(chart2) {
            if (!this._running) {
              return false;
            }
            const anims = this._charts.get(chart2);
            if (!anims || !anims.running || !anims.items.length) {
              return false;
            }
            return true;
          }
          stop(chart2) {
            const anims = this._charts.get(chart2);
            if (!anims || !anims.items.length) {
              return;
            }
            const items = anims.items;
            let i = items.length - 1;
            for (; i >= 0; --i) {
              items[i].cancel();
            }
            anims.items = [];
            this._notify(chart2, anims, Date.now(), "complete");
          }
          remove(chart2) {
            return this._charts.delete(chart2);
          }
        }
        var animator = new Animator();
        function round(v) {
          return v + 0.5 | 0;
        }
        const lim = (v, l, h) => Math.max(Math.min(v, h), l);
        function p2b(v) {
          return lim(round(v * 2.55), 0, 255);
        }
        function n2b(v) {
          return lim(round(v * 255), 0, 255);
        }
        function b2n(v) {
          return lim(round(v / 2.55) / 100, 0, 1);
        }
        function n2p(v) {
          return lim(round(v * 100), 0, 100);
        }
        const map$1 = { 0: 0, 1: 1, 2: 2, 3: 3, 4: 4, 5: 5, 6: 6, 7: 7, 8: 8, 9: 9, A: 10, B: 11, C: 12, D: 13, E: 14, F: 15, a: 10, b: 11, c: 12, d: 13, e: 14, f: 15 };
        const hex = [..."0123456789ABCDEF"];
        const h1 = (b) => hex[b & 15];
        const h2 = (b) => hex[(b & 240) >> 4] + hex[b & 15];
        const eq = (b) => (b & 240) >> 4 === (b & 15);
        const isShort = (v) => eq(v.r) && eq(v.g) && eq(v.b) && eq(v.a);
        function hexParse(str) {
          var len = str.length;
          var ret;
          if (str[0] === "#") {
            if (len === 4 || len === 5) {
              ret = {
                r: 255 & map$1[str[1]] * 17,
                g: 255 & map$1[str[2]] * 17,
                b: 255 & map$1[str[3]] * 17,
                a: len === 5 ? map$1[str[4]] * 17 : 255
              };
            } else if (len === 7 || len === 9) {
              ret = {
                r: map$1[str[1]] << 4 | map$1[str[2]],
                g: map$1[str[3]] << 4 | map$1[str[4]],
                b: map$1[str[5]] << 4 | map$1[str[6]],
                a: len === 9 ? map$1[str[7]] << 4 | map$1[str[8]] : 255
              };
            }
          }
          return ret;
        }
        const alpha = (a, f) => a < 255 ? f(a) : "";
        function hexString(v) {
          var f = isShort(v) ? h1 : h2;
          return v ? "#" + f(v.r) + f(v.g) + f(v.b) + alpha(v.a, f) : void 0;
        }
        const HUE_RE = /^(hsla?|hwb|hsv)\(\s*([-+.e\d]+)(?:deg)?[\s,]+([-+.e\d]+)%[\s,]+([-+.e\d]+)%(?:[\s,]+([-+.e\d]+)(%)?)?\s*\)$/;
        function hsl2rgbn(h, s, l) {
          const a = s * Math.min(l, 1 - l);
          const f = (n, k = (n + h / 30) % 12) => l - a * Math.max(Math.min(k - 3, 9 - k, 1), -1);
          return [f(0), f(8), f(4)];
        }
        function hsv2rgbn(h, s, v) {
          const f = (n, k = (n + h / 60) % 6) => v - v * s * Math.max(Math.min(k, 4 - k, 1), 0);
          return [f(5), f(3), f(1)];
        }
        function hwb2rgbn(h, w, b) {
          const rgb = hsl2rgbn(h, 1, 0.5);
          let i;
          if (w + b > 1) {
            i = 1 / (w + b);
            w *= i;
            b *= i;
          }
          for (i = 0; i < 3; i++) {
            rgb[i] *= 1 - w - b;
            rgb[i] += w;
          }
          return rgb;
        }
        function hueValue(r, g, b, d, max) {
          if (r === max) {
            return (g - b) / d + (g < b ? 6 : 0);
          }
          if (g === max) {
            return (b - r) / d + 2;
          }
          return (r - g) / d + 4;
        }
        function rgb2hsl(v) {
          const range2 = 255;
          const r = v.r / range2;
          const g = v.g / range2;
          const b = v.b / range2;
          const max = Math.max(r, g, b);
          const min = Math.min(r, g, b);
          const l = (max + min) / 2;
          let h, s, d;
          if (max !== min) {
            d = max - min;
            s = l > 0.5 ? d / (2 - max - min) : d / (max + min);
            h = hueValue(r, g, b, d, max);
            h = h * 60 + 0.5;
          }
          return [h | 0, s || 0, l];
        }
        function calln(f, a, b, c) {
          return (Array.isArray(a) ? f(a[0], a[1], a[2]) : f(a, b, c)).map(n2b);
        }
        function hsl2rgb(h, s, l) {
          return calln(hsl2rgbn, h, s, l);
        }
        function hwb2rgb(h, w, b) {
          return calln(hwb2rgbn, h, w, b);
        }
        function hsv2rgb(h, s, v) {
          return calln(hsv2rgbn, h, s, v);
        }
        function hue(h) {
          return (h % 360 + 360) % 360;
        }
        function hueParse(str) {
          const m = HUE_RE.exec(str);
          let a = 255;
          let v;
          if (!m) {
            return;
          }
          if (m[5] !== v) {
            a = m[6] ? p2b(+m[5]) : n2b(+m[5]);
          }
          const h = hue(+m[2]);
          const p1 = +m[3] / 100;
          const p2 = +m[4] / 100;
          if (m[1] === "hwb") {
            v = hwb2rgb(h, p1, p2);
          } else if (m[1] === "hsv") {
            v = hsv2rgb(h, p1, p2);
          } else {
            v = hsl2rgb(h, p1, p2);
          }
          return {
            r: v[0],
            g: v[1],
            b: v[2],
            a
          };
        }
        function rotate(v, deg) {
          var h = rgb2hsl(v);
          h[0] = hue(h[0] + deg);
          h = hsl2rgb(h);
          v.r = h[0];
          v.g = h[1];
          v.b = h[2];
        }
        function hslString(v) {
          if (!v) {
            return;
          }
          const a = rgb2hsl(v);
          const h = a[0];
          const s = n2p(a[1]);
          const l = n2p(a[2]);
          return v.a < 255 ? `hsla(${h}, ${s}%, ${l}%, ${b2n(v.a)})` : `hsl(${h}, ${s}%, ${l}%)`;
        }
        const map$2 = {
          x: "dark",
          Z: "light",
          Y: "re",
          X: "blu",
          W: "gr",
          V: "medium",
          U: "slate",
          A: "ee",
          T: "ol",
          S: "or",
          B: "ra",
          C: "lateg",
          D: "ights",
          R: "in",
          Q: "turquois",
          E: "hi",
          P: "ro",
          O: "al",
          N: "le",
          M: "de",
          L: "yello",
          F: "en",
          K: "ch",
          G: "arks",
          H: "ea",
          I: "ightg",
          J: "wh"
        };
        const names$1 = {
          OiceXe: "f0f8ff",
          antiquewEte: "faebd7",
          aqua: "ffff",
          aquamarRe: "7fffd4",
          azuY: "f0ffff",
          beige: "f5f5dc",
          bisque: "ffe4c4",
          black: "0",
          blanKedOmond: "ffebcd",
          Xe: "ff",
          XeviTet: "8a2be2",
          bPwn: "a52a2a",
          burlywood: "deb887",
          caMtXe: "5f9ea0",
          KartYuse: "7fff00",
          KocTate: "d2691e",
          cSO: "ff7f50",
          cSnflowerXe: "6495ed",
          cSnsilk: "fff8dc",
          crimson: "dc143c",
          cyan: "ffff",
          xXe: "8b",
          xcyan: "8b8b",
          xgTMnPd: "b8860b",
          xWay: "a9a9a9",
          xgYF: "6400",
          xgYy: "a9a9a9",
          xkhaki: "bdb76b",
          xmagFta: "8b008b",
          xTivegYF: "556b2f",
          xSange: "ff8c00",
          xScEd: "9932cc",
          xYd: "8b0000",
          xsOmon: "e9967a",
          xsHgYF: "8fbc8f",
          xUXe: "483d8b",
          xUWay: "2f4f4f",
          xUgYy: "2f4f4f",
          xQe: "ced1",
          xviTet: "9400d3",
          dAppRk: "ff1493",
          dApskyXe: "bfff",
          dimWay: "696969",
          dimgYy: "696969",
          dodgerXe: "1e90ff",
          fiYbrick: "b22222",
          flSOwEte: "fffaf0",
          foYstWAn: "228b22",
          fuKsia: "ff00ff",
          gaRsbSo: "dcdcdc",
          ghostwEte: "f8f8ff",
          gTd: "ffd700",
          gTMnPd: "daa520",
          Way: "808080",
          gYF: "8000",
          gYFLw: "adff2f",
          gYy: "808080",
          honeyMw: "f0fff0",
          hotpRk: "ff69b4",
          RdianYd: "cd5c5c",
          Rdigo: "4b0082",
          ivSy: "fffff0",
          khaki: "f0e68c",
          lavFMr: "e6e6fa",
          lavFMrXsh: "fff0f5",
          lawngYF: "7cfc00",
          NmoncEffon: "fffacd",
          ZXe: "add8e6",
          ZcSO: "f08080",
          Zcyan: "e0ffff",
          ZgTMnPdLw: "fafad2",
          ZWay: "d3d3d3",
          ZgYF: "90ee90",
          ZgYy: "d3d3d3",
          ZpRk: "ffb6c1",
          ZsOmon: "ffa07a",
          ZsHgYF: "20b2aa",
          ZskyXe: "87cefa",
          ZUWay: "778899",
          ZUgYy: "778899",
          ZstAlXe: "b0c4de",
          ZLw: "ffffe0",
          lime: "ff00",
          limegYF: "32cd32",
          lRF: "faf0e6",
          magFta: "ff00ff",
          maPon: "800000",
          VaquamarRe: "66cdaa",
          VXe: "cd",
          VScEd: "ba55d3",
          VpurpN: "9370db",
          VsHgYF: "3cb371",
          VUXe: "7b68ee",
          VsprRggYF: "fa9a",
          VQe: "48d1cc",
          VviTetYd: "c71585",
          midnightXe: "191970",
          mRtcYam: "f5fffa",
          mistyPse: "ffe4e1",
          moccasR: "ffe4b5",
          navajowEte: "ffdead",
          navy: "80",
          Tdlace: "fdf5e6",
          Tive: "808000",
          TivedBb: "6b8e23",
          Sange: "ffa500",
          SangeYd: "ff4500",
          ScEd: "da70d6",
          pOegTMnPd: "eee8aa",
          pOegYF: "98fb98",
          pOeQe: "afeeee",
          pOeviTetYd: "db7093",
          papayawEp: "ffefd5",
          pHKpuff: "ffdab9",
          peru: "cd853f",
          pRk: "ffc0cb",
          plum: "dda0dd",
          powMrXe: "b0e0e6",
          purpN: "800080",
          YbeccapurpN: "663399",
          Yd: "ff0000",
          Psybrown: "bc8f8f",
          PyOXe: "4169e1",
          saddNbPwn: "8b4513",
          sOmon: "fa8072",
          sandybPwn: "f4a460",
          sHgYF: "2e8b57",
          sHshell: "fff5ee",
          siFna: "a0522d",
          silver: "c0c0c0",
          skyXe: "87ceeb",
          UXe: "6a5acd",
          UWay: "708090",
          UgYy: "708090",
          snow: "fffafa",
          sprRggYF: "ff7f",
          stAlXe: "4682b4",
          tan: "d2b48c",
          teO: "8080",
          tEstN: "d8bfd8",
          tomato: "ff6347",
          Qe: "40e0d0",
          viTet: "ee82ee",
          JHt: "f5deb3",
          wEte: "ffffff",
          wEtesmoke: "f5f5f5",
          Lw: "ffff00",
          LwgYF: "9acd32"
        };
        function unpack() {
          const unpacked = {};
          const keys = Object.keys(names$1);
          const tkeys = Object.keys(map$2);
          let i, j, k, ok, nk;
          for (i = 0; i < keys.length; i++) {
            ok = nk = keys[i];
            for (j = 0; j < tkeys.length; j++) {
              k = tkeys[j];
              nk = nk.replace(k, map$2[k]);
            }
            k = parseInt(names$1[ok], 16);
            unpacked[nk] = [k >> 16 & 255, k >> 8 & 255, k & 255];
          }
          return unpacked;
        }
        let names;
        function nameParse(str) {
          if (!names) {
            names = unpack();
            names.transparent = [0, 0, 0, 0];
          }
          const a = names[str.toLowerCase()];
          return a && {
            r: a[0],
            g: a[1],
            b: a[2],
            a: a.length === 4 ? a[3] : 255
          };
        }
        const RGB_RE = /^rgba?\(\s*([-+.\d]+)(%)?[\s,]+([-+.e\d]+)(%)?[\s,]+([-+.e\d]+)(%)?(?:[\s,/]+([-+.e\d]+)(%)?)?\s*\)$/;
        function rgbParse(str) {
          const m = RGB_RE.exec(str);
          let a = 255;
          let r, g, b;
          if (!m) {
            return;
          }
          if (m[7] !== r) {
            const v = +m[7];
            a = m[8] ? p2b(v) : lim(v * 255, 0, 255);
          }
          r = +m[1];
          g = +m[3];
          b = +m[5];
          r = 255 & (m[2] ? p2b(r) : lim(r, 0, 255));
          g = 255 & (m[4] ? p2b(g) : lim(g, 0, 255));
          b = 255 & (m[6] ? p2b(b) : lim(b, 0, 255));
          return {
            r,
            g,
            b,
            a
          };
        }
        function rgbString(v) {
          return v && (v.a < 255 ? `rgba(${v.r}, ${v.g}, ${v.b}, ${b2n(v.a)})` : `rgb(${v.r}, ${v.g}, ${v.b})`);
        }
        const to = (v) => v <= 31308e-7 ? v * 12.92 : Math.pow(v, 1 / 2.4) * 1.055 - 0.055;
        const from = (v) => v <= 0.04045 ? v / 12.92 : Math.pow((v + 0.055) / 1.055, 2.4);
        function interpolate$1(rgb1, rgb2, t) {
          const r = from(b2n(rgb1.r));
          const g = from(b2n(rgb1.g));
          const b = from(b2n(rgb1.b));
          return {
            r: n2b(to(r + t * (from(b2n(rgb2.r)) - r))),
            g: n2b(to(g + t * (from(b2n(rgb2.g)) - g))),
            b: n2b(to(b + t * (from(b2n(rgb2.b)) - b))),
            a: rgb1.a + t * (rgb2.a - rgb1.a)
          };
        }
        function modHSL(v, i, ratio) {
          if (v) {
            let tmp = rgb2hsl(v);
            tmp[i] = Math.max(0, Math.min(tmp[i] + tmp[i] * ratio, i === 0 ? 360 : 1));
            tmp = hsl2rgb(tmp);
            v.r = tmp[0];
            v.g = tmp[1];
            v.b = tmp[2];
          }
        }
        function clone$1(v, proto) {
          return v ? Object.assign(proto || {}, v) : v;
        }
        function fromObject(input) {
          var v = { r: 0, g: 0, b: 0, a: 255 };
          if (Array.isArray(input)) {
            if (input.length >= 3) {
              v = { r: input[0], g: input[1], b: input[2], a: 255 };
              if (input.length > 3) {
                v.a = n2b(input[3]);
              }
            }
          } else {
            v = clone$1(input, { r: 0, g: 0, b: 0, a: 1 });
            v.a = n2b(v.a);
          }
          return v;
        }
        function functionParse(str) {
          if (str.charAt(0) === "r") {
            return rgbParse(str);
          }
          return hueParse(str);
        }
        class Color {
          constructor(input) {
            if (input instanceof Color) {
              return input;
            }
            const type = typeof input;
            let v;
            if (type === "object") {
              v = fromObject(input);
            } else if (type === "string") {
              v = hexParse(input) || nameParse(input) || functionParse(input);
            }
            this._rgb = v;
            this._valid = !!v;
          }
          get valid() {
            return this._valid;
          }
          get rgb() {
            var v = clone$1(this._rgb);
            if (v) {
              v.a = b2n(v.a);
            }
            return v;
          }
          set rgb(obj) {
            this._rgb = fromObject(obj);
          }
          rgbString() {
            return this._valid ? rgbString(this._rgb) : void 0;
          }
          hexString() {
            return this._valid ? hexString(this._rgb) : void 0;
          }
          hslString() {
            return this._valid ? hslString(this._rgb) : void 0;
          }
          mix(color2, weight) {
            if (color2) {
              const c1 = this.rgb;
              const c2 = color2.rgb;
              let w2;
              const p = weight === w2 ? 0.5 : weight;
              const w = 2 * p - 1;
              const a = c1.a - c2.a;
              const w1 = ((w * a === -1 ? w : (w + a) / (1 + w * a)) + 1) / 2;
              w2 = 1 - w1;
              c1.r = 255 & w1 * c1.r + w2 * c2.r + 0.5;
              c1.g = 255 & w1 * c1.g + w2 * c2.g + 0.5;
              c1.b = 255 & w1 * c1.b + w2 * c2.b + 0.5;
              c1.a = p * c1.a + (1 - p) * c2.a;
              this.rgb = c1;
            }
            return this;
          }
          interpolate(color2, t) {
            if (color2) {
              this._rgb = interpolate$1(this._rgb, color2._rgb, t);
            }
            return this;
          }
          clone() {
            return new Color(this.rgb);
          }
          alpha(a) {
            this._rgb.a = n2b(a);
            return this;
          }
          clearer(ratio) {
            const rgb = this._rgb;
            rgb.a *= 1 - ratio;
            return this;
          }
          greyscale() {
            const rgb = this._rgb;
            const val = round(rgb.r * 0.3 + rgb.g * 0.59 + rgb.b * 0.11);
            rgb.r = rgb.g = rgb.b = val;
            return this;
          }
          opaquer(ratio) {
            const rgb = this._rgb;
            rgb.a *= 1 + ratio;
            return this;
          }
          negate() {
            const v = this._rgb;
            v.r = 255 - v.r;
            v.g = 255 - v.g;
            v.b = 255 - v.b;
            return this;
          }
          lighten(ratio) {
            modHSL(this._rgb, 2, ratio);
            return this;
          }
          darken(ratio) {
            modHSL(this._rgb, 2, -ratio);
            return this;
          }
          saturate(ratio) {
            modHSL(this._rgb, 1, ratio);
            return this;
          }
          desaturate(ratio) {
            modHSL(this._rgb, 1, -ratio);
            return this;
          }
          rotate(deg) {
            rotate(this._rgb, deg);
            return this;
          }
        }
        function index_esm(input) {
          return new Color(input);
        }
        function isPatternOrGradient(value) {
          if (value && typeof value === "object") {
            const type = value.toString();
            return type === "[object CanvasPattern]" || type === "[object CanvasGradient]";
          }
          return false;
        }
        function color(value) {
          return isPatternOrGradient(value) ? value : index_esm(value);
        }
        function getHoverColor(value) {
          return isPatternOrGradient(value) ? value : index_esm(value).saturate(0.5).darken(0.1).hexString();
        }
        function noop2() {
        }
        const uid = function() {
          let id = 0;
          return function() {
            return id++;
          };
        }();
        function isNullOrUndef(value) {
          return value === null || typeof value === "undefined";
        }
        function isArray(value) {
          if (Array.isArray && Array.isArray(value)) {
            return true;
          }
          const type = Object.prototype.toString.call(value);
          if (type.slice(0, 7) === "[object" && type.slice(-6) === "Array]") {
            return true;
          }
          return false;
        }
        function isObject2(value) {
          return value !== null && Object.prototype.toString.call(value) === "[object Object]";
        }
        const isNumberFinite = (value) => (typeof value === "number" || value instanceof Number) && isFinite(+value);
        function finiteOrDefault(value, defaultValue) {
          return isNumberFinite(value) ? value : defaultValue;
        }
        function valueOrDefault(value, defaultValue) {
          return typeof value === "undefined" ? defaultValue : value;
        }
        const toPercentage = (value, dimension) => typeof value === "string" && value.endsWith("%") ? parseFloat(value) / 100 : value / dimension;
        const toDimension = (value, dimension) => typeof value === "string" && value.endsWith("%") ? parseFloat(value) / 100 * dimension : +value;
        function callback(fn, args, thisArg) {
          if (fn && typeof fn.call === "function") {
            return fn.apply(thisArg, args);
          }
        }
        function each(loopable, fn, thisArg, reverse) {
          let i, len, keys;
          if (isArray(loopable)) {
            len = loopable.length;
            if (reverse) {
              for (i = len - 1; i >= 0; i--) {
                fn.call(thisArg, loopable[i], i);
              }
            } else {
              for (i = 0; i < len; i++) {
                fn.call(thisArg, loopable[i], i);
              }
            }
          } else if (isObject2(loopable)) {
            keys = Object.keys(loopable);
            len = keys.length;
            for (i = 0; i < len; i++) {
              fn.call(thisArg, loopable[keys[i]], keys[i]);
            }
          }
        }
        function _elementsEqual(a0, a1) {
          let i, ilen, v0, v1;
          if (!a0 || !a1 || a0.length !== a1.length) {
            return false;
          }
          for (i = 0, ilen = a0.length; i < ilen; ++i) {
            v0 = a0[i];
            v1 = a1[i];
            if (v0.datasetIndex !== v1.datasetIndex || v0.index !== v1.index) {
              return false;
            }
          }
          return true;
        }
        function clone2(source) {
          if (isArray(source)) {
            return source.map(clone2);
          }
          if (isObject2(source)) {
            const target = Object.create(null);
            const keys = Object.keys(source);
            const klen = keys.length;
            let k = 0;
            for (; k < klen; ++k) {
              target[keys[k]] = clone2(source[keys[k]]);
            }
            return target;
          }
          return source;
        }
        function isValidKey(key) {
          return ["__proto__", "prototype", "constructor"].indexOf(key) === -1;
        }
        function _merger(key, target, source, options) {
          if (!isValidKey(key)) {
            return;
          }
          const tval = target[key];
          const sval = source[key];
          if (isObject2(tval) && isObject2(sval)) {
            merge(tval, sval, options);
          } else {
            target[key] = clone2(sval);
          }
        }
        function merge(target, source, options) {
          const sources = isArray(source) ? source : [source];
          const ilen = sources.length;
          if (!isObject2(target)) {
            return target;
          }
          options = options || {};
          const merger = options.merger || _merger;
          for (let i = 0; i < ilen; ++i) {
            source = sources[i];
            if (!isObject2(source)) {
              continue;
            }
            const keys = Object.keys(source);
            for (let k = 0, klen = keys.length; k < klen; ++k) {
              merger(keys[k], target, source, options);
            }
          }
          return target;
        }
        function mergeIf(target, source) {
          return merge(target, source, { merger: _mergerIf });
        }
        function _mergerIf(key, target, source) {
          if (!isValidKey(key)) {
            return;
          }
          const tval = target[key];
          const sval = source[key];
          if (isObject2(tval) && isObject2(sval)) {
            mergeIf(tval, sval);
          } else if (!Object.prototype.hasOwnProperty.call(target, key)) {
            target[key] = clone2(sval);
          }
        }
        function _deprecated(scope, value, previous, current) {
          if (value !== void 0) {
            console.warn(scope + ': "' + previous + '" is deprecated. Please use "' + current + '" instead');
          }
        }
        const emptyString = "";
        const dot = ".";
        function indexOfDotOrLength(key, start) {
          const idx = key.indexOf(dot, start);
          return idx === -1 ? key.length : idx;
        }
        function resolveObjectKey(obj, key) {
          if (key === emptyString) {
            return obj;
          }
          let pos = 0;
          let idx = indexOfDotOrLength(key, pos);
          while (obj && idx > pos) {
            obj = obj[key.slice(pos, idx)];
            pos = idx + 1;
            idx = indexOfDotOrLength(key, pos);
          }
          return obj;
        }
        function _capitalize(str) {
          return str.charAt(0).toUpperCase() + str.slice(1);
        }
        const defined = (value) => typeof value !== "undefined";
        const isFunction = (value) => typeof value === "function";
        const setsEqual = (a, b) => {
          if (a.size !== b.size) {
            return false;
          }
          for (const item of a) {
            if (!b.has(item)) {
              return false;
            }
          }
          return true;
        };
        function _isClickEvent(e) {
          return e.type === "mouseup" || e.type === "click" || e.type === "contextmenu";
        }
        const overrides = Object.create(null);
        const descriptors = Object.create(null);
        function getScope$1(node, key) {
          if (!key) {
            return node;
          }
          const keys = key.split(".");
          for (let i = 0, n = keys.length; i < n; ++i) {
            const k = keys[i];
            node = node[k] || (node[k] = Object.create(null));
          }
          return node;
        }
        function set(root, scope, values) {
          if (typeof scope === "string") {
            return merge(getScope$1(root, scope), values);
          }
          return merge(getScope$1(root, ""), scope);
        }
        class Defaults {
          constructor(_descriptors2) {
            this.animation = void 0;
            this.backgroundColor = "rgba(0,0,0,0.1)";
            this.borderColor = "rgba(0,0,0,0.1)";
            this.color = "#666";
            this.datasets = {};
            this.devicePixelRatio = (context) => context.chart.platform.getDevicePixelRatio();
            this.elements = {};
            this.events = [
              "mousemove",
              "mouseout",
              "click",
              "touchstart",
              "touchmove"
            ];
            this.font = {
              family: "'Helvetica Neue', 'Helvetica', 'Arial', sans-serif",
              size: 12,
              style: "normal",
              lineHeight: 1.2,
              weight: null
            };
            this.hover = {};
            this.hoverBackgroundColor = (ctx, options) => getHoverColor(options.backgroundColor);
            this.hoverBorderColor = (ctx, options) => getHoverColor(options.borderColor);
            this.hoverColor = (ctx, options) => getHoverColor(options.color);
            this.indexAxis = "x";
            this.interaction = {
              mode: "nearest",
              intersect: true,
              includeInvisible: false
            };
            this.maintainAspectRatio = true;
            this.onHover = null;
            this.onClick = null;
            this.parsing = true;
            this.plugins = {};
            this.responsive = true;
            this.scale = void 0;
            this.scales = {};
            this.showLine = true;
            this.drawActiveElementsOnTop = true;
            this.describe(_descriptors2);
          }
          set(scope, values) {
            return set(this, scope, values);
          }
          get(scope) {
            return getScope$1(this, scope);
          }
          describe(scope, values) {
            return set(descriptors, scope, values);
          }
          override(scope, values) {
            return set(overrides, scope, values);
          }
          route(scope, name, targetScope, targetName) {
            const scopeObject = getScope$1(this, scope);
            const targetScopeObject = getScope$1(this, targetScope);
            const privateName = "_" + name;
            Object.defineProperties(scopeObject, {
              [privateName]: {
                value: scopeObject[name],
                writable: true
              },
              [name]: {
                enumerable: true,
                get() {
                  const local = this[privateName];
                  const target = targetScopeObject[targetName];
                  if (isObject2(local)) {
                    return Object.assign({}, target, local);
                  }
                  return valueOrDefault(local, target);
                },
                set(value) {
                  this[privateName] = value;
                }
              }
            });
          }
        }
        var defaults = new Defaults({
          _scriptable: (name) => !name.startsWith("on"),
          _indexable: (name) => name !== "events",
          hover: {
            _fallback: "interaction"
          },
          interaction: {
            _scriptable: false,
            _indexable: false
          }
        });
        function _lookup(table, value, cmp) {
          cmp = cmp || ((index2) => table[index2] < value);
          let hi = table.length - 1;
          let lo = 0;
          let mid;
          while (hi - lo > 1) {
            mid = lo + hi >> 1;
            if (cmp(mid)) {
              lo = mid;
            } else {
              hi = mid;
            }
          }
          return { lo, hi };
        }
        const _lookupByKey = (table, key, value) => _lookup(table, value, (index2) => table[index2][key] < value);
        const _rlookupByKey = (table, key, value) => _lookup(table, value, (index2) => table[index2][key] >= value);
        function _filterBetween(values, min, max) {
          let start = 0;
          let end = values.length;
          while (start < end && values[start] < min) {
            start++;
          }
          while (end > start && values[end - 1] > max) {
            end--;
          }
          return start > 0 || end < values.length ? values.slice(start, end) : values;
        }
        const arrayEvents = ["push", "pop", "shift", "splice", "unshift"];
        function listenArrayEvents(array, listener) {
          if (array._chartjs) {
            array._chartjs.listeners.push(listener);
            return;
          }
          Object.defineProperty(array, "_chartjs", {
            configurable: true,
            enumerable: false,
            value: {
              listeners: [listener]
            }
          });
          arrayEvents.forEach((key) => {
            const method = "_onData" + _capitalize(key);
            const base = array[key];
            Object.defineProperty(array, key, {
              configurable: true,
              enumerable: false,
              value(...args) {
                const res = base.apply(this, args);
                array._chartjs.listeners.forEach((object) => {
                  if (typeof object[method] === "function") {
                    object[method](...args);
                  }
                });
                return res;
              }
            });
          });
        }
        function unlistenArrayEvents(array, listener) {
          const stub = array._chartjs;
          if (!stub) {
            return;
          }
          const listeners = stub.listeners;
          const index2 = listeners.indexOf(listener);
          if (index2 !== -1) {
            listeners.splice(index2, 1);
          }
          if (listeners.length > 0) {
            return;
          }
          arrayEvents.forEach((key) => {
            delete array[key];
          });
          delete array._chartjs;
        }
        function _arrayUnique(items) {
          const set2 = /* @__PURE__ */ new Set();
          let i, ilen;
          for (i = 0, ilen = items.length; i < ilen; ++i) {
            set2.add(items[i]);
          }
          if (set2.size === ilen) {
            return items;
          }
          return Array.from(set2);
        }
        const PI = Math.PI;
        const TAU = 2 * PI;
        const PITAU = TAU + PI;
        const INFINITY = Number.POSITIVE_INFINITY;
        const RAD_PER_DEG = PI / 180;
        const HALF_PI = PI / 2;
        const QUARTER_PI = PI / 4;
        const TWO_THIRDS_PI = PI * 2 / 3;
        const log10 = Math.log10;
        const sign = Math.sign;
        function niceNum(range2) {
          const roundedRange = Math.round(range2);
          range2 = almostEquals(range2, roundedRange, range2 / 1e3) ? roundedRange : range2;
          const niceRange = Math.pow(10, Math.floor(log10(range2)));
          const fraction = range2 / niceRange;
          const niceFraction = fraction <= 1 ? 1 : fraction <= 2 ? 2 : fraction <= 5 ? 5 : 10;
          return niceFraction * niceRange;
        }
        function _factorize(value) {
          const result = [];
          const sqrt = Math.sqrt(value);
          let i;
          for (i = 1; i < sqrt; i++) {
            if (value % i === 0) {
              result.push(i);
              result.push(value / i);
            }
          }
          if (sqrt === (sqrt | 0)) {
            result.push(sqrt);
          }
          result.sort((a, b) => a - b).pop();
          return result;
        }
        function isNumber(n) {
          return !isNaN(parseFloat(n)) && isFinite(n);
        }
        function almostEquals(x, y, epsilon) {
          return Math.abs(x - y) < epsilon;
        }
        function almostWhole(x, epsilon) {
          const rounded = Math.round(x);
          return rounded - epsilon <= x && rounded + epsilon >= x;
        }
        function _setMinAndMaxByKey(array, target, property) {
          let i, ilen, value;
          for (i = 0, ilen = array.length; i < ilen; i++) {
            value = array[i][property];
            if (!isNaN(value)) {
              target.min = Math.min(target.min, value);
              target.max = Math.max(target.max, value);
            }
          }
        }
        function toRadians(degrees) {
          return degrees * (PI / 180);
        }
        function toDegrees(radians) {
          return radians * (180 / PI);
        }
        function _decimalPlaces(x) {
          if (!isNumberFinite(x)) {
            return;
          }
          let e = 1;
          let p = 0;
          while (Math.round(x * e) / e !== x) {
            e *= 10;
            p++;
          }
          return p;
        }
        function getAngleFromPoint(centrePoint, anglePoint) {
          const distanceFromXCenter = anglePoint.x - centrePoint.x;
          const distanceFromYCenter = anglePoint.y - centrePoint.y;
          const radialDistanceFromCenter = Math.sqrt(distanceFromXCenter * distanceFromXCenter + distanceFromYCenter * distanceFromYCenter);
          let angle = Math.atan2(distanceFromYCenter, distanceFromXCenter);
          if (angle < -0.5 * PI) {
            angle += TAU;
          }
          return {
            angle,
            distance: radialDistanceFromCenter
          };
        }
        function distanceBetweenPoints(pt1, pt2) {
          return Math.sqrt(Math.pow(pt2.x - pt1.x, 2) + Math.pow(pt2.y - pt1.y, 2));
        }
        function _angleDiff(a, b) {
          return (a - b + PITAU) % TAU - PI;
        }
        function _normalizeAngle(a) {
          return (a % TAU + TAU) % TAU;
        }
        function _angleBetween(angle, start, end, sameAngleIsFullCircle) {
          const a = _normalizeAngle(angle);
          const s = _normalizeAngle(start);
          const e = _normalizeAngle(end);
          const angleToStart = _normalizeAngle(s - a);
          const angleToEnd = _normalizeAngle(e - a);
          const startToAngle = _normalizeAngle(a - s);
          const endToAngle = _normalizeAngle(a - e);
          return a === s || a === e || sameAngleIsFullCircle && s === e || angleToStart > angleToEnd && startToAngle < endToAngle;
        }
        function _limitValue(value, min, max) {
          return Math.max(min, Math.min(max, value));
        }
        function _int16Range(value) {
          return _limitValue(value, -32768, 32767);
        }
        function _isBetween(value, start, end, epsilon = 1e-6) {
          return value >= Math.min(start, end) - epsilon && value <= Math.max(start, end) + epsilon;
        }
        function _isDomSupported() {
          return typeof window !== "undefined" && typeof document !== "undefined";
        }
        function _getParentNode(domNode) {
          let parent = domNode.parentNode;
          if (parent && parent.toString() === "[object ShadowRoot]") {
            parent = parent.host;
          }
          return parent;
        }
        function parseMaxStyle(styleValue, node, parentProperty) {
          let valueInPixels;
          if (typeof styleValue === "string") {
            valueInPixels = parseInt(styleValue, 10);
            if (styleValue.indexOf("%") !== -1) {
              valueInPixels = valueInPixels / 100 * node.parentNode[parentProperty];
            }
          } else {
            valueInPixels = styleValue;
          }
          return valueInPixels;
        }
        const getComputedStyle2 = (element) => window.getComputedStyle(element, null);
        function getStyle(el, property) {
          return getComputedStyle2(el).getPropertyValue(property);
        }
        const positions = ["top", "right", "bottom", "left"];
        function getPositionedStyle(styles, style, suffix) {
          const result = {};
          suffix = suffix ? "-" + suffix : "";
          for (let i = 0; i < 4; i++) {
            const pos = positions[i];
            result[pos] = parseFloat(styles[style + "-" + pos + suffix]) || 0;
          }
          result.width = result.left + result.right;
          result.height = result.top + result.bottom;
          return result;
        }
        const useOffsetPos = (x, y, target) => (x > 0 || y > 0) && (!target || !target.shadowRoot);
        function getCanvasPosition(e, canvas) {
          const touches = e.touches;
          const source = touches && touches.length ? touches[0] : e;
          const { offsetX, offsetY } = source;
          let box = false;
          let x, y;
          if (useOffsetPos(offsetX, offsetY, e.target)) {
            x = offsetX;
            y = offsetY;
          } else {
            const rect = canvas.getBoundingClientRect();
            x = source.clientX - rect.left;
            y = source.clientY - rect.top;
            box = true;
          }
          return { x, y, box };
        }
        function getRelativePosition(evt, chart2) {
          if ("native" in evt) {
            return evt;
          }
          const { canvas, currentDevicePixelRatio } = chart2;
          const style = getComputedStyle2(canvas);
          const borderBox = style.boxSizing === "border-box";
          const paddings = getPositionedStyle(style, "padding");
          const borders = getPositionedStyle(style, "border", "width");
          const { x, y, box } = getCanvasPosition(evt, canvas);
          const xOffset = paddings.left + (box && borders.left);
          const yOffset = paddings.top + (box && borders.top);
          let { width, height } = chart2;
          if (borderBox) {
            width -= paddings.width + borders.width;
            height -= paddings.height + borders.height;
          }
          return {
            x: Math.round((x - xOffset) / width * canvas.width / currentDevicePixelRatio),
            y: Math.round((y - yOffset) / height * canvas.height / currentDevicePixelRatio)
          };
        }
        function getContainerSize(canvas, width, height) {
          let maxWidth, maxHeight;
          if (width === void 0 || height === void 0) {
            const container = _getParentNode(canvas);
            if (!container) {
              width = canvas.clientWidth;
              height = canvas.clientHeight;
            } else {
              const rect = container.getBoundingClientRect();
              const containerStyle = getComputedStyle2(container);
              const containerBorder = getPositionedStyle(containerStyle, "border", "width");
              const containerPadding = getPositionedStyle(containerStyle, "padding");
              width = rect.width - containerPadding.width - containerBorder.width;
              height = rect.height - containerPadding.height - containerBorder.height;
              maxWidth = parseMaxStyle(containerStyle.maxWidth, container, "clientWidth");
              maxHeight = parseMaxStyle(containerStyle.maxHeight, container, "clientHeight");
            }
          }
          return {
            width,
            height,
            maxWidth: maxWidth || INFINITY,
            maxHeight: maxHeight || INFINITY
          };
        }
        const round1 = (v) => Math.round(v * 10) / 10;
        function getMaximumSize(canvas, bbWidth, bbHeight, aspectRatio) {
          const style = getComputedStyle2(canvas);
          const margins = getPositionedStyle(style, "margin");
          const maxWidth = parseMaxStyle(style.maxWidth, canvas, "clientWidth") || INFINITY;
          const maxHeight = parseMaxStyle(style.maxHeight, canvas, "clientHeight") || INFINITY;
          const containerSize = getContainerSize(canvas, bbWidth, bbHeight);
          let { width, height } = containerSize;
          if (style.boxSizing === "content-box") {
            const borders = getPositionedStyle(style, "border", "width");
            const paddings = getPositionedStyle(style, "padding");
            width -= paddings.width + borders.width;
            height -= paddings.height + borders.height;
          }
          width = Math.max(0, width - margins.width);
          height = Math.max(0, aspectRatio ? Math.floor(width / aspectRatio) : height - margins.height);
          width = round1(Math.min(width, maxWidth, containerSize.maxWidth));
          height = round1(Math.min(height, maxHeight, containerSize.maxHeight));
          if (width && !height) {
            height = round1(width / 2);
          }
          return {
            width,
            height
          };
        }
        function retinaScale(chart2, forceRatio, forceStyle) {
          const pixelRatio = forceRatio || 1;
          const deviceHeight = Math.floor(chart2.height * pixelRatio);
          const deviceWidth = Math.floor(chart2.width * pixelRatio);
          chart2.height = deviceHeight / pixelRatio;
          chart2.width = deviceWidth / pixelRatio;
          const canvas = chart2.canvas;
          if (canvas.style && (forceStyle || !canvas.style.height && !canvas.style.width)) {
            canvas.style.height = `${chart2.height}px`;
            canvas.style.width = `${chart2.width}px`;
          }
          if (chart2.currentDevicePixelRatio !== pixelRatio || canvas.height !== deviceHeight || canvas.width !== deviceWidth) {
            chart2.currentDevicePixelRatio = pixelRatio;
            canvas.height = deviceHeight;
            canvas.width = deviceWidth;
            chart2.ctx.setTransform(pixelRatio, 0, 0, pixelRatio, 0, 0);
            return true;
          }
          return false;
        }
        const supportsEventListenerOptions = function() {
          let passiveSupported = false;
          try {
            const options = {
              get passive() {
                passiveSupported = true;
                return false;
              }
            };
            window.addEventListener("test", null, options);
            window.removeEventListener("test", null, options);
          } catch (e) {
          }
          return passiveSupported;
        }();
        function readUsedSize(element, property) {
          const value = getStyle(element, property);
          const matches = value && value.match(/^(\d+)(\.\d+)?px$/);
          return matches ? +matches[1] : void 0;
        }
        function toFontString(font) {
          if (!font || isNullOrUndef(font.size) || isNullOrUndef(font.family)) {
            return null;
          }
          return (font.style ? font.style + " " : "") + (font.weight ? font.weight + " " : "") + font.size + "px " + font.family;
        }
        function _measureText(ctx, data, gc, longest, string) {
          let textWidth = data[string];
          if (!textWidth) {
            textWidth = data[string] = ctx.measureText(string).width;
            gc.push(string);
          }
          if (textWidth > longest) {
            longest = textWidth;
          }
          return longest;
        }
        function _longestText(ctx, font, arrayOfThings, cache) {
          cache = cache || {};
          let data = cache.data = cache.data || {};
          let gc = cache.garbageCollect = cache.garbageCollect || [];
          if (cache.font !== font) {
            data = cache.data = {};
            gc = cache.garbageCollect = [];
            cache.font = font;
          }
          ctx.save();
          ctx.font = font;
          let longest = 0;
          const ilen = arrayOfThings.length;
          let i, j, jlen, thing, nestedThing;
          for (i = 0; i < ilen; i++) {
            thing = arrayOfThings[i];
            if (thing !== void 0 && thing !== null && isArray(thing) !== true) {
              longest = _measureText(ctx, data, gc, longest, thing);
            } else if (isArray(thing)) {
              for (j = 0, jlen = thing.length; j < jlen; j++) {
                nestedThing = thing[j];
                if (nestedThing !== void 0 && nestedThing !== null && !isArray(nestedThing)) {
                  longest = _measureText(ctx, data, gc, longest, nestedThing);
                }
              }
            }
          }
          ctx.restore();
          const gcLen = gc.length / 2;
          if (gcLen > arrayOfThings.length) {
            for (i = 0; i < gcLen; i++) {
              delete data[gc[i]];
            }
            gc.splice(0, gcLen);
          }
          return longest;
        }
        function _alignPixel(chart2, pixel, width) {
          const devicePixelRatio = chart2.currentDevicePixelRatio;
          const halfWidth = width !== 0 ? Math.max(width / 2, 0.5) : 0;
          return Math.round((pixel - halfWidth) * devicePixelRatio) / devicePixelRatio + halfWidth;
        }
        function clearCanvas(canvas, ctx) {
          ctx = ctx || canvas.getContext("2d");
          ctx.save();
          ctx.resetTransform();
          ctx.clearRect(0, 0, canvas.width, canvas.height);
          ctx.restore();
        }
        function drawPoint(ctx, options, x, y) {
          let type, xOffset, yOffset, size, cornerRadius;
          const style = options.pointStyle;
          const rotation = options.rotation;
          const radius = options.radius;
          let rad = (rotation || 0) * RAD_PER_DEG;
          if (style && typeof style === "object") {
            type = style.toString();
            if (type === "[object HTMLImageElement]" || type === "[object HTMLCanvasElement]") {
              ctx.save();
              ctx.translate(x, y);
              ctx.rotate(rad);
              ctx.drawImage(style, -style.width / 2, -style.height / 2, style.width, style.height);
              ctx.restore();
              return;
            }
          }
          if (isNaN(radius) || radius <= 0) {
            return;
          }
          ctx.beginPath();
          switch (style) {
            default:
              ctx.arc(x, y, radius, 0, TAU);
              ctx.closePath();
              break;
            case "triangle":
              ctx.moveTo(x + Math.sin(rad) * radius, y - Math.cos(rad) * radius);
              rad += TWO_THIRDS_PI;
              ctx.lineTo(x + Math.sin(rad) * radius, y - Math.cos(rad) * radius);
              rad += TWO_THIRDS_PI;
              ctx.lineTo(x + Math.sin(rad) * radius, y - Math.cos(rad) * radius);
              ctx.closePath();
              break;
            case "rectRounded":
              cornerRadius = radius * 0.516;
              size = radius - cornerRadius;
              xOffset = Math.cos(rad + QUARTER_PI) * size;
              yOffset = Math.sin(rad + QUARTER_PI) * size;
              ctx.arc(x - xOffset, y - yOffset, cornerRadius, rad - PI, rad - HALF_PI);
              ctx.arc(x + yOffset, y - xOffset, cornerRadius, rad - HALF_PI, rad);
              ctx.arc(x + xOffset, y + yOffset, cornerRadius, rad, rad + HALF_PI);
              ctx.arc(x - yOffset, y + xOffset, cornerRadius, rad + HALF_PI, rad + PI);
              ctx.closePath();
              break;
            case "rect":
              if (!rotation) {
                size = Math.SQRT1_2 * radius;
                ctx.rect(x - size, y - size, 2 * size, 2 * size);
                break;
              }
              rad += QUARTER_PI;
            case "rectRot":
              xOffset = Math.cos(rad) * radius;
              yOffset = Math.sin(rad) * radius;
              ctx.moveTo(x - xOffset, y - yOffset);
              ctx.lineTo(x + yOffset, y - xOffset);
              ctx.lineTo(x + xOffset, y + yOffset);
              ctx.lineTo(x - yOffset, y + xOffset);
              ctx.closePath();
              break;
            case "crossRot":
              rad += QUARTER_PI;
            case "cross":
              xOffset = Math.cos(rad) * radius;
              yOffset = Math.sin(rad) * radius;
              ctx.moveTo(x - xOffset, y - yOffset);
              ctx.lineTo(x + xOffset, y + yOffset);
              ctx.moveTo(x + yOffset, y - xOffset);
              ctx.lineTo(x - yOffset, y + xOffset);
              break;
            case "star":
              xOffset = Math.cos(rad) * radius;
              yOffset = Math.sin(rad) * radius;
              ctx.moveTo(x - xOffset, y - yOffset);
              ctx.lineTo(x + xOffset, y + yOffset);
              ctx.moveTo(x + yOffset, y - xOffset);
              ctx.lineTo(x - yOffset, y + xOffset);
              rad += QUARTER_PI;
              xOffset = Math.cos(rad) * radius;
              yOffset = Math.sin(rad) * radius;
              ctx.moveTo(x - xOffset, y - yOffset);
              ctx.lineTo(x + xOffset, y + yOffset);
              ctx.moveTo(x + yOffset, y - xOffset);
              ctx.lineTo(x - yOffset, y + xOffset);
              break;
            case "line":
              xOffset = Math.cos(rad) * radius;
              yOffset = Math.sin(rad) * radius;
              ctx.moveTo(x - xOffset, y - yOffset);
              ctx.lineTo(x + xOffset, y + yOffset);
              break;
            case "dash":
              ctx.moveTo(x, y);
              ctx.lineTo(x + Math.cos(rad) * radius, y + Math.sin(rad) * radius);
              break;
          }
          ctx.fill();
          if (options.borderWidth > 0) {
            ctx.stroke();
          }
        }
        function _isPointInArea(point, area, margin) {
          margin = margin || 0.5;
          return !area || point && point.x > area.left - margin && point.x < area.right + margin && point.y > area.top - margin && point.y < area.bottom + margin;
        }
        function clipArea(ctx, area) {
          ctx.save();
          ctx.beginPath();
          ctx.rect(area.left, area.top, area.right - area.left, area.bottom - area.top);
          ctx.clip();
        }
        function unclipArea(ctx) {
          ctx.restore();
        }
        function _steppedLineTo(ctx, previous, target, flip, mode) {
          if (!previous) {
            return ctx.lineTo(target.x, target.y);
          }
          if (mode === "middle") {
            const midpoint = (previous.x + target.x) / 2;
            ctx.lineTo(midpoint, previous.y);
            ctx.lineTo(midpoint, target.y);
          } else if (mode === "after" !== !!flip) {
            ctx.lineTo(previous.x, target.y);
          } else {
            ctx.lineTo(target.x, previous.y);
          }
          ctx.lineTo(target.x, target.y);
        }
        function _bezierCurveTo(ctx, previous, target, flip) {
          if (!previous) {
            return ctx.lineTo(target.x, target.y);
          }
          ctx.bezierCurveTo(flip ? previous.cp1x : previous.cp2x, flip ? previous.cp1y : previous.cp2y, flip ? target.cp2x : target.cp1x, flip ? target.cp2y : target.cp1y, target.x, target.y);
        }
        function renderText(ctx, text, x, y, font, opts = {}) {
          const lines = isArray(text) ? text : [text];
          const stroke = opts.strokeWidth > 0 && opts.strokeColor !== "";
          let i, line;
          ctx.save();
          ctx.font = font.string;
          setRenderOpts(ctx, opts);
          for (i = 0; i < lines.length; ++i) {
            line = lines[i];
            if (stroke) {
              if (opts.strokeColor) {
                ctx.strokeStyle = opts.strokeColor;
              }
              if (!isNullOrUndef(opts.strokeWidth)) {
                ctx.lineWidth = opts.strokeWidth;
              }
              ctx.strokeText(line, x, y, opts.maxWidth);
            }
            ctx.fillText(line, x, y, opts.maxWidth);
            decorateText(ctx, x, y, line, opts);
            y += font.lineHeight;
          }
          ctx.restore();
        }
        function setRenderOpts(ctx, opts) {
          if (opts.translation) {
            ctx.translate(opts.translation[0], opts.translation[1]);
          }
          if (!isNullOrUndef(opts.rotation)) {
            ctx.rotate(opts.rotation);
          }
          if (opts.color) {
            ctx.fillStyle = opts.color;
          }
          if (opts.textAlign) {
            ctx.textAlign = opts.textAlign;
          }
          if (opts.textBaseline) {
            ctx.textBaseline = opts.textBaseline;
          }
        }
        function decorateText(ctx, x, y, line, opts) {
          if (opts.strikethrough || opts.underline) {
            const metrics = ctx.measureText(line);
            const left = x - metrics.actualBoundingBoxLeft;
            const right = x + metrics.actualBoundingBoxRight;
            const top = y - metrics.actualBoundingBoxAscent;
            const bottom = y + metrics.actualBoundingBoxDescent;
            const yDecoration = opts.strikethrough ? (top + bottom) / 2 : bottom;
            ctx.strokeStyle = ctx.fillStyle;
            ctx.beginPath();
            ctx.lineWidth = opts.decorationWidth || 2;
            ctx.moveTo(left, yDecoration);
            ctx.lineTo(right, yDecoration);
            ctx.stroke();
          }
        }
        function addRoundedRectPath(ctx, rect) {
          const { x, y, w, h, radius } = rect;
          ctx.arc(x + radius.topLeft, y + radius.topLeft, radius.topLeft, -HALF_PI, PI, true);
          ctx.lineTo(x, y + h - radius.bottomLeft);
          ctx.arc(x + radius.bottomLeft, y + h - radius.bottomLeft, radius.bottomLeft, PI, HALF_PI, true);
          ctx.lineTo(x + w - radius.bottomRight, y + h);
          ctx.arc(x + w - radius.bottomRight, y + h - radius.bottomRight, radius.bottomRight, HALF_PI, 0, true);
          ctx.lineTo(x + w, y + radius.topRight);
          ctx.arc(x + w - radius.topRight, y + radius.topRight, radius.topRight, 0, -HALF_PI, true);
          ctx.lineTo(x + radius.topLeft, y);
        }
        function _createResolver(scopes, prefixes = [""], rootScopes = scopes, fallback, getTarget = () => scopes[0]) {
          if (!defined(fallback)) {
            fallback = _resolve("_fallback", scopes);
          }
          const cache = {
            [Symbol.toStringTag]: "Object",
            _cacheable: true,
            _scopes: scopes,
            _rootScopes: rootScopes,
            _fallback: fallback,
            _getTarget: getTarget,
            override: (scope) => _createResolver([scope, ...scopes], prefixes, rootScopes, fallback)
          };
          return new Proxy(cache, {
            deleteProperty(target, prop) {
              delete target[prop];
              delete target._keys;
              delete scopes[0][prop];
              return true;
            },
            get(target, prop) {
              return _cached(target, prop, () => _resolveWithPrefixes(prop, prefixes, scopes, target));
            },
            getOwnPropertyDescriptor(target, prop) {
              return Reflect.getOwnPropertyDescriptor(target._scopes[0], prop);
            },
            getPrototypeOf() {
              return Reflect.getPrototypeOf(scopes[0]);
            },
            has(target, prop) {
              return getKeysFromAllScopes(target).includes(prop);
            },
            ownKeys(target) {
              return getKeysFromAllScopes(target);
            },
            set(target, prop, value) {
              const storage = target._storage || (target._storage = getTarget());
              target[prop] = storage[prop] = value;
              delete target._keys;
              return true;
            }
          });
        }
        function _attachContext(proxy, context, subProxy, descriptorDefaults) {
          const cache = {
            _cacheable: false,
            _proxy: proxy,
            _context: context,
            _subProxy: subProxy,
            _stack: /* @__PURE__ */ new Set(),
            _descriptors: _descriptors(proxy, descriptorDefaults),
            setContext: (ctx) => _attachContext(proxy, ctx, subProxy, descriptorDefaults),
            override: (scope) => _attachContext(proxy.override(scope), context, subProxy, descriptorDefaults)
          };
          return new Proxy(cache, {
            deleteProperty(target, prop) {
              delete target[prop];
              delete proxy[prop];
              return true;
            },
            get(target, prop, receiver) {
              return _cached(target, prop, () => _resolveWithContext(target, prop, receiver));
            },
            getOwnPropertyDescriptor(target, prop) {
              return target._descriptors.allKeys ? Reflect.has(proxy, prop) ? { enumerable: true, configurable: true } : void 0 : Reflect.getOwnPropertyDescriptor(proxy, prop);
            },
            getPrototypeOf() {
              return Reflect.getPrototypeOf(proxy);
            },
            has(target, prop) {
              return Reflect.has(proxy, prop);
            },
            ownKeys() {
              return Reflect.ownKeys(proxy);
            },
            set(target, prop, value) {
              proxy[prop] = value;
              delete target[prop];
              return true;
            }
          });
        }
        function _descriptors(proxy, defaults2 = { scriptable: true, indexable: true }) {
          const { _scriptable = defaults2.scriptable, _indexable = defaults2.indexable, _allKeys = defaults2.allKeys } = proxy;
          return {
            allKeys: _allKeys,
            scriptable: _scriptable,
            indexable: _indexable,
            isScriptable: isFunction(_scriptable) ? _scriptable : () => _scriptable,
            isIndexable: isFunction(_indexable) ? _indexable : () => _indexable
          };
        }
        const readKey = (prefix, name) => prefix ? prefix + _capitalize(name) : name;
        const needsSubResolver = (prop, value) => isObject2(value) && prop !== "adapters" && (Object.getPrototypeOf(value) === null || value.constructor === Object);
        function _cached(target, prop, resolve2) {
          if (Object.prototype.hasOwnProperty.call(target, prop)) {
            return target[prop];
          }
          const value = resolve2();
          target[prop] = value;
          return value;
        }
        function _resolveWithContext(target, prop, receiver) {
          const { _proxy, _context, _subProxy, _descriptors: descriptors2 } = target;
          let value = _proxy[prop];
          if (isFunction(value) && descriptors2.isScriptable(prop)) {
            value = _resolveScriptable(prop, value, target, receiver);
          }
          if (isArray(value) && value.length) {
            value = _resolveArray(prop, value, target, descriptors2.isIndexable);
          }
          if (needsSubResolver(prop, value)) {
            value = _attachContext(value, _context, _subProxy && _subProxy[prop], descriptors2);
          }
          return value;
        }
        function _resolveScriptable(prop, value, target, receiver) {
          const { _proxy, _context, _subProxy, _stack } = target;
          if (_stack.has(prop)) {
            throw new Error("Recursion detected: " + Array.from(_stack).join("->") + "->" + prop);
          }
          _stack.add(prop);
          value = value(_context, _subProxy || receiver);
          _stack.delete(prop);
          if (needsSubResolver(prop, value)) {
            value = createSubResolver(_proxy._scopes, _proxy, prop, value);
          }
          return value;
        }
        function _resolveArray(prop, value, target, isIndexable) {
          const { _proxy, _context, _subProxy, _descriptors: descriptors2 } = target;
          if (defined(_context.index) && isIndexable(prop)) {
            value = value[_context.index % value.length];
          } else if (isObject2(value[0])) {
            const arr = value;
            const scopes = _proxy._scopes.filter((s) => s !== arr);
            value = [];
            for (const item of arr) {
              const resolver = createSubResolver(scopes, _proxy, prop, item);
              value.push(_attachContext(resolver, _context, _subProxy && _subProxy[prop], descriptors2));
            }
          }
          return value;
        }
        function resolveFallback(fallback, prop, value) {
          return isFunction(fallback) ? fallback(prop, value) : fallback;
        }
        const getScope = (key, parent) => key === true ? parent : typeof key === "string" ? resolveObjectKey(parent, key) : void 0;
        function addScopes(set2, parentScopes, key, parentFallback, value) {
          for (const parent of parentScopes) {
            const scope = getScope(key, parent);
            if (scope) {
              set2.add(scope);
              const fallback = resolveFallback(scope._fallback, key, value);
              if (defined(fallback) && fallback !== key && fallback !== parentFallback) {
                return fallback;
              }
            } else if (scope === false && defined(parentFallback) && key !== parentFallback) {
              return null;
            }
          }
          return false;
        }
        function createSubResolver(parentScopes, resolver, prop, value) {
          const rootScopes = resolver._rootScopes;
          const fallback = resolveFallback(resolver._fallback, prop, value);
          const allScopes = [...parentScopes, ...rootScopes];
          const set2 = /* @__PURE__ */ new Set();
          set2.add(value);
          let key = addScopesFromKey(set2, allScopes, prop, fallback || prop, value);
          if (key === null) {
            return false;
          }
          if (defined(fallback) && fallback !== prop) {
            key = addScopesFromKey(set2, allScopes, fallback, key, value);
            if (key === null) {
              return false;
            }
          }
          return _createResolver(Array.from(set2), [""], rootScopes, fallback, () => subGetTarget(resolver, prop, value));
        }
        function addScopesFromKey(set2, allScopes, key, fallback, item) {
          while (key) {
            key = addScopes(set2, allScopes, key, fallback, item);
          }
          return key;
        }
        function subGetTarget(resolver, prop, value) {
          const parent = resolver._getTarget();
          if (!(prop in parent)) {
            parent[prop] = {};
          }
          const target = parent[prop];
          if (isArray(target) && isObject2(value)) {
            return value;
          }
          return target;
        }
        function _resolveWithPrefixes(prop, prefixes, scopes, proxy) {
          let value;
          for (const prefix of prefixes) {
            value = _resolve(readKey(prefix, prop), scopes);
            if (defined(value)) {
              return needsSubResolver(prop, value) ? createSubResolver(scopes, proxy, prop, value) : value;
            }
          }
        }
        function _resolve(key, scopes) {
          for (const scope of scopes) {
            if (!scope) {
              continue;
            }
            const value = scope[key];
            if (defined(value)) {
              return value;
            }
          }
        }
        function getKeysFromAllScopes(target) {
          let keys = target._keys;
          if (!keys) {
            keys = target._keys = resolveKeysFromAllScopes(target._scopes);
          }
          return keys;
        }
        function resolveKeysFromAllScopes(scopes) {
          const set2 = /* @__PURE__ */ new Set();
          for (const scope of scopes) {
            for (const key of Object.keys(scope).filter((k) => !k.startsWith("_"))) {
              set2.add(key);
            }
          }
          return Array.from(set2);
        }
        function _parseObjectDataRadialScale(meta, data, start, count) {
          const { iScale } = meta;
          const { key = "r" } = this._parsing;
          const parsed = new Array(count);
          let i, ilen, index2, item;
          for (i = 0, ilen = count; i < ilen; ++i) {
            index2 = i + start;
            item = data[index2];
            parsed[i] = {
              r: iScale.parse(resolveObjectKey(item, key), index2)
            };
          }
          return parsed;
        }
        const EPSILON = Number.EPSILON || 1e-14;
        const getPoint = (points, i) => i < points.length && !points[i].skip && points[i];
        const getValueAxis = (indexAxis) => indexAxis === "x" ? "y" : "x";
        function splineCurve(firstPoint, middlePoint, afterPoint, t) {
          const previous = firstPoint.skip ? middlePoint : firstPoint;
          const current = middlePoint;
          const next = afterPoint.skip ? middlePoint : afterPoint;
          const d01 = distanceBetweenPoints(current, previous);
          const d12 = distanceBetweenPoints(next, current);
          let s01 = d01 / (d01 + d12);
          let s12 = d12 / (d01 + d12);
          s01 = isNaN(s01) ? 0 : s01;
          s12 = isNaN(s12) ? 0 : s12;
          const fa = t * s01;
          const fb = t * s12;
          return {
            previous: {
              x: current.x - fa * (next.x - previous.x),
              y: current.y - fa * (next.y - previous.y)
            },
            next: {
              x: current.x + fb * (next.x - previous.x),
              y: current.y + fb * (next.y - previous.y)
            }
          };
        }
        function monotoneAdjust(points, deltaK, mK) {
          const pointsLen = points.length;
          let alphaK, betaK, tauK, squaredMagnitude, pointCurrent;
          let pointAfter = getPoint(points, 0);
          for (let i = 0; i < pointsLen - 1; ++i) {
            pointCurrent = pointAfter;
            pointAfter = getPoint(points, i + 1);
            if (!pointCurrent || !pointAfter) {
              continue;
            }
            if (almostEquals(deltaK[i], 0, EPSILON)) {
              mK[i] = mK[i + 1] = 0;
              continue;
            }
            alphaK = mK[i] / deltaK[i];
            betaK = mK[i + 1] / deltaK[i];
            squaredMagnitude = Math.pow(alphaK, 2) + Math.pow(betaK, 2);
            if (squaredMagnitude <= 9) {
              continue;
            }
            tauK = 3 / Math.sqrt(squaredMagnitude);
            mK[i] = alphaK * tauK * deltaK[i];
            mK[i + 1] = betaK * tauK * deltaK[i];
          }
        }
        function monotoneCompute(points, mK, indexAxis = "x") {
          const valueAxis = getValueAxis(indexAxis);
          const pointsLen = points.length;
          let delta, pointBefore, pointCurrent;
          let pointAfter = getPoint(points, 0);
          for (let i = 0; i < pointsLen; ++i) {
            pointBefore = pointCurrent;
            pointCurrent = pointAfter;
            pointAfter = getPoint(points, i + 1);
            if (!pointCurrent) {
              continue;
            }
            const iPixel = pointCurrent[indexAxis];
            const vPixel = pointCurrent[valueAxis];
            if (pointBefore) {
              delta = (iPixel - pointBefore[indexAxis]) / 3;
              pointCurrent[`cp1${indexAxis}`] = iPixel - delta;
              pointCurrent[`cp1${valueAxis}`] = vPixel - delta * mK[i];
            }
            if (pointAfter) {
              delta = (pointAfter[indexAxis] - iPixel) / 3;
              pointCurrent[`cp2${indexAxis}`] = iPixel + delta;
              pointCurrent[`cp2${valueAxis}`] = vPixel + delta * mK[i];
            }
          }
        }
        function splineCurveMonotone(points, indexAxis = "x") {
          const valueAxis = getValueAxis(indexAxis);
          const pointsLen = points.length;
          const deltaK = Array(pointsLen).fill(0);
          const mK = Array(pointsLen);
          let i, pointBefore, pointCurrent;
          let pointAfter = getPoint(points, 0);
          for (i = 0; i < pointsLen; ++i) {
            pointBefore = pointCurrent;
            pointCurrent = pointAfter;
            pointAfter = getPoint(points, i + 1);
            if (!pointCurrent) {
              continue;
            }
            if (pointAfter) {
              const slopeDelta = pointAfter[indexAxis] - pointCurrent[indexAxis];
              deltaK[i] = slopeDelta !== 0 ? (pointAfter[valueAxis] - pointCurrent[valueAxis]) / slopeDelta : 0;
            }
            mK[i] = !pointBefore ? deltaK[i] : !pointAfter ? deltaK[i - 1] : sign(deltaK[i - 1]) !== sign(deltaK[i]) ? 0 : (deltaK[i - 1] + deltaK[i]) / 2;
          }
          monotoneAdjust(points, deltaK, mK);
          monotoneCompute(points, mK, indexAxis);
        }
        function capControlPoint(pt, min, max) {
          return Math.max(Math.min(pt, max), min);
        }
        function capBezierPoints(points, area) {
          let i, ilen, point, inArea, inAreaPrev;
          let inAreaNext = _isPointInArea(points[0], area);
          for (i = 0, ilen = points.length; i < ilen; ++i) {
            inAreaPrev = inArea;
            inArea = inAreaNext;
            inAreaNext = i < ilen - 1 && _isPointInArea(points[i + 1], area);
            if (!inArea) {
              continue;
            }
            point = points[i];
            if (inAreaPrev) {
              point.cp1x = capControlPoint(point.cp1x, area.left, area.right);
              point.cp1y = capControlPoint(point.cp1y, area.top, area.bottom);
            }
            if (inAreaNext) {
              point.cp2x = capControlPoint(point.cp2x, area.left, area.right);
              point.cp2y = capControlPoint(point.cp2y, area.top, area.bottom);
            }
          }
        }
        function _updateBezierControlPoints(points, options, area, loop, indexAxis) {
          let i, ilen, point, controlPoints;
          if (options.spanGaps) {
            points = points.filter((pt) => !pt.skip);
          }
          if (options.cubicInterpolationMode === "monotone") {
            splineCurveMonotone(points, indexAxis);
          } else {
            let prev = loop ? points[points.length - 1] : points[0];
            for (i = 0, ilen = points.length; i < ilen; ++i) {
              point = points[i];
              controlPoints = splineCurve(prev, point, points[Math.min(i + 1, ilen - (loop ? 0 : 1)) % ilen], options.tension);
              point.cp1x = controlPoints.previous.x;
              point.cp1y = controlPoints.previous.y;
              point.cp2x = controlPoints.next.x;
              point.cp2y = controlPoints.next.y;
              prev = point;
            }
          }
          if (options.capBezierPoints) {
            capBezierPoints(points, area);
          }
        }
        const atEdge = (t) => t === 0 || t === 1;
        const elasticIn = (t, s, p) => -(Math.pow(2, 10 * (t -= 1)) * Math.sin((t - s) * TAU / p));
        const elasticOut = (t, s, p) => Math.pow(2, -10 * t) * Math.sin((t - s) * TAU / p) + 1;
        const effects = {
          linear: (t) => t,
          easeInQuad: (t) => t * t,
          easeOutQuad: (t) => -t * (t - 2),
          easeInOutQuad: (t) => (t /= 0.5) < 1 ? 0.5 * t * t : -0.5 * (--t * (t - 2) - 1),
          easeInCubic: (t) => t * t * t,
          easeOutCubic: (t) => (t -= 1) * t * t + 1,
          easeInOutCubic: (t) => (t /= 0.5) < 1 ? 0.5 * t * t * t : 0.5 * ((t -= 2) * t * t + 2),
          easeInQuart: (t) => t * t * t * t,
          easeOutQuart: (t) => -((t -= 1) * t * t * t - 1),
          easeInOutQuart: (t) => (t /= 0.5) < 1 ? 0.5 * t * t * t * t : -0.5 * ((t -= 2) * t * t * t - 2),
          easeInQuint: (t) => t * t * t * t * t,
          easeOutQuint: (t) => (t -= 1) * t * t * t * t + 1,
          easeInOutQuint: (t) => (t /= 0.5) < 1 ? 0.5 * t * t * t * t * t : 0.5 * ((t -= 2) * t * t * t * t + 2),
          easeInSine: (t) => -Math.cos(t * HALF_PI) + 1,
          easeOutSine: (t) => Math.sin(t * HALF_PI),
          easeInOutSine: (t) => -0.5 * (Math.cos(PI * t) - 1),
          easeInExpo: (t) => t === 0 ? 0 : Math.pow(2, 10 * (t - 1)),
          easeOutExpo: (t) => t === 1 ? 1 : -Math.pow(2, -10 * t) + 1,
          easeInOutExpo: (t) => atEdge(t) ? t : t < 0.5 ? 0.5 * Math.pow(2, 10 * (t * 2 - 1)) : 0.5 * (-Math.pow(2, -10 * (t * 2 - 1)) + 2),
          easeInCirc: (t) => t >= 1 ? t : -(Math.sqrt(1 - t * t) - 1),
          easeOutCirc: (t) => Math.sqrt(1 - (t -= 1) * t),
          easeInOutCirc: (t) => (t /= 0.5) < 1 ? -0.5 * (Math.sqrt(1 - t * t) - 1) : 0.5 * (Math.sqrt(1 - (t -= 2) * t) + 1),
          easeInElastic: (t) => atEdge(t) ? t : elasticIn(t, 0.075, 0.3),
          easeOutElastic: (t) => atEdge(t) ? t : elasticOut(t, 0.075, 0.3),
          easeInOutElastic(t) {
            const s = 0.1125;
            const p = 0.45;
            return atEdge(t) ? t : t < 0.5 ? 0.5 * elasticIn(t * 2, s, p) : 0.5 + 0.5 * elasticOut(t * 2 - 1, s, p);
          },
          easeInBack(t) {
            const s = 1.70158;
            return t * t * ((s + 1) * t - s);
          },
          easeOutBack(t) {
            const s = 1.70158;
            return (t -= 1) * t * ((s + 1) * t + s) + 1;
          },
          easeInOutBack(t) {
            let s = 1.70158;
            if ((t /= 0.5) < 1) {
              return 0.5 * (t * t * (((s *= 1.525) + 1) * t - s));
            }
            return 0.5 * ((t -= 2) * t * (((s *= 1.525) + 1) * t + s) + 2);
          },
          easeInBounce: (t) => 1 - effects.easeOutBounce(1 - t),
          easeOutBounce(t) {
            const m = 7.5625;
            const d = 2.75;
            if (t < 1 / d) {
              return m * t * t;
            }
            if (t < 2 / d) {
              return m * (t -= 1.5 / d) * t + 0.75;
            }
            if (t < 2.5 / d) {
              return m * (t -= 2.25 / d) * t + 0.9375;
            }
            return m * (t -= 2.625 / d) * t + 0.984375;
          },
          easeInOutBounce: (t) => t < 0.5 ? effects.easeInBounce(t * 2) * 0.5 : effects.easeOutBounce(t * 2 - 1) * 0.5 + 0.5
        };
        function _pointInLine(p1, p2, t, mode) {
          return {
            x: p1.x + t * (p2.x - p1.x),
            y: p1.y + t * (p2.y - p1.y)
          };
        }
        function _steppedInterpolation(p1, p2, t, mode) {
          return {
            x: p1.x + t * (p2.x - p1.x),
            y: mode === "middle" ? t < 0.5 ? p1.y : p2.y : mode === "after" ? t < 1 ? p1.y : p2.y : t > 0 ? p2.y : p1.y
          };
        }
        function _bezierInterpolation(p1, p2, t, mode) {
          const cp1 = { x: p1.cp2x, y: p1.cp2y };
          const cp2 = { x: p2.cp1x, y: p2.cp1y };
          const a = _pointInLine(p1, cp1, t);
          const b = _pointInLine(cp1, cp2, t);
          const c = _pointInLine(cp2, p2, t);
          const d = _pointInLine(a, b, t);
          const e = _pointInLine(b, c, t);
          return _pointInLine(d, e, t);
        }
        const intlCache = /* @__PURE__ */ new Map();
        function getNumberFormat(locale, options) {
          options = options || {};
          const cacheKey = locale + JSON.stringify(options);
          let formatter = intlCache.get(cacheKey);
          if (!formatter) {
            formatter = new Intl.NumberFormat(locale, options);
            intlCache.set(cacheKey, formatter);
          }
          return formatter;
        }
        function formatNumber(num, locale, options) {
          return getNumberFormat(locale, options).format(num);
        }
        const LINE_HEIGHT = new RegExp(/^(normal|(\d+(?:\.\d+)?)(px|em|%)?)$/);
        const FONT_STYLE = new RegExp(/^(normal|italic|initial|inherit|unset|(oblique( -?[0-9]?[0-9]deg)?))$/);
        function toLineHeight(value, size) {
          const matches = ("" + value).match(LINE_HEIGHT);
          if (!matches || matches[1] === "normal") {
            return size * 1.2;
          }
          value = +matches[2];
          switch (matches[3]) {
            case "px":
              return value;
            case "%":
              value /= 100;
              break;
          }
          return size * value;
        }
        const numberOrZero = (v) => +v || 0;
        function _readValueToProps(value, props) {
          const ret = {};
          const objProps = isObject2(props);
          const keys = objProps ? Object.keys(props) : props;
          const read = isObject2(value) ? objProps ? (prop) => valueOrDefault(value[prop], value[props[prop]]) : (prop) => value[prop] : () => value;
          for (const prop of keys) {
            ret[prop] = numberOrZero(read(prop));
          }
          return ret;
        }
        function toTRBL(value) {
          return _readValueToProps(value, { top: "y", right: "x", bottom: "y", left: "x" });
        }
        function toTRBLCorners(value) {
          return _readValueToProps(value, ["topLeft", "topRight", "bottomLeft", "bottomRight"]);
        }
        function toPadding(value) {
          const obj = toTRBL(value);
          obj.width = obj.left + obj.right;
          obj.height = obj.top + obj.bottom;
          return obj;
        }
        function toFont(options, fallback) {
          options = options || {};
          fallback = fallback || defaults.font;
          let size = valueOrDefault(options.size, fallback.size);
          if (typeof size === "string") {
            size = parseInt(size, 10);
          }
          let style = valueOrDefault(options.style, fallback.style);
          if (style && !("" + style).match(FONT_STYLE)) {
            console.warn('Invalid font style specified: "' + style + '"');
            style = "";
          }
          const font = {
            family: valueOrDefault(options.family, fallback.family),
            lineHeight: toLineHeight(valueOrDefault(options.lineHeight, fallback.lineHeight), size),
            size,
            style,
            weight: valueOrDefault(options.weight, fallback.weight),
            string: ""
          };
          font.string = toFontString(font);
          return font;
        }
        function resolve(inputs, context, index2, info) {
          let cacheable = true;
          let i, ilen, value;
          for (i = 0, ilen = inputs.length; i < ilen; ++i) {
            value = inputs[i];
            if (value === void 0) {
              continue;
            }
            if (context !== void 0 && typeof value === "function") {
              value = value(context);
              cacheable = false;
            }
            if (index2 !== void 0 && isArray(value)) {
              value = value[index2 % value.length];
              cacheable = false;
            }
            if (value !== void 0) {
              if (info && !cacheable) {
                info.cacheable = false;
              }
              return value;
            }
          }
        }
        function _addGrace(minmax, grace, beginAtZero) {
          const { min, max } = minmax;
          const change = toDimension(grace, (max - min) / 2);
          const keepZero = (value, add) => beginAtZero && value === 0 ? 0 : value + add;
          return {
            min: keepZero(min, -Math.abs(change)),
            max: keepZero(max, change)
          };
        }
        function createContext(parentContext, context) {
          return Object.assign(Object.create(parentContext), context);
        }
        const getRightToLeftAdapter = function(rectX, width) {
          return {
            x(x) {
              return rectX + rectX + width - x;
            },
            setWidth(w) {
              width = w;
            },
            textAlign(align) {
              if (align === "center") {
                return align;
              }
              return align === "right" ? "left" : "right";
            },
            xPlus(x, value) {
              return x - value;
            },
            leftForLtr(x, itemWidth) {
              return x - itemWidth;
            }
          };
        };
        const getLeftToRightAdapter = function() {
          return {
            x(x) {
              return x;
            },
            setWidth(w) {
            },
            textAlign(align) {
              return align;
            },
            xPlus(x, value) {
              return x + value;
            },
            leftForLtr(x, _itemWidth) {
              return x;
            }
          };
        };
        function getRtlAdapter(rtl, rectX, width) {
          return rtl ? getRightToLeftAdapter(rectX, width) : getLeftToRightAdapter();
        }
        function overrideTextDirection(ctx, direction) {
          let style, original;
          if (direction === "ltr" || direction === "rtl") {
            style = ctx.canvas.style;
            original = [
              style.getPropertyValue("direction"),
              style.getPropertyPriority("direction")
            ];
            style.setProperty("direction", direction, "important");
            ctx.prevTextDirection = original;
          }
        }
        function restoreTextDirection(ctx, original) {
          if (original !== void 0) {
            delete ctx.prevTextDirection;
            ctx.canvas.style.setProperty("direction", original[0], original[1]);
          }
        }
        function propertyFn(property) {
          if (property === "angle") {
            return {
              between: _angleBetween,
              compare: _angleDiff,
              normalize: _normalizeAngle
            };
          }
          return {
            between: _isBetween,
            compare: (a, b) => a - b,
            normalize: (x) => x
          };
        }
        function normalizeSegment({ start, end, count, loop, style }) {
          return {
            start: start % count,
            end: end % count,
            loop: loop && (end - start + 1) % count === 0,
            style
          };
        }
        function getSegment(segment, points, bounds) {
          const { property, start: startBound, end: endBound } = bounds;
          const { between, normalize } = propertyFn(property);
          const count = points.length;
          let { start, end, loop } = segment;
          let i, ilen;
          if (loop) {
            start += count;
            end += count;
            for (i = 0, ilen = count; i < ilen; ++i) {
              if (!between(normalize(points[start % count][property]), startBound, endBound)) {
                break;
              }
              start--;
              end--;
            }
            start %= count;
            end %= count;
          }
          if (end < start) {
            end += count;
          }
          return { start, end, loop, style: segment.style };
        }
        function _boundSegment(segment, points, bounds) {
          if (!bounds) {
            return [segment];
          }
          const { property, start: startBound, end: endBound } = bounds;
          const count = points.length;
          const { compare, between, normalize } = propertyFn(property);
          const { start, end, loop, style } = getSegment(segment, points, bounds);
          const result = [];
          let inside = false;
          let subStart = null;
          let value, point, prevValue;
          const startIsBefore = () => between(startBound, prevValue, value) && compare(startBound, prevValue) !== 0;
          const endIsBefore = () => compare(endBound, value) === 0 || between(endBound, prevValue, value);
          const shouldStart = () => inside || startIsBefore();
          const shouldStop = () => !inside || endIsBefore();
          for (let i = start, prev = start; i <= end; ++i) {
            point = points[i % count];
            if (point.skip) {
              continue;
            }
            value = normalize(point[property]);
            if (value === prevValue) {
              continue;
            }
            inside = between(value, startBound, endBound);
            if (subStart === null && shouldStart()) {
              subStart = compare(value, startBound) === 0 ? i : prev;
            }
            if (subStart !== null && shouldStop()) {
              result.push(normalizeSegment({ start: subStart, end: i, loop, count, style }));
              subStart = null;
            }
            prev = i;
            prevValue = value;
          }
          if (subStart !== null) {
            result.push(normalizeSegment({ start: subStart, end, loop, count, style }));
          }
          return result;
        }
        function _boundSegments(line, bounds) {
          const result = [];
          const segments = line.segments;
          for (let i = 0; i < segments.length; i++) {
            const sub = _boundSegment(segments[i], line.points, bounds);
            if (sub.length) {
              result.push(...sub);
            }
          }
          return result;
        }
        function findStartAndEnd(points, count, loop, spanGaps) {
          let start = 0;
          let end = count - 1;
          if (loop && !spanGaps) {
            while (start < count && !points[start].skip) {
              start++;
            }
          }
          while (start < count && points[start].skip) {
            start++;
          }
          start %= count;
          if (loop) {
            end += start;
          }
          while (end > start && points[end % count].skip) {
            end--;
          }
          end %= count;
          return { start, end };
        }
        function solidSegments(points, start, max, loop) {
          const count = points.length;
          const result = [];
          let last = start;
          let prev = points[start];
          let end;
          for (end = start + 1; end <= max; ++end) {
            const cur = points[end % count];
            if (cur.skip || cur.stop) {
              if (!prev.skip) {
                loop = false;
                result.push({ start: start % count, end: (end - 1) % count, loop });
                start = last = cur.stop ? end : null;
              }
            } else {
              last = end;
              if (prev.skip) {
                start = end;
              }
            }
            prev = cur;
          }
          if (last !== null) {
            result.push({ start: start % count, end: last % count, loop });
          }
          return result;
        }
        function _computeSegments(line, segmentOptions) {
          const points = line.points;
          const spanGaps = line.options.spanGaps;
          const count = points.length;
          if (!count) {
            return [];
          }
          const loop = !!line._loop;
          const { start, end } = findStartAndEnd(points, count, loop, spanGaps);
          if (spanGaps === true) {
            return splitByStyles(line, [{ start, end, loop }], points, segmentOptions);
          }
          const max = end < start ? end + count : end;
          const completeLoop = !!line._fullLoop && start === 0 && end === count - 1;
          return splitByStyles(line, solidSegments(points, start, max, completeLoop), points, segmentOptions);
        }
        function splitByStyles(line, segments, points, segmentOptions) {
          if (!segmentOptions || !segmentOptions.setContext || !points) {
            return segments;
          }
          return doSplitByStyles(line, segments, points, segmentOptions);
        }
        function doSplitByStyles(line, segments, points, segmentOptions) {
          const chartContext = line._chart.getContext();
          const baseStyle = readStyle(line.options);
          const { _datasetIndex: datasetIndex, options: { spanGaps } } = line;
          const count = points.length;
          const result = [];
          let prevStyle = baseStyle;
          let start = segments[0].start;
          let i = start;
          function addStyle(s, e, l, st) {
            const dir = spanGaps ? -1 : 1;
            if (s === e) {
              return;
            }
            s += count;
            while (points[s % count].skip) {
              s -= dir;
            }
            while (points[e % count].skip) {
              e += dir;
            }
            if (s % count !== e % count) {
              result.push({ start: s % count, end: e % count, loop: l, style: st });
              prevStyle = st;
              start = e % count;
            }
          }
          for (const segment of segments) {
            start = spanGaps ? start : segment.start;
            let prev = points[start % count];
            let style;
            for (i = start + 1; i <= segment.end; i++) {
              const pt = points[i % count];
              style = readStyle(segmentOptions.setContext(createContext(chartContext, {
                type: "segment",
                p0: prev,
                p1: pt,
                p0DataIndex: (i - 1) % count,
                p1DataIndex: i % count,
                datasetIndex
              })));
              if (styleChanged(style, prevStyle)) {
                addStyle(start, i - 1, segment.loop, prevStyle);
              }
              prev = pt;
              prevStyle = style;
            }
            if (start < i - 1) {
              addStyle(start, i - 1, segment.loop, prevStyle);
            }
          }
          return result;
        }
        function readStyle(options) {
          return {
            backgroundColor: options.backgroundColor,
            borderCapStyle: options.borderCapStyle,
            borderDash: options.borderDash,
            borderDashOffset: options.borderDashOffset,
            borderJoinStyle: options.borderJoinStyle,
            borderWidth: options.borderWidth,
            borderColor: options.borderColor
          };
        }
        function styleChanged(style, prevStyle) {
          return prevStyle && JSON.stringify(style) !== JSON.stringify(prevStyle);
        }
        var helpers = /* @__PURE__ */ Object.freeze({
          __proto__: null,
          easingEffects: effects,
          isPatternOrGradient,
          color,
          getHoverColor,
          noop: noop2,
          uid,
          isNullOrUndef,
          isArray,
          isObject: isObject2,
          isFinite: isNumberFinite,
          finiteOrDefault,
          valueOrDefault,
          toPercentage,
          toDimension,
          callback,
          each,
          _elementsEqual,
          clone: clone2,
          _merger,
          merge,
          mergeIf,
          _mergerIf,
          _deprecated,
          resolveObjectKey,
          _capitalize,
          defined,
          isFunction,
          setsEqual,
          _isClickEvent,
          toFontString,
          _measureText,
          _longestText,
          _alignPixel,
          clearCanvas,
          drawPoint,
          _isPointInArea,
          clipArea,
          unclipArea,
          _steppedLineTo,
          _bezierCurveTo,
          renderText,
          addRoundedRectPath,
          _lookup,
          _lookupByKey,
          _rlookupByKey,
          _filterBetween,
          listenArrayEvents,
          unlistenArrayEvents,
          _arrayUnique,
          _createResolver,
          _attachContext,
          _descriptors,
          _parseObjectDataRadialScale,
          splineCurve,
          splineCurveMonotone,
          _updateBezierControlPoints,
          _isDomSupported,
          _getParentNode,
          getStyle,
          getRelativePosition,
          getMaximumSize,
          retinaScale,
          supportsEventListenerOptions,
          readUsedSize,
          fontString,
          requestAnimFrame,
          throttled,
          debounce,
          _toLeftRightCenter,
          _alignStartEnd,
          _textX,
          _pointInLine,
          _steppedInterpolation,
          _bezierInterpolation,
          formatNumber,
          toLineHeight,
          _readValueToProps,
          toTRBL,
          toTRBLCorners,
          toPadding,
          toFont,
          resolve,
          _addGrace,
          createContext,
          PI,
          TAU,
          PITAU,
          INFINITY,
          RAD_PER_DEG,
          HALF_PI,
          QUARTER_PI,
          TWO_THIRDS_PI,
          log10,
          sign,
          niceNum,
          _factorize,
          isNumber,
          almostEquals,
          almostWhole,
          _setMinAndMaxByKey,
          toRadians,
          toDegrees,
          _decimalPlaces,
          getAngleFromPoint,
          distanceBetweenPoints,
          _angleDiff,
          _normalizeAngle,
          _angleBetween,
          _limitValue,
          _int16Range,
          _isBetween,
          getRtlAdapter,
          overrideTextDirection,
          restoreTextDirection,
          _boundSegment,
          _boundSegments,
          _computeSegments
        });
        function binarySearch(metaset, axis, value, intersect) {
          const { controller, data, _sorted } = metaset;
          const iScale = controller._cachedMeta.iScale;
          if (iScale && axis === iScale.axis && axis !== "r" && _sorted && data.length) {
            const lookupMethod = iScale._reversePixels ? _rlookupByKey : _lookupByKey;
            if (!intersect) {
              return lookupMethod(data, axis, value);
            } else if (controller._sharedOptions) {
              const el = data[0];
              const range2 = typeof el.getRange === "function" && el.getRange(axis);
              if (range2) {
                const start = lookupMethod(data, axis, value - range2);
                const end = lookupMethod(data, axis, value + range2);
                return { lo: start.lo, hi: end.hi };
              }
            }
          }
          return { lo: 0, hi: data.length - 1 };
        }
        function evaluateInteractionItems(chart2, axis, position, handler, intersect) {
          const metasets = chart2.getSortedVisibleDatasetMetas();
          const value = position[axis];
          for (let i = 0, ilen = metasets.length; i < ilen; ++i) {
            const { index: index2, data } = metasets[i];
            const { lo, hi } = binarySearch(metasets[i], axis, value, intersect);
            for (let j = lo; j <= hi; ++j) {
              const element = data[j];
              if (!element.skip) {
                handler(element, index2, j);
              }
            }
          }
        }
        function getDistanceMetricForAxis(axis) {
          const useX = axis.indexOf("x") !== -1;
          const useY = axis.indexOf("y") !== -1;
          return function(pt1, pt2) {
            const deltaX = useX ? Math.abs(pt1.x - pt2.x) : 0;
            const deltaY = useY ? Math.abs(pt1.y - pt2.y) : 0;
            return Math.sqrt(Math.pow(deltaX, 2) + Math.pow(deltaY, 2));
          };
        }
        function getIntersectItems(chart2, position, axis, useFinalPosition, includeInvisible) {
          const items = [];
          if (!includeInvisible && !chart2.isPointInArea(position)) {
            return items;
          }
          const evaluationFunc = function(element, datasetIndex, index2) {
            if (!includeInvisible && !_isPointInArea(element, chart2.chartArea, 0)) {
              return;
            }
            if (element.inRange(position.x, position.y, useFinalPosition)) {
              items.push({ element, datasetIndex, index: index2 });
            }
          };
          evaluateInteractionItems(chart2, axis, position, evaluationFunc, true);
          return items;
        }
        function getNearestRadialItems(chart2, position, axis, useFinalPosition) {
          let items = [];
          function evaluationFunc(element, datasetIndex, index2) {
            const { startAngle, endAngle } = element.getProps(["startAngle", "endAngle"], useFinalPosition);
            const { angle } = getAngleFromPoint(element, { x: position.x, y: position.y });
            if (_angleBetween(angle, startAngle, endAngle)) {
              items.push({ element, datasetIndex, index: index2 });
            }
          }
          evaluateInteractionItems(chart2, axis, position, evaluationFunc);
          return items;
        }
        function getNearestCartesianItems(chart2, position, axis, intersect, useFinalPosition, includeInvisible) {
          let items = [];
          const distanceMetric = getDistanceMetricForAxis(axis);
          let minDistance = Number.POSITIVE_INFINITY;
          function evaluationFunc(element, datasetIndex, index2) {
            const inRange2 = element.inRange(position.x, position.y, useFinalPosition);
            if (intersect && !inRange2) {
              return;
            }
            const center = element.getCenterPoint(useFinalPosition);
            const pointInArea = !!includeInvisible || chart2.isPointInArea(center);
            if (!pointInArea && !inRange2) {
              return;
            }
            const distance = distanceMetric(position, center);
            if (distance < minDistance) {
              items = [{ element, datasetIndex, index: index2 }];
              minDistance = distance;
            } else if (distance === minDistance) {
              items.push({ element, datasetIndex, index: index2 });
            }
          }
          evaluateInteractionItems(chart2, axis, position, evaluationFunc);
          return items;
        }
        function getNearestItems(chart2, position, axis, intersect, useFinalPosition, includeInvisible) {
          if (!includeInvisible && !chart2.isPointInArea(position)) {
            return [];
          }
          return axis === "r" && !intersect ? getNearestRadialItems(chart2, position, axis, useFinalPosition) : getNearestCartesianItems(chart2, position, axis, intersect, useFinalPosition, includeInvisible);
        }
        function getAxisItems(chart2, position, axis, intersect, useFinalPosition) {
          const items = [];
          const rangeMethod = axis === "x" ? "inXRange" : "inYRange";
          let intersectsItem = false;
          evaluateInteractionItems(chart2, axis, position, (element, datasetIndex, index2) => {
            if (element[rangeMethod](position[axis], useFinalPosition)) {
              items.push({ element, datasetIndex, index: index2 });
              intersectsItem = intersectsItem || element.inRange(position.x, position.y, useFinalPosition);
            }
          });
          if (intersect && !intersectsItem) {
            return [];
          }
          return items;
        }
        var Interaction = {
          evaluateInteractionItems,
          modes: {
            index(chart2, e, options, useFinalPosition) {
              const position = getRelativePosition(e, chart2);
              const axis = options.axis || "x";
              const includeInvisible = options.includeInvisible || false;
              const items = options.intersect ? getIntersectItems(chart2, position, axis, useFinalPosition, includeInvisible) : getNearestItems(chart2, position, axis, false, useFinalPosition, includeInvisible);
              const elements2 = [];
              if (!items.length) {
                return [];
              }
              chart2.getSortedVisibleDatasetMetas().forEach((meta) => {
                const index2 = items[0].index;
                const element = meta.data[index2];
                if (element && !element.skip) {
                  elements2.push({ element, datasetIndex: meta.index, index: index2 });
                }
              });
              return elements2;
            },
            dataset(chart2, e, options, useFinalPosition) {
              const position = getRelativePosition(e, chart2);
              const axis = options.axis || "xy";
              const includeInvisible = options.includeInvisible || false;
              let items = options.intersect ? getIntersectItems(chart2, position, axis, useFinalPosition, includeInvisible) : getNearestItems(chart2, position, axis, false, useFinalPosition, includeInvisible);
              if (items.length > 0) {
                const datasetIndex = items[0].datasetIndex;
                const data = chart2.getDatasetMeta(datasetIndex).data;
                items = [];
                for (let i = 0; i < data.length; ++i) {
                  items.push({ element: data[i], datasetIndex, index: i });
                }
              }
              return items;
            },
            point(chart2, e, options, useFinalPosition) {
              const position = getRelativePosition(e, chart2);
              const axis = options.axis || "xy";
              const includeInvisible = options.includeInvisible || false;
              return getIntersectItems(chart2, position, axis, useFinalPosition, includeInvisible);
            },
            nearest(chart2, e, options, useFinalPosition) {
              const position = getRelativePosition(e, chart2);
              const axis = options.axis || "xy";
              const includeInvisible = options.includeInvisible || false;
              return getNearestItems(chart2, position, axis, options.intersect, useFinalPosition, includeInvisible);
            },
            x(chart2, e, options, useFinalPosition) {
              const position = getRelativePosition(e, chart2);
              return getAxisItems(chart2, position, "x", options.intersect, useFinalPosition);
            },
            y(chart2, e, options, useFinalPosition) {
              const position = getRelativePosition(e, chart2);
              return getAxisItems(chart2, position, "y", options.intersect, useFinalPosition);
            }
          }
        };
        const STATIC_POSITIONS = ["left", "top", "right", "bottom"];
        function filterByPosition(array, position) {
          return array.filter((v) => v.pos === position);
        }
        function filterDynamicPositionByAxis(array, axis) {
          return array.filter((v) => STATIC_POSITIONS.indexOf(v.pos) === -1 && v.box.axis === axis);
        }
        function sortByWeight(array, reverse) {
          return array.sort((a, b) => {
            const v0 = reverse ? b : a;
            const v1 = reverse ? a : b;
            return v0.weight === v1.weight ? v0.index - v1.index : v0.weight - v1.weight;
          });
        }
        function wrapBoxes(boxes) {
          const layoutBoxes = [];
          let i, ilen, box, pos, stack, stackWeight;
          for (i = 0, ilen = (boxes || []).length; i < ilen; ++i) {
            box = boxes[i];
            ({ position: pos, options: { stack, stackWeight = 1 } } = box);
            layoutBoxes.push({
              index: i,
              box,
              pos,
              horizontal: box.isHorizontal(),
              weight: box.weight,
              stack: stack && pos + stack,
              stackWeight
            });
          }
          return layoutBoxes;
        }
        function buildStacks(layouts2) {
          const stacks = {};
          for (const wrap of layouts2) {
            const { stack, pos, stackWeight } = wrap;
            if (!stack || !STATIC_POSITIONS.includes(pos)) {
              continue;
            }
            const _stack = stacks[stack] || (stacks[stack] = { count: 0, placed: 0, weight: 0, size: 0 });
            _stack.count++;
            _stack.weight += stackWeight;
          }
          return stacks;
        }
        function setLayoutDims(layouts2, params) {
          const stacks = buildStacks(layouts2);
          const { vBoxMaxWidth, hBoxMaxHeight } = params;
          let i, ilen, layout;
          for (i = 0, ilen = layouts2.length; i < ilen; ++i) {
            layout = layouts2[i];
            const { fullSize } = layout.box;
            const stack = stacks[layout.stack];
            const factor = stack && layout.stackWeight / stack.weight;
            if (layout.horizontal) {
              layout.width = factor ? factor * vBoxMaxWidth : fullSize && params.availableWidth;
              layout.height = hBoxMaxHeight;
            } else {
              layout.width = vBoxMaxWidth;
              layout.height = factor ? factor * hBoxMaxHeight : fullSize && params.availableHeight;
            }
          }
          return stacks;
        }
        function buildLayoutBoxes(boxes) {
          const layoutBoxes = wrapBoxes(boxes);
          const fullSize = sortByWeight(layoutBoxes.filter((wrap) => wrap.box.fullSize), true);
          const left = sortByWeight(filterByPosition(layoutBoxes, "left"), true);
          const right = sortByWeight(filterByPosition(layoutBoxes, "right"));
          const top = sortByWeight(filterByPosition(layoutBoxes, "top"), true);
          const bottom = sortByWeight(filterByPosition(layoutBoxes, "bottom"));
          const centerHorizontal = filterDynamicPositionByAxis(layoutBoxes, "x");
          const centerVertical = filterDynamicPositionByAxis(layoutBoxes, "y");
          return {
            fullSize,
            leftAndTop: left.concat(top),
            rightAndBottom: right.concat(centerVertical).concat(bottom).concat(centerHorizontal),
            chartArea: filterByPosition(layoutBoxes, "chartArea"),
            vertical: left.concat(right).concat(centerVertical),
            horizontal: top.concat(bottom).concat(centerHorizontal)
          };
        }
        function getCombinedMax(maxPadding, chartArea, a, b) {
          return Math.max(maxPadding[a], chartArea[a]) + Math.max(maxPadding[b], chartArea[b]);
        }
        function updateMaxPadding(maxPadding, boxPadding) {
          maxPadding.top = Math.max(maxPadding.top, boxPadding.top);
          maxPadding.left = Math.max(maxPadding.left, boxPadding.left);
          maxPadding.bottom = Math.max(maxPadding.bottom, boxPadding.bottom);
          maxPadding.right = Math.max(maxPadding.right, boxPadding.right);
        }
        function updateDims(chartArea, params, layout, stacks) {
          const { pos, box } = layout;
          const maxPadding = chartArea.maxPadding;
          if (!isObject2(pos)) {
            if (layout.size) {
              chartArea[pos] -= layout.size;
            }
            const stack = stacks[layout.stack] || { size: 0, count: 1 };
            stack.size = Math.max(stack.size, layout.horizontal ? box.height : box.width);
            layout.size = stack.size / stack.count;
            chartArea[pos] += layout.size;
          }
          if (box.getPadding) {
            updateMaxPadding(maxPadding, box.getPadding());
          }
          const newWidth = Math.max(0, params.outerWidth - getCombinedMax(maxPadding, chartArea, "left", "right"));
          const newHeight = Math.max(0, params.outerHeight - getCombinedMax(maxPadding, chartArea, "top", "bottom"));
          const widthChanged = newWidth !== chartArea.w;
          const heightChanged = newHeight !== chartArea.h;
          chartArea.w = newWidth;
          chartArea.h = newHeight;
          return layout.horizontal ? { same: widthChanged, other: heightChanged } : { same: heightChanged, other: widthChanged };
        }
        function handleMaxPadding(chartArea) {
          const maxPadding = chartArea.maxPadding;
          function updatePos(pos) {
            const change = Math.max(maxPadding[pos] - chartArea[pos], 0);
            chartArea[pos] += change;
            return change;
          }
          chartArea.y += updatePos("top");
          chartArea.x += updatePos("left");
          updatePos("right");
          updatePos("bottom");
        }
        function getMargins(horizontal, chartArea) {
          const maxPadding = chartArea.maxPadding;
          function marginForPositions(positions2) {
            const margin = { left: 0, top: 0, right: 0, bottom: 0 };
            positions2.forEach((pos) => {
              margin[pos] = Math.max(chartArea[pos], maxPadding[pos]);
            });
            return margin;
          }
          return horizontal ? marginForPositions(["left", "right"]) : marginForPositions(["top", "bottom"]);
        }
        function fitBoxes(boxes, chartArea, params, stacks) {
          const refitBoxes = [];
          let i, ilen, layout, box, refit, changed;
          for (i = 0, ilen = boxes.length, refit = 0; i < ilen; ++i) {
            layout = boxes[i];
            box = layout.box;
            box.update(layout.width || chartArea.w, layout.height || chartArea.h, getMargins(layout.horizontal, chartArea));
            const { same, other } = updateDims(chartArea, params, layout, stacks);
            refit |= same && refitBoxes.length;
            changed = changed || other;
            if (!box.fullSize) {
              refitBoxes.push(layout);
            }
          }
          return refit && fitBoxes(refitBoxes, chartArea, params, stacks) || changed;
        }
        function setBoxDims(box, left, top, width, height) {
          box.top = top;
          box.left = left;
          box.right = left + width;
          box.bottom = top + height;
          box.width = width;
          box.height = height;
        }
        function placeBoxes(boxes, chartArea, params, stacks) {
          const userPadding = params.padding;
          let { x, y } = chartArea;
          for (const layout of boxes) {
            const box = layout.box;
            const stack = stacks[layout.stack] || { count: 1, placed: 0, weight: 1 };
            const weight = layout.stackWeight / stack.weight || 1;
            if (layout.horizontal) {
              const width = chartArea.w * weight;
              const height = stack.size || box.height;
              if (defined(stack.start)) {
                y = stack.start;
              }
              if (box.fullSize) {
                setBoxDims(box, userPadding.left, y, params.outerWidth - userPadding.right - userPadding.left, height);
              } else {
                setBoxDims(box, chartArea.left + stack.placed, y, width, height);
              }
              stack.start = y;
              stack.placed += width;
              y = box.bottom;
            } else {
              const height = chartArea.h * weight;
              const width = stack.size || box.width;
              if (defined(stack.start)) {
                x = stack.start;
              }
              if (box.fullSize) {
                setBoxDims(box, x, userPadding.top, width, params.outerHeight - userPadding.bottom - userPadding.top);
              } else {
                setBoxDims(box, x, chartArea.top + stack.placed, width, height);
              }
              stack.start = x;
              stack.placed += height;
              x = box.right;
            }
          }
          chartArea.x = x;
          chartArea.y = y;
        }
        defaults.set("layout", {
          autoPadding: true,
          padding: {
            top: 0,
            right: 0,
            bottom: 0,
            left: 0
          }
        });
        var layouts = {
          addBox(chart2, item) {
            if (!chart2.boxes) {
              chart2.boxes = [];
            }
            item.fullSize = item.fullSize || false;
            item.position = item.position || "top";
            item.weight = item.weight || 0;
            item._layers = item._layers || function() {
              return [{
                z: 0,
                draw(chartArea) {
                  item.draw(chartArea);
                }
              }];
            };
            chart2.boxes.push(item);
          },
          removeBox(chart2, layoutItem) {
            const index2 = chart2.boxes ? chart2.boxes.indexOf(layoutItem) : -1;
            if (index2 !== -1) {
              chart2.boxes.splice(index2, 1);
            }
          },
          configure(chart2, item, options) {
            item.fullSize = options.fullSize;
            item.position = options.position;
            item.weight = options.weight;
          },
          update(chart2, width, height, minPadding) {
            if (!chart2) {
              return;
            }
            const padding = toPadding(chart2.options.layout.padding);
            const availableWidth = Math.max(width - padding.width, 0);
            const availableHeight = Math.max(height - padding.height, 0);
            const boxes = buildLayoutBoxes(chart2.boxes);
            const verticalBoxes = boxes.vertical;
            const horizontalBoxes = boxes.horizontal;
            each(chart2.boxes, (box) => {
              if (typeof box.beforeLayout === "function") {
                box.beforeLayout();
              }
            });
            const visibleVerticalBoxCount = verticalBoxes.reduce((total, wrap) => wrap.box.options && wrap.box.options.display === false ? total : total + 1, 0) || 1;
            const params = Object.freeze({
              outerWidth: width,
              outerHeight: height,
              padding,
              availableWidth,
              availableHeight,
              vBoxMaxWidth: availableWidth / 2 / visibleVerticalBoxCount,
              hBoxMaxHeight: availableHeight / 2
            });
            const maxPadding = Object.assign({}, padding);
            updateMaxPadding(maxPadding, toPadding(minPadding));
            const chartArea = Object.assign({
              maxPadding,
              w: availableWidth,
              h: availableHeight,
              x: padding.left,
              y: padding.top
            }, padding);
            const stacks = setLayoutDims(verticalBoxes.concat(horizontalBoxes), params);
            fitBoxes(boxes.fullSize, chartArea, params, stacks);
            fitBoxes(verticalBoxes, chartArea, params, stacks);
            if (fitBoxes(horizontalBoxes, chartArea, params, stacks)) {
              fitBoxes(verticalBoxes, chartArea, params, stacks);
            }
            handleMaxPadding(chartArea);
            placeBoxes(boxes.leftAndTop, chartArea, params, stacks);
            chartArea.x += chartArea.w;
            chartArea.y += chartArea.h;
            placeBoxes(boxes.rightAndBottom, chartArea, params, stacks);
            chart2.chartArea = {
              left: chartArea.left,
              top: chartArea.top,
              right: chartArea.left + chartArea.w,
              bottom: chartArea.top + chartArea.h,
              height: chartArea.h,
              width: chartArea.w
            };
            each(boxes.chartArea, (layout) => {
              const box = layout.box;
              Object.assign(box, chart2.chartArea);
              box.update(chartArea.w, chartArea.h, { left: 0, top: 0, right: 0, bottom: 0 });
            });
          }
        };
        class BasePlatform {
          acquireContext(canvas, aspectRatio) {
          }
          releaseContext(context) {
            return false;
          }
          addEventListener(chart2, type, listener) {
          }
          removeEventListener(chart2, type, listener) {
          }
          getDevicePixelRatio() {
            return 1;
          }
          getMaximumSize(element, width, height, aspectRatio) {
            width = Math.max(0, width || element.width);
            height = height || element.height;
            return {
              width,
              height: Math.max(0, aspectRatio ? Math.floor(width / aspectRatio) : height)
            };
          }
          isAttached(canvas) {
            return true;
          }
          updateConfig(config) {
          }
        }
        class BasicPlatform extends BasePlatform {
          acquireContext(item) {
            return item && item.getContext && item.getContext("2d") || null;
          }
          updateConfig(config) {
            config.options.animation = false;
          }
        }
        const EXPANDO_KEY = "$chartjs";
        const EVENT_TYPES = {
          touchstart: "mousedown",
          touchmove: "mousemove",
          touchend: "mouseup",
          pointerenter: "mouseenter",
          pointerdown: "mousedown",
          pointermove: "mousemove",
          pointerup: "mouseup",
          pointerleave: "mouseout",
          pointerout: "mouseout"
        };
        const isNullOrEmpty = (value) => value === null || value === "";
        function initCanvas(canvas, aspectRatio) {
          const style = canvas.style;
          const renderHeight = canvas.getAttribute("height");
          const renderWidth = canvas.getAttribute("width");
          canvas[EXPANDO_KEY] = {
            initial: {
              height: renderHeight,
              width: renderWidth,
              style: {
                display: style.display,
                height: style.height,
                width: style.width
              }
            }
          };
          style.display = style.display || "block";
          style.boxSizing = style.boxSizing || "border-box";
          if (isNullOrEmpty(renderWidth)) {
            const displayWidth = readUsedSize(canvas, "width");
            if (displayWidth !== void 0) {
              canvas.width = displayWidth;
            }
          }
          if (isNullOrEmpty(renderHeight)) {
            if (canvas.style.height === "") {
              canvas.height = canvas.width / (aspectRatio || 2);
            } else {
              const displayHeight = readUsedSize(canvas, "height");
              if (displayHeight !== void 0) {
                canvas.height = displayHeight;
              }
            }
          }
          return canvas;
        }
        const eventListenerOptions = supportsEventListenerOptions ? { passive: true } : false;
        function addListener(node, type, listener) {
          node.addEventListener(type, listener, eventListenerOptions);
        }
        function removeListener(chart2, type, listener) {
          chart2.canvas.removeEventListener(type, listener, eventListenerOptions);
        }
        function fromNativeEvent(event, chart2) {
          const type = EVENT_TYPES[event.type] || event.type;
          const { x, y } = getRelativePosition(event, chart2);
          return {
            type,
            chart: chart2,
            native: event,
            x: x !== void 0 ? x : null,
            y: y !== void 0 ? y : null
          };
        }
        function nodeListContains(nodeList, canvas) {
          for (const node of nodeList) {
            if (node === canvas || node.contains(canvas)) {
              return true;
            }
          }
        }
        function createAttachObserver(chart2, type, listener) {
          const canvas = chart2.canvas;
          const observer = new MutationObserver((entries) => {
            let trigger = false;
            for (const entry of entries) {
              trigger = trigger || nodeListContains(entry.addedNodes, canvas);
              trigger = trigger && !nodeListContains(entry.removedNodes, canvas);
            }
            if (trigger) {
              listener();
            }
          });
          observer.observe(document, { childList: true, subtree: true });
          return observer;
        }
        function createDetachObserver(chart2, type, listener) {
          const canvas = chart2.canvas;
          const observer = new MutationObserver((entries) => {
            let trigger = false;
            for (const entry of entries) {
              trigger = trigger || nodeListContains(entry.removedNodes, canvas);
              trigger = trigger && !nodeListContains(entry.addedNodes, canvas);
            }
            if (trigger) {
              listener();
            }
          });
          observer.observe(document, { childList: true, subtree: true });
          return observer;
        }
        const drpListeningCharts = /* @__PURE__ */ new Map();
        let oldDevicePixelRatio = 0;
        function onWindowResize() {
          const dpr = window.devicePixelRatio;
          if (dpr === oldDevicePixelRatio) {
            return;
          }
          oldDevicePixelRatio = dpr;
          drpListeningCharts.forEach((resize, chart2) => {
            if (chart2.currentDevicePixelRatio !== dpr) {
              resize();
            }
          });
        }
        function listenDevicePixelRatioChanges(chart2, resize) {
          if (!drpListeningCharts.size) {
            window.addEventListener("resize", onWindowResize);
          }
          drpListeningCharts.set(chart2, resize);
        }
        function unlistenDevicePixelRatioChanges(chart2) {
          drpListeningCharts.delete(chart2);
          if (!drpListeningCharts.size) {
            window.removeEventListener("resize", onWindowResize);
          }
        }
        function createResizeObserver(chart2, type, listener) {
          const canvas = chart2.canvas;
          const container = canvas && _getParentNode(canvas);
          if (!container) {
            return;
          }
          const resize = throttled((width, height) => {
            const w = container.clientWidth;
            listener(width, height);
            if (w < container.clientWidth) {
              listener();
            }
          }, window);
          const observer = new ResizeObserver((entries) => {
            const entry = entries[0];
            const width = entry.contentRect.width;
            const height = entry.contentRect.height;
            if (width === 0 && height === 0) {
              return;
            }
            resize(width, height);
          });
          observer.observe(container);
          listenDevicePixelRatioChanges(chart2, resize);
          return observer;
        }
        function releaseObserver(chart2, type, observer) {
          if (observer) {
            observer.disconnect();
          }
          if (type === "resize") {
            unlistenDevicePixelRatioChanges(chart2);
          }
        }
        function createProxyAndListen(chart2, type, listener) {
          const canvas = chart2.canvas;
          const proxy = throttled((event) => {
            if (chart2.ctx !== null) {
              listener(fromNativeEvent(event, chart2));
            }
          }, chart2, (args) => {
            const event = args[0];
            return [event, event.offsetX, event.offsetY];
          });
          addListener(canvas, type, proxy);
          return proxy;
        }
        class DomPlatform extends BasePlatform {
          acquireContext(canvas, aspectRatio) {
            const context = canvas && canvas.getContext && canvas.getContext("2d");
            if (context && context.canvas === canvas) {
              initCanvas(canvas, aspectRatio);
              return context;
            }
            return null;
          }
          releaseContext(context) {
            const canvas = context.canvas;
            if (!canvas[EXPANDO_KEY]) {
              return false;
            }
            const initial = canvas[EXPANDO_KEY].initial;
            ["height", "width"].forEach((prop) => {
              const value = initial[prop];
              if (isNullOrUndef(value)) {
                canvas.removeAttribute(prop);
              } else {
                canvas.setAttribute(prop, value);
              }
            });
            const style = initial.style || {};
            Object.keys(style).forEach((key) => {
              canvas.style[key] = style[key];
            });
            canvas.width = canvas.width;
            delete canvas[EXPANDO_KEY];
            return true;
          }
          addEventListener(chart2, type, listener) {
            this.removeEventListener(chart2, type);
            const proxies = chart2.$proxies || (chart2.$proxies = {});
            const handlers = {
              attach: createAttachObserver,
              detach: createDetachObserver,
              resize: createResizeObserver
            };
            const handler = handlers[type] || createProxyAndListen;
            proxies[type] = handler(chart2, type, listener);
          }
          removeEventListener(chart2, type) {
            const proxies = chart2.$proxies || (chart2.$proxies = {});
            const proxy = proxies[type];
            if (!proxy) {
              return;
            }
            const handlers = {
              attach: releaseObserver,
              detach: releaseObserver,
              resize: releaseObserver
            };
            const handler = handlers[type] || removeListener;
            handler(chart2, type, proxy);
            proxies[type] = void 0;
          }
          getDevicePixelRatio() {
            return window.devicePixelRatio;
          }
          getMaximumSize(canvas, width, height, aspectRatio) {
            return getMaximumSize(canvas, width, height, aspectRatio);
          }
          isAttached(canvas) {
            const container = _getParentNode(canvas);
            return !!(container && container.isConnected);
          }
        }
        function _detectPlatform(canvas) {
          if (!_isDomSupported() || typeof OffscreenCanvas !== "undefined" && canvas instanceof OffscreenCanvas) {
            return BasicPlatform;
          }
          return DomPlatform;
        }
        var platforms = /* @__PURE__ */ Object.freeze({
          __proto__: null,
          _detectPlatform,
          BasePlatform,
          BasicPlatform,
          DomPlatform
        });
        const transparent = "transparent";
        const interpolators = {
          boolean(from2, to2, factor) {
            return factor > 0.5 ? to2 : from2;
          },
          color(from2, to2, factor) {
            const c0 = color(from2 || transparent);
            const c1 = c0.valid && color(to2 || transparent);
            return c1 && c1.valid ? c1.mix(c0, factor).hexString() : to2;
          },
          number(from2, to2, factor) {
            return from2 + (to2 - from2) * factor;
          }
        };
        class Animation {
          constructor(cfg, target, prop, to2) {
            const currentValue = target[prop];
            to2 = resolve([cfg.to, to2, currentValue, cfg.from]);
            const from2 = resolve([cfg.from, currentValue, to2]);
            this._active = true;
            this._fn = cfg.fn || interpolators[cfg.type || typeof from2];
            this._easing = effects[cfg.easing] || effects.linear;
            this._start = Math.floor(Date.now() + (cfg.delay || 0));
            this._duration = this._total = Math.floor(cfg.duration);
            this._loop = !!cfg.loop;
            this._target = target;
            this._prop = prop;
            this._from = from2;
            this._to = to2;
            this._promises = void 0;
          }
          active() {
            return this._active;
          }
          update(cfg, to2, date) {
            if (this._active) {
              this._notify(false);
              const currentValue = this._target[this._prop];
              const elapsed = date - this._start;
              const remain = this._duration - elapsed;
              this._start = date;
              this._duration = Math.floor(Math.max(remain, cfg.duration));
              this._total += elapsed;
              this._loop = !!cfg.loop;
              this._to = resolve([cfg.to, to2, currentValue, cfg.from]);
              this._from = resolve([cfg.from, currentValue, to2]);
            }
          }
          cancel() {
            if (this._active) {
              this.tick(Date.now());
              this._active = false;
              this._notify(false);
            }
          }
          tick(date) {
            const elapsed = date - this._start;
            const duration = this._duration;
            const prop = this._prop;
            const from2 = this._from;
            const loop = this._loop;
            const to2 = this._to;
            let factor;
            this._active = from2 !== to2 && (loop || elapsed < duration);
            if (!this._active) {
              this._target[prop] = to2;
              this._notify(true);
              return;
            }
            if (elapsed < 0) {
              this._target[prop] = from2;
              return;
            }
            factor = elapsed / duration % 2;
            factor = loop && factor > 1 ? 2 - factor : factor;
            factor = this._easing(Math.min(1, Math.max(0, factor)));
            this._target[prop] = this._fn(from2, to2, factor);
          }
          wait() {
            const promises = this._promises || (this._promises = []);
            return new Promise((res, rej) => {
              promises.push({ res, rej });
            });
          }
          _notify(resolved) {
            const method = resolved ? "res" : "rej";
            const promises = this._promises || [];
            for (let i = 0; i < promises.length; i++) {
              promises[i][method]();
            }
          }
        }
        const numbers = ["x", "y", "borderWidth", "radius", "tension"];
        const colors2 = ["color", "borderColor", "backgroundColor"];
        defaults.set("animation", {
          delay: void 0,
          duration: 1e3,
          easing: "easeOutQuart",
          fn: void 0,
          from: void 0,
          loop: void 0,
          to: void 0,
          type: void 0
        });
        const animationOptions = Object.keys(defaults.animation);
        defaults.describe("animation", {
          _fallback: false,
          _indexable: false,
          _scriptable: (name) => name !== "onProgress" && name !== "onComplete" && name !== "fn"
        });
        defaults.set("animations", {
          colors: {
            type: "color",
            properties: colors2
          },
          numbers: {
            type: "number",
            properties: numbers
          }
        });
        defaults.describe("animations", {
          _fallback: "animation"
        });
        defaults.set("transitions", {
          active: {
            animation: {
              duration: 400
            }
          },
          resize: {
            animation: {
              duration: 0
            }
          },
          show: {
            animations: {
              colors: {
                from: "transparent"
              },
              visible: {
                type: "boolean",
                duration: 0
              }
            }
          },
          hide: {
            animations: {
              colors: {
                to: "transparent"
              },
              visible: {
                type: "boolean",
                easing: "linear",
                fn: (v) => v | 0
              }
            }
          }
        });
        class Animations {
          constructor(chart2, config) {
            this._chart = chart2;
            this._properties = /* @__PURE__ */ new Map();
            this.configure(config);
          }
          configure(config) {
            if (!isObject2(config)) {
              return;
            }
            const animatedProps = this._properties;
            Object.getOwnPropertyNames(config).forEach((key) => {
              const cfg = config[key];
              if (!isObject2(cfg)) {
                return;
              }
              const resolved = {};
              for (const option of animationOptions) {
                resolved[option] = cfg[option];
              }
              (isArray(cfg.properties) && cfg.properties || [key]).forEach((prop) => {
                if (prop === key || !animatedProps.has(prop)) {
                  animatedProps.set(prop, resolved);
                }
              });
            });
          }
          _animateOptions(target, values) {
            const newOptions = values.options;
            const options = resolveTargetOptions(target, newOptions);
            if (!options) {
              return [];
            }
            const animations = this._createAnimations(options, newOptions);
            if (newOptions.$shared) {
              awaitAll(target.options.$animations, newOptions).then(() => {
                target.options = newOptions;
              }, () => {
              });
            }
            return animations;
          }
          _createAnimations(target, values) {
            const animatedProps = this._properties;
            const animations = [];
            const running = target.$animations || (target.$animations = {});
            const props = Object.keys(values);
            const date = Date.now();
            let i;
            for (i = props.length - 1; i >= 0; --i) {
              const prop = props[i];
              if (prop.charAt(0) === "$") {
                continue;
              }
              if (prop === "options") {
                animations.push(...this._animateOptions(target, values));
                continue;
              }
              const value = values[prop];
              let animation = running[prop];
              const cfg = animatedProps.get(prop);
              if (animation) {
                if (cfg && animation.active()) {
                  animation.update(cfg, value, date);
                  continue;
                } else {
                  animation.cancel();
                }
              }
              if (!cfg || !cfg.duration) {
                target[prop] = value;
                continue;
              }
              running[prop] = animation = new Animation(cfg, target, prop, value);
              animations.push(animation);
            }
            return animations;
          }
          update(target, values) {
            if (this._properties.size === 0) {
              Object.assign(target, values);
              return;
            }
            const animations = this._createAnimations(target, values);
            if (animations.length) {
              animator.add(this._chart, animations);
              return true;
            }
          }
        }
        function awaitAll(animations, properties) {
          const running = [];
          const keys = Object.keys(properties);
          for (let i = 0; i < keys.length; i++) {
            const anim = animations[keys[i]];
            if (anim && anim.active()) {
              running.push(anim.wait());
            }
          }
          return Promise.all(running);
        }
        function resolveTargetOptions(target, newOptions) {
          if (!newOptions) {
            return;
          }
          let options = target.options;
          if (!options) {
            target.options = newOptions;
            return;
          }
          if (options.$shared) {
            target.options = options = Object.assign({}, options, { $shared: false, $animations: {} });
          }
          return options;
        }
        function scaleClip(scale, allowedOverflow) {
          const opts = scale && scale.options || {};
          const reverse = opts.reverse;
          const min = opts.min === void 0 ? allowedOverflow : 0;
          const max = opts.max === void 0 ? allowedOverflow : 0;
          return {
            start: reverse ? max : min,
            end: reverse ? min : max
          };
        }
        function defaultClip(xScale, yScale, allowedOverflow) {
          if (allowedOverflow === false) {
            return false;
          }
          const x = scaleClip(xScale, allowedOverflow);
          const y = scaleClip(yScale, allowedOverflow);
          return {
            top: y.end,
            right: x.end,
            bottom: y.start,
            left: x.start
          };
        }
        function toClip(value) {
          let t, r, b, l;
          if (isObject2(value)) {
            t = value.top;
            r = value.right;
            b = value.bottom;
            l = value.left;
          } else {
            t = r = b = l = value;
          }
          return {
            top: t,
            right: r,
            bottom: b,
            left: l,
            disabled: value === false
          };
        }
        function getSortedDatasetIndices(chart2, filterVisible) {
          const keys = [];
          const metasets = chart2._getSortedDatasetMetas(filterVisible);
          let i, ilen;
          for (i = 0, ilen = metasets.length; i < ilen; ++i) {
            keys.push(metasets[i].index);
          }
          return keys;
        }
        function applyStack(stack, value, dsIndex, options = {}) {
          const keys = stack.keys;
          const singleMode = options.mode === "single";
          let i, ilen, datasetIndex, otherValue;
          if (value === null) {
            return;
          }
          for (i = 0, ilen = keys.length; i < ilen; ++i) {
            datasetIndex = +keys[i];
            if (datasetIndex === dsIndex) {
              if (options.all) {
                continue;
              }
              break;
            }
            otherValue = stack.values[datasetIndex];
            if (isNumberFinite(otherValue) && (singleMode || (value === 0 || sign(value) === sign(otherValue)))) {
              value += otherValue;
            }
          }
          return value;
        }
        function convertObjectDataToArray(data) {
          const keys = Object.keys(data);
          const adata = new Array(keys.length);
          let i, ilen, key;
          for (i = 0, ilen = keys.length; i < ilen; ++i) {
            key = keys[i];
            adata[i] = {
              x: key,
              y: data[key]
            };
          }
          return adata;
        }
        function isStacked(scale, meta) {
          const stacked = scale && scale.options.stacked;
          return stacked || stacked === void 0 && meta.stack !== void 0;
        }
        function getStackKey(indexScale, valueScale, meta) {
          return `${indexScale.id}.${valueScale.id}.${meta.stack || meta.type}`;
        }
        function getUserBounds(scale) {
          const { min, max, minDefined, maxDefined } = scale.getUserBounds();
          return {
            min: minDefined ? min : Number.NEGATIVE_INFINITY,
            max: maxDefined ? max : Number.POSITIVE_INFINITY
          };
        }
        function getOrCreateStack(stacks, stackKey, indexValue) {
          const subStack = stacks[stackKey] || (stacks[stackKey] = {});
          return subStack[indexValue] || (subStack[indexValue] = {});
        }
        function getLastIndexInStack(stack, vScale, positive, type) {
          for (const meta of vScale.getMatchingVisibleMetas(type).reverse()) {
            const value = stack[meta.index];
            if (positive && value > 0 || !positive && value < 0) {
              return meta.index;
            }
          }
          return null;
        }
        function updateStacks(controller, parsed) {
          const { chart: chart2, _cachedMeta: meta } = controller;
          const stacks = chart2._stacks || (chart2._stacks = {});
          const { iScale, vScale, index: datasetIndex } = meta;
          const iAxis = iScale.axis;
          const vAxis = vScale.axis;
          const key = getStackKey(iScale, vScale, meta);
          const ilen = parsed.length;
          let stack;
          for (let i = 0; i < ilen; ++i) {
            const item = parsed[i];
            const { [iAxis]: index2, [vAxis]: value } = item;
            const itemStacks = item._stacks || (item._stacks = {});
            stack = itemStacks[vAxis] = getOrCreateStack(stacks, key, index2);
            stack[datasetIndex] = value;
            stack._top = getLastIndexInStack(stack, vScale, true, meta.type);
            stack._bottom = getLastIndexInStack(stack, vScale, false, meta.type);
          }
        }
        function getFirstScaleId(chart2, axis) {
          const scales2 = chart2.scales;
          return Object.keys(scales2).filter((key) => scales2[key].axis === axis).shift();
        }
        function createDatasetContext(parent, index2) {
          return createContext(parent, {
            active: false,
            dataset: void 0,
            datasetIndex: index2,
            index: index2,
            mode: "default",
            type: "dataset"
          });
        }
        function createDataContext(parent, index2, element) {
          return createContext(parent, {
            active: false,
            dataIndex: index2,
            parsed: void 0,
            raw: void 0,
            element,
            index: index2,
            mode: "default",
            type: "data"
          });
        }
        function clearStacks(meta, items) {
          const datasetIndex = meta.controller.index;
          const axis = meta.vScale && meta.vScale.axis;
          if (!axis) {
            return;
          }
          items = items || meta._parsed;
          for (const parsed of items) {
            const stacks = parsed._stacks;
            if (!stacks || stacks[axis] === void 0 || stacks[axis][datasetIndex] === void 0) {
              return;
            }
            delete stacks[axis][datasetIndex];
          }
        }
        const isDirectUpdateMode = (mode) => mode === "reset" || mode === "none";
        const cloneIfNotShared = (cached, shared) => shared ? cached : Object.assign({}, cached);
        const createStack = (canStack, meta, chart2) => canStack && !meta.hidden && meta._stacked && { keys: getSortedDatasetIndices(chart2, true), values: null };
        class DatasetController {
          constructor(chart2, datasetIndex) {
            this.chart = chart2;
            this._ctx = chart2.ctx;
            this.index = datasetIndex;
            this._cachedDataOpts = {};
            this._cachedMeta = this.getMeta();
            this._type = this._cachedMeta.type;
            this.options = void 0;
            this._parsing = false;
            this._data = void 0;
            this._objectData = void 0;
            this._sharedOptions = void 0;
            this._drawStart = void 0;
            this._drawCount = void 0;
            this.enableOptionSharing = false;
            this.supportsDecimation = false;
            this.$context = void 0;
            this._syncList = [];
            this.initialize();
          }
          initialize() {
            const meta = this._cachedMeta;
            this.configure();
            this.linkScales();
            meta._stacked = isStacked(meta.vScale, meta);
            this.addElements();
          }
          updateIndex(datasetIndex) {
            if (this.index !== datasetIndex) {
              clearStacks(this._cachedMeta);
            }
            this.index = datasetIndex;
          }
          linkScales() {
            const chart2 = this.chart;
            const meta = this._cachedMeta;
            const dataset = this.getDataset();
            const chooseId = (axis, x, y, r) => axis === "x" ? x : axis === "r" ? r : y;
            const xid = meta.xAxisID = valueOrDefault(dataset.xAxisID, getFirstScaleId(chart2, "x"));
            const yid = meta.yAxisID = valueOrDefault(dataset.yAxisID, getFirstScaleId(chart2, "y"));
            const rid = meta.rAxisID = valueOrDefault(dataset.rAxisID, getFirstScaleId(chart2, "r"));
            const indexAxis = meta.indexAxis;
            const iid = meta.iAxisID = chooseId(indexAxis, xid, yid, rid);
            const vid = meta.vAxisID = chooseId(indexAxis, yid, xid, rid);
            meta.xScale = this.getScaleForId(xid);
            meta.yScale = this.getScaleForId(yid);
            meta.rScale = this.getScaleForId(rid);
            meta.iScale = this.getScaleForId(iid);
            meta.vScale = this.getScaleForId(vid);
          }
          getDataset() {
            return this.chart.data.datasets[this.index];
          }
          getMeta() {
            return this.chart.getDatasetMeta(this.index);
          }
          getScaleForId(scaleID) {
            return this.chart.scales[scaleID];
          }
          _getOtherScale(scale) {
            const meta = this._cachedMeta;
            return scale === meta.iScale ? meta.vScale : meta.iScale;
          }
          reset() {
            this._update("reset");
          }
          _destroy() {
            const meta = this._cachedMeta;
            if (this._data) {
              unlistenArrayEvents(this._data, this);
            }
            if (meta._stacked) {
              clearStacks(meta);
            }
          }
          _dataCheck() {
            const dataset = this.getDataset();
            const data = dataset.data || (dataset.data = []);
            const _data = this._data;
            if (isObject2(data)) {
              this._data = convertObjectDataToArray(data);
            } else if (_data !== data) {
              if (_data) {
                unlistenArrayEvents(_data, this);
                const meta = this._cachedMeta;
                clearStacks(meta);
                meta._parsed = [];
              }
              if (data && Object.isExtensible(data)) {
                listenArrayEvents(data, this);
              }
              this._syncList = [];
              this._data = data;
            }
          }
          addElements() {
            const meta = this._cachedMeta;
            this._dataCheck();
            if (this.datasetElementType) {
              meta.dataset = new this.datasetElementType();
            }
          }
          buildOrUpdateElements(resetNewElements) {
            const meta = this._cachedMeta;
            const dataset = this.getDataset();
            let stackChanged = false;
            this._dataCheck();
            const oldStacked = meta._stacked;
            meta._stacked = isStacked(meta.vScale, meta);
            if (meta.stack !== dataset.stack) {
              stackChanged = true;
              clearStacks(meta);
              meta.stack = dataset.stack;
            }
            this._resyncElements(resetNewElements);
            if (stackChanged || oldStacked !== meta._stacked) {
              updateStacks(this, meta._parsed);
            }
          }
          configure() {
            const config = this.chart.config;
            const scopeKeys = config.datasetScopeKeys(this._type);
            const scopes = config.getOptionScopes(this.getDataset(), scopeKeys, true);
            this.options = config.createResolver(scopes, this.getContext());
            this._parsing = this.options.parsing;
            this._cachedDataOpts = {};
          }
          parse(start, count) {
            const { _cachedMeta: meta, _data: data } = this;
            const { iScale, _stacked } = meta;
            const iAxis = iScale.axis;
            let sorted = start === 0 && count === data.length ? true : meta._sorted;
            let prev = start > 0 && meta._parsed[start - 1];
            let i, cur, parsed;
            if (this._parsing === false) {
              meta._parsed = data;
              meta._sorted = true;
              parsed = data;
            } else {
              if (isArray(data[start])) {
                parsed = this.parseArrayData(meta, data, start, count);
              } else if (isObject2(data[start])) {
                parsed = this.parseObjectData(meta, data, start, count);
              } else {
                parsed = this.parsePrimitiveData(meta, data, start, count);
              }
              const isNotInOrderComparedToPrev = () => cur[iAxis] === null || prev && cur[iAxis] < prev[iAxis];
              for (i = 0; i < count; ++i) {
                meta._parsed[i + start] = cur = parsed[i];
                if (sorted) {
                  if (isNotInOrderComparedToPrev()) {
                    sorted = false;
                  }
                  prev = cur;
                }
              }
              meta._sorted = sorted;
            }
            if (_stacked) {
              updateStacks(this, parsed);
            }
          }
          parsePrimitiveData(meta, data, start, count) {
            const { iScale, vScale } = meta;
            const iAxis = iScale.axis;
            const vAxis = vScale.axis;
            const labels = iScale.getLabels();
            const singleScale = iScale === vScale;
            const parsed = new Array(count);
            let i, ilen, index2;
            for (i = 0, ilen = count; i < ilen; ++i) {
              index2 = i + start;
              parsed[i] = {
                [iAxis]: singleScale || iScale.parse(labels[index2], index2),
                [vAxis]: vScale.parse(data[index2], index2)
              };
            }
            return parsed;
          }
          parseArrayData(meta, data, start, count) {
            const { xScale, yScale } = meta;
            const parsed = new Array(count);
            let i, ilen, index2, item;
            for (i = 0, ilen = count; i < ilen; ++i) {
              index2 = i + start;
              item = data[index2];
              parsed[i] = {
                x: xScale.parse(item[0], index2),
                y: yScale.parse(item[1], index2)
              };
            }
            return parsed;
          }
          parseObjectData(meta, data, start, count) {
            const { xScale, yScale } = meta;
            const { xAxisKey = "x", yAxisKey = "y" } = this._parsing;
            const parsed = new Array(count);
            let i, ilen, index2, item;
            for (i = 0, ilen = count; i < ilen; ++i) {
              index2 = i + start;
              item = data[index2];
              parsed[i] = {
                x: xScale.parse(resolveObjectKey(item, xAxisKey), index2),
                y: yScale.parse(resolveObjectKey(item, yAxisKey), index2)
              };
            }
            return parsed;
          }
          getParsed(index2) {
            return this._cachedMeta._parsed[index2];
          }
          getDataElement(index2) {
            return this._cachedMeta.data[index2];
          }
          applyStack(scale, parsed, mode) {
            const chart2 = this.chart;
            const meta = this._cachedMeta;
            const value = parsed[scale.axis];
            const stack = {
              keys: getSortedDatasetIndices(chart2, true),
              values: parsed._stacks[scale.axis]
            };
            return applyStack(stack, value, meta.index, { mode });
          }
          updateRangeFromParsed(range2, scale, parsed, stack) {
            const parsedValue = parsed[scale.axis];
            let value = parsedValue === null ? NaN : parsedValue;
            const values = stack && parsed._stacks[scale.axis];
            if (stack && values) {
              stack.values = values;
              value = applyStack(stack, parsedValue, this._cachedMeta.index);
            }
            range2.min = Math.min(range2.min, value);
            range2.max = Math.max(range2.max, value);
          }
          getMinMax(scale, canStack) {
            const meta = this._cachedMeta;
            const _parsed = meta._parsed;
            const sorted = meta._sorted && scale === meta.iScale;
            const ilen = _parsed.length;
            const otherScale = this._getOtherScale(scale);
            const stack = createStack(canStack, meta, this.chart);
            const range2 = { min: Number.POSITIVE_INFINITY, max: Number.NEGATIVE_INFINITY };
            const { min: otherMin, max: otherMax } = getUserBounds(otherScale);
            let i, parsed;
            function _skip() {
              parsed = _parsed[i];
              const otherValue = parsed[otherScale.axis];
              return !isNumberFinite(parsed[scale.axis]) || otherMin > otherValue || otherMax < otherValue;
            }
            for (i = 0; i < ilen; ++i) {
              if (_skip()) {
                continue;
              }
              this.updateRangeFromParsed(range2, scale, parsed, stack);
              if (sorted) {
                break;
              }
            }
            if (sorted) {
              for (i = ilen - 1; i >= 0; --i) {
                if (_skip()) {
                  continue;
                }
                this.updateRangeFromParsed(range2, scale, parsed, stack);
                break;
              }
            }
            return range2;
          }
          getAllParsedValues(scale) {
            const parsed = this._cachedMeta._parsed;
            const values = [];
            let i, ilen, value;
            for (i = 0, ilen = parsed.length; i < ilen; ++i) {
              value = parsed[i][scale.axis];
              if (isNumberFinite(value)) {
                values.push(value);
              }
            }
            return values;
          }
          getMaxOverflow() {
            return false;
          }
          getLabelAndValue(index2) {
            const meta = this._cachedMeta;
            const iScale = meta.iScale;
            const vScale = meta.vScale;
            const parsed = this.getParsed(index2);
            return {
              label: iScale ? "" + iScale.getLabelForValue(parsed[iScale.axis]) : "",
              value: vScale ? "" + vScale.getLabelForValue(parsed[vScale.axis]) : ""
            };
          }
          _update(mode) {
            const meta = this._cachedMeta;
            this.update(mode || "default");
            meta._clip = toClip(valueOrDefault(this.options.clip, defaultClip(meta.xScale, meta.yScale, this.getMaxOverflow())));
          }
          update(mode) {
          }
          draw() {
            const ctx = this._ctx;
            const chart2 = this.chart;
            const meta = this._cachedMeta;
            const elements2 = meta.data || [];
            const area = chart2.chartArea;
            const active = [];
            const start = this._drawStart || 0;
            const count = this._drawCount || elements2.length - start;
            const drawActiveElementsOnTop = this.options.drawActiveElementsOnTop;
            let i;
            if (meta.dataset) {
              meta.dataset.draw(ctx, area, start, count);
            }
            for (i = start; i < start + count; ++i) {
              const element = elements2[i];
              if (element.hidden) {
                continue;
              }
              if (element.active && drawActiveElementsOnTop) {
                active.push(element);
              } else {
                element.draw(ctx, area);
              }
            }
            for (i = 0; i < active.length; ++i) {
              active[i].draw(ctx, area);
            }
          }
          getStyle(index2, active) {
            const mode = active ? "active" : "default";
            return index2 === void 0 && this._cachedMeta.dataset ? this.resolveDatasetElementOptions(mode) : this.resolveDataElementOptions(index2 || 0, mode);
          }
          getContext(index2, active, mode) {
            const dataset = this.getDataset();
            let context;
            if (index2 >= 0 && index2 < this._cachedMeta.data.length) {
              const element = this._cachedMeta.data[index2];
              context = element.$context || (element.$context = createDataContext(this.getContext(), index2, element));
              context.parsed = this.getParsed(index2);
              context.raw = dataset.data[index2];
              context.index = context.dataIndex = index2;
            } else {
              context = this.$context || (this.$context = createDatasetContext(this.chart.getContext(), this.index));
              context.dataset = dataset;
              context.index = context.datasetIndex = this.index;
            }
            context.active = !!active;
            context.mode = mode;
            return context;
          }
          resolveDatasetElementOptions(mode) {
            return this._resolveElementOptions(this.datasetElementType.id, mode);
          }
          resolveDataElementOptions(index2, mode) {
            return this._resolveElementOptions(this.dataElementType.id, mode, index2);
          }
          _resolveElementOptions(elementType, mode = "default", index2) {
            const active = mode === "active";
            const cache = this._cachedDataOpts;
            const cacheKey = elementType + "-" + mode;
            const cached = cache[cacheKey];
            const sharing = this.enableOptionSharing && defined(index2);
            if (cached) {
              return cloneIfNotShared(cached, sharing);
            }
            const config = this.chart.config;
            const scopeKeys = config.datasetElementScopeKeys(this._type, elementType);
            const prefixes = active ? [`${elementType}Hover`, "hover", elementType, ""] : [elementType, ""];
            const scopes = config.getOptionScopes(this.getDataset(), scopeKeys);
            const names2 = Object.keys(defaults.elements[elementType]);
            const context = () => this.getContext(index2, active);
            const values = config.resolveNamedOptions(scopes, names2, context, prefixes);
            if (values.$shared) {
              values.$shared = sharing;
              cache[cacheKey] = Object.freeze(cloneIfNotShared(values, sharing));
            }
            return values;
          }
          _resolveAnimations(index2, transition, active) {
            const chart2 = this.chart;
            const cache = this._cachedDataOpts;
            const cacheKey = `animation-${transition}`;
            const cached = cache[cacheKey];
            if (cached) {
              return cached;
            }
            let options;
            if (chart2.options.animation !== false) {
              const config = this.chart.config;
              const scopeKeys = config.datasetAnimationScopeKeys(this._type, transition);
              const scopes = config.getOptionScopes(this.getDataset(), scopeKeys);
              options = config.createResolver(scopes, this.getContext(index2, active, transition));
            }
            const animations = new Animations(chart2, options && options.animations);
            if (options && options._cacheable) {
              cache[cacheKey] = Object.freeze(animations);
            }
            return animations;
          }
          getSharedOptions(options) {
            if (!options.$shared) {
              return;
            }
            return this._sharedOptions || (this._sharedOptions = Object.assign({}, options));
          }
          includeOptions(mode, sharedOptions) {
            return !sharedOptions || isDirectUpdateMode(mode) || this.chart._animationsDisabled;
          }
          updateElement(element, index2, properties, mode) {
            if (isDirectUpdateMode(mode)) {
              Object.assign(element, properties);
            } else {
              this._resolveAnimations(index2, mode).update(element, properties);
            }
          }
          updateSharedOptions(sharedOptions, mode, newOptions) {
            if (sharedOptions && !isDirectUpdateMode(mode)) {
              this._resolveAnimations(void 0, mode).update(sharedOptions, newOptions);
            }
          }
          _setStyle(element, index2, mode, active) {
            element.active = active;
            const options = this.getStyle(index2, active);
            this._resolveAnimations(index2, mode, active).update(element, {
              options: !active && this.getSharedOptions(options) || options
            });
          }
          removeHoverStyle(element, datasetIndex, index2) {
            this._setStyle(element, index2, "active", false);
          }
          setHoverStyle(element, datasetIndex, index2) {
            this._setStyle(element, index2, "active", true);
          }
          _removeDatasetHoverStyle() {
            const element = this._cachedMeta.dataset;
            if (element) {
              this._setStyle(element, void 0, "active", false);
            }
          }
          _setDatasetHoverStyle() {
            const element = this._cachedMeta.dataset;
            if (element) {
              this._setStyle(element, void 0, "active", true);
            }
          }
          _resyncElements(resetNewElements) {
            const data = this._data;
            const elements2 = this._cachedMeta.data;
            for (const [method, arg1, arg2] of this._syncList) {
              this[method](arg1, arg2);
            }
            this._syncList = [];
            const numMeta = elements2.length;
            const numData = data.length;
            const count = Math.min(numData, numMeta);
            if (count) {
              this.parse(0, count);
            }
            if (numData > numMeta) {
              this._insertElements(numMeta, numData - numMeta, resetNewElements);
            } else if (numData < numMeta) {
              this._removeElements(numData, numMeta - numData);
            }
          }
          _insertElements(start, count, resetNewElements = true) {
            const meta = this._cachedMeta;
            const data = meta.data;
            const end = start + count;
            let i;
            const move = (arr) => {
              arr.length += count;
              for (i = arr.length - 1; i >= end; i--) {
                arr[i] = arr[i - count];
              }
            };
            move(data);
            for (i = start; i < end; ++i) {
              data[i] = new this.dataElementType();
            }
            if (this._parsing) {
              move(meta._parsed);
            }
            this.parse(start, count);
            if (resetNewElements) {
              this.updateElements(data, start, count, "reset");
            }
          }
          updateElements(element, start, count, mode) {
          }
          _removeElements(start, count) {
            const meta = this._cachedMeta;
            if (this._parsing) {
              const removed = meta._parsed.splice(start, count);
              if (meta._stacked) {
                clearStacks(meta, removed);
              }
            }
            meta.data.splice(start, count);
          }
          _sync(args) {
            if (this._parsing) {
              this._syncList.push(args);
            } else {
              const [method, arg1, arg2] = args;
              this[method](arg1, arg2);
            }
            this.chart._dataChanges.push([this.index, ...args]);
          }
          _onDataPush() {
            const count = arguments.length;
            this._sync(["_insertElements", this.getDataset().data.length - count, count]);
          }
          _onDataPop() {
            this._sync(["_removeElements", this._cachedMeta.data.length - 1, 1]);
          }
          _onDataShift() {
            this._sync(["_removeElements", 0, 1]);
          }
          _onDataSplice(start, count) {
            if (count) {
              this._sync(["_removeElements", start, count]);
            }
            const newCount = arguments.length - 2;
            if (newCount) {
              this._sync(["_insertElements", start, newCount]);
            }
          }
          _onDataUnshift() {
            this._sync(["_insertElements", 0, arguments.length]);
          }
        }
        DatasetController.defaults = {};
        DatasetController.prototype.datasetElementType = null;
        DatasetController.prototype.dataElementType = null;
        class Element2 {
          constructor() {
            this.x = void 0;
            this.y = void 0;
            this.active = false;
            this.options = void 0;
            this.$animations = void 0;
          }
          tooltipPosition(useFinalPosition) {
            const { x, y } = this.getProps(["x", "y"], useFinalPosition);
            return { x, y };
          }
          hasValue() {
            return isNumber(this.x) && isNumber(this.y);
          }
          getProps(props, final) {
            const anims = this.$animations;
            if (!final || !anims) {
              return this;
            }
            const ret = {};
            props.forEach((prop) => {
              ret[prop] = anims[prop] && anims[prop].active() ? anims[prop]._to : this[prop];
            });
            return ret;
          }
        }
        Element2.defaults = {};
        Element2.defaultRoutes = void 0;
        const formatters = {
          values(value) {
            return isArray(value) ? value : "" + value;
          },
          numeric(tickValue, index2, ticks) {
            if (tickValue === 0) {
              return "0";
            }
            const locale = this.chart.options.locale;
            let notation;
            let delta = tickValue;
            if (ticks.length > 1) {
              const maxTick = Math.max(Math.abs(ticks[0].value), Math.abs(ticks[ticks.length - 1].value));
              if (maxTick < 1e-4 || maxTick > 1e15) {
                notation = "scientific";
              }
              delta = calculateDelta(tickValue, ticks);
            }
            const logDelta = log10(Math.abs(delta));
            const numDecimal = Math.max(Math.min(-1 * Math.floor(logDelta), 20), 0);
            const options = { notation, minimumFractionDigits: numDecimal, maximumFractionDigits: numDecimal };
            Object.assign(options, this.options.ticks.format);
            return formatNumber(tickValue, locale, options);
          },
          logarithmic(tickValue, index2, ticks) {
            if (tickValue === 0) {
              return "0";
            }
            const remain = tickValue / Math.pow(10, Math.floor(log10(tickValue)));
            if (remain === 1 || remain === 2 || remain === 5) {
              return formatters.numeric.call(this, tickValue, index2, ticks);
            }
            return "";
          }
        };
        function calculateDelta(tickValue, ticks) {
          let delta = ticks.length > 3 ? ticks[2].value - ticks[1].value : ticks[1].value - ticks[0].value;
          if (Math.abs(delta) >= 1 && tickValue !== Math.floor(tickValue)) {
            delta = tickValue - Math.floor(tickValue);
          }
          return delta;
        }
        var Ticks = { formatters };
        defaults.set("scale", {
          display: true,
          offset: false,
          reverse: false,
          beginAtZero: false,
          bounds: "ticks",
          grace: 0,
          grid: {
            display: true,
            lineWidth: 1,
            drawBorder: true,
            drawOnChartArea: true,
            drawTicks: true,
            tickLength: 8,
            tickWidth: (_ctx, options) => options.lineWidth,
            tickColor: (_ctx, options) => options.color,
            offset: false,
            borderDash: [],
            borderDashOffset: 0,
            borderWidth: 1
          },
          title: {
            display: false,
            text: "",
            padding: {
              top: 4,
              bottom: 4
            }
          },
          ticks: {
            minRotation: 0,
            maxRotation: 50,
            mirror: false,
            textStrokeWidth: 0,
            textStrokeColor: "",
            padding: 3,
            display: true,
            autoSkip: true,
            autoSkipPadding: 3,
            labelOffset: 0,
            callback: Ticks.formatters.values,
            minor: {},
            major: {},
            align: "center",
            crossAlign: "near",
            showLabelBackdrop: false,
            backdropColor: "rgba(255, 255, 255, 0.75)",
            backdropPadding: 2
          }
        });
        defaults.route("scale.ticks", "color", "", "color");
        defaults.route("scale.grid", "color", "", "borderColor");
        defaults.route("scale.grid", "borderColor", "", "borderColor");
        defaults.route("scale.title", "color", "", "color");
        defaults.describe("scale", {
          _fallback: false,
          _scriptable: (name) => !name.startsWith("before") && !name.startsWith("after") && name !== "callback" && name !== "parser",
          _indexable: (name) => name !== "borderDash" && name !== "tickBorderDash"
        });
        defaults.describe("scales", {
          _fallback: "scale"
        });
        defaults.describe("scale.ticks", {
          _scriptable: (name) => name !== "backdropPadding" && name !== "callback",
          _indexable: (name) => name !== "backdropPadding"
        });
        function autoSkip(scale, ticks) {
          const tickOpts = scale.options.ticks;
          const ticksLimit = tickOpts.maxTicksLimit || determineMaxTicks(scale);
          const majorIndices = tickOpts.major.enabled ? getMajorIndices(ticks) : [];
          const numMajorIndices = majorIndices.length;
          const first = majorIndices[0];
          const last = majorIndices[numMajorIndices - 1];
          const newTicks = [];
          if (numMajorIndices > ticksLimit) {
            skipMajors(ticks, newTicks, majorIndices, numMajorIndices / ticksLimit);
            return newTicks;
          }
          const spacing = calculateSpacing(majorIndices, ticks, ticksLimit);
          if (numMajorIndices > 0) {
            let i, ilen;
            const avgMajorSpacing = numMajorIndices > 1 ? Math.round((last - first) / (numMajorIndices - 1)) : null;
            skip(ticks, newTicks, spacing, isNullOrUndef(avgMajorSpacing) ? 0 : first - avgMajorSpacing, first);
            for (i = 0, ilen = numMajorIndices - 1; i < ilen; i++) {
              skip(ticks, newTicks, spacing, majorIndices[i], majorIndices[i + 1]);
            }
            skip(ticks, newTicks, spacing, last, isNullOrUndef(avgMajorSpacing) ? ticks.length : last + avgMajorSpacing);
            return newTicks;
          }
          skip(ticks, newTicks, spacing);
          return newTicks;
        }
        function determineMaxTicks(scale) {
          const offset = scale.options.offset;
          const tickLength = scale._tickSize();
          const maxScale = scale._length / tickLength + (offset ? 0 : 1);
          const maxChart = scale._maxLength / tickLength;
          return Math.floor(Math.min(maxScale, maxChart));
        }
        function calculateSpacing(majorIndices, ticks, ticksLimit) {
          const evenMajorSpacing = getEvenSpacing(majorIndices);
          const spacing = ticks.length / ticksLimit;
          if (!evenMajorSpacing) {
            return Math.max(spacing, 1);
          }
          const factors = _factorize(evenMajorSpacing);
          for (let i = 0, ilen = factors.length - 1; i < ilen; i++) {
            const factor = factors[i];
            if (factor > spacing) {
              return factor;
            }
          }
          return Math.max(spacing, 1);
        }
        function getMajorIndices(ticks) {
          const result = [];
          let i, ilen;
          for (i = 0, ilen = ticks.length; i < ilen; i++) {
            if (ticks[i].major) {
              result.push(i);
            }
          }
          return result;
        }
        function skipMajors(ticks, newTicks, majorIndices, spacing) {
          let count = 0;
          let next = majorIndices[0];
          let i;
          spacing = Math.ceil(spacing);
          for (i = 0; i < ticks.length; i++) {
            if (i === next) {
              newTicks.push(ticks[i]);
              count++;
              next = majorIndices[count * spacing];
            }
          }
        }
        function skip(ticks, newTicks, spacing, majorStart, majorEnd) {
          const start = valueOrDefault(majorStart, 0);
          const end = Math.min(valueOrDefault(majorEnd, ticks.length), ticks.length);
          let count = 0;
          let length, i, next;
          spacing = Math.ceil(spacing);
          if (majorEnd) {
            length = majorEnd - majorStart;
            spacing = length / Math.floor(length / spacing);
          }
          next = start;
          while (next < 0) {
            count++;
            next = Math.round(start + count * spacing);
          }
          for (i = Math.max(start, 0); i < end; i++) {
            if (i === next) {
              newTicks.push(ticks[i]);
              count++;
              next = Math.round(start + count * spacing);
            }
          }
        }
        function getEvenSpacing(arr) {
          const len = arr.length;
          let i, diff;
          if (len < 2) {
            return false;
          }
          for (diff = arr[0], i = 1; i < len; ++i) {
            if (arr[i] - arr[i - 1] !== diff) {
              return false;
            }
          }
          return diff;
        }
        const reverseAlign = (align) => align === "left" ? "right" : align === "right" ? "left" : align;
        const offsetFromEdge = (scale, edge, offset) => edge === "top" || edge === "left" ? scale[edge] + offset : scale[edge] - offset;
        function sample(arr, numItems) {
          const result = [];
          const increment = arr.length / numItems;
          const len = arr.length;
          let i = 0;
          for (; i < len; i += increment) {
            result.push(arr[Math.floor(i)]);
          }
          return result;
        }
        function getPixelForGridLine(scale, index2, offsetGridLines) {
          const length = scale.ticks.length;
          const validIndex2 = Math.min(index2, length - 1);
          const start = scale._startPixel;
          const end = scale._endPixel;
          const epsilon = 1e-6;
          let lineValue = scale.getPixelForTick(validIndex2);
          let offset;
          if (offsetGridLines) {
            if (length === 1) {
              offset = Math.max(lineValue - start, end - lineValue);
            } else if (index2 === 0) {
              offset = (scale.getPixelForTick(1) - lineValue) / 2;
            } else {
              offset = (lineValue - scale.getPixelForTick(validIndex2 - 1)) / 2;
            }
            lineValue += validIndex2 < index2 ? offset : -offset;
            if (lineValue < start - epsilon || lineValue > end + epsilon) {
              return;
            }
          }
          return lineValue;
        }
        function garbageCollect(caches, length) {
          each(caches, (cache) => {
            const gc = cache.gc;
            const gcLen = gc.length / 2;
            let i;
            if (gcLen > length) {
              for (i = 0; i < gcLen; ++i) {
                delete cache.data[gc[i]];
              }
              gc.splice(0, gcLen);
            }
          });
        }
        function getTickMarkLength(options) {
          return options.drawTicks ? options.tickLength : 0;
        }
        function getTitleHeight(options, fallback) {
          if (!options.display) {
            return 0;
          }
          const font = toFont(options.font, fallback);
          const padding = toPadding(options.padding);
          const lines = isArray(options.text) ? options.text.length : 1;
          return lines * font.lineHeight + padding.height;
        }
        function createScaleContext(parent, scale) {
          return createContext(parent, {
            scale,
            type: "scale"
          });
        }
        function createTickContext(parent, index2, tick) {
          return createContext(parent, {
            tick,
            index: index2,
            type: "tick"
          });
        }
        function titleAlign(align, position, reverse) {
          let ret = _toLeftRightCenter(align);
          if (reverse && position !== "right" || !reverse && position === "right") {
            ret = reverseAlign(ret);
          }
          return ret;
        }
        function titleArgs(scale, offset, position, align) {
          const { top, left, bottom, right, chart: chart2 } = scale;
          const { chartArea, scales: scales2 } = chart2;
          let rotation = 0;
          let maxWidth, titleX, titleY;
          const height = bottom - top;
          const width = right - left;
          if (scale.isHorizontal()) {
            titleX = _alignStartEnd(align, left, right);
            if (isObject2(position)) {
              const positionAxisID = Object.keys(position)[0];
              const value = position[positionAxisID];
              titleY = scales2[positionAxisID].getPixelForValue(value) + height - offset;
            } else if (position === "center") {
              titleY = (chartArea.bottom + chartArea.top) / 2 + height - offset;
            } else {
              titleY = offsetFromEdge(scale, position, offset);
            }
            maxWidth = right - left;
          } else {
            if (isObject2(position)) {
              const positionAxisID = Object.keys(position)[0];
              const value = position[positionAxisID];
              titleX = scales2[positionAxisID].getPixelForValue(value) - width + offset;
            } else if (position === "center") {
              titleX = (chartArea.left + chartArea.right) / 2 - width + offset;
            } else {
              titleX = offsetFromEdge(scale, position, offset);
            }
            titleY = _alignStartEnd(align, bottom, top);
            rotation = position === "left" ? -HALF_PI : HALF_PI;
          }
          return { titleX, titleY, maxWidth, rotation };
        }
        class Scale extends Element2 {
          constructor(cfg) {
            super();
            this.id = cfg.id;
            this.type = cfg.type;
            this.options = void 0;
            this.ctx = cfg.ctx;
            this.chart = cfg.chart;
            this.top = void 0;
            this.bottom = void 0;
            this.left = void 0;
            this.right = void 0;
            this.width = void 0;
            this.height = void 0;
            this._margins = {
              left: 0,
              right: 0,
              top: 0,
              bottom: 0
            };
            this.maxWidth = void 0;
            this.maxHeight = void 0;
            this.paddingTop = void 0;
            this.paddingBottom = void 0;
            this.paddingLeft = void 0;
            this.paddingRight = void 0;
            this.axis = void 0;
            this.labelRotation = void 0;
            this.min = void 0;
            this.max = void 0;
            this._range = void 0;
            this.ticks = [];
            this._gridLineItems = null;
            this._labelItems = null;
            this._labelSizes = null;
            this._length = 0;
            this._maxLength = 0;
            this._longestTextCache = {};
            this._startPixel = void 0;
            this._endPixel = void 0;
            this._reversePixels = false;
            this._userMax = void 0;
            this._userMin = void 0;
            this._suggestedMax = void 0;
            this._suggestedMin = void 0;
            this._ticksLength = 0;
            this._borderValue = 0;
            this._cache = {};
            this._dataLimitsCached = false;
            this.$context = void 0;
          }
          init(options) {
            this.options = options.setContext(this.getContext());
            this.axis = options.axis;
            this._userMin = this.parse(options.min);
            this._userMax = this.parse(options.max);
            this._suggestedMin = this.parse(options.suggestedMin);
            this._suggestedMax = this.parse(options.suggestedMax);
          }
          parse(raw, index2) {
            return raw;
          }
          getUserBounds() {
            let { _userMin, _userMax, _suggestedMin, _suggestedMax } = this;
            _userMin = finiteOrDefault(_userMin, Number.POSITIVE_INFINITY);
            _userMax = finiteOrDefault(_userMax, Number.NEGATIVE_INFINITY);
            _suggestedMin = finiteOrDefault(_suggestedMin, Number.POSITIVE_INFINITY);
            _suggestedMax = finiteOrDefault(_suggestedMax, Number.NEGATIVE_INFINITY);
            return {
              min: finiteOrDefault(_userMin, _suggestedMin),
              max: finiteOrDefault(_userMax, _suggestedMax),
              minDefined: isNumberFinite(_userMin),
              maxDefined: isNumberFinite(_userMax)
            };
          }
          getMinMax(canStack) {
            let { min, max, minDefined, maxDefined } = this.getUserBounds();
            let range2;
            if (minDefined && maxDefined) {
              return { min, max };
            }
            const metas = this.getMatchingVisibleMetas();
            for (let i = 0, ilen = metas.length; i < ilen; ++i) {
              range2 = metas[i].controller.getMinMax(this, canStack);
              if (!minDefined) {
                min = Math.min(min, range2.min);
              }
              if (!maxDefined) {
                max = Math.max(max, range2.max);
              }
            }
            min = maxDefined && min > max ? max : min;
            max = minDefined && min > max ? min : max;
            return {
              min: finiteOrDefault(min, finiteOrDefault(max, min)),
              max: finiteOrDefault(max, finiteOrDefault(min, max))
            };
          }
          getPadding() {
            return {
              left: this.paddingLeft || 0,
              top: this.paddingTop || 0,
              right: this.paddingRight || 0,
              bottom: this.paddingBottom || 0
            };
          }
          getTicks() {
            return this.ticks;
          }
          getLabels() {
            const data = this.chart.data;
            return this.options.labels || (this.isHorizontal() ? data.xLabels : data.yLabels) || data.labels || [];
          }
          beforeLayout() {
            this._cache = {};
            this._dataLimitsCached = false;
          }
          beforeUpdate() {
            callback(this.options.beforeUpdate, [this]);
          }
          update(maxWidth, maxHeight, margins) {
            const { beginAtZero, grace, ticks: tickOpts } = this.options;
            const sampleSize = tickOpts.sampleSize;
            this.beforeUpdate();
            this.maxWidth = maxWidth;
            this.maxHeight = maxHeight;
            this._margins = margins = Object.assign({
              left: 0,
              right: 0,
              top: 0,
              bottom: 0
            }, margins);
            this.ticks = null;
            this._labelSizes = null;
            this._gridLineItems = null;
            this._labelItems = null;
            this.beforeSetDimensions();
            this.setDimensions();
            this.afterSetDimensions();
            this._maxLength = this.isHorizontal() ? this.width + margins.left + margins.right : this.height + margins.top + margins.bottom;
            if (!this._dataLimitsCached) {
              this.beforeDataLimits();
              this.determineDataLimits();
              this.afterDataLimits();
              this._range = _addGrace(this, grace, beginAtZero);
              this._dataLimitsCached = true;
            }
            this.beforeBuildTicks();
            this.ticks = this.buildTicks() || [];
            this.afterBuildTicks();
            const samplingEnabled = sampleSize < this.ticks.length;
            this._convertTicksToLabels(samplingEnabled ? sample(this.ticks, sampleSize) : this.ticks);
            this.configure();
            this.beforeCalculateLabelRotation();
            this.calculateLabelRotation();
            this.afterCalculateLabelRotation();
            if (tickOpts.display && (tickOpts.autoSkip || tickOpts.source === "auto")) {
              this.ticks = autoSkip(this, this.ticks);
              this._labelSizes = null;
              this.afterAutoSkip();
            }
            if (samplingEnabled) {
              this._convertTicksToLabels(this.ticks);
            }
            this.beforeFit();
            this.fit();
            this.afterFit();
            this.afterUpdate();
          }
          configure() {
            let reversePixels = this.options.reverse;
            let startPixel, endPixel;
            if (this.isHorizontal()) {
              startPixel = this.left;
              endPixel = this.right;
            } else {
              startPixel = this.top;
              endPixel = this.bottom;
              reversePixels = !reversePixels;
            }
            this._startPixel = startPixel;
            this._endPixel = endPixel;
            this._reversePixels = reversePixels;
            this._length = endPixel - startPixel;
            this._alignToPixels = this.options.alignToPixels;
          }
          afterUpdate() {
            callback(this.options.afterUpdate, [this]);
          }
          beforeSetDimensions() {
            callback(this.options.beforeSetDimensions, [this]);
          }
          setDimensions() {
            if (this.isHorizontal()) {
              this.width = this.maxWidth;
              this.left = 0;
              this.right = this.width;
            } else {
              this.height = this.maxHeight;
              this.top = 0;
              this.bottom = this.height;
            }
            this.paddingLeft = 0;
            this.paddingTop = 0;
            this.paddingRight = 0;
            this.paddingBottom = 0;
          }
          afterSetDimensions() {
            callback(this.options.afterSetDimensions, [this]);
          }
          _callHooks(name) {
            this.chart.notifyPlugins(name, this.getContext());
            callback(this.options[name], [this]);
          }
          beforeDataLimits() {
            this._callHooks("beforeDataLimits");
          }
          determineDataLimits() {
          }
          afterDataLimits() {
            this._callHooks("afterDataLimits");
          }
          beforeBuildTicks() {
            this._callHooks("beforeBuildTicks");
          }
          buildTicks() {
            return [];
          }
          afterBuildTicks() {
            this._callHooks("afterBuildTicks");
          }
          beforeTickToLabelConversion() {
            callback(this.options.beforeTickToLabelConversion, [this]);
          }
          generateTickLabels(ticks) {
            const tickOpts = this.options.ticks;
            let i, ilen, tick;
            for (i = 0, ilen = ticks.length; i < ilen; i++) {
              tick = ticks[i];
              tick.label = callback(tickOpts.callback, [tick.value, i, ticks], this);
            }
          }
          afterTickToLabelConversion() {
            callback(this.options.afterTickToLabelConversion, [this]);
          }
          beforeCalculateLabelRotation() {
            callback(this.options.beforeCalculateLabelRotation, [this]);
          }
          calculateLabelRotation() {
            const options = this.options;
            const tickOpts = options.ticks;
            const numTicks = this.ticks.length;
            const minRotation = tickOpts.minRotation || 0;
            const maxRotation = tickOpts.maxRotation;
            let labelRotation = minRotation;
            let tickWidth, maxHeight, maxLabelDiagonal;
            if (!this._isVisible() || !tickOpts.display || minRotation >= maxRotation || numTicks <= 1 || !this.isHorizontal()) {
              this.labelRotation = minRotation;
              return;
            }
            const labelSizes = this._getLabelSizes();
            const maxLabelWidth = labelSizes.widest.width;
            const maxLabelHeight = labelSizes.highest.height;
            const maxWidth = _limitValue(this.chart.width - maxLabelWidth, 0, this.maxWidth);
            tickWidth = options.offset ? this.maxWidth / numTicks : maxWidth / (numTicks - 1);
            if (maxLabelWidth + 6 > tickWidth) {
              tickWidth = maxWidth / (numTicks - (options.offset ? 0.5 : 1));
              maxHeight = this.maxHeight - getTickMarkLength(options.grid) - tickOpts.padding - getTitleHeight(options.title, this.chart.options.font);
              maxLabelDiagonal = Math.sqrt(maxLabelWidth * maxLabelWidth + maxLabelHeight * maxLabelHeight);
              labelRotation = toDegrees(Math.min(Math.asin(_limitValue((labelSizes.highest.height + 6) / tickWidth, -1, 1)), Math.asin(_limitValue(maxHeight / maxLabelDiagonal, -1, 1)) - Math.asin(_limitValue(maxLabelHeight / maxLabelDiagonal, -1, 1))));
              labelRotation = Math.max(minRotation, Math.min(maxRotation, labelRotation));
            }
            this.labelRotation = labelRotation;
          }
          afterCalculateLabelRotation() {
            callback(this.options.afterCalculateLabelRotation, [this]);
          }
          afterAutoSkip() {
          }
          beforeFit() {
            callback(this.options.beforeFit, [this]);
          }
          fit() {
            const minSize = {
              width: 0,
              height: 0
            };
            const { chart: chart2, options: { ticks: tickOpts, title: titleOpts, grid: gridOpts } } = this;
            const display = this._isVisible();
            const isHorizontal = this.isHorizontal();
            if (display) {
              const titleHeight = getTitleHeight(titleOpts, chart2.options.font);
              if (isHorizontal) {
                minSize.width = this.maxWidth;
                minSize.height = getTickMarkLength(gridOpts) + titleHeight;
              } else {
                minSize.height = this.maxHeight;
                minSize.width = getTickMarkLength(gridOpts) + titleHeight;
              }
              if (tickOpts.display && this.ticks.length) {
                const { first, last, widest, highest } = this._getLabelSizes();
                const tickPadding = tickOpts.padding * 2;
                const angleRadians = toRadians(this.labelRotation);
                const cos = Math.cos(angleRadians);
                const sin = Math.sin(angleRadians);
                if (isHorizontal) {
                  const labelHeight = tickOpts.mirror ? 0 : sin * widest.width + cos * highest.height;
                  minSize.height = Math.min(this.maxHeight, minSize.height + labelHeight + tickPadding);
                } else {
                  const labelWidth = tickOpts.mirror ? 0 : cos * widest.width + sin * highest.height;
                  minSize.width = Math.min(this.maxWidth, minSize.width + labelWidth + tickPadding);
                }
                this._calculatePadding(first, last, sin, cos);
              }
            }
            this._handleMargins();
            if (isHorizontal) {
              this.width = this._length = chart2.width - this._margins.left - this._margins.right;
              this.height = minSize.height;
            } else {
              this.width = minSize.width;
              this.height = this._length = chart2.height - this._margins.top - this._margins.bottom;
            }
          }
          _calculatePadding(first, last, sin, cos) {
            const { ticks: { align, padding }, position } = this.options;
            const isRotated = this.labelRotation !== 0;
            const labelsBelowTicks = position !== "top" && this.axis === "x";
            if (this.isHorizontal()) {
              const offsetLeft = this.getPixelForTick(0) - this.left;
              const offsetRight = this.right - this.getPixelForTick(this.ticks.length - 1);
              let paddingLeft = 0;
              let paddingRight = 0;
              if (isRotated) {
                if (labelsBelowTicks) {
                  paddingLeft = cos * first.width;
                  paddingRight = sin * last.height;
                } else {
                  paddingLeft = sin * first.height;
                  paddingRight = cos * last.width;
                }
              } else if (align === "start") {
                paddingRight = last.width;
              } else if (align === "end") {
                paddingLeft = first.width;
              } else if (align !== "inner") {
                paddingLeft = first.width / 2;
                paddingRight = last.width / 2;
              }
              this.paddingLeft = Math.max((paddingLeft - offsetLeft + padding) * this.width / (this.width - offsetLeft), 0);
              this.paddingRight = Math.max((paddingRight - offsetRight + padding) * this.width / (this.width - offsetRight), 0);
            } else {
              let paddingTop = last.height / 2;
              let paddingBottom = first.height / 2;
              if (align === "start") {
                paddingTop = 0;
                paddingBottom = first.height;
              } else if (align === "end") {
                paddingTop = last.height;
                paddingBottom = 0;
              }
              this.paddingTop = paddingTop + padding;
              this.paddingBottom = paddingBottom + padding;
            }
          }
          _handleMargins() {
            if (this._margins) {
              this._margins.left = Math.max(this.paddingLeft, this._margins.left);
              this._margins.top = Math.max(this.paddingTop, this._margins.top);
              this._margins.right = Math.max(this.paddingRight, this._margins.right);
              this._margins.bottom = Math.max(this.paddingBottom, this._margins.bottom);
            }
          }
          afterFit() {
            callback(this.options.afterFit, [this]);
          }
          isHorizontal() {
            const { axis, position } = this.options;
            return position === "top" || position === "bottom" || axis === "x";
          }
          isFullSize() {
            return this.options.fullSize;
          }
          _convertTicksToLabels(ticks) {
            this.beforeTickToLabelConversion();
            this.generateTickLabels(ticks);
            let i, ilen;
            for (i = 0, ilen = ticks.length; i < ilen; i++) {
              if (isNullOrUndef(ticks[i].label)) {
                ticks.splice(i, 1);
                ilen--;
                i--;
              }
            }
            this.afterTickToLabelConversion();
          }
          _getLabelSizes() {
            let labelSizes = this._labelSizes;
            if (!labelSizes) {
              const sampleSize = this.options.ticks.sampleSize;
              let ticks = this.ticks;
              if (sampleSize < ticks.length) {
                ticks = sample(ticks, sampleSize);
              }
              this._labelSizes = labelSizes = this._computeLabelSizes(ticks, ticks.length);
            }
            return labelSizes;
          }
          _computeLabelSizes(ticks, length) {
            const { ctx, _longestTextCache: caches } = this;
            const widths = [];
            const heights = [];
            let widestLabelSize = 0;
            let highestLabelSize = 0;
            let i, j, jlen, label, tickFont, fontString2, cache, lineHeight, width, height, nestedLabel;
            for (i = 0; i < length; ++i) {
              label = ticks[i].label;
              tickFont = this._resolveTickFontOptions(i);
              ctx.font = fontString2 = tickFont.string;
              cache = caches[fontString2] = caches[fontString2] || { data: {}, gc: [] };
              lineHeight = tickFont.lineHeight;
              width = height = 0;
              if (!isNullOrUndef(label) && !isArray(label)) {
                width = _measureText(ctx, cache.data, cache.gc, width, label);
                height = lineHeight;
              } else if (isArray(label)) {
                for (j = 0, jlen = label.length; j < jlen; ++j) {
                  nestedLabel = label[j];
                  if (!isNullOrUndef(nestedLabel) && !isArray(nestedLabel)) {
                    width = _measureText(ctx, cache.data, cache.gc, width, nestedLabel);
                    height += lineHeight;
                  }
                }
              }
              widths.push(width);
              heights.push(height);
              widestLabelSize = Math.max(width, widestLabelSize);
              highestLabelSize = Math.max(height, highestLabelSize);
            }
            garbageCollect(caches, length);
            const widest = widths.indexOf(widestLabelSize);
            const highest = heights.indexOf(highestLabelSize);
            const valueAt = (idx) => ({ width: widths[idx] || 0, height: heights[idx] || 0 });
            return {
              first: valueAt(0),
              last: valueAt(length - 1),
              widest: valueAt(widest),
              highest: valueAt(highest),
              widths,
              heights
            };
          }
          getLabelForValue(value) {
            return value;
          }
          getPixelForValue(value, index2) {
            return NaN;
          }
          getValueForPixel(pixel) {
          }
          getPixelForTick(index2) {
            const ticks = this.ticks;
            if (index2 < 0 || index2 > ticks.length - 1) {
              return null;
            }
            return this.getPixelForValue(ticks[index2].value);
          }
          getPixelForDecimal(decimal) {
            if (this._reversePixels) {
              decimal = 1 - decimal;
            }
            const pixel = this._startPixel + decimal * this._length;
            return _int16Range(this._alignToPixels ? _alignPixel(this.chart, pixel, 0) : pixel);
          }
          getDecimalForPixel(pixel) {
            const decimal = (pixel - this._startPixel) / this._length;
            return this._reversePixels ? 1 - decimal : decimal;
          }
          getBasePixel() {
            return this.getPixelForValue(this.getBaseValue());
          }
          getBaseValue() {
            const { min, max } = this;
            return min < 0 && max < 0 ? max : min > 0 && max > 0 ? min : 0;
          }
          getContext(index2) {
            const ticks = this.ticks || [];
            if (index2 >= 0 && index2 < ticks.length) {
              const tick = ticks[index2];
              return tick.$context || (tick.$context = createTickContext(this.getContext(), index2, tick));
            }
            return this.$context || (this.$context = createScaleContext(this.chart.getContext(), this));
          }
          _tickSize() {
            const optionTicks = this.options.ticks;
            const rot = toRadians(this.labelRotation);
            const cos = Math.abs(Math.cos(rot));
            const sin = Math.abs(Math.sin(rot));
            const labelSizes = this._getLabelSizes();
            const padding = optionTicks.autoSkipPadding || 0;
            const w = labelSizes ? labelSizes.widest.width + padding : 0;
            const h = labelSizes ? labelSizes.highest.height + padding : 0;
            return this.isHorizontal() ? h * cos > w * sin ? w / cos : h / sin : h * sin < w * cos ? h / cos : w / sin;
          }
          _isVisible() {
            const display = this.options.display;
            if (display !== "auto") {
              return !!display;
            }
            return this.getMatchingVisibleMetas().length > 0;
          }
          _computeGridLineItems(chartArea) {
            const axis = this.axis;
            const chart2 = this.chart;
            const options = this.options;
            const { grid, position } = options;
            const offset = grid.offset;
            const isHorizontal = this.isHorizontal();
            const ticks = this.ticks;
            const ticksLength = ticks.length + (offset ? 1 : 0);
            const tl = getTickMarkLength(grid);
            const items = [];
            const borderOpts = grid.setContext(this.getContext());
            const axisWidth = borderOpts.drawBorder ? borderOpts.borderWidth : 0;
            const axisHalfWidth = axisWidth / 2;
            const alignBorderValue = function(pixel) {
              return _alignPixel(chart2, pixel, axisWidth);
            };
            let borderValue, i, lineValue, alignedLineValue;
            let tx1, ty1, tx2, ty2, x1, y1, x2, y2;
            if (position === "top") {
              borderValue = alignBorderValue(this.bottom);
              ty1 = this.bottom - tl;
              ty2 = borderValue - axisHalfWidth;
              y1 = alignBorderValue(chartArea.top) + axisHalfWidth;
              y2 = chartArea.bottom;
            } else if (position === "bottom") {
              borderValue = alignBorderValue(this.top);
              y1 = chartArea.top;
              y2 = alignBorderValue(chartArea.bottom) - axisHalfWidth;
              ty1 = borderValue + axisHalfWidth;
              ty2 = this.top + tl;
            } else if (position === "left") {
              borderValue = alignBorderValue(this.right);
              tx1 = this.right - tl;
              tx2 = borderValue - axisHalfWidth;
              x1 = alignBorderValue(chartArea.left) + axisHalfWidth;
              x2 = chartArea.right;
            } else if (position === "right") {
              borderValue = alignBorderValue(this.left);
              x1 = chartArea.left;
              x2 = alignBorderValue(chartArea.right) - axisHalfWidth;
              tx1 = borderValue + axisHalfWidth;
              tx2 = this.left + tl;
            } else if (axis === "x") {
              if (position === "center") {
                borderValue = alignBorderValue((chartArea.top + chartArea.bottom) / 2 + 0.5);
              } else if (isObject2(position)) {
                const positionAxisID = Object.keys(position)[0];
                const value = position[positionAxisID];
                borderValue = alignBorderValue(this.chart.scales[positionAxisID].getPixelForValue(value));
              }
              y1 = chartArea.top;
              y2 = chartArea.bottom;
              ty1 = borderValue + axisHalfWidth;
              ty2 = ty1 + tl;
            } else if (axis === "y") {
              if (position === "center") {
                borderValue = alignBorderValue((chartArea.left + chartArea.right) / 2);
              } else if (isObject2(position)) {
                const positionAxisID = Object.keys(position)[0];
                const value = position[positionAxisID];
                borderValue = alignBorderValue(this.chart.scales[positionAxisID].getPixelForValue(value));
              }
              tx1 = borderValue - axisHalfWidth;
              tx2 = tx1 - tl;
              x1 = chartArea.left;
              x2 = chartArea.right;
            }
            const limit = valueOrDefault(options.ticks.maxTicksLimit, ticksLength);
            const step = Math.max(1, Math.ceil(ticksLength / limit));
            for (i = 0; i < ticksLength; i += step) {
              const optsAtIndex = grid.setContext(this.getContext(i));
              const lineWidth = optsAtIndex.lineWidth;
              const lineColor = optsAtIndex.color;
              const borderDash = grid.borderDash || [];
              const borderDashOffset = optsAtIndex.borderDashOffset;
              const tickWidth = optsAtIndex.tickWidth;
              const tickColor = optsAtIndex.tickColor;
              const tickBorderDash = optsAtIndex.tickBorderDash || [];
              const tickBorderDashOffset = optsAtIndex.tickBorderDashOffset;
              lineValue = getPixelForGridLine(this, i, offset);
              if (lineValue === void 0) {
                continue;
              }
              alignedLineValue = _alignPixel(chart2, lineValue, lineWidth);
              if (isHorizontal) {
                tx1 = tx2 = x1 = x2 = alignedLineValue;
              } else {
                ty1 = ty2 = y1 = y2 = alignedLineValue;
              }
              items.push({
                tx1,
                ty1,
                tx2,
                ty2,
                x1,
                y1,
                x2,
                y2,
                width: lineWidth,
                color: lineColor,
                borderDash,
                borderDashOffset,
                tickWidth,
                tickColor,
                tickBorderDash,
                tickBorderDashOffset
              });
            }
            this._ticksLength = ticksLength;
            this._borderValue = borderValue;
            return items;
          }
          _computeLabelItems(chartArea) {
            const axis = this.axis;
            const options = this.options;
            const { position, ticks: optionTicks } = options;
            const isHorizontal = this.isHorizontal();
            const ticks = this.ticks;
            const { align, crossAlign, padding, mirror } = optionTicks;
            const tl = getTickMarkLength(options.grid);
            const tickAndPadding = tl + padding;
            const hTickAndPadding = mirror ? -padding : tickAndPadding;
            const rotation = -toRadians(this.labelRotation);
            const items = [];
            let i, ilen, tick, label, x, y, textAlign, pixel, font, lineHeight, lineCount, textOffset;
            let textBaseline = "middle";
            if (position === "top") {
              y = this.bottom - hTickAndPadding;
              textAlign = this._getXAxisLabelAlignment();
            } else if (position === "bottom") {
              y = this.top + hTickAndPadding;
              textAlign = this._getXAxisLabelAlignment();
            } else if (position === "left") {
              const ret = this._getYAxisLabelAlignment(tl);
              textAlign = ret.textAlign;
              x = ret.x;
            } else if (position === "right") {
              const ret = this._getYAxisLabelAlignment(tl);
              textAlign = ret.textAlign;
              x = ret.x;
            } else if (axis === "x") {
              if (position === "center") {
                y = (chartArea.top + chartArea.bottom) / 2 + tickAndPadding;
              } else if (isObject2(position)) {
                const positionAxisID = Object.keys(position)[0];
                const value = position[positionAxisID];
                y = this.chart.scales[positionAxisID].getPixelForValue(value) + tickAndPadding;
              }
              textAlign = this._getXAxisLabelAlignment();
            } else if (axis === "y") {
              if (position === "center") {
                x = (chartArea.left + chartArea.right) / 2 - tickAndPadding;
              } else if (isObject2(position)) {
                const positionAxisID = Object.keys(position)[0];
                const value = position[positionAxisID];
                x = this.chart.scales[positionAxisID].getPixelForValue(value);
              }
              textAlign = this._getYAxisLabelAlignment(tl).textAlign;
            }
            if (axis === "y") {
              if (align === "start") {
                textBaseline = "top";
              } else if (align === "end") {
                textBaseline = "bottom";
              }
            }
            const labelSizes = this._getLabelSizes();
            for (i = 0, ilen = ticks.length; i < ilen; ++i) {
              tick = ticks[i];
              label = tick.label;
              const optsAtIndex = optionTicks.setContext(this.getContext(i));
              pixel = this.getPixelForTick(i) + optionTicks.labelOffset;
              font = this._resolveTickFontOptions(i);
              lineHeight = font.lineHeight;
              lineCount = isArray(label) ? label.length : 1;
              const halfCount = lineCount / 2;
              const color2 = optsAtIndex.color;
              const strokeColor = optsAtIndex.textStrokeColor;
              const strokeWidth = optsAtIndex.textStrokeWidth;
              let tickTextAlign = textAlign;
              if (isHorizontal) {
                x = pixel;
                if (textAlign === "inner") {
                  if (i === ilen - 1) {
                    tickTextAlign = !this.options.reverse ? "right" : "left";
                  } else if (i === 0) {
                    tickTextAlign = !this.options.reverse ? "left" : "right";
                  } else {
                    tickTextAlign = "center";
                  }
                }
                if (position === "top") {
                  if (crossAlign === "near" || rotation !== 0) {
                    textOffset = -lineCount * lineHeight + lineHeight / 2;
                  } else if (crossAlign === "center") {
                    textOffset = -labelSizes.highest.height / 2 - halfCount * lineHeight + lineHeight;
                  } else {
                    textOffset = -labelSizes.highest.height + lineHeight / 2;
                  }
                } else {
                  if (crossAlign === "near" || rotation !== 0) {
                    textOffset = lineHeight / 2;
                  } else if (crossAlign === "center") {
                    textOffset = labelSizes.highest.height / 2 - halfCount * lineHeight;
                  } else {
                    textOffset = labelSizes.highest.height - lineCount * lineHeight;
                  }
                }
                if (mirror) {
                  textOffset *= -1;
                }
              } else {
                y = pixel;
                textOffset = (1 - lineCount) * lineHeight / 2;
              }
              let backdrop;
              if (optsAtIndex.showLabelBackdrop) {
                const labelPadding = toPadding(optsAtIndex.backdropPadding);
                const height = labelSizes.heights[i];
                const width = labelSizes.widths[i];
                let top = y + textOffset - labelPadding.top;
                let left = x - labelPadding.left;
                switch (textBaseline) {
                  case "middle":
                    top -= height / 2;
                    break;
                  case "bottom":
                    top -= height;
                    break;
                }
                switch (textAlign) {
                  case "center":
                    left -= width / 2;
                    break;
                  case "right":
                    left -= width;
                    break;
                }
                backdrop = {
                  left,
                  top,
                  width: width + labelPadding.width,
                  height: height + labelPadding.height,
                  color: optsAtIndex.backdropColor
                };
              }
              items.push({
                rotation,
                label,
                font,
                color: color2,
                strokeColor,
                strokeWidth,
                textOffset,
                textAlign: tickTextAlign,
                textBaseline,
                translation: [x, y],
                backdrop
              });
            }
            return items;
          }
          _getXAxisLabelAlignment() {
            const { position, ticks } = this.options;
            const rotation = -toRadians(this.labelRotation);
            if (rotation) {
              return position === "top" ? "left" : "right";
            }
            let align = "center";
            if (ticks.align === "start") {
              align = "left";
            } else if (ticks.align === "end") {
              align = "right";
            } else if (ticks.align === "inner") {
              align = "inner";
            }
            return align;
          }
          _getYAxisLabelAlignment(tl) {
            const { position, ticks: { crossAlign, mirror, padding } } = this.options;
            const labelSizes = this._getLabelSizes();
            const tickAndPadding = tl + padding;
            const widest = labelSizes.widest.width;
            let textAlign;
            let x;
            if (position === "left") {
              if (mirror) {
                x = this.right + padding;
                if (crossAlign === "near") {
                  textAlign = "left";
                } else if (crossAlign === "center") {
                  textAlign = "center";
                  x += widest / 2;
                } else {
                  textAlign = "right";
                  x += widest;
                }
              } else {
                x = this.right - tickAndPadding;
                if (crossAlign === "near") {
                  textAlign = "right";
                } else if (crossAlign === "center") {
                  textAlign = "center";
                  x -= widest / 2;
                } else {
                  textAlign = "left";
                  x = this.left;
                }
              }
            } else if (position === "right") {
              if (mirror) {
                x = this.left + padding;
                if (crossAlign === "near") {
                  textAlign = "right";
                } else if (crossAlign === "center") {
                  textAlign = "center";
                  x -= widest / 2;
                } else {
                  textAlign = "left";
                  x -= widest;
                }
              } else {
                x = this.left + tickAndPadding;
                if (crossAlign === "near") {
                  textAlign = "left";
                } else if (crossAlign === "center") {
                  textAlign = "center";
                  x += widest / 2;
                } else {
                  textAlign = "right";
                  x = this.right;
                }
              }
            } else {
              textAlign = "right";
            }
            return { textAlign, x };
          }
          _computeLabelArea() {
            if (this.options.ticks.mirror) {
              return;
            }
            const chart2 = this.chart;
            const position = this.options.position;
            if (position === "left" || position === "right") {
              return { top: 0, left: this.left, bottom: chart2.height, right: this.right };
            }
            if (position === "top" || position === "bottom") {
              return { top: this.top, left: 0, bottom: this.bottom, right: chart2.width };
            }
          }
          drawBackground() {
            const { ctx, options: { backgroundColor }, left, top, width, height } = this;
            if (backgroundColor) {
              ctx.save();
              ctx.fillStyle = backgroundColor;
              ctx.fillRect(left, top, width, height);
              ctx.restore();
            }
          }
          getLineWidthForValue(value) {
            const grid = this.options.grid;
            if (!this._isVisible() || !grid.display) {
              return 0;
            }
            const ticks = this.ticks;
            const index2 = ticks.findIndex((t) => t.value === value);
            if (index2 >= 0) {
              const opts = grid.setContext(this.getContext(index2));
              return opts.lineWidth;
            }
            return 0;
          }
          drawGrid(chartArea) {
            const grid = this.options.grid;
            const ctx = this.ctx;
            const items = this._gridLineItems || (this._gridLineItems = this._computeGridLineItems(chartArea));
            let i, ilen;
            const drawLine = (p1, p2, style) => {
              if (!style.width || !style.color) {
                return;
              }
              ctx.save();
              ctx.lineWidth = style.width;
              ctx.strokeStyle = style.color;
              ctx.setLineDash(style.borderDash || []);
              ctx.lineDashOffset = style.borderDashOffset;
              ctx.beginPath();
              ctx.moveTo(p1.x, p1.y);
              ctx.lineTo(p2.x, p2.y);
              ctx.stroke();
              ctx.restore();
            };
            if (grid.display) {
              for (i = 0, ilen = items.length; i < ilen; ++i) {
                const item = items[i];
                if (grid.drawOnChartArea) {
                  drawLine({ x: item.x1, y: item.y1 }, { x: item.x2, y: item.y2 }, item);
                }
                if (grid.drawTicks) {
                  drawLine({ x: item.tx1, y: item.ty1 }, { x: item.tx2, y: item.ty2 }, {
                    color: item.tickColor,
                    width: item.tickWidth,
                    borderDash: item.tickBorderDash,
                    borderDashOffset: item.tickBorderDashOffset
                  });
                }
              }
            }
          }
          drawBorder() {
            const { chart: chart2, ctx, options: { grid } } = this;
            const borderOpts = grid.setContext(this.getContext());
            const axisWidth = grid.drawBorder ? borderOpts.borderWidth : 0;
            if (!axisWidth) {
              return;
            }
            const lastLineWidth = grid.setContext(this.getContext(0)).lineWidth;
            const borderValue = this._borderValue;
            let x1, x2, y1, y2;
            if (this.isHorizontal()) {
              x1 = _alignPixel(chart2, this.left, axisWidth) - axisWidth / 2;
              x2 = _alignPixel(chart2, this.right, lastLineWidth) + lastLineWidth / 2;
              y1 = y2 = borderValue;
            } else {
              y1 = _alignPixel(chart2, this.top, axisWidth) - axisWidth / 2;
              y2 = _alignPixel(chart2, this.bottom, lastLineWidth) + lastLineWidth / 2;
              x1 = x2 = borderValue;
            }
            ctx.save();
            ctx.lineWidth = borderOpts.borderWidth;
            ctx.strokeStyle = borderOpts.borderColor;
            ctx.beginPath();
            ctx.moveTo(x1, y1);
            ctx.lineTo(x2, y2);
            ctx.stroke();
            ctx.restore();
          }
          drawLabels(chartArea) {
            const optionTicks = this.options.ticks;
            if (!optionTicks.display) {
              return;
            }
            const ctx = this.ctx;
            const area = this._computeLabelArea();
            if (area) {
              clipArea(ctx, area);
            }
            const items = this._labelItems || (this._labelItems = this._computeLabelItems(chartArea));
            let i, ilen;
            for (i = 0, ilen = items.length; i < ilen; ++i) {
              const item = items[i];
              const tickFont = item.font;
              const label = item.label;
              if (item.backdrop) {
                ctx.fillStyle = item.backdrop.color;
                ctx.fillRect(item.backdrop.left, item.backdrop.top, item.backdrop.width, item.backdrop.height);
              }
              let y = item.textOffset;
              renderText(ctx, label, 0, y, tickFont, item);
            }
            if (area) {
              unclipArea(ctx);
            }
          }
          drawTitle() {
            const { ctx, options: { position, title, reverse } } = this;
            if (!title.display) {
              return;
            }
            const font = toFont(title.font);
            const padding = toPadding(title.padding);
            const align = title.align;
            let offset = font.lineHeight / 2;
            if (position === "bottom" || position === "center" || isObject2(position)) {
              offset += padding.bottom;
              if (isArray(title.text)) {
                offset += font.lineHeight * (title.text.length - 1);
              }
            } else {
              offset += padding.top;
            }
            const { titleX, titleY, maxWidth, rotation } = titleArgs(this, offset, position, align);
            renderText(ctx, title.text, 0, 0, font, {
              color: title.color,
              maxWidth,
              rotation,
              textAlign: titleAlign(align, position, reverse),
              textBaseline: "middle",
              translation: [titleX, titleY]
            });
          }
          draw(chartArea) {
            if (!this._isVisible()) {
              return;
            }
            this.drawBackground();
            this.drawGrid(chartArea);
            this.drawBorder();
            this.drawTitle();
            this.drawLabels(chartArea);
          }
          _layers() {
            const opts = this.options;
            const tz = opts.ticks && opts.ticks.z || 0;
            const gz = valueOrDefault(opts.grid && opts.grid.z, -1);
            if (!this._isVisible() || this.draw !== Scale.prototype.draw) {
              return [{
                z: tz,
                draw: (chartArea) => {
                  this.draw(chartArea);
                }
              }];
            }
            return [{
              z: gz,
              draw: (chartArea) => {
                this.drawBackground();
                this.drawGrid(chartArea);
                this.drawTitle();
              }
            }, {
              z: gz + 1,
              draw: () => {
                this.drawBorder();
              }
            }, {
              z: tz,
              draw: (chartArea) => {
                this.drawLabels(chartArea);
              }
            }];
          }
          getMatchingVisibleMetas(type) {
            const metas = this.chart.getSortedVisibleDatasetMetas();
            const axisID = this.axis + "AxisID";
            const result = [];
            let i, ilen;
            for (i = 0, ilen = metas.length; i < ilen; ++i) {
              const meta = metas[i];
              if (meta[axisID] === this.id && (!type || meta.type === type)) {
                result.push(meta);
              }
            }
            return result;
          }
          _resolveTickFontOptions(index2) {
            const opts = this.options.ticks.setContext(this.getContext(index2));
            return toFont(opts.font);
          }
          _maxDigits() {
            const fontSize = this._resolveTickFontOptions(0).lineHeight;
            return (this.isHorizontal() ? this.width : this.height) / fontSize;
          }
        }
        class TypedRegistry {
          constructor(type, scope, override) {
            this.type = type;
            this.scope = scope;
            this.override = override;
            this.items = Object.create(null);
          }
          isForType(type) {
            return Object.prototype.isPrototypeOf.call(this.type.prototype, type.prototype);
          }
          register(item) {
            const proto = Object.getPrototypeOf(item);
            let parentScope;
            if (isIChartComponent(proto)) {
              parentScope = this.register(proto);
            }
            const items = this.items;
            const id = item.id;
            const scope = this.scope + "." + id;
            if (!id) {
              throw new Error("class does not have id: " + item);
            }
            if (id in items) {
              return scope;
            }
            items[id] = item;
            registerDefaults(item, scope, parentScope);
            if (this.override) {
              defaults.override(item.id, item.overrides);
            }
            return scope;
          }
          get(id) {
            return this.items[id];
          }
          unregister(item) {
            const items = this.items;
            const id = item.id;
            const scope = this.scope;
            if (id in items) {
              delete items[id];
            }
            if (scope && id in defaults[scope]) {
              delete defaults[scope][id];
              if (this.override) {
                delete overrides[id];
              }
            }
          }
        }
        function registerDefaults(item, scope, parentScope) {
          const itemDefaults = merge(Object.create(null), [
            parentScope ? defaults.get(parentScope) : {},
            defaults.get(scope),
            item.defaults
          ]);
          defaults.set(scope, itemDefaults);
          if (item.defaultRoutes) {
            routeDefaults(scope, item.defaultRoutes);
          }
          if (item.descriptors) {
            defaults.describe(scope, item.descriptors);
          }
        }
        function routeDefaults(scope, routes) {
          Object.keys(routes).forEach((property) => {
            const propertyParts = property.split(".");
            const sourceName = propertyParts.pop();
            const sourceScope = [scope].concat(propertyParts).join(".");
            const parts = routes[property].split(".");
            const targetName = parts.pop();
            const targetScope = parts.join(".");
            defaults.route(sourceScope, sourceName, targetScope, targetName);
          });
        }
        function isIChartComponent(proto) {
          return "id" in proto && "defaults" in proto;
        }
        class Registry {
          constructor() {
            this.controllers = new TypedRegistry(DatasetController, "datasets", true);
            this.elements = new TypedRegistry(Element2, "elements");
            this.plugins = new TypedRegistry(Object, "plugins");
            this.scales = new TypedRegistry(Scale, "scales");
            this._typedRegistries = [this.controllers, this.scales, this.elements];
          }
          add(...args) {
            this._each("register", args);
          }
          remove(...args) {
            this._each("unregister", args);
          }
          addControllers(...args) {
            this._each("register", args, this.controllers);
          }
          addElements(...args) {
            this._each("register", args, this.elements);
          }
          addPlugins(...args) {
            this._each("register", args, this.plugins);
          }
          addScales(...args) {
            this._each("register", args, this.scales);
          }
          getController(id) {
            return this._get(id, this.controllers, "controller");
          }
          getElement(id) {
            return this._get(id, this.elements, "element");
          }
          getPlugin(id) {
            return this._get(id, this.plugins, "plugin");
          }
          getScale(id) {
            return this._get(id, this.scales, "scale");
          }
          removeControllers(...args) {
            this._each("unregister", args, this.controllers);
          }
          removeElements(...args) {
            this._each("unregister", args, this.elements);
          }
          removePlugins(...args) {
            this._each("unregister", args, this.plugins);
          }
          removeScales(...args) {
            this._each("unregister", args, this.scales);
          }
          _each(method, args, typedRegistry) {
            [...args].forEach((arg) => {
              const reg = typedRegistry || this._getRegistryForType(arg);
              if (typedRegistry || reg.isForType(arg) || reg === this.plugins && arg.id) {
                this._exec(method, reg, arg);
              } else {
                each(arg, (item) => {
                  const itemReg = typedRegistry || this._getRegistryForType(item);
                  this._exec(method, itemReg, item);
                });
              }
            });
          }
          _exec(method, registry2, component) {
            const camelMethod = _capitalize(method);
            callback(component["before" + camelMethod], [], component);
            registry2[method](component);
            callback(component["after" + camelMethod], [], component);
          }
          _getRegistryForType(type) {
            for (let i = 0; i < this._typedRegistries.length; i++) {
              const reg = this._typedRegistries[i];
              if (reg.isForType(type)) {
                return reg;
              }
            }
            return this.plugins;
          }
          _get(id, typedRegistry, type) {
            const item = typedRegistry.get(id);
            if (item === void 0) {
              throw new Error('"' + id + '" is not a registered ' + type + ".");
            }
            return item;
          }
        }
        var registry = new Registry();
        class PluginService {
          constructor() {
            this._init = [];
          }
          notify(chart2, hook, args, filter) {
            if (hook === "beforeInit") {
              this._init = this._createDescriptors(chart2, true);
              this._notify(this._init, chart2, "install");
            }
            const descriptors2 = filter ? this._descriptors(chart2).filter(filter) : this._descriptors(chart2);
            const result = this._notify(descriptors2, chart2, hook, args);
            if (hook === "afterDestroy") {
              this._notify(descriptors2, chart2, "stop");
              this._notify(this._init, chart2, "uninstall");
            }
            return result;
          }
          _notify(descriptors2, chart2, hook, args) {
            args = args || {};
            for (const descriptor of descriptors2) {
              const plugin = descriptor.plugin;
              const method = plugin[hook];
              const params = [chart2, args, descriptor.options];
              if (callback(method, params, plugin) === false && args.cancelable) {
                return false;
              }
            }
            return true;
          }
          invalidate() {
            if (!isNullOrUndef(this._cache)) {
              this._oldCache = this._cache;
              this._cache = void 0;
            }
          }
          _descriptors(chart2) {
            if (this._cache) {
              return this._cache;
            }
            const descriptors2 = this._cache = this._createDescriptors(chart2);
            this._notifyStateChanges(chart2);
            return descriptors2;
          }
          _createDescriptors(chart2, all) {
            const config = chart2 && chart2.config;
            const options = valueOrDefault(config.options && config.options.plugins, {});
            const plugins2 = allPlugins(config);
            return options === false && !all ? [] : createDescriptors(chart2, plugins2, options, all);
          }
          _notifyStateChanges(chart2) {
            const previousDescriptors = this._oldCache || [];
            const descriptors2 = this._cache;
            const diff = (a, b) => a.filter((x) => !b.some((y) => x.plugin.id === y.plugin.id));
            this._notify(diff(previousDescriptors, descriptors2), chart2, "stop");
            this._notify(diff(descriptors2, previousDescriptors), chart2, "start");
          }
        }
        function allPlugins(config) {
          const plugins2 = [];
          const keys = Object.keys(registry.plugins.items);
          for (let i = 0; i < keys.length; i++) {
            plugins2.push(registry.getPlugin(keys[i]));
          }
          const local = config.plugins || [];
          for (let i = 0; i < local.length; i++) {
            const plugin = local[i];
            if (plugins2.indexOf(plugin) === -1) {
              plugins2.push(plugin);
            }
          }
          return plugins2;
        }
        function getOpts(options, all) {
          if (!all && options === false) {
            return null;
          }
          if (options === true) {
            return {};
          }
          return options;
        }
        function createDescriptors(chart2, plugins2, options, all) {
          const result = [];
          const context = chart2.getContext();
          for (let i = 0; i < plugins2.length; i++) {
            const plugin = plugins2[i];
            const id = plugin.id;
            const opts = getOpts(options[id], all);
            if (opts === null) {
              continue;
            }
            result.push({
              plugin,
              options: pluginOpts(chart2.config, plugin, opts, context)
            });
          }
          return result;
        }
        function pluginOpts(config, plugin, opts, context) {
          const keys = config.pluginScopeKeys(plugin);
          const scopes = config.getOptionScopes(opts, keys);
          return config.createResolver(scopes, context, [""], { scriptable: false, indexable: false, allKeys: true });
        }
        function getIndexAxis(type, options) {
          const datasetDefaults = defaults.datasets[type] || {};
          const datasetOptions = (options.datasets || {})[type] || {};
          return datasetOptions.indexAxis || options.indexAxis || datasetDefaults.indexAxis || "x";
        }
        function getAxisFromDefaultScaleID(id, indexAxis) {
          let axis = id;
          if (id === "_index_") {
            axis = indexAxis;
          } else if (id === "_value_") {
            axis = indexAxis === "x" ? "y" : "x";
          }
          return axis;
        }
        function getDefaultScaleIDFromAxis(axis, indexAxis) {
          return axis === indexAxis ? "_index_" : "_value_";
        }
        function axisFromPosition(position) {
          if (position === "top" || position === "bottom") {
            return "x";
          }
          if (position === "left" || position === "right") {
            return "y";
          }
        }
        function determineAxis(id, scaleOptions) {
          if (id === "x" || id === "y") {
            return id;
          }
          return scaleOptions.axis || axisFromPosition(scaleOptions.position) || id.charAt(0).toLowerCase();
        }
        function mergeScaleConfig(config, options) {
          const chartDefaults = overrides[config.type] || { scales: {} };
          const configScales = options.scales || {};
          const chartIndexAxis = getIndexAxis(config.type, options);
          const firstIDs = Object.create(null);
          const scales2 = Object.create(null);
          Object.keys(configScales).forEach((id) => {
            const scaleConf = configScales[id];
            if (!isObject2(scaleConf)) {
              return console.error(`Invalid scale configuration for scale: ${id}`);
            }
            if (scaleConf._proxy) {
              return console.warn(`Ignoring resolver passed as options for scale: ${id}`);
            }
            const axis = determineAxis(id, scaleConf);
            const defaultId = getDefaultScaleIDFromAxis(axis, chartIndexAxis);
            const defaultScaleOptions = chartDefaults.scales || {};
            firstIDs[axis] = firstIDs[axis] || id;
            scales2[id] = mergeIf(Object.create(null), [{ axis }, scaleConf, defaultScaleOptions[axis], defaultScaleOptions[defaultId]]);
          });
          config.data.datasets.forEach((dataset) => {
            const type = dataset.type || config.type;
            const indexAxis = dataset.indexAxis || getIndexAxis(type, options);
            const datasetDefaults = overrides[type] || {};
            const defaultScaleOptions = datasetDefaults.scales || {};
            Object.keys(defaultScaleOptions).forEach((defaultID) => {
              const axis = getAxisFromDefaultScaleID(defaultID, indexAxis);
              const id = dataset[axis + "AxisID"] || firstIDs[axis] || axis;
              scales2[id] = scales2[id] || Object.create(null);
              mergeIf(scales2[id], [{ axis }, configScales[id], defaultScaleOptions[defaultID]]);
            });
          });
          Object.keys(scales2).forEach((key) => {
            const scale = scales2[key];
            mergeIf(scale, [defaults.scales[scale.type], defaults.scale]);
          });
          return scales2;
        }
        function initOptions(config) {
          const options = config.options || (config.options = {});
          options.plugins = valueOrDefault(options.plugins, {});
          options.scales = mergeScaleConfig(config, options);
        }
        function initData(data) {
          data = data || {};
          data.datasets = data.datasets || [];
          data.labels = data.labels || [];
          return data;
        }
        function initConfig(config) {
          config = config || {};
          config.data = initData(config.data);
          initOptions(config);
          return config;
        }
        const keyCache = /* @__PURE__ */ new Map();
        const keysCached = /* @__PURE__ */ new Set();
        function cachedKeys(cacheKey, generate) {
          let keys = keyCache.get(cacheKey);
          if (!keys) {
            keys = generate();
            keyCache.set(cacheKey, keys);
            keysCached.add(keys);
          }
          return keys;
        }
        const addIfFound = (set2, obj, key) => {
          const opts = resolveObjectKey(obj, key);
          if (opts !== void 0) {
            set2.add(opts);
          }
        };
        class Config {
          constructor(config) {
            this._config = initConfig(config);
            this._scopeCache = /* @__PURE__ */ new Map();
            this._resolverCache = /* @__PURE__ */ new Map();
          }
          get platform() {
            return this._config.platform;
          }
          get type() {
            return this._config.type;
          }
          set type(type) {
            this._config.type = type;
          }
          get data() {
            return this._config.data;
          }
          set data(data) {
            this._config.data = initData(data);
          }
          get options() {
            return this._config.options;
          }
          set options(options) {
            this._config.options = options;
          }
          get plugins() {
            return this._config.plugins;
          }
          update() {
            const config = this._config;
            this.clearCache();
            initOptions(config);
          }
          clearCache() {
            this._scopeCache.clear();
            this._resolverCache.clear();
          }
          datasetScopeKeys(datasetType) {
            return cachedKeys(datasetType, () => [[
              `datasets.${datasetType}`,
              ""
            ]]);
          }
          datasetAnimationScopeKeys(datasetType, transition) {
            return cachedKeys(`${datasetType}.transition.${transition}`, () => [
              [
                `datasets.${datasetType}.transitions.${transition}`,
                `transitions.${transition}`
              ],
              [
                `datasets.${datasetType}`,
                ""
              ]
            ]);
          }
          datasetElementScopeKeys(datasetType, elementType) {
            return cachedKeys(`${datasetType}-${elementType}`, () => [[
              `datasets.${datasetType}.elements.${elementType}`,
              `datasets.${datasetType}`,
              `elements.${elementType}`,
              ""
            ]]);
          }
          pluginScopeKeys(plugin) {
            const id = plugin.id;
            const type = this.type;
            return cachedKeys(`${type}-plugin-${id}`, () => [[
              `plugins.${id}`,
              ...plugin.additionalOptionScopes || []
            ]]);
          }
          _cachedScopes(mainScope, resetCache) {
            const _scopeCache = this._scopeCache;
            let cache = _scopeCache.get(mainScope);
            if (!cache || resetCache) {
              cache = /* @__PURE__ */ new Map();
              _scopeCache.set(mainScope, cache);
            }
            return cache;
          }
          getOptionScopes(mainScope, keyLists, resetCache) {
            const { options, type } = this;
            const cache = this._cachedScopes(mainScope, resetCache);
            const cached = cache.get(keyLists);
            if (cached) {
              return cached;
            }
            const scopes = /* @__PURE__ */ new Set();
            keyLists.forEach((keys) => {
              if (mainScope) {
                scopes.add(mainScope);
                keys.forEach((key) => addIfFound(scopes, mainScope, key));
              }
              keys.forEach((key) => addIfFound(scopes, options, key));
              keys.forEach((key) => addIfFound(scopes, overrides[type] || {}, key));
              keys.forEach((key) => addIfFound(scopes, defaults, key));
              keys.forEach((key) => addIfFound(scopes, descriptors, key));
            });
            const array = Array.from(scopes);
            if (array.length === 0) {
              array.push(Object.create(null));
            }
            if (keysCached.has(keyLists)) {
              cache.set(keyLists, array);
            }
            return array;
          }
          chartOptionScopes() {
            const { options, type } = this;
            return [
              options,
              overrides[type] || {},
              defaults.datasets[type] || {},
              { type },
              defaults,
              descriptors
            ];
          }
          resolveNamedOptions(scopes, names2, context, prefixes = [""]) {
            const result = { $shared: true };
            const { resolver, subPrefixes } = getResolver(this._resolverCache, scopes, prefixes);
            let options = resolver;
            if (needContext(resolver, names2)) {
              result.$shared = false;
              context = isFunction(context) ? context() : context;
              const subResolver = this.createResolver(scopes, context, subPrefixes);
              options = _attachContext(resolver, context, subResolver);
            }
            for (const prop of names2) {
              result[prop] = options[prop];
            }
            return result;
          }
          createResolver(scopes, context, prefixes = [""], descriptorDefaults) {
            const { resolver } = getResolver(this._resolverCache, scopes, prefixes);
            return isObject2(context) ? _attachContext(resolver, context, void 0, descriptorDefaults) : resolver;
          }
        }
        function getResolver(resolverCache, scopes, prefixes) {
          let cache = resolverCache.get(scopes);
          if (!cache) {
            cache = /* @__PURE__ */ new Map();
            resolverCache.set(scopes, cache);
          }
          const cacheKey = prefixes.join();
          let cached = cache.get(cacheKey);
          if (!cached) {
            const resolver = _createResolver(scopes, prefixes);
            cached = {
              resolver,
              subPrefixes: prefixes.filter((p) => !p.toLowerCase().includes("hover"))
            };
            cache.set(cacheKey, cached);
          }
          return cached;
        }
        const hasFunction = (value) => isObject2(value) && Object.getOwnPropertyNames(value).reduce((acc, key) => acc || isFunction(value[key]), false);
        function needContext(proxy, names2) {
          const { isScriptable, isIndexable } = _descriptors(proxy);
          for (const prop of names2) {
            const scriptable = isScriptable(prop);
            const indexable = isIndexable(prop);
            const value = (indexable || scriptable) && proxy[prop];
            if (scriptable && (isFunction(value) || hasFunction(value)) || indexable && isArray(value)) {
              return true;
            }
          }
          return false;
        }
        var version = "3.8.0";
        const KNOWN_POSITIONS = ["top", "bottom", "left", "right", "chartArea"];
        function positionIsHorizontal(position, axis) {
          return position === "top" || position === "bottom" || KNOWN_POSITIONS.indexOf(position) === -1 && axis === "x";
        }
        function compare2Level(l1, l2) {
          return function(a, b) {
            return a[l1] === b[l1] ? a[l2] - b[l2] : a[l1] - b[l1];
          };
        }
        function onAnimationsComplete(context) {
          const chart2 = context.chart;
          const animationOptions2 = chart2.options.animation;
          chart2.notifyPlugins("afterRender");
          callback(animationOptions2 && animationOptions2.onComplete, [context], chart2);
        }
        function onAnimationProgress(context) {
          const chart2 = context.chart;
          const animationOptions2 = chart2.options.animation;
          callback(animationOptions2 && animationOptions2.onProgress, [context], chart2);
        }
        function getCanvas(item) {
          if (_isDomSupported() && typeof item === "string") {
            item = document.getElementById(item);
          } else if (item && item.length) {
            item = item[0];
          }
          if (item && item.canvas) {
            item = item.canvas;
          }
          return item;
        }
        const instances = {};
        const getChart = (key) => {
          const canvas = getCanvas(key);
          return Object.values(instances).filter((c) => c.canvas === canvas).pop();
        };
        function moveNumericKeys(obj, start, move) {
          const keys = Object.keys(obj);
          for (const key of keys) {
            const intKey = +key;
            if (intKey >= start) {
              const value = obj[key];
              delete obj[key];
              if (move > 0 || intKey > start) {
                obj[intKey + move] = value;
              }
            }
          }
        }
        function determineLastEvent(e, lastEvent, inChartArea, isClick) {
          if (!inChartArea || e.type === "mouseout") {
            return null;
          }
          if (isClick) {
            return lastEvent;
          }
          return e;
        }
        class Chart3 {
          constructor(item, userConfig) {
            const config = this.config = new Config(userConfig);
            const initialCanvas = getCanvas(item);
            const existingChart = getChart(initialCanvas);
            if (existingChart) {
              throw new Error("Canvas is already in use. Chart with ID '" + existingChart.id + "' must be destroyed before the canvas can be reused.");
            }
            const options = config.createResolver(config.chartOptionScopes(), this.getContext());
            this.platform = new (config.platform || _detectPlatform(initialCanvas))();
            this.platform.updateConfig(config);
            const context = this.platform.acquireContext(initialCanvas, options.aspectRatio);
            const canvas = context && context.canvas;
            const height = canvas && canvas.height;
            const width = canvas && canvas.width;
            this.id = uid();
            this.ctx = context;
            this.canvas = canvas;
            this.width = width;
            this.height = height;
            this._options = options;
            this._aspectRatio = this.aspectRatio;
            this._layers = [];
            this._metasets = [];
            this._stacks = void 0;
            this.boxes = [];
            this.currentDevicePixelRatio = void 0;
            this.chartArea = void 0;
            this._active = [];
            this._lastEvent = void 0;
            this._listeners = {};
            this._responsiveListeners = void 0;
            this._sortedMetasets = [];
            this.scales = {};
            this._plugins = new PluginService();
            this.$proxies = {};
            this._hiddenIndices = {};
            this.attached = false;
            this._animationsDisabled = void 0;
            this.$context = void 0;
            this._doResize = debounce((mode) => this.update(mode), options.resizeDelay || 0);
            this._dataChanges = [];
            instances[this.id] = this;
            if (!context || !canvas) {
              console.error("Failed to create chart: can't acquire context from the given item");
              return;
            }
            animator.listen(this, "complete", onAnimationsComplete);
            animator.listen(this, "progress", onAnimationProgress);
            this._initialize();
            if (this.attached) {
              this.update();
            }
          }
          get aspectRatio() {
            const { options: { aspectRatio, maintainAspectRatio }, width, height, _aspectRatio } = this;
            if (!isNullOrUndef(aspectRatio)) {
              return aspectRatio;
            }
            if (maintainAspectRatio && _aspectRatio) {
              return _aspectRatio;
            }
            return height ? width / height : null;
          }
          get data() {
            return this.config.data;
          }
          set data(data) {
            this.config.data = data;
          }
          get options() {
            return this._options;
          }
          set options(options) {
            this.config.options = options;
          }
          _initialize() {
            this.notifyPlugins("beforeInit");
            if (this.options.responsive) {
              this.resize();
            } else {
              retinaScale(this, this.options.devicePixelRatio);
            }
            this.bindEvents();
            this.notifyPlugins("afterInit");
            return this;
          }
          clear() {
            clearCanvas(this.canvas, this.ctx);
            return this;
          }
          stop() {
            animator.stop(this);
            return this;
          }
          resize(width, height) {
            if (!animator.running(this)) {
              this._resize(width, height);
            } else {
              this._resizeBeforeDraw = { width, height };
            }
          }
          _resize(width, height) {
            const options = this.options;
            const canvas = this.canvas;
            const aspectRatio = options.maintainAspectRatio && this.aspectRatio;
            const newSize = this.platform.getMaximumSize(canvas, width, height, aspectRatio);
            const newRatio = options.devicePixelRatio || this.platform.getDevicePixelRatio();
            const mode = this.width ? "resize" : "attach";
            this.width = newSize.width;
            this.height = newSize.height;
            this._aspectRatio = this.aspectRatio;
            if (!retinaScale(this, newRatio, true)) {
              return;
            }
            this.notifyPlugins("resize", { size: newSize });
            callback(options.onResize, [this, newSize], this);
            if (this.attached) {
              if (this._doResize(mode)) {
                this.render();
              }
            }
          }
          ensureScalesHaveIDs() {
            const options = this.options;
            const scalesOptions = options.scales || {};
            each(scalesOptions, (axisOptions, axisID) => {
              axisOptions.id = axisID;
            });
          }
          buildOrUpdateScales() {
            const options = this.options;
            const scaleOpts = options.scales;
            const scales2 = this.scales;
            const updated = Object.keys(scales2).reduce((obj, id) => {
              obj[id] = false;
              return obj;
            }, {});
            let items = [];
            if (scaleOpts) {
              items = items.concat(Object.keys(scaleOpts).map((id) => {
                const scaleOptions = scaleOpts[id];
                const axis = determineAxis(id, scaleOptions);
                const isRadial = axis === "r";
                const isHorizontal = axis === "x";
                return {
                  options: scaleOptions,
                  dposition: isRadial ? "chartArea" : isHorizontal ? "bottom" : "left",
                  dtype: isRadial ? "radialLinear" : isHorizontal ? "category" : "linear"
                };
              }));
            }
            each(items, (item) => {
              const scaleOptions = item.options;
              const id = scaleOptions.id;
              const axis = determineAxis(id, scaleOptions);
              const scaleType = valueOrDefault(scaleOptions.type, item.dtype);
              if (scaleOptions.position === void 0 || positionIsHorizontal(scaleOptions.position, axis) !== positionIsHorizontal(item.dposition)) {
                scaleOptions.position = item.dposition;
              }
              updated[id] = true;
              let scale = null;
              if (id in scales2 && scales2[id].type === scaleType) {
                scale = scales2[id];
              } else {
                const scaleClass = registry.getScale(scaleType);
                scale = new scaleClass({
                  id,
                  type: scaleType,
                  ctx: this.ctx,
                  chart: this
                });
                scales2[scale.id] = scale;
              }
              scale.init(scaleOptions, options);
            });
            each(updated, (hasUpdated, id) => {
              if (!hasUpdated) {
                delete scales2[id];
              }
            });
            each(scales2, (scale) => {
              layouts.configure(this, scale, scale.options);
              layouts.addBox(this, scale);
            });
          }
          _updateMetasets() {
            const metasets = this._metasets;
            const numData = this.data.datasets.length;
            const numMeta = metasets.length;
            metasets.sort((a, b) => a.index - b.index);
            if (numMeta > numData) {
              for (let i = numData; i < numMeta; ++i) {
                this._destroyDatasetMeta(i);
              }
              metasets.splice(numData, numMeta - numData);
            }
            this._sortedMetasets = metasets.slice(0).sort(compare2Level("order", "index"));
          }
          _removeUnreferencedMetasets() {
            const { _metasets: metasets, data: { datasets } } = this;
            if (metasets.length > datasets.length) {
              delete this._stacks;
            }
            metasets.forEach((meta, index2) => {
              if (datasets.filter((x) => x === meta._dataset).length === 0) {
                this._destroyDatasetMeta(index2);
              }
            });
          }
          buildOrUpdateControllers() {
            const newControllers = [];
            const datasets = this.data.datasets;
            let i, ilen;
            this._removeUnreferencedMetasets();
            for (i = 0, ilen = datasets.length; i < ilen; i++) {
              const dataset = datasets[i];
              let meta = this.getDatasetMeta(i);
              const type = dataset.type || this.config.type;
              if (meta.type && meta.type !== type) {
                this._destroyDatasetMeta(i);
                meta = this.getDatasetMeta(i);
              }
              meta.type = type;
              meta.indexAxis = dataset.indexAxis || getIndexAxis(type, this.options);
              meta.order = dataset.order || 0;
              meta.index = i;
              meta.label = "" + dataset.label;
              meta.visible = this.isDatasetVisible(i);
              if (meta.controller) {
                meta.controller.updateIndex(i);
                meta.controller.linkScales();
              } else {
                const ControllerClass = registry.getController(type);
                const { datasetElementType, dataElementType } = defaults.datasets[type];
                Object.assign(ControllerClass.prototype, {
                  dataElementType: registry.getElement(dataElementType),
                  datasetElementType: datasetElementType && registry.getElement(datasetElementType)
                });
                meta.controller = new ControllerClass(this, i);
                newControllers.push(meta.controller);
              }
            }
            this._updateMetasets();
            return newControllers;
          }
          _resetElements() {
            each(this.data.datasets, (dataset, datasetIndex) => {
              this.getDatasetMeta(datasetIndex).controller.reset();
            }, this);
          }
          reset() {
            this._resetElements();
            this.notifyPlugins("reset");
          }
          update(mode) {
            const config = this.config;
            config.update();
            const options = this._options = config.createResolver(config.chartOptionScopes(), this.getContext());
            const animsDisabled = this._animationsDisabled = !options.animation;
            this._updateScales();
            this._checkEventBindings();
            this._updateHiddenIndices();
            this._plugins.invalidate();
            if (this.notifyPlugins("beforeUpdate", { mode, cancelable: true }) === false) {
              return;
            }
            const newControllers = this.buildOrUpdateControllers();
            this.notifyPlugins("beforeElementsUpdate");
            let minPadding = 0;
            for (let i = 0, ilen = this.data.datasets.length; i < ilen; i++) {
              const { controller } = this.getDatasetMeta(i);
              const reset = !animsDisabled && newControllers.indexOf(controller) === -1;
              controller.buildOrUpdateElements(reset);
              minPadding = Math.max(+controller.getMaxOverflow(), minPadding);
            }
            minPadding = this._minPadding = options.layout.autoPadding ? minPadding : 0;
            this._updateLayout(minPadding);
            if (!animsDisabled) {
              each(newControllers, (controller) => {
                controller.reset();
              });
            }
            this._updateDatasets(mode);
            this.notifyPlugins("afterUpdate", { mode });
            this._layers.sort(compare2Level("z", "_idx"));
            const { _active, _lastEvent } = this;
            if (_lastEvent) {
              this._eventHandler(_lastEvent, true);
            } else if (_active.length) {
              this._updateHoverStyles(_active, _active, true);
            }
            this.render();
          }
          _updateScales() {
            each(this.scales, (scale) => {
              layouts.removeBox(this, scale);
            });
            this.ensureScalesHaveIDs();
            this.buildOrUpdateScales();
          }
          _checkEventBindings() {
            const options = this.options;
            const existingEvents = new Set(Object.keys(this._listeners));
            const newEvents = new Set(options.events);
            if (!setsEqual(existingEvents, newEvents) || !!this._responsiveListeners !== options.responsive) {
              this.unbindEvents();
              this.bindEvents();
            }
          }
          _updateHiddenIndices() {
            const { _hiddenIndices } = this;
            const changes = this._getUniformDataChanges() || [];
            for (const { method, start, count } of changes) {
              const move = method === "_removeElements" ? -count : count;
              moveNumericKeys(_hiddenIndices, start, move);
            }
          }
          _getUniformDataChanges() {
            const _dataChanges = this._dataChanges;
            if (!_dataChanges || !_dataChanges.length) {
              return;
            }
            this._dataChanges = [];
            const datasetCount = this.data.datasets.length;
            const makeSet = (idx) => new Set(_dataChanges.filter((c) => c[0] === idx).map((c, i) => i + "," + c.splice(1).join(",")));
            const changeSet = makeSet(0);
            for (let i = 1; i < datasetCount; i++) {
              if (!setsEqual(changeSet, makeSet(i))) {
                return;
              }
            }
            return Array.from(changeSet).map((c) => c.split(",")).map((a) => ({ method: a[1], start: +a[2], count: +a[3] }));
          }
          _updateLayout(minPadding) {
            if (this.notifyPlugins("beforeLayout", { cancelable: true }) === false) {
              return;
            }
            layouts.update(this, this.width, this.height, minPadding);
            const area = this.chartArea;
            const noArea = area.width <= 0 || area.height <= 0;
            this._layers = [];
            each(this.boxes, (box) => {
              if (noArea && box.position === "chartArea") {
                return;
              }
              if (box.configure) {
                box.configure();
              }
              this._layers.push(...box._layers());
            }, this);
            this._layers.forEach((item, index2) => {
              item._idx = index2;
            });
            this.notifyPlugins("afterLayout");
          }
          _updateDatasets(mode) {
            if (this.notifyPlugins("beforeDatasetsUpdate", { mode, cancelable: true }) === false) {
              return;
            }
            for (let i = 0, ilen = this.data.datasets.length; i < ilen; ++i) {
              this.getDatasetMeta(i).controller.configure();
            }
            for (let i = 0, ilen = this.data.datasets.length; i < ilen; ++i) {
              this._updateDataset(i, isFunction(mode) ? mode({ datasetIndex: i }) : mode);
            }
            this.notifyPlugins("afterDatasetsUpdate", { mode });
          }
          _updateDataset(index2, mode) {
            const meta = this.getDatasetMeta(index2);
            const args = { meta, index: index2, mode, cancelable: true };
            if (this.notifyPlugins("beforeDatasetUpdate", args) === false) {
              return;
            }
            meta.controller._update(mode);
            args.cancelable = false;
            this.notifyPlugins("afterDatasetUpdate", args);
          }
          render() {
            if (this.notifyPlugins("beforeRender", { cancelable: true }) === false) {
              return;
            }
            if (animator.has(this)) {
              if (this.attached && !animator.running(this)) {
                animator.start(this);
              }
            } else {
              this.draw();
              onAnimationsComplete({ chart: this });
            }
          }
          draw() {
            let i;
            if (this._resizeBeforeDraw) {
              const { width, height } = this._resizeBeforeDraw;
              this._resize(width, height);
              this._resizeBeforeDraw = null;
            }
            this.clear();
            if (this.width <= 0 || this.height <= 0) {
              return;
            }
            if (this.notifyPlugins("beforeDraw", { cancelable: true }) === false) {
              return;
            }
            const layers = this._layers;
            for (i = 0; i < layers.length && layers[i].z <= 0; ++i) {
              layers[i].draw(this.chartArea);
            }
            this._drawDatasets();
            for (; i < layers.length; ++i) {
              layers[i].draw(this.chartArea);
            }
            this.notifyPlugins("afterDraw");
          }
          _getSortedDatasetMetas(filterVisible) {
            const metasets = this._sortedMetasets;
            const result = [];
            let i, ilen;
            for (i = 0, ilen = metasets.length; i < ilen; ++i) {
              const meta = metasets[i];
              if (!filterVisible || meta.visible) {
                result.push(meta);
              }
            }
            return result;
          }
          getSortedVisibleDatasetMetas() {
            return this._getSortedDatasetMetas(true);
          }
          _drawDatasets() {
            if (this.notifyPlugins("beforeDatasetsDraw", { cancelable: true }) === false) {
              return;
            }
            const metasets = this.getSortedVisibleDatasetMetas();
            for (let i = metasets.length - 1; i >= 0; --i) {
              this._drawDataset(metasets[i]);
            }
            this.notifyPlugins("afterDatasetsDraw");
          }
          _drawDataset(meta) {
            const ctx = this.ctx;
            const clip = meta._clip;
            const useClip = !clip.disabled;
            const area = this.chartArea;
            const args = {
              meta,
              index: meta.index,
              cancelable: true
            };
            if (this.notifyPlugins("beforeDatasetDraw", args) === false) {
              return;
            }
            if (useClip) {
              clipArea(ctx, {
                left: clip.left === false ? 0 : area.left - clip.left,
                right: clip.right === false ? this.width : area.right + clip.right,
                top: clip.top === false ? 0 : area.top - clip.top,
                bottom: clip.bottom === false ? this.height : area.bottom + clip.bottom
              });
            }
            meta.controller.draw();
            if (useClip) {
              unclipArea(ctx);
            }
            args.cancelable = false;
            this.notifyPlugins("afterDatasetDraw", args);
          }
          isPointInArea(point) {
            return _isPointInArea(point, this.chartArea, this._minPadding);
          }
          getElementsAtEventForMode(e, mode, options, useFinalPosition) {
            const method = Interaction.modes[mode];
            if (typeof method === "function") {
              return method(this, e, options, useFinalPosition);
            }
            return [];
          }
          getDatasetMeta(datasetIndex) {
            const dataset = this.data.datasets[datasetIndex];
            const metasets = this._metasets;
            let meta = metasets.filter((x) => x && x._dataset === dataset).pop();
            if (!meta) {
              meta = {
                type: null,
                data: [],
                dataset: null,
                controller: null,
                hidden: null,
                xAxisID: null,
                yAxisID: null,
                order: dataset && dataset.order || 0,
                index: datasetIndex,
                _dataset: dataset,
                _parsed: [],
                _sorted: false
              };
              metasets.push(meta);
            }
            return meta;
          }
          getContext() {
            return this.$context || (this.$context = createContext(null, { chart: this, type: "chart" }));
          }
          getVisibleDatasetCount() {
            return this.getSortedVisibleDatasetMetas().length;
          }
          isDatasetVisible(datasetIndex) {
            const dataset = this.data.datasets[datasetIndex];
            if (!dataset) {
              return false;
            }
            const meta = this.getDatasetMeta(datasetIndex);
            return typeof meta.hidden === "boolean" ? !meta.hidden : !dataset.hidden;
          }
          setDatasetVisibility(datasetIndex, visible) {
            const meta = this.getDatasetMeta(datasetIndex);
            meta.hidden = !visible;
          }
          toggleDataVisibility(index2) {
            this._hiddenIndices[index2] = !this._hiddenIndices[index2];
          }
          getDataVisibility(index2) {
            return !this._hiddenIndices[index2];
          }
          _updateVisibility(datasetIndex, dataIndex, visible) {
            const mode = visible ? "show" : "hide";
            const meta = this.getDatasetMeta(datasetIndex);
            const anims = meta.controller._resolveAnimations(void 0, mode);
            if (defined(dataIndex)) {
              meta.data[dataIndex].hidden = !visible;
              this.update();
            } else {
              this.setDatasetVisibility(datasetIndex, visible);
              anims.update(meta, { visible });
              this.update((ctx) => ctx.datasetIndex === datasetIndex ? mode : void 0);
            }
          }
          hide(datasetIndex, dataIndex) {
            this._updateVisibility(datasetIndex, dataIndex, false);
          }
          show(datasetIndex, dataIndex) {
            this._updateVisibility(datasetIndex, dataIndex, true);
          }
          _destroyDatasetMeta(datasetIndex) {
            const meta = this._metasets[datasetIndex];
            if (meta && meta.controller) {
              meta.controller._destroy();
            }
            delete this._metasets[datasetIndex];
          }
          _stop() {
            let i, ilen;
            this.stop();
            animator.remove(this);
            for (i = 0, ilen = this.data.datasets.length; i < ilen; ++i) {
              this._destroyDatasetMeta(i);
            }
          }
          destroy() {
            this.notifyPlugins("beforeDestroy");
            const { canvas, ctx } = this;
            this._stop();
            this.config.clearCache();
            if (canvas) {
              this.unbindEvents();
              clearCanvas(canvas, ctx);
              this.platform.releaseContext(ctx);
              this.canvas = null;
              this.ctx = null;
            }
            this.notifyPlugins("destroy");
            delete instances[this.id];
            this.notifyPlugins("afterDestroy");
          }
          toBase64Image(...args) {
            return this.canvas.toDataURL(...args);
          }
          bindEvents() {
            this.bindUserEvents();
            if (this.options.responsive) {
              this.bindResponsiveEvents();
            } else {
              this.attached = true;
            }
          }
          bindUserEvents() {
            const listeners = this._listeners;
            const platform = this.platform;
            const _add = (type, listener2) => {
              platform.addEventListener(this, type, listener2);
              listeners[type] = listener2;
            };
            const listener = (e, x, y) => {
              e.offsetX = x;
              e.offsetY = y;
              this._eventHandler(e);
            };
            each(this.options.events, (type) => _add(type, listener));
          }
          bindResponsiveEvents() {
            if (!this._responsiveListeners) {
              this._responsiveListeners = {};
            }
            const listeners = this._responsiveListeners;
            const platform = this.platform;
            const _add = (type, listener2) => {
              platform.addEventListener(this, type, listener2);
              listeners[type] = listener2;
            };
            const _remove = (type, listener2) => {
              if (listeners[type]) {
                platform.removeEventListener(this, type, listener2);
                delete listeners[type];
              }
            };
            const listener = (width, height) => {
              if (this.canvas) {
                this.resize(width, height);
              }
            };
            let detached;
            const attached = () => {
              _remove("attach", attached);
              this.attached = true;
              this.resize();
              _add("resize", listener);
              _add("detach", detached);
            };
            detached = () => {
              this.attached = false;
              _remove("resize", listener);
              this._stop();
              this._resize(0, 0);
              _add("attach", attached);
            };
            if (platform.isAttached(this.canvas)) {
              attached();
            } else {
              detached();
            }
          }
          unbindEvents() {
            each(this._listeners, (listener, type) => {
              this.platform.removeEventListener(this, type, listener);
            });
            this._listeners = {};
            each(this._responsiveListeners, (listener, type) => {
              this.platform.removeEventListener(this, type, listener);
            });
            this._responsiveListeners = void 0;
          }
          updateHoverStyle(items, mode, enabled) {
            const prefix = enabled ? "set" : "remove";
            let meta, item, i, ilen;
            if (mode === "dataset") {
              meta = this.getDatasetMeta(items[0].datasetIndex);
              meta.controller["_" + prefix + "DatasetHoverStyle"]();
            }
            for (i = 0, ilen = items.length; i < ilen; ++i) {
              item = items[i];
              const controller = item && this.getDatasetMeta(item.datasetIndex).controller;
              if (controller) {
                controller[prefix + "HoverStyle"](item.element, item.datasetIndex, item.index);
              }
            }
          }
          getActiveElements() {
            return this._active || [];
          }
          setActiveElements(activeElements) {
            const lastActive = this._active || [];
            const active = activeElements.map(({ datasetIndex, index: index2 }) => {
              const meta = this.getDatasetMeta(datasetIndex);
              if (!meta) {
                throw new Error("No dataset found at index " + datasetIndex);
              }
              return {
                datasetIndex,
                element: meta.data[index2],
                index: index2
              };
            });
            const changed = !_elementsEqual(active, lastActive);
            if (changed) {
              this._active = active;
              this._lastEvent = null;
              this._updateHoverStyles(active, lastActive);
            }
          }
          notifyPlugins(hook, args, filter) {
            return this._plugins.notify(this, hook, args, filter);
          }
          _updateHoverStyles(active, lastActive, replay) {
            const hoverOptions = this.options.hover;
            const diff = (a, b) => a.filter((x) => !b.some((y) => x.datasetIndex === y.datasetIndex && x.index === y.index));
            const deactivated = diff(lastActive, active);
            const activated = replay ? active : diff(active, lastActive);
            if (deactivated.length) {
              this.updateHoverStyle(deactivated, hoverOptions.mode, false);
            }
            if (activated.length && hoverOptions.mode) {
              this.updateHoverStyle(activated, hoverOptions.mode, true);
            }
          }
          _eventHandler(e, replay) {
            const args = {
              event: e,
              replay,
              cancelable: true,
              inChartArea: this.isPointInArea(e)
            };
            const eventFilter = (plugin) => (plugin.options.events || this.options.events).includes(e.native.type);
            if (this.notifyPlugins("beforeEvent", args, eventFilter) === false) {
              return;
            }
            const changed = this._handleEvent(e, replay, args.inChartArea);
            args.cancelable = false;
            this.notifyPlugins("afterEvent", args, eventFilter);
            if (changed || args.changed) {
              this.render();
            }
            return this;
          }
          _handleEvent(e, replay, inChartArea) {
            const { _active: lastActive = [], options } = this;
            const useFinalPosition = replay;
            const active = this._getActiveElements(e, lastActive, inChartArea, useFinalPosition);
            const isClick = _isClickEvent(e);
            const lastEvent = determineLastEvent(e, this._lastEvent, inChartArea, isClick);
            if (inChartArea) {
              this._lastEvent = null;
              callback(options.onHover, [e, active, this], this);
              if (isClick) {
                callback(options.onClick, [e, active, this], this);
              }
            }
            const changed = !_elementsEqual(active, lastActive);
            if (changed || replay) {
              this._active = active;
              this._updateHoverStyles(active, lastActive, replay);
            }
            this._lastEvent = lastEvent;
            return changed;
          }
          _getActiveElements(e, lastActive, inChartArea, useFinalPosition) {
            if (e.type === "mouseout") {
              return [];
            }
            if (!inChartArea) {
              return lastActive;
            }
            const hoverOptions = this.options.hover;
            return this.getElementsAtEventForMode(e, hoverOptions.mode, hoverOptions, useFinalPosition);
          }
        }
        const invalidatePlugins = () => each(Chart3.instances, (chart2) => chart2._plugins.invalidate());
        const enumerable = true;
        Object.defineProperties(Chart3, {
          defaults: {
            enumerable,
            value: defaults
          },
          instances: {
            enumerable,
            value: instances
          },
          overrides: {
            enumerable,
            value: overrides
          },
          registry: {
            enumerable,
            value: registry
          },
          version: {
            enumerable,
            value: version
          },
          getChart: {
            enumerable,
            value: getChart
          },
          register: {
            enumerable,
            value: (...items) => {
              registry.add(...items);
              invalidatePlugins();
            }
          },
          unregister: {
            enumerable,
            value: (...items) => {
              registry.remove(...items);
              invalidatePlugins();
            }
          }
        });
        function abstract() {
          throw new Error("This method is not implemented: Check that a complete date adapter is provided.");
        }
        class DateAdapter {
          constructor(options) {
            this.options = options || {};
          }
          formats() {
            return abstract();
          }
          parse(value, format) {
            return abstract();
          }
          format(timestamp, format) {
            return abstract();
          }
          add(timestamp, amount, unit) {
            return abstract();
          }
          diff(a, b, unit) {
            return abstract();
          }
          startOf(timestamp, unit, weekday) {
            return abstract();
          }
          endOf(timestamp, unit) {
            return abstract();
          }
        }
        DateAdapter.override = function(members) {
          Object.assign(DateAdapter.prototype, members);
        };
        var _adapters = {
          _date: DateAdapter
        };
        function getAllScaleValues(scale, type) {
          if (!scale._cache.$bar) {
            const visibleMetas = scale.getMatchingVisibleMetas(type);
            let values = [];
            for (let i = 0, ilen = visibleMetas.length; i < ilen; i++) {
              values = values.concat(visibleMetas[i].controller.getAllParsedValues(scale));
            }
            scale._cache.$bar = _arrayUnique(values.sort((a, b) => a - b));
          }
          return scale._cache.$bar;
        }
        function computeMinSampleSize(meta) {
          const scale = meta.iScale;
          const values = getAllScaleValues(scale, meta.type);
          let min = scale._length;
          let i, ilen, curr, prev;
          const updateMinAndPrev = () => {
            if (curr === 32767 || curr === -32768) {
              return;
            }
            if (defined(prev)) {
              min = Math.min(min, Math.abs(curr - prev) || min);
            }
            prev = curr;
          };
          for (i = 0, ilen = values.length; i < ilen; ++i) {
            curr = scale.getPixelForValue(values[i]);
            updateMinAndPrev();
          }
          prev = void 0;
          for (i = 0, ilen = scale.ticks.length; i < ilen; ++i) {
            curr = scale.getPixelForTick(i);
            updateMinAndPrev();
          }
          return min;
        }
        function computeFitCategoryTraits(index2, ruler, options, stackCount) {
          const thickness = options.barThickness;
          let size, ratio;
          if (isNullOrUndef(thickness)) {
            size = ruler.min * options.categoryPercentage;
            ratio = options.barPercentage;
          } else {
            size = thickness * stackCount;
            ratio = 1;
          }
          return {
            chunk: size / stackCount,
            ratio,
            start: ruler.pixels[index2] - size / 2
          };
        }
        function computeFlexCategoryTraits(index2, ruler, options, stackCount) {
          const pixels = ruler.pixels;
          const curr = pixels[index2];
          let prev = index2 > 0 ? pixels[index2 - 1] : null;
          let next = index2 < pixels.length - 1 ? pixels[index2 + 1] : null;
          const percent = options.categoryPercentage;
          if (prev === null) {
            prev = curr - (next === null ? ruler.end - ruler.start : next - curr);
          }
          if (next === null) {
            next = curr + curr - prev;
          }
          const start = curr - (curr - Math.min(prev, next)) / 2 * percent;
          const size = Math.abs(next - prev) / 2 * percent;
          return {
            chunk: size / stackCount,
            ratio: options.barPercentage,
            start
          };
        }
        function parseFloatBar(entry, item, vScale, i) {
          const startValue = vScale.parse(entry[0], i);
          const endValue = vScale.parse(entry[1], i);
          const min = Math.min(startValue, endValue);
          const max = Math.max(startValue, endValue);
          let barStart = min;
          let barEnd = max;
          if (Math.abs(min) > Math.abs(max)) {
            barStart = max;
            barEnd = min;
          }
          item[vScale.axis] = barEnd;
          item._custom = {
            barStart,
            barEnd,
            start: startValue,
            end: endValue,
            min,
            max
          };
        }
        function parseValue(entry, item, vScale, i) {
          if (isArray(entry)) {
            parseFloatBar(entry, item, vScale, i);
          } else {
            item[vScale.axis] = vScale.parse(entry, i);
          }
          return item;
        }
        function parseArrayOrPrimitive(meta, data, start, count) {
          const iScale = meta.iScale;
          const vScale = meta.vScale;
          const labels = iScale.getLabels();
          const singleScale = iScale === vScale;
          const parsed = [];
          let i, ilen, item, entry;
          for (i = start, ilen = start + count; i < ilen; ++i) {
            entry = data[i];
            item = {};
            item[iScale.axis] = singleScale || iScale.parse(labels[i], i);
            parsed.push(parseValue(entry, item, vScale, i));
          }
          return parsed;
        }
        function isFloatBar(custom) {
          return custom && custom.barStart !== void 0 && custom.barEnd !== void 0;
        }
        function barSign(size, vScale, actualBase) {
          if (size !== 0) {
            return sign(size);
          }
          return (vScale.isHorizontal() ? 1 : -1) * (vScale.min >= actualBase ? 1 : -1);
        }
        function borderProps(properties) {
          let reverse, start, end, top, bottom;
          if (properties.horizontal) {
            reverse = properties.base > properties.x;
            start = "left";
            end = "right";
          } else {
            reverse = properties.base < properties.y;
            start = "bottom";
            end = "top";
          }
          if (reverse) {
            top = "end";
            bottom = "start";
          } else {
            top = "start";
            bottom = "end";
          }
          return { start, end, reverse, top, bottom };
        }
        function setBorderSkipped(properties, options, stack, index2) {
          let edge = options.borderSkipped;
          const res = {};
          if (!edge) {
            properties.borderSkipped = res;
            return;
          }
          const { start, end, reverse, top, bottom } = borderProps(properties);
          if (edge === "middle" && stack) {
            properties.enableBorderRadius = true;
            if ((stack._top || 0) === index2) {
              edge = top;
            } else if ((stack._bottom || 0) === index2) {
              edge = bottom;
            } else {
              res[parseEdge(bottom, start, end, reverse)] = true;
              edge = top;
            }
          }
          res[parseEdge(edge, start, end, reverse)] = true;
          properties.borderSkipped = res;
        }
        function parseEdge(edge, a, b, reverse) {
          if (reverse) {
            edge = swap(edge, a, b);
            edge = startEnd(edge, b, a);
          } else {
            edge = startEnd(edge, a, b);
          }
          return edge;
        }
        function swap(orig, v1, v2) {
          return orig === v1 ? v2 : orig === v2 ? v1 : orig;
        }
        function startEnd(v, start, end) {
          return v === "start" ? start : v === "end" ? end : v;
        }
        function setInflateAmount(properties, { inflateAmount }, ratio) {
          properties.inflateAmount = inflateAmount === "auto" ? ratio === 1 ? 0.33 : 0 : inflateAmount;
        }
        class BarController extends DatasetController {
          parsePrimitiveData(meta, data, start, count) {
            return parseArrayOrPrimitive(meta, data, start, count);
          }
          parseArrayData(meta, data, start, count) {
            return parseArrayOrPrimitive(meta, data, start, count);
          }
          parseObjectData(meta, data, start, count) {
            const { iScale, vScale } = meta;
            const { xAxisKey = "x", yAxisKey = "y" } = this._parsing;
            const iAxisKey = iScale.axis === "x" ? xAxisKey : yAxisKey;
            const vAxisKey = vScale.axis === "x" ? xAxisKey : yAxisKey;
            const parsed = [];
            let i, ilen, item, obj;
            for (i = start, ilen = start + count; i < ilen; ++i) {
              obj = data[i];
              item = {};
              item[iScale.axis] = iScale.parse(resolveObjectKey(obj, iAxisKey), i);
              parsed.push(parseValue(resolveObjectKey(obj, vAxisKey), item, vScale, i));
            }
            return parsed;
          }
          updateRangeFromParsed(range2, scale, parsed, stack) {
            super.updateRangeFromParsed(range2, scale, parsed, stack);
            const custom = parsed._custom;
            if (custom && scale === this._cachedMeta.vScale) {
              range2.min = Math.min(range2.min, custom.min);
              range2.max = Math.max(range2.max, custom.max);
            }
          }
          getMaxOverflow() {
            return 0;
          }
          getLabelAndValue(index2) {
            const meta = this._cachedMeta;
            const { iScale, vScale } = meta;
            const parsed = this.getParsed(index2);
            const custom = parsed._custom;
            const value = isFloatBar(custom) ? "[" + custom.start + ", " + custom.end + "]" : "" + vScale.getLabelForValue(parsed[vScale.axis]);
            return {
              label: "" + iScale.getLabelForValue(parsed[iScale.axis]),
              value
            };
          }
          initialize() {
            this.enableOptionSharing = true;
            super.initialize();
            const meta = this._cachedMeta;
            meta.stack = this.getDataset().stack;
          }
          update(mode) {
            const meta = this._cachedMeta;
            this.updateElements(meta.data, 0, meta.data.length, mode);
          }
          updateElements(bars, start, count, mode) {
            const reset = mode === "reset";
            const { index: index2, _cachedMeta: { vScale } } = this;
            const base = vScale.getBasePixel();
            const horizontal = vScale.isHorizontal();
            const ruler = this._getRuler();
            const firstOpts = this.resolveDataElementOptions(start, mode);
            const sharedOptions = this.getSharedOptions(firstOpts);
            const includeOptions = this.includeOptions(mode, sharedOptions);
            this.updateSharedOptions(sharedOptions, mode, firstOpts);
            for (let i = start; i < start + count; i++) {
              const parsed = this.getParsed(i);
              const vpixels = reset || isNullOrUndef(parsed[vScale.axis]) ? { base, head: base } : this._calculateBarValuePixels(i);
              const ipixels = this._calculateBarIndexPixels(i, ruler);
              const stack = (parsed._stacks || {})[vScale.axis];
              const properties = {
                horizontal,
                base: vpixels.base,
                enableBorderRadius: !stack || isFloatBar(parsed._custom) || (index2 === stack._top || index2 === stack._bottom),
                x: horizontal ? vpixels.head : ipixels.center,
                y: horizontal ? ipixels.center : vpixels.head,
                height: horizontal ? ipixels.size : Math.abs(vpixels.size),
                width: horizontal ? Math.abs(vpixels.size) : ipixels.size
              };
              if (includeOptions) {
                properties.options = sharedOptions || this.resolveDataElementOptions(i, bars[i].active ? "active" : mode);
              }
              const options = properties.options || bars[i].options;
              setBorderSkipped(properties, options, stack, index2);
              setInflateAmount(properties, options, ruler.ratio);
              this.updateElement(bars[i], i, properties, mode);
            }
          }
          _getStacks(last, dataIndex) {
            const meta = this._cachedMeta;
            const iScale = meta.iScale;
            const metasets = iScale.getMatchingVisibleMetas(this._type);
            const stacked = iScale.options.stacked;
            const ilen = metasets.length;
            const stacks = [];
            let i, item;
            for (i = 0; i < ilen; ++i) {
              item = metasets[i];
              if (!item.controller.options.grouped) {
                continue;
              }
              if (typeof dataIndex !== "undefined") {
                const val = item.controller.getParsed(dataIndex)[item.controller._cachedMeta.vScale.axis];
                if (isNullOrUndef(val) || isNaN(val)) {
                  continue;
                }
              }
              if (stacked === false || stacks.indexOf(item.stack) === -1 || stacked === void 0 && item.stack === void 0) {
                stacks.push(item.stack);
              }
              if (item.index === last) {
                break;
              }
            }
            if (!stacks.length) {
              stacks.push(void 0);
            }
            return stacks;
          }
          _getStackCount(index2) {
            return this._getStacks(void 0, index2).length;
          }
          _getStackIndex(datasetIndex, name, dataIndex) {
            const stacks = this._getStacks(datasetIndex, dataIndex);
            const index2 = name !== void 0 ? stacks.indexOf(name) : -1;
            return index2 === -1 ? stacks.length - 1 : index2;
          }
          _getRuler() {
            const opts = this.options;
            const meta = this._cachedMeta;
            const iScale = meta.iScale;
            const pixels = [];
            let i, ilen;
            for (i = 0, ilen = meta.data.length; i < ilen; ++i) {
              pixels.push(iScale.getPixelForValue(this.getParsed(i)[iScale.axis], i));
            }
            const barThickness = opts.barThickness;
            const min = barThickness || computeMinSampleSize(meta);
            return {
              min,
              pixels,
              start: iScale._startPixel,
              end: iScale._endPixel,
              stackCount: this._getStackCount(),
              scale: iScale,
              grouped: opts.grouped,
              ratio: barThickness ? 1 : opts.categoryPercentage * opts.barPercentage
            };
          }
          _calculateBarValuePixels(index2) {
            const { _cachedMeta: { vScale, _stacked }, options: { base: baseValue, minBarLength } } = this;
            const actualBase = baseValue || 0;
            const parsed = this.getParsed(index2);
            const custom = parsed._custom;
            const floating = isFloatBar(custom);
            let value = parsed[vScale.axis];
            let start = 0;
            let length = _stacked ? this.applyStack(vScale, parsed, _stacked) : value;
            let head, size;
            if (length !== value) {
              start = length - value;
              length = value;
            }
            if (floating) {
              value = custom.barStart;
              length = custom.barEnd - custom.barStart;
              if (value !== 0 && sign(value) !== sign(custom.barEnd)) {
                start = 0;
              }
              start += value;
            }
            const startValue = !isNullOrUndef(baseValue) && !floating ? baseValue : start;
            let base = vScale.getPixelForValue(startValue);
            if (this.chart.getDataVisibility(index2)) {
              head = vScale.getPixelForValue(start + length);
            } else {
              head = base;
            }
            size = head - base;
            if (Math.abs(size) < minBarLength) {
              size = barSign(size, vScale, actualBase) * minBarLength;
              if (value === actualBase) {
                base -= size / 2;
              }
              const startPixel = vScale.getPixelForDecimal(0);
              const endPixel = vScale.getPixelForDecimal(1);
              const min = Math.min(startPixel, endPixel);
              const max = Math.max(startPixel, endPixel);
              base = Math.max(Math.min(base, max), min);
              head = base + size;
            }
            if (base === vScale.getPixelForValue(actualBase)) {
              const halfGrid = sign(size) * vScale.getLineWidthForValue(actualBase) / 2;
              base += halfGrid;
              size -= halfGrid;
            }
            return {
              size,
              base,
              head,
              center: head + size / 2
            };
          }
          _calculateBarIndexPixels(index2, ruler) {
            const scale = ruler.scale;
            const options = this.options;
            const skipNull = options.skipNull;
            const maxBarThickness = valueOrDefault(options.maxBarThickness, Infinity);
            let center, size;
            if (ruler.grouped) {
              const stackCount = skipNull ? this._getStackCount(index2) : ruler.stackCount;
              const range2 = options.barThickness === "flex" ? computeFlexCategoryTraits(index2, ruler, options, stackCount) : computeFitCategoryTraits(index2, ruler, options, stackCount);
              const stackIndex = this._getStackIndex(this.index, this._cachedMeta.stack, skipNull ? index2 : void 0);
              center = range2.start + range2.chunk * stackIndex + range2.chunk / 2;
              size = Math.min(maxBarThickness, range2.chunk * range2.ratio);
            } else {
              center = scale.getPixelForValue(this.getParsed(index2)[scale.axis], index2);
              size = Math.min(maxBarThickness, ruler.min * ruler.ratio);
            }
            return {
              base: center - size / 2,
              head: center + size / 2,
              center,
              size
            };
          }
          draw() {
            const meta = this._cachedMeta;
            const vScale = meta.vScale;
            const rects = meta.data;
            const ilen = rects.length;
            let i = 0;
            for (; i < ilen; ++i) {
              if (this.getParsed(i)[vScale.axis] !== null) {
                rects[i].draw(this._ctx);
              }
            }
          }
        }
        BarController.id = "bar";
        BarController.defaults = {
          datasetElementType: false,
          dataElementType: "bar",
          categoryPercentage: 0.8,
          barPercentage: 0.9,
          grouped: true,
          animations: {
            numbers: {
              type: "number",
              properties: ["x", "y", "base", "width", "height"]
            }
          }
        };
        BarController.overrides = {
          scales: {
            _index_: {
              type: "category",
              offset: true,
              grid: {
                offset: true
              }
            },
            _value_: {
              type: "linear",
              beginAtZero: true
            }
          }
        };
        class BubbleController extends DatasetController {
          initialize() {
            this.enableOptionSharing = true;
            super.initialize();
          }
          parsePrimitiveData(meta, data, start, count) {
            const parsed = super.parsePrimitiveData(meta, data, start, count);
            for (let i = 0; i < parsed.length; i++) {
              parsed[i]._custom = this.resolveDataElementOptions(i + start).radius;
            }
            return parsed;
          }
          parseArrayData(meta, data, start, count) {
            const parsed = super.parseArrayData(meta, data, start, count);
            for (let i = 0; i < parsed.length; i++) {
              const item = data[start + i];
              parsed[i]._custom = valueOrDefault(item[2], this.resolveDataElementOptions(i + start).radius);
            }
            return parsed;
          }
          parseObjectData(meta, data, start, count) {
            const parsed = super.parseObjectData(meta, data, start, count);
            for (let i = 0; i < parsed.length; i++) {
              const item = data[start + i];
              parsed[i]._custom = valueOrDefault(item && item.r && +item.r, this.resolveDataElementOptions(i + start).radius);
            }
            return parsed;
          }
          getMaxOverflow() {
            const data = this._cachedMeta.data;
            let max = 0;
            for (let i = data.length - 1; i >= 0; --i) {
              max = Math.max(max, data[i].size(this.resolveDataElementOptions(i)) / 2);
            }
            return max > 0 && max;
          }
          getLabelAndValue(index2) {
            const meta = this._cachedMeta;
            const { xScale, yScale } = meta;
            const parsed = this.getParsed(index2);
            const x = xScale.getLabelForValue(parsed.x);
            const y = yScale.getLabelForValue(parsed.y);
            const r = parsed._custom;
            return {
              label: meta.label,
              value: "(" + x + ", " + y + (r ? ", " + r : "") + ")"
            };
          }
          update(mode) {
            const points = this._cachedMeta.data;
            this.updateElements(points, 0, points.length, mode);
          }
          updateElements(points, start, count, mode) {
            const reset = mode === "reset";
            const { iScale, vScale } = this._cachedMeta;
            const firstOpts = this.resolveDataElementOptions(start, mode);
            const sharedOptions = this.getSharedOptions(firstOpts);
            const includeOptions = this.includeOptions(mode, sharedOptions);
            const iAxis = iScale.axis;
            const vAxis = vScale.axis;
            for (let i = start; i < start + count; i++) {
              const point = points[i];
              const parsed = !reset && this.getParsed(i);
              const properties = {};
              const iPixel = properties[iAxis] = reset ? iScale.getPixelForDecimal(0.5) : iScale.getPixelForValue(parsed[iAxis]);
              const vPixel = properties[vAxis] = reset ? vScale.getBasePixel() : vScale.getPixelForValue(parsed[vAxis]);
              properties.skip = isNaN(iPixel) || isNaN(vPixel);
              if (includeOptions) {
                properties.options = this.resolveDataElementOptions(i, point.active ? "active" : mode);
                if (reset) {
                  properties.options.radius = 0;
                }
              }
              this.updateElement(point, i, properties, mode);
            }
            this.updateSharedOptions(sharedOptions, mode, firstOpts);
          }
          resolveDataElementOptions(index2, mode) {
            const parsed = this.getParsed(index2);
            let values = super.resolveDataElementOptions(index2, mode);
            if (values.$shared) {
              values = Object.assign({}, values, { $shared: false });
            }
            const radius = values.radius;
            if (mode !== "active") {
              values.radius = 0;
            }
            values.radius += valueOrDefault(parsed && parsed._custom, radius);
            return values;
          }
        }
        BubbleController.id = "bubble";
        BubbleController.defaults = {
          datasetElementType: false,
          dataElementType: "point",
          animations: {
            numbers: {
              type: "number",
              properties: ["x", "y", "borderWidth", "radius"]
            }
          }
        };
        BubbleController.overrides = {
          scales: {
            x: {
              type: "linear"
            },
            y: {
              type: "linear"
            }
          },
          plugins: {
            tooltip: {
              callbacks: {
                title() {
                  return "";
                }
              }
            }
          }
        };
        function getRatioAndOffset(rotation, circumference, cutout) {
          let ratioX = 1;
          let ratioY = 1;
          let offsetX = 0;
          let offsetY = 0;
          if (circumference < TAU) {
            const startAngle = rotation;
            const endAngle = startAngle + circumference;
            const startX = Math.cos(startAngle);
            const startY = Math.sin(startAngle);
            const endX = Math.cos(endAngle);
            const endY = Math.sin(endAngle);
            const calcMax = (angle, a, b) => _angleBetween(angle, startAngle, endAngle, true) ? 1 : Math.max(a, a * cutout, b, b * cutout);
            const calcMin = (angle, a, b) => _angleBetween(angle, startAngle, endAngle, true) ? -1 : Math.min(a, a * cutout, b, b * cutout);
            const maxX = calcMax(0, startX, endX);
            const maxY = calcMax(HALF_PI, startY, endY);
            const minX = calcMin(PI, startX, endX);
            const minY = calcMin(PI + HALF_PI, startY, endY);
            ratioX = (maxX - minX) / 2;
            ratioY = (maxY - minY) / 2;
            offsetX = -(maxX + minX) / 2;
            offsetY = -(maxY + minY) / 2;
          }
          return { ratioX, ratioY, offsetX, offsetY };
        }
        class DoughnutController extends DatasetController {
          constructor(chart2, datasetIndex) {
            super(chart2, datasetIndex);
            this.enableOptionSharing = true;
            this.innerRadius = void 0;
            this.outerRadius = void 0;
            this.offsetX = void 0;
            this.offsetY = void 0;
          }
          linkScales() {
          }
          parse(start, count) {
            const data = this.getDataset().data;
            const meta = this._cachedMeta;
            if (this._parsing === false) {
              meta._parsed = data;
            } else {
              let getter = (i2) => +data[i2];
              if (isObject2(data[start])) {
                const { key = "value" } = this._parsing;
                getter = (i2) => +resolveObjectKey(data[i2], key);
              }
              let i, ilen;
              for (i = start, ilen = start + count; i < ilen; ++i) {
                meta._parsed[i] = getter(i);
              }
            }
          }
          _getRotation() {
            return toRadians(this.options.rotation - 90);
          }
          _getCircumference() {
            return toRadians(this.options.circumference);
          }
          _getRotationExtents() {
            let min = TAU;
            let max = -TAU;
            for (let i = 0; i < this.chart.data.datasets.length; ++i) {
              if (this.chart.isDatasetVisible(i)) {
                const controller = this.chart.getDatasetMeta(i).controller;
                const rotation = controller._getRotation();
                const circumference = controller._getCircumference();
                min = Math.min(min, rotation);
                max = Math.max(max, rotation + circumference);
              }
            }
            return {
              rotation: min,
              circumference: max - min
            };
          }
          update(mode) {
            const chart2 = this.chart;
            const { chartArea } = chart2;
            const meta = this._cachedMeta;
            const arcs = meta.data;
            const spacing = this.getMaxBorderWidth() + this.getMaxOffset(arcs) + this.options.spacing;
            const maxSize = Math.max((Math.min(chartArea.width, chartArea.height) - spacing) / 2, 0);
            const cutout = Math.min(toPercentage(this.options.cutout, maxSize), 1);
            const chartWeight = this._getRingWeight(this.index);
            const { circumference, rotation } = this._getRotationExtents();
            const { ratioX, ratioY, offsetX, offsetY } = getRatioAndOffset(rotation, circumference, cutout);
            const maxWidth = (chartArea.width - spacing) / ratioX;
            const maxHeight = (chartArea.height - spacing) / ratioY;
            const maxRadius = Math.max(Math.min(maxWidth, maxHeight) / 2, 0);
            const outerRadius = toDimension(this.options.radius, maxRadius);
            const innerRadius = Math.max(outerRadius * cutout, 0);
            const radiusLength = (outerRadius - innerRadius) / this._getVisibleDatasetWeightTotal();
            this.offsetX = offsetX * outerRadius;
            this.offsetY = offsetY * outerRadius;
            meta.total = this.calculateTotal();
            this.outerRadius = outerRadius - radiusLength * this._getRingWeightOffset(this.index);
            this.innerRadius = Math.max(this.outerRadius - radiusLength * chartWeight, 0);
            this.updateElements(arcs, 0, arcs.length, mode);
          }
          _circumference(i, reset) {
            const opts = this.options;
            const meta = this._cachedMeta;
            const circumference = this._getCircumference();
            if (reset && opts.animation.animateRotate || !this.chart.getDataVisibility(i) || meta._parsed[i] === null || meta.data[i].hidden) {
              return 0;
            }
            return this.calculateCircumference(meta._parsed[i] * circumference / TAU);
          }
          updateElements(arcs, start, count, mode) {
            const reset = mode === "reset";
            const chart2 = this.chart;
            const chartArea = chart2.chartArea;
            const opts = chart2.options;
            const animationOpts = opts.animation;
            const centerX = (chartArea.left + chartArea.right) / 2;
            const centerY = (chartArea.top + chartArea.bottom) / 2;
            const animateScale = reset && animationOpts.animateScale;
            const innerRadius = animateScale ? 0 : this.innerRadius;
            const outerRadius = animateScale ? 0 : this.outerRadius;
            const firstOpts = this.resolveDataElementOptions(start, mode);
            const sharedOptions = this.getSharedOptions(firstOpts);
            const includeOptions = this.includeOptions(mode, sharedOptions);
            let startAngle = this._getRotation();
            let i;
            for (i = 0; i < start; ++i) {
              startAngle += this._circumference(i, reset);
            }
            for (i = start; i < start + count; ++i) {
              const circumference = this._circumference(i, reset);
              const arc = arcs[i];
              const properties = {
                x: centerX + this.offsetX,
                y: centerY + this.offsetY,
                startAngle,
                endAngle: startAngle + circumference,
                circumference,
                outerRadius,
                innerRadius
              };
              if (includeOptions) {
                properties.options = sharedOptions || this.resolveDataElementOptions(i, arc.active ? "active" : mode);
              }
              startAngle += circumference;
              this.updateElement(arc, i, properties, mode);
            }
            this.updateSharedOptions(sharedOptions, mode, firstOpts);
          }
          calculateTotal() {
            const meta = this._cachedMeta;
            const metaData = meta.data;
            let total = 0;
            let i;
            for (i = 0; i < metaData.length; i++) {
              const value = meta._parsed[i];
              if (value !== null && !isNaN(value) && this.chart.getDataVisibility(i) && !metaData[i].hidden) {
                total += Math.abs(value);
              }
            }
            return total;
          }
          calculateCircumference(value) {
            const total = this._cachedMeta.total;
            if (total > 0 && !isNaN(value)) {
              return TAU * (Math.abs(value) / total);
            }
            return 0;
          }
          getLabelAndValue(index2) {
            const meta = this._cachedMeta;
            const chart2 = this.chart;
            const labels = chart2.data.labels || [];
            const value = formatNumber(meta._parsed[index2], chart2.options.locale);
            return {
              label: labels[index2] || "",
              value
            };
          }
          getMaxBorderWidth(arcs) {
            let max = 0;
            const chart2 = this.chart;
            let i, ilen, meta, controller, options;
            if (!arcs) {
              for (i = 0, ilen = chart2.data.datasets.length; i < ilen; ++i) {
                if (chart2.isDatasetVisible(i)) {
                  meta = chart2.getDatasetMeta(i);
                  arcs = meta.data;
                  controller = meta.controller;
                  break;
                }
              }
            }
            if (!arcs) {
              return 0;
            }
            for (i = 0, ilen = arcs.length; i < ilen; ++i) {
              options = controller.resolveDataElementOptions(i);
              if (options.borderAlign !== "inner") {
                max = Math.max(max, options.borderWidth || 0, options.hoverBorderWidth || 0);
              }
            }
            return max;
          }
          getMaxOffset(arcs) {
            let max = 0;
            for (let i = 0, ilen = arcs.length; i < ilen; ++i) {
              const options = this.resolveDataElementOptions(i);
              max = Math.max(max, options.offset || 0, options.hoverOffset || 0);
            }
            return max;
          }
          _getRingWeightOffset(datasetIndex) {
            let ringWeightOffset = 0;
            for (let i = 0; i < datasetIndex; ++i) {
              if (this.chart.isDatasetVisible(i)) {
                ringWeightOffset += this._getRingWeight(i);
              }
            }
            return ringWeightOffset;
          }
          _getRingWeight(datasetIndex) {
            return Math.max(valueOrDefault(this.chart.data.datasets[datasetIndex].weight, 1), 0);
          }
          _getVisibleDatasetWeightTotal() {
            return this._getRingWeightOffset(this.chart.data.datasets.length) || 1;
          }
        }
        DoughnutController.id = "doughnut";
        DoughnutController.defaults = {
          datasetElementType: false,
          dataElementType: "arc",
          animation: {
            animateRotate: true,
            animateScale: false
          },
          animations: {
            numbers: {
              type: "number",
              properties: ["circumference", "endAngle", "innerRadius", "outerRadius", "startAngle", "x", "y", "offset", "borderWidth", "spacing"]
            }
          },
          cutout: "50%",
          rotation: 0,
          circumference: 360,
          radius: "100%",
          spacing: 0,
          indexAxis: "r"
        };
        DoughnutController.descriptors = {
          _scriptable: (name) => name !== "spacing",
          _indexable: (name) => name !== "spacing"
        };
        DoughnutController.overrides = {
          aspectRatio: 1,
          plugins: {
            legend: {
              labels: {
                generateLabels(chart2) {
                  const data = chart2.data;
                  if (data.labels.length && data.datasets.length) {
                    const { labels: { pointStyle } } = chart2.legend.options;
                    return data.labels.map((label, i) => {
                      const meta = chart2.getDatasetMeta(0);
                      const style = meta.controller.getStyle(i);
                      return {
                        text: label,
                        fillStyle: style.backgroundColor,
                        strokeStyle: style.borderColor,
                        lineWidth: style.borderWidth,
                        pointStyle,
                        hidden: !chart2.getDataVisibility(i),
                        index: i
                      };
                    });
                  }
                  return [];
                }
              },
              onClick(e, legendItem, legend) {
                legend.chart.toggleDataVisibility(legendItem.index);
                legend.chart.update();
              }
            },
            tooltip: {
              callbacks: {
                title() {
                  return "";
                },
                label(tooltipItem) {
                  let dataLabel = tooltipItem.label;
                  const value = ": " + tooltipItem.formattedValue;
                  if (isArray(dataLabel)) {
                    dataLabel = dataLabel.slice();
                    dataLabel[0] += value;
                  } else {
                    dataLabel += value;
                  }
                  return dataLabel;
                }
              }
            }
          }
        };
        class LineController extends DatasetController {
          initialize() {
            this.enableOptionSharing = true;
            this.supportsDecimation = true;
            super.initialize();
          }
          update(mode) {
            const meta = this._cachedMeta;
            const { dataset: line, data: points = [], _dataset } = meta;
            const animationsDisabled = this.chart._animationsDisabled;
            let { start, count } = getStartAndCountOfVisiblePoints(meta, points, animationsDisabled);
            this._drawStart = start;
            this._drawCount = count;
            if (scaleRangesChanged(meta)) {
              start = 0;
              count = points.length;
            }
            line._chart = this.chart;
            line._datasetIndex = this.index;
            line._decimated = !!_dataset._decimated;
            line.points = points;
            const options = this.resolveDatasetElementOptions(mode);
            if (!this.options.showLine) {
              options.borderWidth = 0;
            }
            options.segment = this.options.segment;
            this.updateElement(line, void 0, {
              animated: !animationsDisabled,
              options
            }, mode);
            this.updateElements(points, start, count, mode);
          }
          updateElements(points, start, count, mode) {
            const reset = mode === "reset";
            const { iScale, vScale, _stacked, _dataset } = this._cachedMeta;
            const firstOpts = this.resolveDataElementOptions(start, mode);
            const sharedOptions = this.getSharedOptions(firstOpts);
            const includeOptions = this.includeOptions(mode, sharedOptions);
            const iAxis = iScale.axis;
            const vAxis = vScale.axis;
            const { spanGaps, segment } = this.options;
            const maxGapLength = isNumber(spanGaps) ? spanGaps : Number.POSITIVE_INFINITY;
            const directUpdate = this.chart._animationsDisabled || reset || mode === "none";
            let prevParsed = start > 0 && this.getParsed(start - 1);
            for (let i = start; i < start + count; ++i) {
              const point = points[i];
              const parsed = this.getParsed(i);
              const properties = directUpdate ? point : {};
              const nullData = isNullOrUndef(parsed[vAxis]);
              const iPixel = properties[iAxis] = iScale.getPixelForValue(parsed[iAxis], i);
              const vPixel = properties[vAxis] = reset || nullData ? vScale.getBasePixel() : vScale.getPixelForValue(_stacked ? this.applyStack(vScale, parsed, _stacked) : parsed[vAxis], i);
              properties.skip = isNaN(iPixel) || isNaN(vPixel) || nullData;
              properties.stop = i > 0 && Math.abs(parsed[iAxis] - prevParsed[iAxis]) > maxGapLength;
              if (segment) {
                properties.parsed = parsed;
                properties.raw = _dataset.data[i];
              }
              if (includeOptions) {
                properties.options = sharedOptions || this.resolveDataElementOptions(i, point.active ? "active" : mode);
              }
              if (!directUpdate) {
                this.updateElement(point, i, properties, mode);
              }
              prevParsed = parsed;
            }
            this.updateSharedOptions(sharedOptions, mode, firstOpts);
          }
          getMaxOverflow() {
            const meta = this._cachedMeta;
            const dataset = meta.dataset;
            const border = dataset.options && dataset.options.borderWidth || 0;
            const data = meta.data || [];
            if (!data.length) {
              return border;
            }
            const firstPoint = data[0].size(this.resolveDataElementOptions(0));
            const lastPoint = data[data.length - 1].size(this.resolveDataElementOptions(data.length - 1));
            return Math.max(border, firstPoint, lastPoint) / 2;
          }
          draw() {
            const meta = this._cachedMeta;
            meta.dataset.updateControlPoints(this.chart.chartArea, meta.iScale.axis);
            super.draw();
          }
        }
        LineController.id = "line";
        LineController.defaults = {
          datasetElementType: "line",
          dataElementType: "point",
          showLine: true,
          spanGaps: false
        };
        LineController.overrides = {
          scales: {
            _index_: {
              type: "category"
            },
            _value_: {
              type: "linear"
            }
          }
        };
        function getStartAndCountOfVisiblePoints(meta, points, animationsDisabled) {
          const pointCount = points.length;
          let start = 0;
          let count = pointCount;
          if (meta._sorted) {
            const { iScale, _parsed } = meta;
            const axis = iScale.axis;
            const { min, max, minDefined, maxDefined } = iScale.getUserBounds();
            if (minDefined) {
              start = _limitValue(Math.min(_lookupByKey(_parsed, iScale.axis, min).lo, animationsDisabled ? pointCount : _lookupByKey(points, axis, iScale.getPixelForValue(min)).lo), 0, pointCount - 1);
            }
            if (maxDefined) {
              count = _limitValue(Math.max(_lookupByKey(_parsed, iScale.axis, max).hi + 1, animationsDisabled ? 0 : _lookupByKey(points, axis, iScale.getPixelForValue(max)).hi + 1), start, pointCount) - start;
            } else {
              count = pointCount - start;
            }
          }
          return { start, count };
        }
        function scaleRangesChanged(meta) {
          const { xScale, yScale, _scaleRanges } = meta;
          const newRanges = {
            xmin: xScale.min,
            xmax: xScale.max,
            ymin: yScale.min,
            ymax: yScale.max
          };
          if (!_scaleRanges) {
            meta._scaleRanges = newRanges;
            return true;
          }
          const changed = _scaleRanges.xmin !== xScale.min || _scaleRanges.xmax !== xScale.max || _scaleRanges.ymin !== yScale.min || _scaleRanges.ymax !== yScale.max;
          Object.assign(_scaleRanges, newRanges);
          return changed;
        }
        class PolarAreaController extends DatasetController {
          constructor(chart2, datasetIndex) {
            super(chart2, datasetIndex);
            this.innerRadius = void 0;
            this.outerRadius = void 0;
          }
          getLabelAndValue(index2) {
            const meta = this._cachedMeta;
            const chart2 = this.chart;
            const labels = chart2.data.labels || [];
            const value = formatNumber(meta._parsed[index2].r, chart2.options.locale);
            return {
              label: labels[index2] || "",
              value
            };
          }
          parseObjectData(meta, data, start, count) {
            return _parseObjectDataRadialScale.bind(this)(meta, data, start, count);
          }
          update(mode) {
            const arcs = this._cachedMeta.data;
            this._updateRadius();
            this.updateElements(arcs, 0, arcs.length, mode);
          }
          getMinMax() {
            const meta = this._cachedMeta;
            const range2 = { min: Number.POSITIVE_INFINITY, max: Number.NEGATIVE_INFINITY };
            meta.data.forEach((element, index2) => {
              const parsed = this.getParsed(index2).r;
              if (!isNaN(parsed) && this.chart.getDataVisibility(index2)) {
                if (parsed < range2.min) {
                  range2.min = parsed;
                }
                if (parsed > range2.max) {
                  range2.max = parsed;
                }
              }
            });
            return range2;
          }
          _updateRadius() {
            const chart2 = this.chart;
            const chartArea = chart2.chartArea;
            const opts = chart2.options;
            const minSize = Math.min(chartArea.right - chartArea.left, chartArea.bottom - chartArea.top);
            const outerRadius = Math.max(minSize / 2, 0);
            const innerRadius = Math.max(opts.cutoutPercentage ? outerRadius / 100 * opts.cutoutPercentage : 1, 0);
            const radiusLength = (outerRadius - innerRadius) / chart2.getVisibleDatasetCount();
            this.outerRadius = outerRadius - radiusLength * this.index;
            this.innerRadius = this.outerRadius - radiusLength;
          }
          updateElements(arcs, start, count, mode) {
            const reset = mode === "reset";
            const chart2 = this.chart;
            const opts = chart2.options;
            const animationOpts = opts.animation;
            const scale = this._cachedMeta.rScale;
            const centerX = scale.xCenter;
            const centerY = scale.yCenter;
            const datasetStartAngle = scale.getIndexAngle(0) - 0.5 * PI;
            let angle = datasetStartAngle;
            let i;
            const defaultAngle = 360 / this.countVisibleElements();
            for (i = 0; i < start; ++i) {
              angle += this._computeAngle(i, mode, defaultAngle);
            }
            for (i = start; i < start + count; i++) {
              const arc = arcs[i];
              let startAngle = angle;
              let endAngle = angle + this._computeAngle(i, mode, defaultAngle);
              let outerRadius = chart2.getDataVisibility(i) ? scale.getDistanceFromCenterForValue(this.getParsed(i).r) : 0;
              angle = endAngle;
              if (reset) {
                if (animationOpts.animateScale) {
                  outerRadius = 0;
                }
                if (animationOpts.animateRotate) {
                  startAngle = endAngle = datasetStartAngle;
                }
              }
              const properties = {
                x: centerX,
                y: centerY,
                innerRadius: 0,
                outerRadius,
                startAngle,
                endAngle,
                options: this.resolveDataElementOptions(i, arc.active ? "active" : mode)
              };
              this.updateElement(arc, i, properties, mode);
            }
          }
          countVisibleElements() {
            const meta = this._cachedMeta;
            let count = 0;
            meta.data.forEach((element, index2) => {
              if (!isNaN(this.getParsed(index2).r) && this.chart.getDataVisibility(index2)) {
                count++;
              }
            });
            return count;
          }
          _computeAngle(index2, mode, defaultAngle) {
            return this.chart.getDataVisibility(index2) ? toRadians(this.resolveDataElementOptions(index2, mode).angle || defaultAngle) : 0;
          }
        }
        PolarAreaController.id = "polarArea";
        PolarAreaController.defaults = {
          dataElementType: "arc",
          animation: {
            animateRotate: true,
            animateScale: true
          },
          animations: {
            numbers: {
              type: "number",
              properties: ["x", "y", "startAngle", "endAngle", "innerRadius", "outerRadius"]
            }
          },
          indexAxis: "r",
          startAngle: 0
        };
        PolarAreaController.overrides = {
          aspectRatio: 1,
          plugins: {
            legend: {
              labels: {
                generateLabels(chart2) {
                  const data = chart2.data;
                  if (data.labels.length && data.datasets.length) {
                    const { labels: { pointStyle } } = chart2.legend.options;
                    return data.labels.map((label, i) => {
                      const meta = chart2.getDatasetMeta(0);
                      const style = meta.controller.getStyle(i);
                      return {
                        text: label,
                        fillStyle: style.backgroundColor,
                        strokeStyle: style.borderColor,
                        lineWidth: style.borderWidth,
                        pointStyle,
                        hidden: !chart2.getDataVisibility(i),
                        index: i
                      };
                    });
                  }
                  return [];
                }
              },
              onClick(e, legendItem, legend) {
                legend.chart.toggleDataVisibility(legendItem.index);
                legend.chart.update();
              }
            },
            tooltip: {
              callbacks: {
                title() {
                  return "";
                },
                label(context) {
                  return context.chart.data.labels[context.dataIndex] + ": " + context.formattedValue;
                }
              }
            }
          },
          scales: {
            r: {
              type: "radialLinear",
              angleLines: {
                display: false
              },
              beginAtZero: true,
              grid: {
                circular: true
              },
              pointLabels: {
                display: false
              },
              startAngle: 0
            }
          }
        };
        class PieController extends DoughnutController {
        }
        PieController.id = "pie";
        PieController.defaults = {
          cutout: 0,
          rotation: 0,
          circumference: 360,
          radius: "100%"
        };
        class RadarController extends DatasetController {
          getLabelAndValue(index2) {
            const vScale = this._cachedMeta.vScale;
            const parsed = this.getParsed(index2);
            return {
              label: vScale.getLabels()[index2],
              value: "" + vScale.getLabelForValue(parsed[vScale.axis])
            };
          }
          parseObjectData(meta, data, start, count) {
            return _parseObjectDataRadialScale.bind(this)(meta, data, start, count);
          }
          update(mode) {
            const meta = this._cachedMeta;
            const line = meta.dataset;
            const points = meta.data || [];
            const labels = meta.iScale.getLabels();
            line.points = points;
            if (mode !== "resize") {
              const options = this.resolveDatasetElementOptions(mode);
              if (!this.options.showLine) {
                options.borderWidth = 0;
              }
              const properties = {
                _loop: true,
                _fullLoop: labels.length === points.length,
                options
              };
              this.updateElement(line, void 0, properties, mode);
            }
            this.updateElements(points, 0, points.length, mode);
          }
          updateElements(points, start, count, mode) {
            const scale = this._cachedMeta.rScale;
            const reset = mode === "reset";
            for (let i = start; i < start + count; i++) {
              const point = points[i];
              const options = this.resolveDataElementOptions(i, point.active ? "active" : mode);
              const pointPosition = scale.getPointPositionForValue(i, this.getParsed(i).r);
              const x = reset ? scale.xCenter : pointPosition.x;
              const y = reset ? scale.yCenter : pointPosition.y;
              const properties = {
                x,
                y,
                angle: pointPosition.angle,
                skip: isNaN(x) || isNaN(y),
                options
              };
              this.updateElement(point, i, properties, mode);
            }
          }
        }
        RadarController.id = "radar";
        RadarController.defaults = {
          datasetElementType: "line",
          dataElementType: "point",
          indexAxis: "r",
          showLine: true,
          elements: {
            line: {
              fill: "start"
            }
          }
        };
        RadarController.overrides = {
          aspectRatio: 1,
          scales: {
            r: {
              type: "radialLinear"
            }
          }
        };
        class ScatterController extends LineController {
        }
        ScatterController.id = "scatter";
        ScatterController.defaults = {
          showLine: false,
          fill: false
        };
        ScatterController.overrides = {
          interaction: {
            mode: "point"
          },
          plugins: {
            tooltip: {
              callbacks: {
                title() {
                  return "";
                },
                label(item) {
                  return "(" + item.label + ", " + item.formattedValue + ")";
                }
              }
            }
          },
          scales: {
            x: {
              type: "linear"
            },
            y: {
              type: "linear"
            }
          }
        };
        var controllers = /* @__PURE__ */ Object.freeze({
          __proto__: null,
          BarController,
          BubbleController,
          DoughnutController,
          LineController,
          PolarAreaController,
          PieController,
          RadarController,
          ScatterController
        });
        function clipArc(ctx, element, endAngle) {
          const { startAngle, pixelMargin, x, y, outerRadius, innerRadius } = element;
          let angleMargin = pixelMargin / outerRadius;
          ctx.beginPath();
          ctx.arc(x, y, outerRadius, startAngle - angleMargin, endAngle + angleMargin);
          if (innerRadius > pixelMargin) {
            angleMargin = pixelMargin / innerRadius;
            ctx.arc(x, y, innerRadius, endAngle + angleMargin, startAngle - angleMargin, true);
          } else {
            ctx.arc(x, y, pixelMargin, endAngle + HALF_PI, startAngle - HALF_PI);
          }
          ctx.closePath();
          ctx.clip();
        }
        function toRadiusCorners(value) {
          return _readValueToProps(value, ["outerStart", "outerEnd", "innerStart", "innerEnd"]);
        }
        function parseBorderRadius$1(arc, innerRadius, outerRadius, angleDelta) {
          const o = toRadiusCorners(arc.options.borderRadius);
          const halfThickness = (outerRadius - innerRadius) / 2;
          const innerLimit = Math.min(halfThickness, angleDelta * innerRadius / 2);
          const computeOuterLimit = (val) => {
            const outerArcLimit = (outerRadius - Math.min(halfThickness, val)) * angleDelta / 2;
            return _limitValue(val, 0, Math.min(halfThickness, outerArcLimit));
          };
          return {
            outerStart: computeOuterLimit(o.outerStart),
            outerEnd: computeOuterLimit(o.outerEnd),
            innerStart: _limitValue(o.innerStart, 0, innerLimit),
            innerEnd: _limitValue(o.innerEnd, 0, innerLimit)
          };
        }
        function rThetaToXY(r, theta, x, y) {
          return {
            x: x + r * Math.cos(theta),
            y: y + r * Math.sin(theta)
          };
        }
        function pathArc(ctx, element, offset, spacing, end) {
          const { x, y, startAngle: start, pixelMargin, innerRadius: innerR } = element;
          const outerRadius = Math.max(element.outerRadius + spacing + offset - pixelMargin, 0);
          const innerRadius = innerR > 0 ? innerR + spacing + offset + pixelMargin : 0;
          let spacingOffset = 0;
          const alpha2 = end - start;
          if (spacing) {
            const noSpacingInnerRadius = innerR > 0 ? innerR - spacing : 0;
            const noSpacingOuterRadius = outerRadius > 0 ? outerRadius - spacing : 0;
            const avNogSpacingRadius = (noSpacingInnerRadius + noSpacingOuterRadius) / 2;
            const adjustedAngle = avNogSpacingRadius !== 0 ? alpha2 * avNogSpacingRadius / (avNogSpacingRadius + spacing) : alpha2;
            spacingOffset = (alpha2 - adjustedAngle) / 2;
          }
          const beta = Math.max(1e-3, alpha2 * outerRadius - offset / PI) / outerRadius;
          const angleOffset = (alpha2 - beta) / 2;
          const startAngle = start + angleOffset + spacingOffset;
          const endAngle = end - angleOffset - spacingOffset;
          const { outerStart, outerEnd, innerStart, innerEnd } = parseBorderRadius$1(element, innerRadius, outerRadius, endAngle - startAngle);
          const outerStartAdjustedRadius = outerRadius - outerStart;
          const outerEndAdjustedRadius = outerRadius - outerEnd;
          const outerStartAdjustedAngle = startAngle + outerStart / outerStartAdjustedRadius;
          const outerEndAdjustedAngle = endAngle - outerEnd / outerEndAdjustedRadius;
          const innerStartAdjustedRadius = innerRadius + innerStart;
          const innerEndAdjustedRadius = innerRadius + innerEnd;
          const innerStartAdjustedAngle = startAngle + innerStart / innerStartAdjustedRadius;
          const innerEndAdjustedAngle = endAngle - innerEnd / innerEndAdjustedRadius;
          ctx.beginPath();
          ctx.arc(x, y, outerRadius, outerStartAdjustedAngle, outerEndAdjustedAngle);
          if (outerEnd > 0) {
            const pCenter = rThetaToXY(outerEndAdjustedRadius, outerEndAdjustedAngle, x, y);
            ctx.arc(pCenter.x, pCenter.y, outerEnd, outerEndAdjustedAngle, endAngle + HALF_PI);
          }
          const p4 = rThetaToXY(innerEndAdjustedRadius, endAngle, x, y);
          ctx.lineTo(p4.x, p4.y);
          if (innerEnd > 0) {
            const pCenter = rThetaToXY(innerEndAdjustedRadius, innerEndAdjustedAngle, x, y);
            ctx.arc(pCenter.x, pCenter.y, innerEnd, endAngle + HALF_PI, innerEndAdjustedAngle + Math.PI);
          }
          ctx.arc(x, y, innerRadius, endAngle - innerEnd / innerRadius, startAngle + innerStart / innerRadius, true);
          if (innerStart > 0) {
            const pCenter = rThetaToXY(innerStartAdjustedRadius, innerStartAdjustedAngle, x, y);
            ctx.arc(pCenter.x, pCenter.y, innerStart, innerStartAdjustedAngle + Math.PI, startAngle - HALF_PI);
          }
          const p8 = rThetaToXY(outerStartAdjustedRadius, startAngle, x, y);
          ctx.lineTo(p8.x, p8.y);
          if (outerStart > 0) {
            const pCenter = rThetaToXY(outerStartAdjustedRadius, outerStartAdjustedAngle, x, y);
            ctx.arc(pCenter.x, pCenter.y, outerStart, startAngle - HALF_PI, outerStartAdjustedAngle);
          }
          ctx.closePath();
        }
        function drawArc(ctx, element, offset, spacing) {
          const { fullCircles, startAngle, circumference } = element;
          let endAngle = element.endAngle;
          if (fullCircles) {
            pathArc(ctx, element, offset, spacing, startAngle + TAU);
            for (let i = 0; i < fullCircles; ++i) {
              ctx.fill();
            }
            if (!isNaN(circumference)) {
              endAngle = startAngle + circumference % TAU;
              if (circumference % TAU === 0) {
                endAngle += TAU;
              }
            }
          }
          pathArc(ctx, element, offset, spacing, endAngle);
          ctx.fill();
          return endAngle;
        }
        function drawFullCircleBorders(ctx, element, inner) {
          const { x, y, startAngle, pixelMargin, fullCircles } = element;
          const outerRadius = Math.max(element.outerRadius - pixelMargin, 0);
          const innerRadius = element.innerRadius + pixelMargin;
          let i;
          if (inner) {
            clipArc(ctx, element, startAngle + TAU);
          }
          ctx.beginPath();
          ctx.arc(x, y, innerRadius, startAngle + TAU, startAngle, true);
          for (i = 0; i < fullCircles; ++i) {
            ctx.stroke();
          }
          ctx.beginPath();
          ctx.arc(x, y, outerRadius, startAngle, startAngle + TAU);
          for (i = 0; i < fullCircles; ++i) {
            ctx.stroke();
          }
        }
        function drawBorder(ctx, element, offset, spacing, endAngle) {
          const { options } = element;
          const { borderWidth, borderJoinStyle } = options;
          const inner = options.borderAlign === "inner";
          if (!borderWidth) {
            return;
          }
          if (inner) {
            ctx.lineWidth = borderWidth * 2;
            ctx.lineJoin = borderJoinStyle || "round";
          } else {
            ctx.lineWidth = borderWidth;
            ctx.lineJoin = borderJoinStyle || "bevel";
          }
          if (element.fullCircles) {
            drawFullCircleBorders(ctx, element, inner);
          }
          if (inner) {
            clipArc(ctx, element, endAngle);
          }
          pathArc(ctx, element, offset, spacing, endAngle);
          ctx.stroke();
        }
        class ArcElement extends Element2 {
          constructor(cfg) {
            super();
            this.options = void 0;
            this.circumference = void 0;
            this.startAngle = void 0;
            this.endAngle = void 0;
            this.innerRadius = void 0;
            this.outerRadius = void 0;
            this.pixelMargin = 0;
            this.fullCircles = 0;
            if (cfg) {
              Object.assign(this, cfg);
            }
          }
          inRange(chartX, chartY, useFinalPosition) {
            const point = this.getProps(["x", "y"], useFinalPosition);
            const { angle, distance } = getAngleFromPoint(point, { x: chartX, y: chartY });
            const { startAngle, endAngle, innerRadius, outerRadius, circumference } = this.getProps([
              "startAngle",
              "endAngle",
              "innerRadius",
              "outerRadius",
              "circumference"
            ], useFinalPosition);
            const rAdjust = this.options.spacing / 2;
            const _circumference = valueOrDefault(circumference, endAngle - startAngle);
            const betweenAngles = _circumference >= TAU || _angleBetween(angle, startAngle, endAngle);
            const withinRadius = _isBetween(distance, innerRadius + rAdjust, outerRadius + rAdjust);
            return betweenAngles && withinRadius;
          }
          getCenterPoint(useFinalPosition) {
            const { x, y, startAngle, endAngle, innerRadius, outerRadius } = this.getProps([
              "x",
              "y",
              "startAngle",
              "endAngle",
              "innerRadius",
              "outerRadius",
              "circumference"
            ], useFinalPosition);
            const { offset, spacing } = this.options;
            const halfAngle = (startAngle + endAngle) / 2;
            const halfRadius = (innerRadius + outerRadius + spacing + offset) / 2;
            return {
              x: x + Math.cos(halfAngle) * halfRadius,
              y: y + Math.sin(halfAngle) * halfRadius
            };
          }
          tooltipPosition(useFinalPosition) {
            return this.getCenterPoint(useFinalPosition);
          }
          draw(ctx) {
            const { options, circumference } = this;
            const offset = (options.offset || 0) / 2;
            const spacing = (options.spacing || 0) / 2;
            this.pixelMargin = options.borderAlign === "inner" ? 0.33 : 0;
            this.fullCircles = circumference > TAU ? Math.floor(circumference / TAU) : 0;
            if (circumference === 0 || this.innerRadius < 0 || this.outerRadius < 0) {
              return;
            }
            ctx.save();
            let radiusOffset = 0;
            if (offset) {
              radiusOffset = offset / 2;
              const halfAngle = (this.startAngle + this.endAngle) / 2;
              ctx.translate(Math.cos(halfAngle) * radiusOffset, Math.sin(halfAngle) * radiusOffset);
              if (this.circumference >= PI) {
                radiusOffset = offset;
              }
            }
            ctx.fillStyle = options.backgroundColor;
            ctx.strokeStyle = options.borderColor;
            const endAngle = drawArc(ctx, this, radiusOffset, spacing);
            drawBorder(ctx, this, radiusOffset, spacing, endAngle);
            ctx.restore();
          }
        }
        ArcElement.id = "arc";
        ArcElement.defaults = {
          borderAlign: "center",
          borderColor: "#fff",
          borderJoinStyle: void 0,
          borderRadius: 0,
          borderWidth: 2,
          offset: 0,
          spacing: 0,
          angle: void 0
        };
        ArcElement.defaultRoutes = {
          backgroundColor: "backgroundColor"
        };
        function setStyle(ctx, options, style = options) {
          ctx.lineCap = valueOrDefault(style.borderCapStyle, options.borderCapStyle);
          ctx.setLineDash(valueOrDefault(style.borderDash, options.borderDash));
          ctx.lineDashOffset = valueOrDefault(style.borderDashOffset, options.borderDashOffset);
          ctx.lineJoin = valueOrDefault(style.borderJoinStyle, options.borderJoinStyle);
          ctx.lineWidth = valueOrDefault(style.borderWidth, options.borderWidth);
          ctx.strokeStyle = valueOrDefault(style.borderColor, options.borderColor);
        }
        function lineTo(ctx, previous, target) {
          ctx.lineTo(target.x, target.y);
        }
        function getLineMethod(options) {
          if (options.stepped) {
            return _steppedLineTo;
          }
          if (options.tension || options.cubicInterpolationMode === "monotone") {
            return _bezierCurveTo;
          }
          return lineTo;
        }
        function pathVars(points, segment, params = {}) {
          const count = points.length;
          const { start: paramsStart = 0, end: paramsEnd = count - 1 } = params;
          const { start: segmentStart, end: segmentEnd } = segment;
          const start = Math.max(paramsStart, segmentStart);
          const end = Math.min(paramsEnd, segmentEnd);
          const outside = paramsStart < segmentStart && paramsEnd < segmentStart || paramsStart > segmentEnd && paramsEnd > segmentEnd;
          return {
            count,
            start,
            loop: segment.loop,
            ilen: end < start && !outside ? count + end - start : end - start
          };
        }
        function pathSegment(ctx, line, segment, params) {
          const { points, options } = line;
          const { count, start, loop, ilen } = pathVars(points, segment, params);
          const lineMethod = getLineMethod(options);
          let { move = true, reverse } = params || {};
          let i, point, prev;
          for (i = 0; i <= ilen; ++i) {
            point = points[(start + (reverse ? ilen - i : i)) % count];
            if (point.skip) {
              continue;
            } else if (move) {
              ctx.moveTo(point.x, point.y);
              move = false;
            } else {
              lineMethod(ctx, prev, point, reverse, options.stepped);
            }
            prev = point;
          }
          if (loop) {
            point = points[(start + (reverse ? ilen : 0)) % count];
            lineMethod(ctx, prev, point, reverse, options.stepped);
          }
          return !!loop;
        }
        function fastPathSegment(ctx, line, segment, params) {
          const points = line.points;
          const { count, start, ilen } = pathVars(points, segment, params);
          const { move = true, reverse } = params || {};
          let avgX = 0;
          let countX = 0;
          let i, point, prevX, minY, maxY, lastY;
          const pointIndex = (index2) => (start + (reverse ? ilen - index2 : index2)) % count;
          const drawX = () => {
            if (minY !== maxY) {
              ctx.lineTo(avgX, maxY);
              ctx.lineTo(avgX, minY);
              ctx.lineTo(avgX, lastY);
            }
          };
          if (move) {
            point = points[pointIndex(0)];
            ctx.moveTo(point.x, point.y);
          }
          for (i = 0; i <= ilen; ++i) {
            point = points[pointIndex(i)];
            if (point.skip) {
              continue;
            }
            const x = point.x;
            const y = point.y;
            const truncX = x | 0;
            if (truncX === prevX) {
              if (y < minY) {
                minY = y;
              } else if (y > maxY) {
                maxY = y;
              }
              avgX = (countX * avgX + x) / ++countX;
            } else {
              drawX();
              ctx.lineTo(x, y);
              prevX = truncX;
              countX = 0;
              minY = maxY = y;
            }
            lastY = y;
          }
          drawX();
        }
        function _getSegmentMethod(line) {
          const opts = line.options;
          const borderDash = opts.borderDash && opts.borderDash.length;
          const useFastPath = !line._decimated && !line._loop && !opts.tension && opts.cubicInterpolationMode !== "monotone" && !opts.stepped && !borderDash;
          return useFastPath ? fastPathSegment : pathSegment;
        }
        function _getInterpolationMethod(options) {
          if (options.stepped) {
            return _steppedInterpolation;
          }
          if (options.tension || options.cubicInterpolationMode === "monotone") {
            return _bezierInterpolation;
          }
          return _pointInLine;
        }
        function strokePathWithCache(ctx, line, start, count) {
          let path = line._path;
          if (!path) {
            path = line._path = new Path2D();
            if (line.path(path, start, count)) {
              path.closePath();
            }
          }
          setStyle(ctx, line.options);
          ctx.stroke(path);
        }
        function strokePathDirect(ctx, line, start, count) {
          const { segments, options } = line;
          const segmentMethod = _getSegmentMethod(line);
          for (const segment of segments) {
            setStyle(ctx, options, segment.style);
            ctx.beginPath();
            if (segmentMethod(ctx, line, segment, { start, end: start + count - 1 })) {
              ctx.closePath();
            }
            ctx.stroke();
          }
        }
        const usePath2D = typeof Path2D === "function";
        function draw(ctx, line, start, count) {
          if (usePath2D && !line.options.segment) {
            strokePathWithCache(ctx, line, start, count);
          } else {
            strokePathDirect(ctx, line, start, count);
          }
        }
        class LineElement extends Element2 {
          constructor(cfg) {
            super();
            this.animated = true;
            this.options = void 0;
            this._chart = void 0;
            this._loop = void 0;
            this._fullLoop = void 0;
            this._path = void 0;
            this._points = void 0;
            this._segments = void 0;
            this._decimated = false;
            this._pointsUpdated = false;
            this._datasetIndex = void 0;
            if (cfg) {
              Object.assign(this, cfg);
            }
          }
          updateControlPoints(chartArea, indexAxis) {
            const options = this.options;
            if ((options.tension || options.cubicInterpolationMode === "monotone") && !options.stepped && !this._pointsUpdated) {
              const loop = options.spanGaps ? this._loop : this._fullLoop;
              _updateBezierControlPoints(this._points, options, chartArea, loop, indexAxis);
              this._pointsUpdated = true;
            }
          }
          set points(points) {
            this._points = points;
            delete this._segments;
            delete this._path;
            this._pointsUpdated = false;
          }
          get points() {
            return this._points;
          }
          get segments() {
            return this._segments || (this._segments = _computeSegments(this, this.options.segment));
          }
          first() {
            const segments = this.segments;
            const points = this.points;
            return segments.length && points[segments[0].start];
          }
          last() {
            const segments = this.segments;
            const points = this.points;
            const count = segments.length;
            return count && points[segments[count - 1].end];
          }
          interpolate(point, property) {
            const options = this.options;
            const value = point[property];
            const points = this.points;
            const segments = _boundSegments(this, { property, start: value, end: value });
            if (!segments.length) {
              return;
            }
            const result = [];
            const _interpolate = _getInterpolationMethod(options);
            let i, ilen;
            for (i = 0, ilen = segments.length; i < ilen; ++i) {
              const { start, end } = segments[i];
              const p1 = points[start];
              const p2 = points[end];
              if (p1 === p2) {
                result.push(p1);
                continue;
              }
              const t = Math.abs((value - p1[property]) / (p2[property] - p1[property]));
              const interpolated = _interpolate(p1, p2, t, options.stepped);
              interpolated[property] = point[property];
              result.push(interpolated);
            }
            return result.length === 1 ? result[0] : result;
          }
          pathSegment(ctx, segment, params) {
            const segmentMethod = _getSegmentMethod(this);
            return segmentMethod(ctx, this, segment, params);
          }
          path(ctx, start, count) {
            const segments = this.segments;
            const segmentMethod = _getSegmentMethod(this);
            let loop = this._loop;
            start = start || 0;
            count = count || this.points.length - start;
            for (const segment of segments) {
              loop &= segmentMethod(ctx, this, segment, { start, end: start + count - 1 });
            }
            return !!loop;
          }
          draw(ctx, chartArea, start, count) {
            const options = this.options || {};
            const points = this.points || [];
            if (points.length && options.borderWidth) {
              ctx.save();
              draw(ctx, this, start, count);
              ctx.restore();
            }
            if (this.animated) {
              this._pointsUpdated = false;
              this._path = void 0;
            }
          }
        }
        LineElement.id = "line";
        LineElement.defaults = {
          borderCapStyle: "butt",
          borderDash: [],
          borderDashOffset: 0,
          borderJoinStyle: "miter",
          borderWidth: 3,
          capBezierPoints: true,
          cubicInterpolationMode: "default",
          fill: false,
          spanGaps: false,
          stepped: false,
          tension: 0
        };
        LineElement.defaultRoutes = {
          backgroundColor: "backgroundColor",
          borderColor: "borderColor"
        };
        LineElement.descriptors = {
          _scriptable: true,
          _indexable: (name) => name !== "borderDash" && name !== "fill"
        };
        function inRange$1(el, pos, axis, useFinalPosition) {
          const options = el.options;
          const { [axis]: value } = el.getProps([axis], useFinalPosition);
          return Math.abs(pos - value) < options.radius + options.hitRadius;
        }
        class PointElement extends Element2 {
          constructor(cfg) {
            super();
            this.options = void 0;
            this.parsed = void 0;
            this.skip = void 0;
            this.stop = void 0;
            if (cfg) {
              Object.assign(this, cfg);
            }
          }
          inRange(mouseX, mouseY, useFinalPosition) {
            const options = this.options;
            const { x, y } = this.getProps(["x", "y"], useFinalPosition);
            return Math.pow(mouseX - x, 2) + Math.pow(mouseY - y, 2) < Math.pow(options.hitRadius + options.radius, 2);
          }
          inXRange(mouseX, useFinalPosition) {
            return inRange$1(this, mouseX, "x", useFinalPosition);
          }
          inYRange(mouseY, useFinalPosition) {
            return inRange$1(this, mouseY, "y", useFinalPosition);
          }
          getCenterPoint(useFinalPosition) {
            const { x, y } = this.getProps(["x", "y"], useFinalPosition);
            return { x, y };
          }
          size(options) {
            options = options || this.options || {};
            let radius = options.radius || 0;
            radius = Math.max(radius, radius && options.hoverRadius || 0);
            const borderWidth = radius && options.borderWidth || 0;
            return (radius + borderWidth) * 2;
          }
          draw(ctx, area) {
            const options = this.options;
            if (this.skip || options.radius < 0.1 || !_isPointInArea(this, area, this.size(options) / 2)) {
              return;
            }
            ctx.strokeStyle = options.borderColor;
            ctx.lineWidth = options.borderWidth;
            ctx.fillStyle = options.backgroundColor;
            drawPoint(ctx, options, this.x, this.y);
          }
          getRange() {
            const options = this.options || {};
            return options.radius + options.hitRadius;
          }
        }
        PointElement.id = "point";
        PointElement.defaults = {
          borderWidth: 1,
          hitRadius: 1,
          hoverBorderWidth: 1,
          hoverRadius: 4,
          pointStyle: "circle",
          radius: 3,
          rotation: 0
        };
        PointElement.defaultRoutes = {
          backgroundColor: "backgroundColor",
          borderColor: "borderColor"
        };
        function getBarBounds(bar, useFinalPosition) {
          const { x, y, base, width, height } = bar.getProps(["x", "y", "base", "width", "height"], useFinalPosition);
          let left, right, top, bottom, half;
          if (bar.horizontal) {
            half = height / 2;
            left = Math.min(x, base);
            right = Math.max(x, base);
            top = y - half;
            bottom = y + half;
          } else {
            half = width / 2;
            left = x - half;
            right = x + half;
            top = Math.min(y, base);
            bottom = Math.max(y, base);
          }
          return { left, top, right, bottom };
        }
        function skipOrLimit(skip2, value, min, max) {
          return skip2 ? 0 : _limitValue(value, min, max);
        }
        function parseBorderWidth(bar, maxW, maxH) {
          const value = bar.options.borderWidth;
          const skip2 = bar.borderSkipped;
          const o = toTRBL(value);
          return {
            t: skipOrLimit(skip2.top, o.top, 0, maxH),
            r: skipOrLimit(skip2.right, o.right, 0, maxW),
            b: skipOrLimit(skip2.bottom, o.bottom, 0, maxH),
            l: skipOrLimit(skip2.left, o.left, 0, maxW)
          };
        }
        function parseBorderRadius(bar, maxW, maxH) {
          const { enableBorderRadius } = bar.getProps(["enableBorderRadius"]);
          const value = bar.options.borderRadius;
          const o = toTRBLCorners(value);
          const maxR = Math.min(maxW, maxH);
          const skip2 = bar.borderSkipped;
          const enableBorder = enableBorderRadius || isObject2(value);
          return {
            topLeft: skipOrLimit(!enableBorder || skip2.top || skip2.left, o.topLeft, 0, maxR),
            topRight: skipOrLimit(!enableBorder || skip2.top || skip2.right, o.topRight, 0, maxR),
            bottomLeft: skipOrLimit(!enableBorder || skip2.bottom || skip2.left, o.bottomLeft, 0, maxR),
            bottomRight: skipOrLimit(!enableBorder || skip2.bottom || skip2.right, o.bottomRight, 0, maxR)
          };
        }
        function boundingRects(bar) {
          const bounds = getBarBounds(bar);
          const width = bounds.right - bounds.left;
          const height = bounds.bottom - bounds.top;
          const border = parseBorderWidth(bar, width / 2, height / 2);
          const radius = parseBorderRadius(bar, width / 2, height / 2);
          return {
            outer: {
              x: bounds.left,
              y: bounds.top,
              w: width,
              h: height,
              radius
            },
            inner: {
              x: bounds.left + border.l,
              y: bounds.top + border.t,
              w: width - border.l - border.r,
              h: height - border.t - border.b,
              radius: {
                topLeft: Math.max(0, radius.topLeft - Math.max(border.t, border.l)),
                topRight: Math.max(0, radius.topRight - Math.max(border.t, border.r)),
                bottomLeft: Math.max(0, radius.bottomLeft - Math.max(border.b, border.l)),
                bottomRight: Math.max(0, radius.bottomRight - Math.max(border.b, border.r))
              }
            }
          };
        }
        function inRange(bar, x, y, useFinalPosition) {
          const skipX = x === null;
          const skipY = y === null;
          const skipBoth = skipX && skipY;
          const bounds = bar && !skipBoth && getBarBounds(bar, useFinalPosition);
          return bounds && (skipX || _isBetween(x, bounds.left, bounds.right)) && (skipY || _isBetween(y, bounds.top, bounds.bottom));
        }
        function hasRadius(radius) {
          return radius.topLeft || radius.topRight || radius.bottomLeft || radius.bottomRight;
        }
        function addNormalRectPath(ctx, rect) {
          ctx.rect(rect.x, rect.y, rect.w, rect.h);
        }
        function inflateRect(rect, amount, refRect = {}) {
          const x = rect.x !== refRect.x ? -amount : 0;
          const y = rect.y !== refRect.y ? -amount : 0;
          const w = (rect.x + rect.w !== refRect.x + refRect.w ? amount : 0) - x;
          const h = (rect.y + rect.h !== refRect.y + refRect.h ? amount : 0) - y;
          return {
            x: rect.x + x,
            y: rect.y + y,
            w: rect.w + w,
            h: rect.h + h,
            radius: rect.radius
          };
        }
        class BarElement extends Element2 {
          constructor(cfg) {
            super();
            this.options = void 0;
            this.horizontal = void 0;
            this.base = void 0;
            this.width = void 0;
            this.height = void 0;
            this.inflateAmount = void 0;
            if (cfg) {
              Object.assign(this, cfg);
            }
          }
          draw(ctx) {
            const { inflateAmount, options: { borderColor, backgroundColor } } = this;
            const { inner, outer } = boundingRects(this);
            const addRectPath = hasRadius(outer.radius) ? addRoundedRectPath : addNormalRectPath;
            ctx.save();
            if (outer.w !== inner.w || outer.h !== inner.h) {
              ctx.beginPath();
              addRectPath(ctx, inflateRect(outer, inflateAmount, inner));
              ctx.clip();
              addRectPath(ctx, inflateRect(inner, -inflateAmount, outer));
              ctx.fillStyle = borderColor;
              ctx.fill("evenodd");
            }
            ctx.beginPath();
            addRectPath(ctx, inflateRect(inner, inflateAmount));
            ctx.fillStyle = backgroundColor;
            ctx.fill();
            ctx.restore();
          }
          inRange(mouseX, mouseY, useFinalPosition) {
            return inRange(this, mouseX, mouseY, useFinalPosition);
          }
          inXRange(mouseX, useFinalPosition) {
            return inRange(this, mouseX, null, useFinalPosition);
          }
          inYRange(mouseY, useFinalPosition) {
            return inRange(this, null, mouseY, useFinalPosition);
          }
          getCenterPoint(useFinalPosition) {
            const { x, y, base, horizontal } = this.getProps(["x", "y", "base", "horizontal"], useFinalPosition);
            return {
              x: horizontal ? (x + base) / 2 : x,
              y: horizontal ? y : (y + base) / 2
            };
          }
          getRange(axis) {
            return axis === "x" ? this.width / 2 : this.height / 2;
          }
        }
        BarElement.id = "bar";
        BarElement.defaults = {
          borderSkipped: "start",
          borderWidth: 0,
          borderRadius: 0,
          inflateAmount: "auto",
          pointStyle: void 0
        };
        BarElement.defaultRoutes = {
          backgroundColor: "backgroundColor",
          borderColor: "borderColor"
        };
        var elements = /* @__PURE__ */ Object.freeze({
          __proto__: null,
          ArcElement,
          LineElement,
          PointElement,
          BarElement
        });
        function lttbDecimation(data, start, count, availableWidth, options) {
          const samples = options.samples || availableWidth;
          if (samples >= count) {
            return data.slice(start, start + count);
          }
          const decimated = [];
          const bucketWidth = (count - 2) / (samples - 2);
          let sampledIndex = 0;
          const endIndex = start + count - 1;
          let a = start;
          let i, maxAreaPoint, maxArea, area, nextA;
          decimated[sampledIndex++] = data[a];
          for (i = 0; i < samples - 2; i++) {
            let avgX = 0;
            let avgY = 0;
            let j;
            const avgRangeStart = Math.floor((i + 1) * bucketWidth) + 1 + start;
            const avgRangeEnd = Math.min(Math.floor((i + 2) * bucketWidth) + 1, count) + start;
            const avgRangeLength = avgRangeEnd - avgRangeStart;
            for (j = avgRangeStart; j < avgRangeEnd; j++) {
              avgX += data[j].x;
              avgY += data[j].y;
            }
            avgX /= avgRangeLength;
            avgY /= avgRangeLength;
            const rangeOffs = Math.floor(i * bucketWidth) + 1 + start;
            const rangeTo = Math.min(Math.floor((i + 1) * bucketWidth) + 1, count) + start;
            const { x: pointAx, y: pointAy } = data[a];
            maxArea = area = -1;
            for (j = rangeOffs; j < rangeTo; j++) {
              area = 0.5 * Math.abs((pointAx - avgX) * (data[j].y - pointAy) - (pointAx - data[j].x) * (avgY - pointAy));
              if (area > maxArea) {
                maxArea = area;
                maxAreaPoint = data[j];
                nextA = j;
              }
            }
            decimated[sampledIndex++] = maxAreaPoint;
            a = nextA;
          }
          decimated[sampledIndex++] = data[endIndex];
          return decimated;
        }
        function minMaxDecimation(data, start, count, availableWidth) {
          let avgX = 0;
          let countX = 0;
          let i, point, x, y, prevX, minIndex, maxIndex, startIndex, minY, maxY;
          const decimated = [];
          const endIndex = start + count - 1;
          const xMin = data[start].x;
          const xMax = data[endIndex].x;
          const dx = xMax - xMin;
          for (i = start; i < start + count; ++i) {
            point = data[i];
            x = (point.x - xMin) / dx * availableWidth;
            y = point.y;
            const truncX = x | 0;
            if (truncX === prevX) {
              if (y < minY) {
                minY = y;
                minIndex = i;
              } else if (y > maxY) {
                maxY = y;
                maxIndex = i;
              }
              avgX = (countX * avgX + point.x) / ++countX;
            } else {
              const lastIndex = i - 1;
              if (!isNullOrUndef(minIndex) && !isNullOrUndef(maxIndex)) {
                const intermediateIndex1 = Math.min(minIndex, maxIndex);
                const intermediateIndex2 = Math.max(minIndex, maxIndex);
                if (intermediateIndex1 !== startIndex && intermediateIndex1 !== lastIndex) {
                  decimated.push(__spreadProps(__spreadValues({}, data[intermediateIndex1]), {
                    x: avgX
                  }));
                }
                if (intermediateIndex2 !== startIndex && intermediateIndex2 !== lastIndex) {
                  decimated.push(__spreadProps(__spreadValues({}, data[intermediateIndex2]), {
                    x: avgX
                  }));
                }
              }
              if (i > 0 && lastIndex !== startIndex) {
                decimated.push(data[lastIndex]);
              }
              decimated.push(point);
              prevX = truncX;
              countX = 0;
              minY = maxY = y;
              minIndex = maxIndex = startIndex = i;
            }
          }
          return decimated;
        }
        function cleanDecimatedDataset(dataset) {
          if (dataset._decimated) {
            const data = dataset._data;
            delete dataset._decimated;
            delete dataset._data;
            Object.defineProperty(dataset, "data", { value: data });
          }
        }
        function cleanDecimatedData(chart2) {
          chart2.data.datasets.forEach((dataset) => {
            cleanDecimatedDataset(dataset);
          });
        }
        function getStartAndCountOfVisiblePointsSimplified(meta, points) {
          const pointCount = points.length;
          let start = 0;
          let count;
          const { iScale } = meta;
          const { min, max, minDefined, maxDefined } = iScale.getUserBounds();
          if (minDefined) {
            start = _limitValue(_lookupByKey(points, iScale.axis, min).lo, 0, pointCount - 1);
          }
          if (maxDefined) {
            count = _limitValue(_lookupByKey(points, iScale.axis, max).hi + 1, start, pointCount) - start;
          } else {
            count = pointCount - start;
          }
          return { start, count };
        }
        var plugin_decimation = {
          id: "decimation",
          defaults: {
            algorithm: "min-max",
            enabled: false
          },
          beforeElementsUpdate: (chart2, args, options) => {
            if (!options.enabled) {
              cleanDecimatedData(chart2);
              return;
            }
            const availableWidth = chart2.width;
            chart2.data.datasets.forEach((dataset, datasetIndex) => {
              const { _data, indexAxis } = dataset;
              const meta = chart2.getDatasetMeta(datasetIndex);
              const data = _data || dataset.data;
              if (resolve([indexAxis, chart2.options.indexAxis]) === "y") {
                return;
              }
              if (!meta.controller.supportsDecimation) {
                return;
              }
              const xAxis = chart2.scales[meta.xAxisID];
              if (xAxis.type !== "linear" && xAxis.type !== "time") {
                return;
              }
              if (chart2.options.parsing) {
                return;
              }
              let { start, count } = getStartAndCountOfVisiblePointsSimplified(meta, data);
              const threshold = options.threshold || 4 * availableWidth;
              if (count <= threshold) {
                cleanDecimatedDataset(dataset);
                return;
              }
              if (isNullOrUndef(_data)) {
                dataset._data = data;
                delete dataset.data;
                Object.defineProperty(dataset, "data", {
                  configurable: true,
                  enumerable: true,
                  get: function() {
                    return this._decimated;
                  },
                  set: function(d) {
                    this._data = d;
                  }
                });
              }
              let decimated;
              switch (options.algorithm) {
                case "lttb":
                  decimated = lttbDecimation(data, start, count, availableWidth, options);
                  break;
                case "min-max":
                  decimated = minMaxDecimation(data, start, count, availableWidth);
                  break;
                default:
                  throw new Error(`Unsupported decimation algorithm '${options.algorithm}'`);
              }
              dataset._decimated = decimated;
            });
          },
          destroy(chart2) {
            cleanDecimatedData(chart2);
          }
        };
        function _segments(line, target, property) {
          const segments = line.segments;
          const points = line.points;
          const tpoints = target.points;
          const parts = [];
          for (const segment of segments) {
            let { start, end } = segment;
            end = _findSegmentEnd(start, end, points);
            const bounds = _getBounds(property, points[start], points[end], segment.loop);
            if (!target.segments) {
              parts.push({
                source: segment,
                target: bounds,
                start: points[start],
                end: points[end]
              });
              continue;
            }
            const targetSegments = _boundSegments(target, bounds);
            for (const tgt of targetSegments) {
              const subBounds = _getBounds(property, tpoints[tgt.start], tpoints[tgt.end], tgt.loop);
              const fillSources = _boundSegment(segment, points, subBounds);
              for (const fillSource of fillSources) {
                parts.push({
                  source: fillSource,
                  target: tgt,
                  start: {
                    [property]: _getEdge(bounds, subBounds, "start", Math.max)
                  },
                  end: {
                    [property]: _getEdge(bounds, subBounds, "end", Math.min)
                  }
                });
              }
            }
          }
          return parts;
        }
        function _getBounds(property, first, last, loop) {
          if (loop) {
            return;
          }
          let start = first[property];
          let end = last[property];
          if (property === "angle") {
            start = _normalizeAngle(start);
            end = _normalizeAngle(end);
          }
          return { property, start, end };
        }
        function _pointsFromSegments(boundary, line) {
          const { x = null, y = null } = boundary || {};
          const linePoints = line.points;
          const points = [];
          line.segments.forEach(({ start, end }) => {
            end = _findSegmentEnd(start, end, linePoints);
            const first = linePoints[start];
            const last = linePoints[end];
            if (y !== null) {
              points.push({ x: first.x, y });
              points.push({ x: last.x, y });
            } else if (x !== null) {
              points.push({ x, y: first.y });
              points.push({ x, y: last.y });
            }
          });
          return points;
        }
        function _findSegmentEnd(start, end, points) {
          for (; end > start; end--) {
            const point = points[end];
            if (!isNaN(point.x) && !isNaN(point.y)) {
              break;
            }
          }
          return end;
        }
        function _getEdge(a, b, prop, fn) {
          if (a && b) {
            return fn(a[prop], b[prop]);
          }
          return a ? a[prop] : b ? b[prop] : 0;
        }
        function _createBoundaryLine(boundary, line) {
          let points = [];
          let _loop = false;
          if (isArray(boundary)) {
            _loop = true;
            points = boundary;
          } else {
            points = _pointsFromSegments(boundary, line);
          }
          return points.length ? new LineElement({
            points,
            options: { tension: 0 },
            _loop,
            _fullLoop: _loop
          }) : null;
        }
        function _resolveTarget(sources, index2, propagate) {
          const source = sources[index2];
          let fill2 = source.fill;
          const visited = [index2];
          let target;
          if (!propagate) {
            return fill2;
          }
          while (fill2 !== false && visited.indexOf(fill2) === -1) {
            if (!isNumberFinite(fill2)) {
              return fill2;
            }
            target = sources[fill2];
            if (!target) {
              return false;
            }
            if (target.visible) {
              return fill2;
            }
            visited.push(fill2);
            fill2 = target.fill;
          }
          return false;
        }
        function _decodeFill(line, index2, count) {
          const fill2 = parseFillOption(line);
          if (isObject2(fill2)) {
            return isNaN(fill2.value) ? false : fill2;
          }
          let target = parseFloat(fill2);
          if (isNumberFinite(target) && Math.floor(target) === target) {
            return decodeTargetIndex(fill2[0], index2, target, count);
          }
          return ["origin", "start", "end", "stack", "shape"].indexOf(fill2) >= 0 && fill2;
        }
        function decodeTargetIndex(firstCh, index2, target, count) {
          if (firstCh === "-" || firstCh === "+") {
            target = index2 + target;
          }
          if (target === index2 || target < 0 || target >= count) {
            return false;
          }
          return target;
        }
        function _getTargetPixel(fill2, scale) {
          let pixel = null;
          if (fill2 === "start") {
            pixel = scale.bottom;
          } else if (fill2 === "end") {
            pixel = scale.top;
          } else if (isObject2(fill2)) {
            pixel = scale.getPixelForValue(fill2.value);
          } else if (scale.getBasePixel) {
            pixel = scale.getBasePixel();
          }
          return pixel;
        }
        function _getTargetValue(fill2, scale, startValue) {
          let value;
          if (fill2 === "start") {
            value = startValue;
          } else if (fill2 === "end") {
            value = scale.options.reverse ? scale.min : scale.max;
          } else if (isObject2(fill2)) {
            value = fill2.value;
          } else {
            value = scale.getBaseValue();
          }
          return value;
        }
        function parseFillOption(line) {
          const options = line.options;
          const fillOption = options.fill;
          let fill2 = valueOrDefault(fillOption && fillOption.target, fillOption);
          if (fill2 === void 0) {
            fill2 = !!options.backgroundColor;
          }
          if (fill2 === false || fill2 === null) {
            return false;
          }
          if (fill2 === true) {
            return "origin";
          }
          return fill2;
        }
        function _buildStackLine(source) {
          const { scale, index: index2, line } = source;
          const points = [];
          const segments = line.segments;
          const sourcePoints = line.points;
          const linesBelow = getLinesBelow(scale, index2);
          linesBelow.push(_createBoundaryLine({ x: null, y: scale.bottom }, line));
          for (let i = 0; i < segments.length; i++) {
            const segment = segments[i];
            for (let j = segment.start; j <= segment.end; j++) {
              addPointsBelow(points, sourcePoints[j], linesBelow);
            }
          }
          return new LineElement({ points, options: {} });
        }
        function getLinesBelow(scale, index2) {
          const below = [];
          const metas = scale.getMatchingVisibleMetas("line");
          for (let i = 0; i < metas.length; i++) {
            const meta = metas[i];
            if (meta.index === index2) {
              break;
            }
            if (!meta.hidden) {
              below.unshift(meta.dataset);
            }
          }
          return below;
        }
        function addPointsBelow(points, sourcePoint, linesBelow) {
          const postponed = [];
          for (let j = 0; j < linesBelow.length; j++) {
            const line = linesBelow[j];
            const { first, last, point } = findPoint(line, sourcePoint, "x");
            if (!point || first && last) {
              continue;
            }
            if (first) {
              postponed.unshift(point);
            } else {
              points.push(point);
              if (!last) {
                break;
              }
            }
          }
          points.push(...postponed);
        }
        function findPoint(line, sourcePoint, property) {
          const point = line.interpolate(sourcePoint, property);
          if (!point) {
            return {};
          }
          const pointValue = point[property];
          const segments = line.segments;
          const linePoints = line.points;
          let first = false;
          let last = false;
          for (let i = 0; i < segments.length; i++) {
            const segment = segments[i];
            const firstValue = linePoints[segment.start][property];
            const lastValue = linePoints[segment.end][property];
            if (_isBetween(pointValue, firstValue, lastValue)) {
              first = pointValue === firstValue;
              last = pointValue === lastValue;
              break;
            }
          }
          return { first, last, point };
        }
        class simpleArc {
          constructor(opts) {
            this.x = opts.x;
            this.y = opts.y;
            this.radius = opts.radius;
          }
          pathSegment(ctx, bounds, opts) {
            const { x, y, radius } = this;
            bounds = bounds || { start: 0, end: TAU };
            ctx.arc(x, y, radius, bounds.end, bounds.start, true);
            return !opts.bounds;
          }
          interpolate(point) {
            const { x, y, radius } = this;
            const angle = point.angle;
            return {
              x: x + Math.cos(angle) * radius,
              y: y + Math.sin(angle) * radius,
              angle
            };
          }
        }
        function _getTarget(source) {
          const { chart: chart2, fill: fill2, line } = source;
          if (isNumberFinite(fill2)) {
            return getLineByIndex(chart2, fill2);
          }
          if (fill2 === "stack") {
            return _buildStackLine(source);
          }
          if (fill2 === "shape") {
            return true;
          }
          const boundary = computeBoundary(source);
          if (boundary instanceof simpleArc) {
            return boundary;
          }
          return _createBoundaryLine(boundary, line);
        }
        function getLineByIndex(chart2, index2) {
          const meta = chart2.getDatasetMeta(index2);
          const visible = meta && chart2.isDatasetVisible(index2);
          return visible ? meta.dataset : null;
        }
        function computeBoundary(source) {
          const scale = source.scale || {};
          if (scale.getPointPositionForValue) {
            return computeCircularBoundary(source);
          }
          return computeLinearBoundary(source);
        }
        function computeLinearBoundary(source) {
          const { scale = {}, fill: fill2 } = source;
          const pixel = _getTargetPixel(fill2, scale);
          if (isNumberFinite(pixel)) {
            const horizontal = scale.isHorizontal();
            return {
              x: horizontal ? pixel : null,
              y: horizontal ? null : pixel
            };
          }
          return null;
        }
        function computeCircularBoundary(source) {
          const { scale, fill: fill2 } = source;
          const options = scale.options;
          const length = scale.getLabels().length;
          const start = options.reverse ? scale.max : scale.min;
          const value = _getTargetValue(fill2, scale, start);
          const target = [];
          if (options.grid.circular) {
            const center = scale.getPointPositionForValue(0, start);
            return new simpleArc({
              x: center.x,
              y: center.y,
              radius: scale.getDistanceFromCenterForValue(value)
            });
          }
          for (let i = 0; i < length; ++i) {
            target.push(scale.getPointPositionForValue(i, value));
          }
          return target;
        }
        function _drawfill(ctx, source, area) {
          const target = _getTarget(source);
          const { line, scale, axis } = source;
          const lineOpts = line.options;
          const fillOption = lineOpts.fill;
          const color2 = lineOpts.backgroundColor;
          const { above = color2, below = color2 } = fillOption || {};
          if (target && line.points.length) {
            clipArea(ctx, area);
            doFill(ctx, { line, target, above, below, area, scale, axis });
            unclipArea(ctx);
          }
        }
        function doFill(ctx, cfg) {
          const { line, target, above, below, area, scale } = cfg;
          const property = line._loop ? "angle" : cfg.axis;
          ctx.save();
          if (property === "x" && below !== above) {
            clipVertical(ctx, target, area.top);
            fill(ctx, { line, target, color: above, scale, property });
            ctx.restore();
            ctx.save();
            clipVertical(ctx, target, area.bottom);
          }
          fill(ctx, { line, target, color: below, scale, property });
          ctx.restore();
        }
        function clipVertical(ctx, target, clipY) {
          const { segments, points } = target;
          let first = true;
          let lineLoop = false;
          ctx.beginPath();
          for (const segment of segments) {
            const { start, end } = segment;
            const firstPoint = points[start];
            const lastPoint = points[_findSegmentEnd(start, end, points)];
            if (first) {
              ctx.moveTo(firstPoint.x, firstPoint.y);
              first = false;
            } else {
              ctx.lineTo(firstPoint.x, clipY);
              ctx.lineTo(firstPoint.x, firstPoint.y);
            }
            lineLoop = !!target.pathSegment(ctx, segment, { move: lineLoop });
            if (lineLoop) {
              ctx.closePath();
            } else {
              ctx.lineTo(lastPoint.x, clipY);
            }
          }
          ctx.lineTo(target.first().x, clipY);
          ctx.closePath();
          ctx.clip();
        }
        function fill(ctx, cfg) {
          const { line, target, property, color: color2, scale } = cfg;
          const segments = _segments(line, target, property);
          for (const { source: src, target: tgt, start, end } of segments) {
            const { style: { backgroundColor = color2 } = {} } = src;
            const notShape = target !== true;
            ctx.save();
            ctx.fillStyle = backgroundColor;
            clipBounds(ctx, scale, notShape && _getBounds(property, start, end));
            ctx.beginPath();
            const lineLoop = !!line.pathSegment(ctx, src);
            let loop;
            if (notShape) {
              if (lineLoop) {
                ctx.closePath();
              } else {
                interpolatedLineTo(ctx, target, end, property);
              }
              const targetLoop = !!target.pathSegment(ctx, tgt, { move: lineLoop, reverse: true });
              loop = lineLoop && targetLoop;
              if (!loop) {
                interpolatedLineTo(ctx, target, start, property);
              }
            }
            ctx.closePath();
            ctx.fill(loop ? "evenodd" : "nonzero");
            ctx.restore();
          }
        }
        function clipBounds(ctx, scale, bounds) {
          const { top, bottom } = scale.chart.chartArea;
          const { property, start, end } = bounds || {};
          if (property === "x") {
            ctx.beginPath();
            ctx.rect(start, top, end - start, bottom - top);
            ctx.clip();
          }
        }
        function interpolatedLineTo(ctx, target, point, property) {
          const interpolatedPoint = target.interpolate(point, property);
          if (interpolatedPoint) {
            ctx.lineTo(interpolatedPoint.x, interpolatedPoint.y);
          }
        }
        var index = {
          id: "filler",
          afterDatasetsUpdate(chart2, _args, options) {
            const count = (chart2.data.datasets || []).length;
            const sources = [];
            let meta, i, line, source;
            for (i = 0; i < count; ++i) {
              meta = chart2.getDatasetMeta(i);
              line = meta.dataset;
              source = null;
              if (line && line.options && line instanceof LineElement) {
                source = {
                  visible: chart2.isDatasetVisible(i),
                  index: i,
                  fill: _decodeFill(line, i, count),
                  chart: chart2,
                  axis: meta.controller.options.indexAxis,
                  scale: meta.vScale,
                  line
                };
              }
              meta.$filler = source;
              sources.push(source);
            }
            for (i = 0; i < count; ++i) {
              source = sources[i];
              if (!source || source.fill === false) {
                continue;
              }
              source.fill = _resolveTarget(sources, i, options.propagate);
            }
          },
          beforeDraw(chart2, _args, options) {
            const draw2 = options.drawTime === "beforeDraw";
            const metasets = chart2.getSortedVisibleDatasetMetas();
            const area = chart2.chartArea;
            for (let i = metasets.length - 1; i >= 0; --i) {
              const source = metasets[i].$filler;
              if (!source) {
                continue;
              }
              source.line.updateControlPoints(area, source.axis);
              if (draw2) {
                _drawfill(chart2.ctx, source, area);
              }
            }
          },
          beforeDatasetsDraw(chart2, _args, options) {
            if (options.drawTime !== "beforeDatasetsDraw") {
              return;
            }
            const metasets = chart2.getSortedVisibleDatasetMetas();
            for (let i = metasets.length - 1; i >= 0; --i) {
              const source = metasets[i].$filler;
              if (source) {
                _drawfill(chart2.ctx, source, chart2.chartArea);
              }
            }
          },
          beforeDatasetDraw(chart2, args, options) {
            const source = args.meta.$filler;
            if (!source || source.fill === false || options.drawTime !== "beforeDatasetDraw") {
              return;
            }
            _drawfill(chart2.ctx, source, chart2.chartArea);
          },
          defaults: {
            propagate: true,
            drawTime: "beforeDatasetDraw"
          }
        };
        const getBoxSize = (labelOpts, fontSize) => {
          let { boxHeight = fontSize, boxWidth = fontSize } = labelOpts;
          if (labelOpts.usePointStyle) {
            boxHeight = Math.min(boxHeight, fontSize);
            boxWidth = Math.min(boxWidth, fontSize);
          }
          return {
            boxWidth,
            boxHeight,
            itemHeight: Math.max(fontSize, boxHeight)
          };
        };
        const itemsEqual = (a, b) => a !== null && b !== null && a.datasetIndex === b.datasetIndex && a.index === b.index;
        class Legend extends Element2 {
          constructor(config) {
            super();
            this._added = false;
            this.legendHitBoxes = [];
            this._hoveredItem = null;
            this.doughnutMode = false;
            this.chart = config.chart;
            this.options = config.options;
            this.ctx = config.ctx;
            this.legendItems = void 0;
            this.columnSizes = void 0;
            this.lineWidths = void 0;
            this.maxHeight = void 0;
            this.maxWidth = void 0;
            this.top = void 0;
            this.bottom = void 0;
            this.left = void 0;
            this.right = void 0;
            this.height = void 0;
            this.width = void 0;
            this._margins = void 0;
            this.position = void 0;
            this.weight = void 0;
            this.fullSize = void 0;
          }
          update(maxWidth, maxHeight, margins) {
            this.maxWidth = maxWidth;
            this.maxHeight = maxHeight;
            this._margins = margins;
            this.setDimensions();
            this.buildLabels();
            this.fit();
          }
          setDimensions() {
            if (this.isHorizontal()) {
              this.width = this.maxWidth;
              this.left = this._margins.left;
              this.right = this.width;
            } else {
              this.height = this.maxHeight;
              this.top = this._margins.top;
              this.bottom = this.height;
            }
          }
          buildLabels() {
            const labelOpts = this.options.labels || {};
            let legendItems = callback(labelOpts.generateLabels, [this.chart], this) || [];
            if (labelOpts.filter) {
              legendItems = legendItems.filter((item) => labelOpts.filter(item, this.chart.data));
            }
            if (labelOpts.sort) {
              legendItems = legendItems.sort((a, b) => labelOpts.sort(a, b, this.chart.data));
            }
            if (this.options.reverse) {
              legendItems.reverse();
            }
            this.legendItems = legendItems;
          }
          fit() {
            const { options, ctx } = this;
            if (!options.display) {
              this.width = this.height = 0;
              return;
            }
            const labelOpts = options.labels;
            const labelFont = toFont(labelOpts.font);
            const fontSize = labelFont.size;
            const titleHeight = this._computeTitleHeight();
            const { boxWidth, itemHeight } = getBoxSize(labelOpts, fontSize);
            let width, height;
            ctx.font = labelFont.string;
            if (this.isHorizontal()) {
              width = this.maxWidth;
              height = this._fitRows(titleHeight, fontSize, boxWidth, itemHeight) + 10;
            } else {
              height = this.maxHeight;
              width = this._fitCols(titleHeight, fontSize, boxWidth, itemHeight) + 10;
            }
            this.width = Math.min(width, options.maxWidth || this.maxWidth);
            this.height = Math.min(height, options.maxHeight || this.maxHeight);
          }
          _fitRows(titleHeight, fontSize, boxWidth, itemHeight) {
            const { ctx, maxWidth, options: { labels: { padding } } } = this;
            const hitboxes = this.legendHitBoxes = [];
            const lineWidths = this.lineWidths = [0];
            const lineHeight = itemHeight + padding;
            let totalHeight = titleHeight;
            ctx.textAlign = "left";
            ctx.textBaseline = "middle";
            let row = -1;
            let top = -lineHeight;
            this.legendItems.forEach((legendItem, i) => {
              const itemWidth = boxWidth + fontSize / 2 + ctx.measureText(legendItem.text).width;
              if (i === 0 || lineWidths[lineWidths.length - 1] + itemWidth + 2 * padding > maxWidth) {
                totalHeight += lineHeight;
                lineWidths[lineWidths.length - (i > 0 ? 0 : 1)] = 0;
                top += lineHeight;
                row++;
              }
              hitboxes[i] = { left: 0, top, row, width: itemWidth, height: itemHeight };
              lineWidths[lineWidths.length - 1] += itemWidth + padding;
            });
            return totalHeight;
          }
          _fitCols(titleHeight, fontSize, boxWidth, itemHeight) {
            const { ctx, maxHeight, options: { labels: { padding } } } = this;
            const hitboxes = this.legendHitBoxes = [];
            const columnSizes = this.columnSizes = [];
            const heightLimit = maxHeight - titleHeight;
            let totalWidth = padding;
            let currentColWidth = 0;
            let currentColHeight = 0;
            let left = 0;
            let col = 0;
            this.legendItems.forEach((legendItem, i) => {
              const itemWidth = boxWidth + fontSize / 2 + ctx.measureText(legendItem.text).width;
              if (i > 0 && currentColHeight + itemHeight + 2 * padding > heightLimit) {
                totalWidth += currentColWidth + padding;
                columnSizes.push({ width: currentColWidth, height: currentColHeight });
                left += currentColWidth + padding;
                col++;
                currentColWidth = currentColHeight = 0;
              }
              hitboxes[i] = { left, top: currentColHeight, col, width: itemWidth, height: itemHeight };
              currentColWidth = Math.max(currentColWidth, itemWidth);
              currentColHeight += itemHeight + padding;
            });
            totalWidth += currentColWidth;
            columnSizes.push({ width: currentColWidth, height: currentColHeight });
            return totalWidth;
          }
          adjustHitBoxes() {
            if (!this.options.display) {
              return;
            }
            const titleHeight = this._computeTitleHeight();
            const { legendHitBoxes: hitboxes, options: { align, labels: { padding }, rtl } } = this;
            const rtlHelper = getRtlAdapter(rtl, this.left, this.width);
            if (this.isHorizontal()) {
              let row = 0;
              let left = _alignStartEnd(align, this.left + padding, this.right - this.lineWidths[row]);
              for (const hitbox of hitboxes) {
                if (row !== hitbox.row) {
                  row = hitbox.row;
                  left = _alignStartEnd(align, this.left + padding, this.right - this.lineWidths[row]);
                }
                hitbox.top += this.top + titleHeight + padding;
                hitbox.left = rtlHelper.leftForLtr(rtlHelper.x(left), hitbox.width);
                left += hitbox.width + padding;
              }
            } else {
              let col = 0;
              let top = _alignStartEnd(align, this.top + titleHeight + padding, this.bottom - this.columnSizes[col].height);
              for (const hitbox of hitboxes) {
                if (hitbox.col !== col) {
                  col = hitbox.col;
                  top = _alignStartEnd(align, this.top + titleHeight + padding, this.bottom - this.columnSizes[col].height);
                }
                hitbox.top = top;
                hitbox.left += this.left + padding;
                hitbox.left = rtlHelper.leftForLtr(rtlHelper.x(hitbox.left), hitbox.width);
                top += hitbox.height + padding;
              }
            }
          }
          isHorizontal() {
            return this.options.position === "top" || this.options.position === "bottom";
          }
          draw() {
            if (this.options.display) {
              const ctx = this.ctx;
              clipArea(ctx, this);
              this._draw();
              unclipArea(ctx);
            }
          }
          _draw() {
            const { options: opts, columnSizes, lineWidths, ctx } = this;
            const { align, labels: labelOpts } = opts;
            const defaultColor = defaults.color;
            const rtlHelper = getRtlAdapter(opts.rtl, this.left, this.width);
            const labelFont = toFont(labelOpts.font);
            const { color: fontColor, padding } = labelOpts;
            const fontSize = labelFont.size;
            const halfFontSize = fontSize / 2;
            let cursor;
            this.drawTitle();
            ctx.textAlign = rtlHelper.textAlign("left");
            ctx.textBaseline = "middle";
            ctx.lineWidth = 0.5;
            ctx.font = labelFont.string;
            const { boxWidth, boxHeight, itemHeight } = getBoxSize(labelOpts, fontSize);
            const drawLegendBox = function(x, y, legendItem) {
              if (isNaN(boxWidth) || boxWidth <= 0 || isNaN(boxHeight) || boxHeight < 0) {
                return;
              }
              ctx.save();
              const lineWidth = valueOrDefault(legendItem.lineWidth, 1);
              ctx.fillStyle = valueOrDefault(legendItem.fillStyle, defaultColor);
              ctx.lineCap = valueOrDefault(legendItem.lineCap, "butt");
              ctx.lineDashOffset = valueOrDefault(legendItem.lineDashOffset, 0);
              ctx.lineJoin = valueOrDefault(legendItem.lineJoin, "miter");
              ctx.lineWidth = lineWidth;
              ctx.strokeStyle = valueOrDefault(legendItem.strokeStyle, defaultColor);
              ctx.setLineDash(valueOrDefault(legendItem.lineDash, []));
              if (labelOpts.usePointStyle) {
                const drawOptions = {
                  radius: boxWidth * Math.SQRT2 / 2,
                  pointStyle: legendItem.pointStyle,
                  rotation: legendItem.rotation,
                  borderWidth: lineWidth
                };
                const centerX = rtlHelper.xPlus(x, boxWidth / 2);
                const centerY = y + halfFontSize;
                drawPoint(ctx, drawOptions, centerX, centerY);
              } else {
                const yBoxTop = y + Math.max((fontSize - boxHeight) / 2, 0);
                const xBoxLeft = rtlHelper.leftForLtr(x, boxWidth);
                const borderRadius = toTRBLCorners(legendItem.borderRadius);
                ctx.beginPath();
                if (Object.values(borderRadius).some((v) => v !== 0)) {
                  addRoundedRectPath(ctx, {
                    x: xBoxLeft,
                    y: yBoxTop,
                    w: boxWidth,
                    h: boxHeight,
                    radius: borderRadius
                  });
                } else {
                  ctx.rect(xBoxLeft, yBoxTop, boxWidth, boxHeight);
                }
                ctx.fill();
                if (lineWidth !== 0) {
                  ctx.stroke();
                }
              }
              ctx.restore();
            };
            const fillText = function(x, y, legendItem) {
              renderText(ctx, legendItem.text, x, y + itemHeight / 2, labelFont, {
                strikethrough: legendItem.hidden,
                textAlign: rtlHelper.textAlign(legendItem.textAlign)
              });
            };
            const isHorizontal = this.isHorizontal();
            const titleHeight = this._computeTitleHeight();
            if (isHorizontal) {
              cursor = {
                x: _alignStartEnd(align, this.left + padding, this.right - lineWidths[0]),
                y: this.top + padding + titleHeight,
                line: 0
              };
            } else {
              cursor = {
                x: this.left + padding,
                y: _alignStartEnd(align, this.top + titleHeight + padding, this.bottom - columnSizes[0].height),
                line: 0
              };
            }
            overrideTextDirection(this.ctx, opts.textDirection);
            const lineHeight = itemHeight + padding;
            this.legendItems.forEach((legendItem, i) => {
              ctx.strokeStyle = legendItem.fontColor || fontColor;
              ctx.fillStyle = legendItem.fontColor || fontColor;
              const textWidth = ctx.measureText(legendItem.text).width;
              const textAlign = rtlHelper.textAlign(legendItem.textAlign || (legendItem.textAlign = labelOpts.textAlign));
              const width = boxWidth + halfFontSize + textWidth;
              let x = cursor.x;
              let y = cursor.y;
              rtlHelper.setWidth(this.width);
              if (isHorizontal) {
                if (i > 0 && x + width + padding > this.right) {
                  y = cursor.y += lineHeight;
                  cursor.line++;
                  x = cursor.x = _alignStartEnd(align, this.left + padding, this.right - lineWidths[cursor.line]);
                }
              } else if (i > 0 && y + lineHeight > this.bottom) {
                x = cursor.x = x + columnSizes[cursor.line].width + padding;
                cursor.line++;
                y = cursor.y = _alignStartEnd(align, this.top + titleHeight + padding, this.bottom - columnSizes[cursor.line].height);
              }
              const realX = rtlHelper.x(x);
              drawLegendBox(realX, y, legendItem);
              x = _textX(textAlign, x + boxWidth + halfFontSize, isHorizontal ? x + width : this.right, opts.rtl);
              fillText(rtlHelper.x(x), y, legendItem);
              if (isHorizontal) {
                cursor.x += width + padding;
              } else {
                cursor.y += lineHeight;
              }
            });
            restoreTextDirection(this.ctx, opts.textDirection);
          }
          drawTitle() {
            const opts = this.options;
            const titleOpts = opts.title;
            const titleFont = toFont(titleOpts.font);
            const titlePadding = toPadding(titleOpts.padding);
            if (!titleOpts.display) {
              return;
            }
            const rtlHelper = getRtlAdapter(opts.rtl, this.left, this.width);
            const ctx = this.ctx;
            const position = titleOpts.position;
            const halfFontSize = titleFont.size / 2;
            const topPaddingPlusHalfFontSize = titlePadding.top + halfFontSize;
            let y;
            let left = this.left;
            let maxWidth = this.width;
            if (this.isHorizontal()) {
              maxWidth = Math.max(...this.lineWidths);
              y = this.top + topPaddingPlusHalfFontSize;
              left = _alignStartEnd(opts.align, left, this.right - maxWidth);
            } else {
              const maxHeight = this.columnSizes.reduce((acc, size) => Math.max(acc, size.height), 0);
              y = topPaddingPlusHalfFontSize + _alignStartEnd(opts.align, this.top, this.bottom - maxHeight - opts.labels.padding - this._computeTitleHeight());
            }
            const x = _alignStartEnd(position, left, left + maxWidth);
            ctx.textAlign = rtlHelper.textAlign(_toLeftRightCenter(position));
            ctx.textBaseline = "middle";
            ctx.strokeStyle = titleOpts.color;
            ctx.fillStyle = titleOpts.color;
            ctx.font = titleFont.string;
            renderText(ctx, titleOpts.text, x, y, titleFont);
          }
          _computeTitleHeight() {
            const titleOpts = this.options.title;
            const titleFont = toFont(titleOpts.font);
            const titlePadding = toPadding(titleOpts.padding);
            return titleOpts.display ? titleFont.lineHeight + titlePadding.height : 0;
          }
          _getLegendItemAt(x, y) {
            let i, hitBox, lh;
            if (_isBetween(x, this.left, this.right) && _isBetween(y, this.top, this.bottom)) {
              lh = this.legendHitBoxes;
              for (i = 0; i < lh.length; ++i) {
                hitBox = lh[i];
                if (_isBetween(x, hitBox.left, hitBox.left + hitBox.width) && _isBetween(y, hitBox.top, hitBox.top + hitBox.height)) {
                  return this.legendItems[i];
                }
              }
            }
            return null;
          }
          handleEvent(e) {
            const opts = this.options;
            if (!isListened(e.type, opts)) {
              return;
            }
            const hoveredItem = this._getLegendItemAt(e.x, e.y);
            if (e.type === "mousemove" || e.type === "mouseout") {
              const previous = this._hoveredItem;
              const sameItem = itemsEqual(previous, hoveredItem);
              if (previous && !sameItem) {
                callback(opts.onLeave, [e, previous, this], this);
              }
              this._hoveredItem = hoveredItem;
              if (hoveredItem && !sameItem) {
                callback(opts.onHover, [e, hoveredItem, this], this);
              }
            } else if (hoveredItem) {
              callback(opts.onClick, [e, hoveredItem, this], this);
            }
          }
        }
        function isListened(type, opts) {
          if ((type === "mousemove" || type === "mouseout") && (opts.onHover || opts.onLeave)) {
            return true;
          }
          if (opts.onClick && (type === "click" || type === "mouseup")) {
            return true;
          }
          return false;
        }
        var plugin_legend = {
          id: "legend",
          _element: Legend,
          start(chart2, _args, options) {
            const legend = chart2.legend = new Legend({ ctx: chart2.ctx, options, chart: chart2 });
            layouts.configure(chart2, legend, options);
            layouts.addBox(chart2, legend);
          },
          stop(chart2) {
            layouts.removeBox(chart2, chart2.legend);
            delete chart2.legend;
          },
          beforeUpdate(chart2, _args, options) {
            const legend = chart2.legend;
            layouts.configure(chart2, legend, options);
            legend.options = options;
          },
          afterUpdate(chart2) {
            const legend = chart2.legend;
            legend.buildLabels();
            legend.adjustHitBoxes();
          },
          afterEvent(chart2, args) {
            if (!args.replay) {
              chart2.legend.handleEvent(args.event);
            }
          },
          defaults: {
            display: true,
            position: "top",
            align: "center",
            fullSize: true,
            reverse: false,
            weight: 1e3,
            onClick(e, legendItem, legend) {
              const index2 = legendItem.datasetIndex;
              const ci = legend.chart;
              if (ci.isDatasetVisible(index2)) {
                ci.hide(index2);
                legendItem.hidden = true;
              } else {
                ci.show(index2);
                legendItem.hidden = false;
              }
            },
            onHover: null,
            onLeave: null,
            labels: {
              color: (ctx) => ctx.chart.options.color,
              boxWidth: 40,
              padding: 10,
              generateLabels(chart2) {
                const datasets = chart2.data.datasets;
                const { labels: { usePointStyle, pointStyle, textAlign, color: color2 } } = chart2.legend.options;
                return chart2._getSortedDatasetMetas().map((meta) => {
                  const style = meta.controller.getStyle(usePointStyle ? 0 : void 0);
                  const borderWidth = toPadding(style.borderWidth);
                  return {
                    text: datasets[meta.index].label,
                    fillStyle: style.backgroundColor,
                    fontColor: color2,
                    hidden: !meta.visible,
                    lineCap: style.borderCapStyle,
                    lineDash: style.borderDash,
                    lineDashOffset: style.borderDashOffset,
                    lineJoin: style.borderJoinStyle,
                    lineWidth: (borderWidth.width + borderWidth.height) / 4,
                    strokeStyle: style.borderColor,
                    pointStyle: pointStyle || style.pointStyle,
                    rotation: style.rotation,
                    textAlign: textAlign || style.textAlign,
                    borderRadius: 0,
                    datasetIndex: meta.index
                  };
                }, this);
              }
            },
            title: {
              color: (ctx) => ctx.chart.options.color,
              display: false,
              position: "center",
              text: ""
            }
          },
          descriptors: {
            _scriptable: (name) => !name.startsWith("on"),
            labels: {
              _scriptable: (name) => !["generateLabels", "filter", "sort"].includes(name)
            }
          }
        };
        class Title extends Element2 {
          constructor(config) {
            super();
            this.chart = config.chart;
            this.options = config.options;
            this.ctx = config.ctx;
            this._padding = void 0;
            this.top = void 0;
            this.bottom = void 0;
            this.left = void 0;
            this.right = void 0;
            this.width = void 0;
            this.height = void 0;
            this.position = void 0;
            this.weight = void 0;
            this.fullSize = void 0;
          }
          update(maxWidth, maxHeight) {
            const opts = this.options;
            this.left = 0;
            this.top = 0;
            if (!opts.display) {
              this.width = this.height = this.right = this.bottom = 0;
              return;
            }
            this.width = this.right = maxWidth;
            this.height = this.bottom = maxHeight;
            const lineCount = isArray(opts.text) ? opts.text.length : 1;
            this._padding = toPadding(opts.padding);
            const textSize = lineCount * toFont(opts.font).lineHeight + this._padding.height;
            if (this.isHorizontal()) {
              this.height = textSize;
            } else {
              this.width = textSize;
            }
          }
          isHorizontal() {
            const pos = this.options.position;
            return pos === "top" || pos === "bottom";
          }
          _drawArgs(offset) {
            const { top, left, bottom, right, options } = this;
            const align = options.align;
            let rotation = 0;
            let maxWidth, titleX, titleY;
            if (this.isHorizontal()) {
              titleX = _alignStartEnd(align, left, right);
              titleY = top + offset;
              maxWidth = right - left;
            } else {
              if (options.position === "left") {
                titleX = left + offset;
                titleY = _alignStartEnd(align, bottom, top);
                rotation = PI * -0.5;
              } else {
                titleX = right - offset;
                titleY = _alignStartEnd(align, top, bottom);
                rotation = PI * 0.5;
              }
              maxWidth = bottom - top;
            }
            return { titleX, titleY, maxWidth, rotation };
          }
          draw() {
            const ctx = this.ctx;
            const opts = this.options;
            if (!opts.display) {
              return;
            }
            const fontOpts = toFont(opts.font);
            const lineHeight = fontOpts.lineHeight;
            const offset = lineHeight / 2 + this._padding.top;
            const { titleX, titleY, maxWidth, rotation } = this._drawArgs(offset);
            renderText(ctx, opts.text, 0, 0, fontOpts, {
              color: opts.color,
              maxWidth,
              rotation,
              textAlign: _toLeftRightCenter(opts.align),
              textBaseline: "middle",
              translation: [titleX, titleY]
            });
          }
        }
        function createTitle(chart2, titleOpts) {
          const title = new Title({
            ctx: chart2.ctx,
            options: titleOpts,
            chart: chart2
          });
          layouts.configure(chart2, title, titleOpts);
          layouts.addBox(chart2, title);
          chart2.titleBlock = title;
        }
        var plugin_title = {
          id: "title",
          _element: Title,
          start(chart2, _args, options) {
            createTitle(chart2, options);
          },
          stop(chart2) {
            const titleBlock = chart2.titleBlock;
            layouts.removeBox(chart2, titleBlock);
            delete chart2.titleBlock;
          },
          beforeUpdate(chart2, _args, options) {
            const title = chart2.titleBlock;
            layouts.configure(chart2, title, options);
            title.options = options;
          },
          defaults: {
            align: "center",
            display: false,
            font: {
              weight: "bold"
            },
            fullSize: true,
            padding: 10,
            position: "top",
            text: "",
            weight: 2e3
          },
          defaultRoutes: {
            color: "color"
          },
          descriptors: {
            _scriptable: true,
            _indexable: false
          }
        };
        const map = new WeakMap();
        var plugin_subtitle = {
          id: "subtitle",
          start(chart2, _args, options) {
            const title = new Title({
              ctx: chart2.ctx,
              options,
              chart: chart2
            });
            layouts.configure(chart2, title, options);
            layouts.addBox(chart2, title);
            map.set(chart2, title);
          },
          stop(chart2) {
            layouts.removeBox(chart2, map.get(chart2));
            map.delete(chart2);
          },
          beforeUpdate(chart2, _args, options) {
            const title = map.get(chart2);
            layouts.configure(chart2, title, options);
            title.options = options;
          },
          defaults: {
            align: "center",
            display: false,
            font: {
              weight: "normal"
            },
            fullSize: true,
            padding: 0,
            position: "top",
            text: "",
            weight: 1500
          },
          defaultRoutes: {
            color: "color"
          },
          descriptors: {
            _scriptable: true,
            _indexable: false
          }
        };
        const positioners = {
          average(items) {
            if (!items.length) {
              return false;
            }
            let i, len;
            let x = 0;
            let y = 0;
            let count = 0;
            for (i = 0, len = items.length; i < len; ++i) {
              const el = items[i].element;
              if (el && el.hasValue()) {
                const pos = el.tooltipPosition();
                x += pos.x;
                y += pos.y;
                ++count;
              }
            }
            return {
              x: x / count,
              y: y / count
            };
          },
          nearest(items, eventPosition) {
            if (!items.length) {
              return false;
            }
            let x = eventPosition.x;
            let y = eventPosition.y;
            let minDistance = Number.POSITIVE_INFINITY;
            let i, len, nearestElement;
            for (i = 0, len = items.length; i < len; ++i) {
              const el = items[i].element;
              if (el && el.hasValue()) {
                const center = el.getCenterPoint();
                const d = distanceBetweenPoints(eventPosition, center);
                if (d < minDistance) {
                  minDistance = d;
                  nearestElement = el;
                }
              }
            }
            if (nearestElement) {
              const tp = nearestElement.tooltipPosition();
              x = tp.x;
              y = tp.y;
            }
            return {
              x,
              y
            };
          }
        };
        function pushOrConcat(base, toPush) {
          if (toPush) {
            if (isArray(toPush)) {
              Array.prototype.push.apply(base, toPush);
            } else {
              base.push(toPush);
            }
          }
          return base;
        }
        function splitNewlines(str) {
          if ((typeof str === "string" || str instanceof String) && str.indexOf("\n") > -1) {
            return str.split("\n");
          }
          return str;
        }
        function createTooltipItem(chart2, item) {
          const { element, datasetIndex, index: index2 } = item;
          const controller = chart2.getDatasetMeta(datasetIndex).controller;
          const { label, value } = controller.getLabelAndValue(index2);
          return {
            chart: chart2,
            label,
            parsed: controller.getParsed(index2),
            raw: chart2.data.datasets[datasetIndex].data[index2],
            formattedValue: value,
            dataset: controller.getDataset(),
            dataIndex: index2,
            datasetIndex,
            element
          };
        }
        function getTooltipSize(tooltip, options) {
          const ctx = tooltip.chart.ctx;
          const { body, footer, title } = tooltip;
          const { boxWidth, boxHeight } = options;
          const bodyFont = toFont(options.bodyFont);
          const titleFont = toFont(options.titleFont);
          const footerFont = toFont(options.footerFont);
          const titleLineCount = title.length;
          const footerLineCount = footer.length;
          const bodyLineItemCount = body.length;
          const padding = toPadding(options.padding);
          let height = padding.height;
          let width = 0;
          let combinedBodyLength = body.reduce((count, bodyItem) => count + bodyItem.before.length + bodyItem.lines.length + bodyItem.after.length, 0);
          combinedBodyLength += tooltip.beforeBody.length + tooltip.afterBody.length;
          if (titleLineCount) {
            height += titleLineCount * titleFont.lineHeight + (titleLineCount - 1) * options.titleSpacing + options.titleMarginBottom;
          }
          if (combinedBodyLength) {
            const bodyLineHeight = options.displayColors ? Math.max(boxHeight, bodyFont.lineHeight) : bodyFont.lineHeight;
            height += bodyLineItemCount * bodyLineHeight + (combinedBodyLength - bodyLineItemCount) * bodyFont.lineHeight + (combinedBodyLength - 1) * options.bodySpacing;
          }
          if (footerLineCount) {
            height += options.footerMarginTop + footerLineCount * footerFont.lineHeight + (footerLineCount - 1) * options.footerSpacing;
          }
          let widthPadding = 0;
          const maxLineWidth = function(line) {
            width = Math.max(width, ctx.measureText(line).width + widthPadding);
          };
          ctx.save();
          ctx.font = titleFont.string;
          each(tooltip.title, maxLineWidth);
          ctx.font = bodyFont.string;
          each(tooltip.beforeBody.concat(tooltip.afterBody), maxLineWidth);
          widthPadding = options.displayColors ? boxWidth + 2 + options.boxPadding : 0;
          each(body, (bodyItem) => {
            each(bodyItem.before, maxLineWidth);
            each(bodyItem.lines, maxLineWidth);
            each(bodyItem.after, maxLineWidth);
          });
          widthPadding = 0;
          ctx.font = footerFont.string;
          each(tooltip.footer, maxLineWidth);
          ctx.restore();
          width += padding.width;
          return { width, height };
        }
        function determineYAlign(chart2, size) {
          const { y, height } = size;
          if (y < height / 2) {
            return "top";
          } else if (y > chart2.height - height / 2) {
            return "bottom";
          }
          return "center";
        }
        function doesNotFitWithAlign(xAlign, chart2, options, size) {
          const { x, width } = size;
          const caret = options.caretSize + options.caretPadding;
          if (xAlign === "left" && x + width + caret > chart2.width) {
            return true;
          }
          if (xAlign === "right" && x - width - caret < 0) {
            return true;
          }
        }
        function determineXAlign(chart2, options, size, yAlign) {
          const { x, width } = size;
          const { width: chartWidth, chartArea: { left, right } } = chart2;
          let xAlign = "center";
          if (yAlign === "center") {
            xAlign = x <= (left + right) / 2 ? "left" : "right";
          } else if (x <= width / 2) {
            xAlign = "left";
          } else if (x >= chartWidth - width / 2) {
            xAlign = "right";
          }
          if (doesNotFitWithAlign(xAlign, chart2, options, size)) {
            xAlign = "center";
          }
          return xAlign;
        }
        function determineAlignment(chart2, options, size) {
          const yAlign = size.yAlign || options.yAlign || determineYAlign(chart2, size);
          return {
            xAlign: size.xAlign || options.xAlign || determineXAlign(chart2, options, size, yAlign),
            yAlign
          };
        }
        function alignX(size, xAlign) {
          let { x, width } = size;
          if (xAlign === "right") {
            x -= width;
          } else if (xAlign === "center") {
            x -= width / 2;
          }
          return x;
        }
        function alignY(size, yAlign, paddingAndSize) {
          let { y, height } = size;
          if (yAlign === "top") {
            y += paddingAndSize;
          } else if (yAlign === "bottom") {
            y -= height + paddingAndSize;
          } else {
            y -= height / 2;
          }
          return y;
        }
        function getBackgroundPoint(options, size, alignment, chart2) {
          const { caretSize, caretPadding, cornerRadius } = options;
          const { xAlign, yAlign } = alignment;
          const paddingAndSize = caretSize + caretPadding;
          const { topLeft, topRight, bottomLeft, bottomRight } = toTRBLCorners(cornerRadius);
          let x = alignX(size, xAlign);
          const y = alignY(size, yAlign, paddingAndSize);
          if (yAlign === "center") {
            if (xAlign === "left") {
              x += paddingAndSize;
            } else if (xAlign === "right") {
              x -= paddingAndSize;
            }
          } else if (xAlign === "left") {
            x -= Math.max(topLeft, bottomLeft) + caretSize;
          } else if (xAlign === "right") {
            x += Math.max(topRight, bottomRight) + caretSize;
          }
          return {
            x: _limitValue(x, 0, chart2.width - size.width),
            y: _limitValue(y, 0, chart2.height - size.height)
          };
        }
        function getAlignedX(tooltip, align, options) {
          const padding = toPadding(options.padding);
          return align === "center" ? tooltip.x + tooltip.width / 2 : align === "right" ? tooltip.x + tooltip.width - padding.right : tooltip.x + padding.left;
        }
        function getBeforeAfterBodyLines(callback2) {
          return pushOrConcat([], splitNewlines(callback2));
        }
        function createTooltipContext(parent, tooltip, tooltipItems) {
          return createContext(parent, {
            tooltip,
            tooltipItems,
            type: "tooltip"
          });
        }
        function overrideCallbacks(callbacks, context) {
          const override = context && context.dataset && context.dataset.tooltip && context.dataset.tooltip.callbacks;
          return override ? callbacks.override(override) : callbacks;
        }
        class Tooltip extends Element2 {
          constructor(config) {
            super();
            this.opacity = 0;
            this._active = [];
            this._eventPosition = void 0;
            this._size = void 0;
            this._cachedAnimations = void 0;
            this._tooltipItems = [];
            this.$animations = void 0;
            this.$context = void 0;
            this.chart = config.chart || config._chart;
            this._chart = this.chart;
            this.options = config.options;
            this.dataPoints = void 0;
            this.title = void 0;
            this.beforeBody = void 0;
            this.body = void 0;
            this.afterBody = void 0;
            this.footer = void 0;
            this.xAlign = void 0;
            this.yAlign = void 0;
            this.x = void 0;
            this.y = void 0;
            this.height = void 0;
            this.width = void 0;
            this.caretX = void 0;
            this.caretY = void 0;
            this.labelColors = void 0;
            this.labelPointStyles = void 0;
            this.labelTextColors = void 0;
          }
          initialize(options) {
            this.options = options;
            this._cachedAnimations = void 0;
            this.$context = void 0;
          }
          _resolveAnimations() {
            const cached = this._cachedAnimations;
            if (cached) {
              return cached;
            }
            const chart2 = this.chart;
            const options = this.options.setContext(this.getContext());
            const opts = options.enabled && chart2.options.animation && options.animations;
            const animations = new Animations(this.chart, opts);
            if (opts._cacheable) {
              this._cachedAnimations = Object.freeze(animations);
            }
            return animations;
          }
          getContext() {
            return this.$context || (this.$context = createTooltipContext(this.chart.getContext(), this, this._tooltipItems));
          }
          getTitle(context, options) {
            const { callbacks } = options;
            const beforeTitle = callbacks.beforeTitle.apply(this, [context]);
            const title = callbacks.title.apply(this, [context]);
            const afterTitle = callbacks.afterTitle.apply(this, [context]);
            let lines = [];
            lines = pushOrConcat(lines, splitNewlines(beforeTitle));
            lines = pushOrConcat(lines, splitNewlines(title));
            lines = pushOrConcat(lines, splitNewlines(afterTitle));
            return lines;
          }
          getBeforeBody(tooltipItems, options) {
            return getBeforeAfterBodyLines(options.callbacks.beforeBody.apply(this, [tooltipItems]));
          }
          getBody(tooltipItems, options) {
            const { callbacks } = options;
            const bodyItems = [];
            each(tooltipItems, (context) => {
              const bodyItem = {
                before: [],
                lines: [],
                after: []
              };
              const scoped = overrideCallbacks(callbacks, context);
              pushOrConcat(bodyItem.before, splitNewlines(scoped.beforeLabel.call(this, context)));
              pushOrConcat(bodyItem.lines, scoped.label.call(this, context));
              pushOrConcat(bodyItem.after, splitNewlines(scoped.afterLabel.call(this, context)));
              bodyItems.push(bodyItem);
            });
            return bodyItems;
          }
          getAfterBody(tooltipItems, options) {
            return getBeforeAfterBodyLines(options.callbacks.afterBody.apply(this, [tooltipItems]));
          }
          getFooter(tooltipItems, options) {
            const { callbacks } = options;
            const beforeFooter = callbacks.beforeFooter.apply(this, [tooltipItems]);
            const footer = callbacks.footer.apply(this, [tooltipItems]);
            const afterFooter = callbacks.afterFooter.apply(this, [tooltipItems]);
            let lines = [];
            lines = pushOrConcat(lines, splitNewlines(beforeFooter));
            lines = pushOrConcat(lines, splitNewlines(footer));
            lines = pushOrConcat(lines, splitNewlines(afterFooter));
            return lines;
          }
          _createItems(options) {
            const active = this._active;
            const data = this.chart.data;
            const labelColors = [];
            const labelPointStyles = [];
            const labelTextColors = [];
            let tooltipItems = [];
            let i, len;
            for (i = 0, len = active.length; i < len; ++i) {
              tooltipItems.push(createTooltipItem(this.chart, active[i]));
            }
            if (options.filter) {
              tooltipItems = tooltipItems.filter((element, index2, array) => options.filter(element, index2, array, data));
            }
            if (options.itemSort) {
              tooltipItems = tooltipItems.sort((a, b) => options.itemSort(a, b, data));
            }
            each(tooltipItems, (context) => {
              const scoped = overrideCallbacks(options.callbacks, context);
              labelColors.push(scoped.labelColor.call(this, context));
              labelPointStyles.push(scoped.labelPointStyle.call(this, context));
              labelTextColors.push(scoped.labelTextColor.call(this, context));
            });
            this.labelColors = labelColors;
            this.labelPointStyles = labelPointStyles;
            this.labelTextColors = labelTextColors;
            this.dataPoints = tooltipItems;
            return tooltipItems;
          }
          update(changed, replay) {
            const options = this.options.setContext(this.getContext());
            const active = this._active;
            let properties;
            let tooltipItems = [];
            if (!active.length) {
              if (this.opacity !== 0) {
                properties = {
                  opacity: 0
                };
              }
            } else {
              const position = positioners[options.position].call(this, active, this._eventPosition);
              tooltipItems = this._createItems(options);
              this.title = this.getTitle(tooltipItems, options);
              this.beforeBody = this.getBeforeBody(tooltipItems, options);
              this.body = this.getBody(tooltipItems, options);
              this.afterBody = this.getAfterBody(tooltipItems, options);
              this.footer = this.getFooter(tooltipItems, options);
              const size = this._size = getTooltipSize(this, options);
              const positionAndSize = Object.assign({}, position, size);
              const alignment = determineAlignment(this.chart, options, positionAndSize);
              const backgroundPoint = getBackgroundPoint(options, positionAndSize, alignment, this.chart);
              this.xAlign = alignment.xAlign;
              this.yAlign = alignment.yAlign;
              properties = {
                opacity: 1,
                x: backgroundPoint.x,
                y: backgroundPoint.y,
                width: size.width,
                height: size.height,
                caretX: position.x,
                caretY: position.y
              };
            }
            this._tooltipItems = tooltipItems;
            this.$context = void 0;
            if (properties) {
              this._resolveAnimations().update(this, properties);
            }
            if (changed && options.external) {
              options.external.call(this, { chart: this.chart, tooltip: this, replay });
            }
          }
          drawCaret(tooltipPoint, ctx, size, options) {
            const caretPosition = this.getCaretPosition(tooltipPoint, size, options);
            ctx.lineTo(caretPosition.x1, caretPosition.y1);
            ctx.lineTo(caretPosition.x2, caretPosition.y2);
            ctx.lineTo(caretPosition.x3, caretPosition.y3);
          }
          getCaretPosition(tooltipPoint, size, options) {
            const { xAlign, yAlign } = this;
            const { caretSize, cornerRadius } = options;
            const { topLeft, topRight, bottomLeft, bottomRight } = toTRBLCorners(cornerRadius);
            const { x: ptX, y: ptY } = tooltipPoint;
            const { width, height } = size;
            let x1, x2, x3, y1, y2, y3;
            if (yAlign === "center") {
              y2 = ptY + height / 2;
              if (xAlign === "left") {
                x1 = ptX;
                x2 = x1 - caretSize;
                y1 = y2 + caretSize;
                y3 = y2 - caretSize;
              } else {
                x1 = ptX + width;
                x2 = x1 + caretSize;
                y1 = y2 - caretSize;
                y3 = y2 + caretSize;
              }
              x3 = x1;
            } else {
              if (xAlign === "left") {
                x2 = ptX + Math.max(topLeft, bottomLeft) + caretSize;
              } else if (xAlign === "right") {
                x2 = ptX + width - Math.max(topRight, bottomRight) - caretSize;
              } else {
                x2 = this.caretX;
              }
              if (yAlign === "top") {
                y1 = ptY;
                y2 = y1 - caretSize;
                x1 = x2 - caretSize;
                x3 = x2 + caretSize;
              } else {
                y1 = ptY + height;
                y2 = y1 + caretSize;
                x1 = x2 + caretSize;
                x3 = x2 - caretSize;
              }
              y3 = y1;
            }
            return { x1, x2, x3, y1, y2, y3 };
          }
          drawTitle(pt, ctx, options) {
            const title = this.title;
            const length = title.length;
            let titleFont, titleSpacing, i;
            if (length) {
              const rtlHelper = getRtlAdapter(options.rtl, this.x, this.width);
              pt.x = getAlignedX(this, options.titleAlign, options);
              ctx.textAlign = rtlHelper.textAlign(options.titleAlign);
              ctx.textBaseline = "middle";
              titleFont = toFont(options.titleFont);
              titleSpacing = options.titleSpacing;
              ctx.fillStyle = options.titleColor;
              ctx.font = titleFont.string;
              for (i = 0; i < length; ++i) {
                ctx.fillText(title[i], rtlHelper.x(pt.x), pt.y + titleFont.lineHeight / 2);
                pt.y += titleFont.lineHeight + titleSpacing;
                if (i + 1 === length) {
                  pt.y += options.titleMarginBottom - titleSpacing;
                }
              }
            }
          }
          _drawColorBox(ctx, pt, i, rtlHelper, options) {
            const labelColors = this.labelColors[i];
            const labelPointStyle = this.labelPointStyles[i];
            const { boxHeight, boxWidth, boxPadding } = options;
            const bodyFont = toFont(options.bodyFont);
            const colorX = getAlignedX(this, "left", options);
            const rtlColorX = rtlHelper.x(colorX);
            const yOffSet = boxHeight < bodyFont.lineHeight ? (bodyFont.lineHeight - boxHeight) / 2 : 0;
            const colorY = pt.y + yOffSet;
            if (options.usePointStyle) {
              const drawOptions = {
                radius: Math.min(boxWidth, boxHeight) / 2,
                pointStyle: labelPointStyle.pointStyle,
                rotation: labelPointStyle.rotation,
                borderWidth: 1
              };
              const centerX = rtlHelper.leftForLtr(rtlColorX, boxWidth) + boxWidth / 2;
              const centerY = colorY + boxHeight / 2;
              ctx.strokeStyle = options.multiKeyBackground;
              ctx.fillStyle = options.multiKeyBackground;
              drawPoint(ctx, drawOptions, centerX, centerY);
              ctx.strokeStyle = labelColors.borderColor;
              ctx.fillStyle = labelColors.backgroundColor;
              drawPoint(ctx, drawOptions, centerX, centerY);
            } else {
              ctx.lineWidth = labelColors.borderWidth || 1;
              ctx.strokeStyle = labelColors.borderColor;
              ctx.setLineDash(labelColors.borderDash || []);
              ctx.lineDashOffset = labelColors.borderDashOffset || 0;
              const outerX = rtlHelper.leftForLtr(rtlColorX, boxWidth - boxPadding);
              const innerX = rtlHelper.leftForLtr(rtlHelper.xPlus(rtlColorX, 1), boxWidth - boxPadding - 2);
              const borderRadius = toTRBLCorners(labelColors.borderRadius);
              if (Object.values(borderRadius).some((v) => v !== 0)) {
                ctx.beginPath();
                ctx.fillStyle = options.multiKeyBackground;
                addRoundedRectPath(ctx, {
                  x: outerX,
                  y: colorY,
                  w: boxWidth,
                  h: boxHeight,
                  radius: borderRadius
                });
                ctx.fill();
                ctx.stroke();
                ctx.fillStyle = labelColors.backgroundColor;
                ctx.beginPath();
                addRoundedRectPath(ctx, {
                  x: innerX,
                  y: colorY + 1,
                  w: boxWidth - 2,
                  h: boxHeight - 2,
                  radius: borderRadius
                });
                ctx.fill();
              } else {
                ctx.fillStyle = options.multiKeyBackground;
                ctx.fillRect(outerX, colorY, boxWidth, boxHeight);
                ctx.strokeRect(outerX, colorY, boxWidth, boxHeight);
                ctx.fillStyle = labelColors.backgroundColor;
                ctx.fillRect(innerX, colorY + 1, boxWidth - 2, boxHeight - 2);
              }
            }
            ctx.fillStyle = this.labelTextColors[i];
          }
          drawBody(pt, ctx, options) {
            const { body } = this;
            const { bodySpacing, bodyAlign, displayColors, boxHeight, boxWidth, boxPadding } = options;
            const bodyFont = toFont(options.bodyFont);
            let bodyLineHeight = bodyFont.lineHeight;
            let xLinePadding = 0;
            const rtlHelper = getRtlAdapter(options.rtl, this.x, this.width);
            const fillLineOfText = function(line) {
              ctx.fillText(line, rtlHelper.x(pt.x + xLinePadding), pt.y + bodyLineHeight / 2);
              pt.y += bodyLineHeight + bodySpacing;
            };
            const bodyAlignForCalculation = rtlHelper.textAlign(bodyAlign);
            let bodyItem, textColor, lines, i, j, ilen, jlen;
            ctx.textAlign = bodyAlign;
            ctx.textBaseline = "middle";
            ctx.font = bodyFont.string;
            pt.x = getAlignedX(this, bodyAlignForCalculation, options);
            ctx.fillStyle = options.bodyColor;
            each(this.beforeBody, fillLineOfText);
            xLinePadding = displayColors && bodyAlignForCalculation !== "right" ? bodyAlign === "center" ? boxWidth / 2 + boxPadding : boxWidth + 2 + boxPadding : 0;
            for (i = 0, ilen = body.length; i < ilen; ++i) {
              bodyItem = body[i];
              textColor = this.labelTextColors[i];
              ctx.fillStyle = textColor;
              each(bodyItem.before, fillLineOfText);
              lines = bodyItem.lines;
              if (displayColors && lines.length) {
                this._drawColorBox(ctx, pt, i, rtlHelper, options);
                bodyLineHeight = Math.max(bodyFont.lineHeight, boxHeight);
              }
              for (j = 0, jlen = lines.length; j < jlen; ++j) {
                fillLineOfText(lines[j]);
                bodyLineHeight = bodyFont.lineHeight;
              }
              each(bodyItem.after, fillLineOfText);
            }
            xLinePadding = 0;
            bodyLineHeight = bodyFont.lineHeight;
            each(this.afterBody, fillLineOfText);
            pt.y -= bodySpacing;
          }
          drawFooter(pt, ctx, options) {
            const footer = this.footer;
            const length = footer.length;
            let footerFont, i;
            if (length) {
              const rtlHelper = getRtlAdapter(options.rtl, this.x, this.width);
              pt.x = getAlignedX(this, options.footerAlign, options);
              pt.y += options.footerMarginTop;
              ctx.textAlign = rtlHelper.textAlign(options.footerAlign);
              ctx.textBaseline = "middle";
              footerFont = toFont(options.footerFont);
              ctx.fillStyle = options.footerColor;
              ctx.font = footerFont.string;
              for (i = 0; i < length; ++i) {
                ctx.fillText(footer[i], rtlHelper.x(pt.x), pt.y + footerFont.lineHeight / 2);
                pt.y += footerFont.lineHeight + options.footerSpacing;
              }
            }
          }
          drawBackground(pt, ctx, tooltipSize, options) {
            const { xAlign, yAlign } = this;
            const { x, y } = pt;
            const { width, height } = tooltipSize;
            const { topLeft, topRight, bottomLeft, bottomRight } = toTRBLCorners(options.cornerRadius);
            ctx.fillStyle = options.backgroundColor;
            ctx.strokeStyle = options.borderColor;
            ctx.lineWidth = options.borderWidth;
            ctx.beginPath();
            ctx.moveTo(x + topLeft, y);
            if (yAlign === "top") {
              this.drawCaret(pt, ctx, tooltipSize, options);
            }
            ctx.lineTo(x + width - topRight, y);
            ctx.quadraticCurveTo(x + width, y, x + width, y + topRight);
            if (yAlign === "center" && xAlign === "right") {
              this.drawCaret(pt, ctx, tooltipSize, options);
            }
            ctx.lineTo(x + width, y + height - bottomRight);
            ctx.quadraticCurveTo(x + width, y + height, x + width - bottomRight, y + height);
            if (yAlign === "bottom") {
              this.drawCaret(pt, ctx, tooltipSize, options);
            }
            ctx.lineTo(x + bottomLeft, y + height);
            ctx.quadraticCurveTo(x, y + height, x, y + height - bottomLeft);
            if (yAlign === "center" && xAlign === "left") {
              this.drawCaret(pt, ctx, tooltipSize, options);
            }
            ctx.lineTo(x, y + topLeft);
            ctx.quadraticCurveTo(x, y, x + topLeft, y);
            ctx.closePath();
            ctx.fill();
            if (options.borderWidth > 0) {
              ctx.stroke();
            }
          }
          _updateAnimationTarget(options) {
            const chart2 = this.chart;
            const anims = this.$animations;
            const animX = anims && anims.x;
            const animY = anims && anims.y;
            if (animX || animY) {
              const position = positioners[options.position].call(this, this._active, this._eventPosition);
              if (!position) {
                return;
              }
              const size = this._size = getTooltipSize(this, options);
              const positionAndSize = Object.assign({}, position, this._size);
              const alignment = determineAlignment(chart2, options, positionAndSize);
              const point = getBackgroundPoint(options, positionAndSize, alignment, chart2);
              if (animX._to !== point.x || animY._to !== point.y) {
                this.xAlign = alignment.xAlign;
                this.yAlign = alignment.yAlign;
                this.width = size.width;
                this.height = size.height;
                this.caretX = position.x;
                this.caretY = position.y;
                this._resolveAnimations().update(this, point);
              }
            }
          }
          _willRender() {
            return !!this.opacity;
          }
          draw(ctx) {
            const options = this.options.setContext(this.getContext());
            let opacity = this.opacity;
            if (!opacity) {
              return;
            }
            this._updateAnimationTarget(options);
            const tooltipSize = {
              width: this.width,
              height: this.height
            };
            const pt = {
              x: this.x,
              y: this.y
            };
            opacity = Math.abs(opacity) < 1e-3 ? 0 : opacity;
            const padding = toPadding(options.padding);
            const hasTooltipContent = this.title.length || this.beforeBody.length || this.body.length || this.afterBody.length || this.footer.length;
            if (options.enabled && hasTooltipContent) {
              ctx.save();
              ctx.globalAlpha = opacity;
              this.drawBackground(pt, ctx, tooltipSize, options);
              overrideTextDirection(ctx, options.textDirection);
              pt.y += padding.top;
              this.drawTitle(pt, ctx, options);
              this.drawBody(pt, ctx, options);
              this.drawFooter(pt, ctx, options);
              restoreTextDirection(ctx, options.textDirection);
              ctx.restore();
            }
          }
          getActiveElements() {
            return this._active || [];
          }
          setActiveElements(activeElements, eventPosition) {
            const lastActive = this._active;
            const active = activeElements.map(({ datasetIndex, index: index2 }) => {
              const meta = this.chart.getDatasetMeta(datasetIndex);
              if (!meta) {
                throw new Error("Cannot find a dataset at index " + datasetIndex);
              }
              return {
                datasetIndex,
                element: meta.data[index2],
                index: index2
              };
            });
            const changed = !_elementsEqual(lastActive, active);
            const positionChanged = this._positionChanged(active, eventPosition);
            if (changed || positionChanged) {
              this._active = active;
              this._eventPosition = eventPosition;
              this._ignoreReplayEvents = true;
              this.update(true);
            }
          }
          handleEvent(e, replay, inChartArea = true) {
            if (replay && this._ignoreReplayEvents) {
              return false;
            }
            this._ignoreReplayEvents = false;
            const options = this.options;
            const lastActive = this._active || [];
            const active = this._getActiveElements(e, lastActive, replay, inChartArea);
            const positionChanged = this._positionChanged(active, e);
            const changed = replay || !_elementsEqual(active, lastActive) || positionChanged;
            if (changed) {
              this._active = active;
              if (options.enabled || options.external) {
                this._eventPosition = {
                  x: e.x,
                  y: e.y
                };
                this.update(true, replay);
              }
            }
            return changed;
          }
          _getActiveElements(e, lastActive, replay, inChartArea) {
            const options = this.options;
            if (e.type === "mouseout") {
              return [];
            }
            if (!inChartArea) {
              return lastActive;
            }
            const active = this.chart.getElementsAtEventForMode(e, options.mode, options, replay);
            if (options.reverse) {
              active.reverse();
            }
            return active;
          }
          _positionChanged(active, e) {
            const { caretX, caretY, options } = this;
            const position = positioners[options.position].call(this, active, e);
            return position !== false && (caretX !== position.x || caretY !== position.y);
          }
        }
        Tooltip.positioners = positioners;
        var plugin_tooltip = {
          id: "tooltip",
          _element: Tooltip,
          positioners,
          afterInit(chart2, _args, options) {
            if (options) {
              chart2.tooltip = new Tooltip({ chart: chart2, options });
            }
          },
          beforeUpdate(chart2, _args, options) {
            if (chart2.tooltip) {
              chart2.tooltip.initialize(options);
            }
          },
          reset(chart2, _args, options) {
            if (chart2.tooltip) {
              chart2.tooltip.initialize(options);
            }
          },
          afterDraw(chart2) {
            const tooltip = chart2.tooltip;
            if (tooltip && tooltip._willRender()) {
              const args = {
                tooltip
              };
              if (chart2.notifyPlugins("beforeTooltipDraw", args) === false) {
                return;
              }
              tooltip.draw(chart2.ctx);
              chart2.notifyPlugins("afterTooltipDraw", args);
            }
          },
          afterEvent(chart2, args) {
            if (chart2.tooltip) {
              const useFinalPosition = args.replay;
              if (chart2.tooltip.handleEvent(args.event, useFinalPosition, args.inChartArea)) {
                args.changed = true;
              }
            }
          },
          defaults: {
            enabled: true,
            external: null,
            position: "average",
            backgroundColor: "rgba(0,0,0,0.8)",
            titleColor: "#fff",
            titleFont: {
              weight: "bold"
            },
            titleSpacing: 2,
            titleMarginBottom: 6,
            titleAlign: "left",
            bodyColor: "#fff",
            bodySpacing: 2,
            bodyFont: {},
            bodyAlign: "left",
            footerColor: "#fff",
            footerSpacing: 2,
            footerMarginTop: 6,
            footerFont: {
              weight: "bold"
            },
            footerAlign: "left",
            padding: 6,
            caretPadding: 2,
            caretSize: 5,
            cornerRadius: 6,
            boxHeight: (ctx, opts) => opts.bodyFont.size,
            boxWidth: (ctx, opts) => opts.bodyFont.size,
            multiKeyBackground: "#fff",
            displayColors: true,
            boxPadding: 0,
            borderColor: "rgba(0,0,0,0)",
            borderWidth: 0,
            animation: {
              duration: 400,
              easing: "easeOutQuart"
            },
            animations: {
              numbers: {
                type: "number",
                properties: ["x", "y", "width", "height", "caretX", "caretY"]
              },
              opacity: {
                easing: "linear",
                duration: 200
              }
            },
            callbacks: {
              beforeTitle: noop2,
              title(tooltipItems) {
                if (tooltipItems.length > 0) {
                  const item = tooltipItems[0];
                  const labels = item.chart.data.labels;
                  const labelCount = labels ? labels.length : 0;
                  if (this && this.options && this.options.mode === "dataset") {
                    return item.dataset.label || "";
                  } else if (item.label) {
                    return item.label;
                  } else if (labelCount > 0 && item.dataIndex < labelCount) {
                    return labels[item.dataIndex];
                  }
                }
                return "";
              },
              afterTitle: noop2,
              beforeBody: noop2,
              beforeLabel: noop2,
              label(tooltipItem) {
                if (this && this.options && this.options.mode === "dataset") {
                  return tooltipItem.label + ": " + tooltipItem.formattedValue || tooltipItem.formattedValue;
                }
                let label = tooltipItem.dataset.label || "";
                if (label) {
                  label += ": ";
                }
                const value = tooltipItem.formattedValue;
                if (!isNullOrUndef(value)) {
                  label += value;
                }
                return label;
              },
              labelColor(tooltipItem) {
                const meta = tooltipItem.chart.getDatasetMeta(tooltipItem.datasetIndex);
                const options = meta.controller.getStyle(tooltipItem.dataIndex);
                return {
                  borderColor: options.borderColor,
                  backgroundColor: options.backgroundColor,
                  borderWidth: options.borderWidth,
                  borderDash: options.borderDash,
                  borderDashOffset: options.borderDashOffset,
                  borderRadius: 0
                };
              },
              labelTextColor() {
                return this.options.bodyColor;
              },
              labelPointStyle(tooltipItem) {
                const meta = tooltipItem.chart.getDatasetMeta(tooltipItem.datasetIndex);
                const options = meta.controller.getStyle(tooltipItem.dataIndex);
                return {
                  pointStyle: options.pointStyle,
                  rotation: options.rotation
                };
              },
              afterLabel: noop2,
              afterBody: noop2,
              beforeFooter: noop2,
              footer: noop2,
              afterFooter: noop2
            }
          },
          defaultRoutes: {
            bodyFont: "font",
            footerFont: "font",
            titleFont: "font"
          },
          descriptors: {
            _scriptable: (name) => name !== "filter" && name !== "itemSort" && name !== "external",
            _indexable: false,
            callbacks: {
              _scriptable: false,
              _indexable: false
            },
            animation: {
              _fallback: false
            },
            animations: {
              _fallback: "animation"
            }
          },
          additionalOptionScopes: ["interaction"]
        };
        var plugins = /* @__PURE__ */ Object.freeze({
          __proto__: null,
          Decimation: plugin_decimation,
          Filler: index,
          Legend: plugin_legend,
          SubTitle: plugin_subtitle,
          Title: plugin_title,
          Tooltip: plugin_tooltip
        });
        const addIfString = (labels, raw, index2, addedLabels) => {
          if (typeof raw === "string") {
            index2 = labels.push(raw) - 1;
            addedLabels.unshift({ index: index2, label: raw });
          } else if (isNaN(raw)) {
            index2 = null;
          }
          return index2;
        };
        function findOrAddLabel(labels, raw, index2, addedLabels) {
          const first = labels.indexOf(raw);
          if (first === -1) {
            return addIfString(labels, raw, index2, addedLabels);
          }
          const last = labels.lastIndexOf(raw);
          return first !== last ? index2 : first;
        }
        const validIndex = (index2, max) => index2 === null ? null : _limitValue(Math.round(index2), 0, max);
        class CategoryScale extends Scale {
          constructor(cfg) {
            super(cfg);
            this._startValue = void 0;
            this._valueRange = 0;
            this._addedLabels = [];
          }
          init(scaleOptions) {
            const added = this._addedLabels;
            if (added.length) {
              const labels = this.getLabels();
              for (const { index: index2, label } of added) {
                if (labels[index2] === label) {
                  labels.splice(index2, 1);
                }
              }
              this._addedLabels = [];
            }
            super.init(scaleOptions);
          }
          parse(raw, index2) {
            if (isNullOrUndef(raw)) {
              return null;
            }
            const labels = this.getLabels();
            index2 = isFinite(index2) && labels[index2] === raw ? index2 : findOrAddLabel(labels, raw, valueOrDefault(index2, raw), this._addedLabels);
            return validIndex(index2, labels.length - 1);
          }
          determineDataLimits() {
            const { minDefined, maxDefined } = this.getUserBounds();
            let { min, max } = this.getMinMax(true);
            if (this.options.bounds === "ticks") {
              if (!minDefined) {
                min = 0;
              }
              if (!maxDefined) {
                max = this.getLabels().length - 1;
              }
            }
            this.min = min;
            this.max = max;
          }
          buildTicks() {
            const min = this.min;
            const max = this.max;
            const offset = this.options.offset;
            const ticks = [];
            let labels = this.getLabels();
            labels = min === 0 && max === labels.length - 1 ? labels : labels.slice(min, max + 1);
            this._valueRange = Math.max(labels.length - (offset ? 0 : 1), 1);
            this._startValue = this.min - (offset ? 0.5 : 0);
            for (let value = min; value <= max; value++) {
              ticks.push({ value });
            }
            return ticks;
          }
          getLabelForValue(value) {
            const labels = this.getLabels();
            if (value >= 0 && value < labels.length) {
              return labels[value];
            }
            return value;
          }
          configure() {
            super.configure();
            if (!this.isHorizontal()) {
              this._reversePixels = !this._reversePixels;
            }
          }
          getPixelForValue(value) {
            if (typeof value !== "number") {
              value = this.parse(value);
            }
            return value === null ? NaN : this.getPixelForDecimal((value - this._startValue) / this._valueRange);
          }
          getPixelForTick(index2) {
            const ticks = this.ticks;
            if (index2 < 0 || index2 > ticks.length - 1) {
              return null;
            }
            return this.getPixelForValue(ticks[index2].value);
          }
          getValueForPixel(pixel) {
            return Math.round(this._startValue + this.getDecimalForPixel(pixel) * this._valueRange);
          }
          getBasePixel() {
            return this.bottom;
          }
        }
        CategoryScale.id = "category";
        CategoryScale.defaults = {
          ticks: {
            callback: CategoryScale.prototype.getLabelForValue
          }
        };
        function generateTicks$1(generationOptions, dataRange) {
          const ticks = [];
          const MIN_SPACING = 1e-14;
          const { bounds, step, min, max, precision, count, maxTicks, maxDigits, includeBounds } = generationOptions;
          const unit = step || 1;
          const maxSpaces = maxTicks - 1;
          const { min: rmin, max: rmax } = dataRange;
          const minDefined = !isNullOrUndef(min);
          const maxDefined = !isNullOrUndef(max);
          const countDefined = !isNullOrUndef(count);
          const minSpacing = (rmax - rmin) / (maxDigits + 1);
          let spacing = niceNum((rmax - rmin) / maxSpaces / unit) * unit;
          let factor, niceMin, niceMax, numSpaces;
          if (spacing < MIN_SPACING && !minDefined && !maxDefined) {
            return [{ value: rmin }, { value: rmax }];
          }
          numSpaces = Math.ceil(rmax / spacing) - Math.floor(rmin / spacing);
          if (numSpaces > maxSpaces) {
            spacing = niceNum(numSpaces * spacing / maxSpaces / unit) * unit;
          }
          if (!isNullOrUndef(precision)) {
            factor = Math.pow(10, precision);
            spacing = Math.ceil(spacing * factor) / factor;
          }
          if (bounds === "ticks") {
            niceMin = Math.floor(rmin / spacing) * spacing;
            niceMax = Math.ceil(rmax / spacing) * spacing;
          } else {
            niceMin = rmin;
            niceMax = rmax;
          }
          if (minDefined && maxDefined && step && almostWhole((max - min) / step, spacing / 1e3)) {
            numSpaces = Math.round(Math.min((max - min) / spacing, maxTicks));
            spacing = (max - min) / numSpaces;
            niceMin = min;
            niceMax = max;
          } else if (countDefined) {
            niceMin = minDefined ? min : niceMin;
            niceMax = maxDefined ? max : niceMax;
            numSpaces = count - 1;
            spacing = (niceMax - niceMin) / numSpaces;
          } else {
            numSpaces = (niceMax - niceMin) / spacing;
            if (almostEquals(numSpaces, Math.round(numSpaces), spacing / 1e3)) {
              numSpaces = Math.round(numSpaces);
            } else {
              numSpaces = Math.ceil(numSpaces);
            }
          }
          const decimalPlaces = Math.max(_decimalPlaces(spacing), _decimalPlaces(niceMin));
          factor = Math.pow(10, isNullOrUndef(precision) ? decimalPlaces : precision);
          niceMin = Math.round(niceMin * factor) / factor;
          niceMax = Math.round(niceMax * factor) / factor;
          let j = 0;
          if (minDefined) {
            if (includeBounds && niceMin !== min) {
              ticks.push({ value: min });
              if (niceMin < min) {
                j++;
              }
              if (almostEquals(Math.round((niceMin + j * spacing) * factor) / factor, min, relativeLabelSize(min, minSpacing, generationOptions))) {
                j++;
              }
            } else if (niceMin < min) {
              j++;
            }
          }
          for (; j < numSpaces; ++j) {
            ticks.push({ value: Math.round((niceMin + j * spacing) * factor) / factor });
          }
          if (maxDefined && includeBounds && niceMax !== max) {
            if (ticks.length && almostEquals(ticks[ticks.length - 1].value, max, relativeLabelSize(max, minSpacing, generationOptions))) {
              ticks[ticks.length - 1].value = max;
            } else {
              ticks.push({ value: max });
            }
          } else if (!maxDefined || niceMax === max) {
            ticks.push({ value: niceMax });
          }
          return ticks;
        }
        function relativeLabelSize(value, minSpacing, { horizontal, minRotation }) {
          const rad = toRadians(minRotation);
          const ratio = (horizontal ? Math.sin(rad) : Math.cos(rad)) || 1e-3;
          const length = 0.75 * minSpacing * ("" + value).length;
          return Math.min(minSpacing / ratio, length);
        }
        class LinearScaleBase extends Scale {
          constructor(cfg) {
            super(cfg);
            this.start = void 0;
            this.end = void 0;
            this._startValue = void 0;
            this._endValue = void 0;
            this._valueRange = 0;
          }
          parse(raw, index2) {
            if (isNullOrUndef(raw)) {
              return null;
            }
            if ((typeof raw === "number" || raw instanceof Number) && !isFinite(+raw)) {
              return null;
            }
            return +raw;
          }
          handleTickRangeOptions() {
            const { beginAtZero } = this.options;
            const { minDefined, maxDefined } = this.getUserBounds();
            let { min, max } = this;
            const setMin = (v) => min = minDefined ? min : v;
            const setMax = (v) => max = maxDefined ? max : v;
            if (beginAtZero) {
              const minSign = sign(min);
              const maxSign = sign(max);
              if (minSign < 0 && maxSign < 0) {
                setMax(0);
              } else if (minSign > 0 && maxSign > 0) {
                setMin(0);
              }
            }
            if (min === max) {
              let offset = 1;
              if (max >= Number.MAX_SAFE_INTEGER || min <= Number.MIN_SAFE_INTEGER) {
                offset = Math.abs(max * 0.05);
              }
              setMax(max + offset);
              if (!beginAtZero) {
                setMin(min - offset);
              }
            }
            this.min = min;
            this.max = max;
          }
          getTickLimit() {
            const tickOpts = this.options.ticks;
            let { maxTicksLimit, stepSize } = tickOpts;
            let maxTicks;
            if (stepSize) {
              maxTicks = Math.ceil(this.max / stepSize) - Math.floor(this.min / stepSize) + 1;
              if (maxTicks > 1e3) {
                console.warn(`scales.${this.id}.ticks.stepSize: ${stepSize} would result generating up to ${maxTicks} ticks. Limiting to 1000.`);
                maxTicks = 1e3;
              }
            } else {
              maxTicks = this.computeTickLimit();
              maxTicksLimit = maxTicksLimit || 11;
            }
            if (maxTicksLimit) {
              maxTicks = Math.min(maxTicksLimit, maxTicks);
            }
            return maxTicks;
          }
          computeTickLimit() {
            return Number.POSITIVE_INFINITY;
          }
          buildTicks() {
            const opts = this.options;
            const tickOpts = opts.ticks;
            let maxTicks = this.getTickLimit();
            maxTicks = Math.max(2, maxTicks);
            const numericGeneratorOptions = {
              maxTicks,
              bounds: opts.bounds,
              min: opts.min,
              max: opts.max,
              precision: tickOpts.precision,
              step: tickOpts.stepSize,
              count: tickOpts.count,
              maxDigits: this._maxDigits(),
              horizontal: this.isHorizontal(),
              minRotation: tickOpts.minRotation || 0,
              includeBounds: tickOpts.includeBounds !== false
            };
            const dataRange = this._range || this;
            const ticks = generateTicks$1(numericGeneratorOptions, dataRange);
            if (opts.bounds === "ticks") {
              _setMinAndMaxByKey(ticks, this, "value");
            }
            if (opts.reverse) {
              ticks.reverse();
              this.start = this.max;
              this.end = this.min;
            } else {
              this.start = this.min;
              this.end = this.max;
            }
            return ticks;
          }
          configure() {
            const ticks = this.ticks;
            let start = this.min;
            let end = this.max;
            super.configure();
            if (this.options.offset && ticks.length) {
              const offset = (end - start) / Math.max(ticks.length - 1, 1) / 2;
              start -= offset;
              end += offset;
            }
            this._startValue = start;
            this._endValue = end;
            this._valueRange = end - start;
          }
          getLabelForValue(value) {
            return formatNumber(value, this.chart.options.locale, this.options.ticks.format);
          }
        }
        class LinearScale extends LinearScaleBase {
          determineDataLimits() {
            const { min, max } = this.getMinMax(true);
            this.min = isNumberFinite(min) ? min : 0;
            this.max = isNumberFinite(max) ? max : 1;
            this.handleTickRangeOptions();
          }
          computeTickLimit() {
            const horizontal = this.isHorizontal();
            const length = horizontal ? this.width : this.height;
            const minRotation = toRadians(this.options.ticks.minRotation);
            const ratio = (horizontal ? Math.sin(minRotation) : Math.cos(minRotation)) || 1e-3;
            const tickFont = this._resolveTickFontOptions(0);
            return Math.ceil(length / Math.min(40, tickFont.lineHeight / ratio));
          }
          getPixelForValue(value) {
            return value === null ? NaN : this.getPixelForDecimal((value - this._startValue) / this._valueRange);
          }
          getValueForPixel(pixel) {
            return this._startValue + this.getDecimalForPixel(pixel) * this._valueRange;
          }
        }
        LinearScale.id = "linear";
        LinearScale.defaults = {
          ticks: {
            callback: Ticks.formatters.numeric
          }
        };
        function isMajor(tickVal) {
          const remain = tickVal / Math.pow(10, Math.floor(log10(tickVal)));
          return remain === 1;
        }
        function generateTicks(generationOptions, dataRange) {
          const endExp = Math.floor(log10(dataRange.max));
          const endSignificand = Math.ceil(dataRange.max / Math.pow(10, endExp));
          const ticks = [];
          let tickVal = finiteOrDefault(generationOptions.min, Math.pow(10, Math.floor(log10(dataRange.min))));
          let exp = Math.floor(log10(tickVal));
          let significand = Math.floor(tickVal / Math.pow(10, exp));
          let precision = exp < 0 ? Math.pow(10, Math.abs(exp)) : 1;
          do {
            ticks.push({ value: tickVal, major: isMajor(tickVal) });
            ++significand;
            if (significand === 10) {
              significand = 1;
              ++exp;
              precision = exp >= 0 ? 1 : precision;
            }
            tickVal = Math.round(significand * Math.pow(10, exp) * precision) / precision;
          } while (exp < endExp || exp === endExp && significand < endSignificand);
          const lastTick = finiteOrDefault(generationOptions.max, tickVal);
          ticks.push({ value: lastTick, major: isMajor(tickVal) });
          return ticks;
        }
        class LogarithmicScale extends Scale {
          constructor(cfg) {
            super(cfg);
            this.start = void 0;
            this.end = void 0;
            this._startValue = void 0;
            this._valueRange = 0;
          }
          parse(raw, index2) {
            const value = LinearScaleBase.prototype.parse.apply(this, [raw, index2]);
            if (value === 0) {
              this._zero = true;
              return void 0;
            }
            return isNumberFinite(value) && value > 0 ? value : null;
          }
          determineDataLimits() {
            const { min, max } = this.getMinMax(true);
            this.min = isNumberFinite(min) ? Math.max(0, min) : null;
            this.max = isNumberFinite(max) ? Math.max(0, max) : null;
            if (this.options.beginAtZero) {
              this._zero = true;
            }
            this.handleTickRangeOptions();
          }
          handleTickRangeOptions() {
            const { minDefined, maxDefined } = this.getUserBounds();
            let min = this.min;
            let max = this.max;
            const setMin = (v) => min = minDefined ? min : v;
            const setMax = (v) => max = maxDefined ? max : v;
            const exp = (v, m) => Math.pow(10, Math.floor(log10(v)) + m);
            if (min === max) {
              if (min <= 0) {
                setMin(1);
                setMax(10);
              } else {
                setMin(exp(min, -1));
                setMax(exp(max, 1));
              }
            }
            if (min <= 0) {
              setMin(exp(max, -1));
            }
            if (max <= 0) {
              setMax(exp(min, 1));
            }
            if (this._zero && this.min !== this._suggestedMin && min === exp(this.min, 0)) {
              setMin(exp(min, -1));
            }
            this.min = min;
            this.max = max;
          }
          buildTicks() {
            const opts = this.options;
            const generationOptions = {
              min: this._userMin,
              max: this._userMax
            };
            const ticks = generateTicks(generationOptions, this);
            if (opts.bounds === "ticks") {
              _setMinAndMaxByKey(ticks, this, "value");
            }
            if (opts.reverse) {
              ticks.reverse();
              this.start = this.max;
              this.end = this.min;
            } else {
              this.start = this.min;
              this.end = this.max;
            }
            return ticks;
          }
          getLabelForValue(value) {
            return value === void 0 ? "0" : formatNumber(value, this.chart.options.locale, this.options.ticks.format);
          }
          configure() {
            const start = this.min;
            super.configure();
            this._startValue = log10(start);
            this._valueRange = log10(this.max) - log10(start);
          }
          getPixelForValue(value) {
            if (value === void 0 || value === 0) {
              value = this.min;
            }
            if (value === null || isNaN(value)) {
              return NaN;
            }
            return this.getPixelForDecimal(value === this.min ? 0 : (log10(value) - this._startValue) / this._valueRange);
          }
          getValueForPixel(pixel) {
            const decimal = this.getDecimalForPixel(pixel);
            return Math.pow(10, this._startValue + decimal * this._valueRange);
          }
        }
        LogarithmicScale.id = "logarithmic";
        LogarithmicScale.defaults = {
          ticks: {
            callback: Ticks.formatters.logarithmic,
            major: {
              enabled: true
            }
          }
        };
        function getTickBackdropHeight(opts) {
          const tickOpts = opts.ticks;
          if (tickOpts.display && opts.display) {
            const padding = toPadding(tickOpts.backdropPadding);
            return valueOrDefault(tickOpts.font && tickOpts.font.size, defaults.font.size) + padding.height;
          }
          return 0;
        }
        function measureLabelSize(ctx, font, label) {
          label = isArray(label) ? label : [label];
          return {
            w: _longestText(ctx, font.string, label),
            h: label.length * font.lineHeight
          };
        }
        function determineLimits(angle, pos, size, min, max) {
          if (angle === min || angle === max) {
            return {
              start: pos - size / 2,
              end: pos + size / 2
            };
          } else if (angle < min || angle > max) {
            return {
              start: pos - size,
              end: pos
            };
          }
          return {
            start: pos,
            end: pos + size
          };
        }
        function fitWithPointLabels(scale) {
          const orig = {
            l: scale.left + scale._padding.left,
            r: scale.right - scale._padding.right,
            t: scale.top + scale._padding.top,
            b: scale.bottom - scale._padding.bottom
          };
          const limits = Object.assign({}, orig);
          const labelSizes = [];
          const padding = [];
          const valueCount = scale._pointLabels.length;
          const pointLabelOpts = scale.options.pointLabels;
          const additionalAngle = pointLabelOpts.centerPointLabels ? PI / valueCount : 0;
          for (let i = 0; i < valueCount; i++) {
            const opts = pointLabelOpts.setContext(scale.getPointLabelContext(i));
            padding[i] = opts.padding;
            const pointPosition = scale.getPointPosition(i, scale.drawingArea + padding[i], additionalAngle);
            const plFont = toFont(opts.font);
            const textSize = measureLabelSize(scale.ctx, plFont, scale._pointLabels[i]);
            labelSizes[i] = textSize;
            const angleRadians = _normalizeAngle(scale.getIndexAngle(i) + additionalAngle);
            const angle = Math.round(toDegrees(angleRadians));
            const hLimits = determineLimits(angle, pointPosition.x, textSize.w, 0, 180);
            const vLimits = determineLimits(angle, pointPosition.y, textSize.h, 90, 270);
            updateLimits(limits, orig, angleRadians, hLimits, vLimits);
          }
          scale.setCenterPoint(orig.l - limits.l, limits.r - orig.r, orig.t - limits.t, limits.b - orig.b);
          scale._pointLabelItems = buildPointLabelItems(scale, labelSizes, padding);
        }
        function updateLimits(limits, orig, angle, hLimits, vLimits) {
          const sin = Math.abs(Math.sin(angle));
          const cos = Math.abs(Math.cos(angle));
          let x = 0;
          let y = 0;
          if (hLimits.start < orig.l) {
            x = (orig.l - hLimits.start) / sin;
            limits.l = Math.min(limits.l, orig.l - x);
          } else if (hLimits.end > orig.r) {
            x = (hLimits.end - orig.r) / sin;
            limits.r = Math.max(limits.r, orig.r + x);
          }
          if (vLimits.start < orig.t) {
            y = (orig.t - vLimits.start) / cos;
            limits.t = Math.min(limits.t, orig.t - y);
          } else if (vLimits.end > orig.b) {
            y = (vLimits.end - orig.b) / cos;
            limits.b = Math.max(limits.b, orig.b + y);
          }
        }
        function buildPointLabelItems(scale, labelSizes, padding) {
          const items = [];
          const valueCount = scale._pointLabels.length;
          const opts = scale.options;
          const extra = getTickBackdropHeight(opts) / 2;
          const outerDistance = scale.drawingArea;
          const additionalAngle = opts.pointLabels.centerPointLabels ? PI / valueCount : 0;
          for (let i = 0; i < valueCount; i++) {
            const pointLabelPosition = scale.getPointPosition(i, outerDistance + extra + padding[i], additionalAngle);
            const angle = Math.round(toDegrees(_normalizeAngle(pointLabelPosition.angle + HALF_PI)));
            const size = labelSizes[i];
            const y = yForAngle(pointLabelPosition.y, size.h, angle);
            const textAlign = getTextAlignForAngle(angle);
            const left = leftForTextAlign(pointLabelPosition.x, size.w, textAlign);
            items.push({
              x: pointLabelPosition.x,
              y,
              textAlign,
              left,
              top: y,
              right: left + size.w,
              bottom: y + size.h
            });
          }
          return items;
        }
        function getTextAlignForAngle(angle) {
          if (angle === 0 || angle === 180) {
            return "center";
          } else if (angle < 180) {
            return "left";
          }
          return "right";
        }
        function leftForTextAlign(x, w, align) {
          if (align === "right") {
            x -= w;
          } else if (align === "center") {
            x -= w / 2;
          }
          return x;
        }
        function yForAngle(y, h, angle) {
          if (angle === 90 || angle === 270) {
            y -= h / 2;
          } else if (angle > 270 || angle < 90) {
            y -= h;
          }
          return y;
        }
        function drawPointLabels(scale, labelCount) {
          const { ctx, options: { pointLabels } } = scale;
          for (let i = labelCount - 1; i >= 0; i--) {
            const optsAtIndex = pointLabels.setContext(scale.getPointLabelContext(i));
            const plFont = toFont(optsAtIndex.font);
            const { x, y, textAlign, left, top, right, bottom } = scale._pointLabelItems[i];
            const { backdropColor } = optsAtIndex;
            if (!isNullOrUndef(backdropColor)) {
              const borderRadius = toTRBLCorners(optsAtIndex.borderRadius);
              const padding = toPadding(optsAtIndex.backdropPadding);
              ctx.fillStyle = backdropColor;
              const backdropLeft = left - padding.left;
              const backdropTop = top - padding.top;
              const backdropWidth = right - left + padding.width;
              const backdropHeight = bottom - top + padding.height;
              if (Object.values(borderRadius).some((v) => v !== 0)) {
                ctx.beginPath();
                addRoundedRectPath(ctx, {
                  x: backdropLeft,
                  y: backdropTop,
                  w: backdropWidth,
                  h: backdropHeight,
                  radius: borderRadius
                });
                ctx.fill();
              } else {
                ctx.fillRect(backdropLeft, backdropTop, backdropWidth, backdropHeight);
              }
            }
            renderText(ctx, scale._pointLabels[i], x, y + plFont.lineHeight / 2, plFont, {
              color: optsAtIndex.color,
              textAlign,
              textBaseline: "middle"
            });
          }
        }
        function pathRadiusLine(scale, radius, circular, labelCount) {
          const { ctx } = scale;
          if (circular) {
            ctx.arc(scale.xCenter, scale.yCenter, radius, 0, TAU);
          } else {
            let pointPosition = scale.getPointPosition(0, radius);
            ctx.moveTo(pointPosition.x, pointPosition.y);
            for (let i = 1; i < labelCount; i++) {
              pointPosition = scale.getPointPosition(i, radius);
              ctx.lineTo(pointPosition.x, pointPosition.y);
            }
          }
        }
        function drawRadiusLine(scale, gridLineOpts, radius, labelCount) {
          const ctx = scale.ctx;
          const circular = gridLineOpts.circular;
          const { color: color2, lineWidth } = gridLineOpts;
          if (!circular && !labelCount || !color2 || !lineWidth || radius < 0) {
            return;
          }
          ctx.save();
          ctx.strokeStyle = color2;
          ctx.lineWidth = lineWidth;
          ctx.setLineDash(gridLineOpts.borderDash);
          ctx.lineDashOffset = gridLineOpts.borderDashOffset;
          ctx.beginPath();
          pathRadiusLine(scale, radius, circular, labelCount);
          ctx.closePath();
          ctx.stroke();
          ctx.restore();
        }
        function createPointLabelContext(parent, index2, label) {
          return createContext(parent, {
            label,
            index: index2,
            type: "pointLabel"
          });
        }
        class RadialLinearScale extends LinearScaleBase {
          constructor(cfg) {
            super(cfg);
            this.xCenter = void 0;
            this.yCenter = void 0;
            this.drawingArea = void 0;
            this._pointLabels = [];
            this._pointLabelItems = [];
          }
          setDimensions() {
            const padding = this._padding = toPadding(getTickBackdropHeight(this.options) / 2);
            const w = this.width = this.maxWidth - padding.width;
            const h = this.height = this.maxHeight - padding.height;
            this.xCenter = Math.floor(this.left + w / 2 + padding.left);
            this.yCenter = Math.floor(this.top + h / 2 + padding.top);
            this.drawingArea = Math.floor(Math.min(w, h) / 2);
          }
          determineDataLimits() {
            const { min, max } = this.getMinMax(false);
            this.min = isNumberFinite(min) && !isNaN(min) ? min : 0;
            this.max = isNumberFinite(max) && !isNaN(max) ? max : 0;
            this.handleTickRangeOptions();
          }
          computeTickLimit() {
            return Math.ceil(this.drawingArea / getTickBackdropHeight(this.options));
          }
          generateTickLabels(ticks) {
            LinearScaleBase.prototype.generateTickLabels.call(this, ticks);
            this._pointLabels = this.getLabels().map((value, index2) => {
              const label = callback(this.options.pointLabels.callback, [value, index2], this);
              return label || label === 0 ? label : "";
            }).filter((v, i) => this.chart.getDataVisibility(i));
          }
          fit() {
            const opts = this.options;
            if (opts.display && opts.pointLabels.display) {
              fitWithPointLabels(this);
            } else {
              this.setCenterPoint(0, 0, 0, 0);
            }
          }
          setCenterPoint(leftMovement, rightMovement, topMovement, bottomMovement) {
            this.xCenter += Math.floor((leftMovement - rightMovement) / 2);
            this.yCenter += Math.floor((topMovement - bottomMovement) / 2);
            this.drawingArea -= Math.min(this.drawingArea / 2, Math.max(leftMovement, rightMovement, topMovement, bottomMovement));
          }
          getIndexAngle(index2) {
            const angleMultiplier = TAU / (this._pointLabels.length || 1);
            const startAngle = this.options.startAngle || 0;
            return _normalizeAngle(index2 * angleMultiplier + toRadians(startAngle));
          }
          getDistanceFromCenterForValue(value) {
            if (isNullOrUndef(value)) {
              return NaN;
            }
            const scalingFactor = this.drawingArea / (this.max - this.min);
            if (this.options.reverse) {
              return (this.max - value) * scalingFactor;
            }
            return (value - this.min) * scalingFactor;
          }
          getValueForDistanceFromCenter(distance) {
            if (isNullOrUndef(distance)) {
              return NaN;
            }
            const scaledDistance = distance / (this.drawingArea / (this.max - this.min));
            return this.options.reverse ? this.max - scaledDistance : this.min + scaledDistance;
          }
          getPointLabelContext(index2) {
            const pointLabels = this._pointLabels || [];
            if (index2 >= 0 && index2 < pointLabels.length) {
              const pointLabel = pointLabels[index2];
              return createPointLabelContext(this.getContext(), index2, pointLabel);
            }
          }
          getPointPosition(index2, distanceFromCenter, additionalAngle = 0) {
            const angle = this.getIndexAngle(index2) - HALF_PI + additionalAngle;
            return {
              x: Math.cos(angle) * distanceFromCenter + this.xCenter,
              y: Math.sin(angle) * distanceFromCenter + this.yCenter,
              angle
            };
          }
          getPointPositionForValue(index2, value) {
            return this.getPointPosition(index2, this.getDistanceFromCenterForValue(value));
          }
          getBasePosition(index2) {
            return this.getPointPositionForValue(index2 || 0, this.getBaseValue());
          }
          getPointLabelPosition(index2) {
            const { left, top, right, bottom } = this._pointLabelItems[index2];
            return {
              left,
              top,
              right,
              bottom
            };
          }
          drawBackground() {
            const { backgroundColor, grid: { circular } } = this.options;
            if (backgroundColor) {
              const ctx = this.ctx;
              ctx.save();
              ctx.beginPath();
              pathRadiusLine(this, this.getDistanceFromCenterForValue(this._endValue), circular, this._pointLabels.length);
              ctx.closePath();
              ctx.fillStyle = backgroundColor;
              ctx.fill();
              ctx.restore();
            }
          }
          drawGrid() {
            const ctx = this.ctx;
            const opts = this.options;
            const { angleLines, grid } = opts;
            const labelCount = this._pointLabels.length;
            let i, offset, position;
            if (opts.pointLabels.display) {
              drawPointLabels(this, labelCount);
            }
            if (grid.display) {
              this.ticks.forEach((tick, index2) => {
                if (index2 !== 0) {
                  offset = this.getDistanceFromCenterForValue(tick.value);
                  const optsAtIndex = grid.setContext(this.getContext(index2 - 1));
                  drawRadiusLine(this, optsAtIndex, offset, labelCount);
                }
              });
            }
            if (angleLines.display) {
              ctx.save();
              for (i = labelCount - 1; i >= 0; i--) {
                const optsAtIndex = angleLines.setContext(this.getPointLabelContext(i));
                const { color: color2, lineWidth } = optsAtIndex;
                if (!lineWidth || !color2) {
                  continue;
                }
                ctx.lineWidth = lineWidth;
                ctx.strokeStyle = color2;
                ctx.setLineDash(optsAtIndex.borderDash);
                ctx.lineDashOffset = optsAtIndex.borderDashOffset;
                offset = this.getDistanceFromCenterForValue(opts.ticks.reverse ? this.min : this.max);
                position = this.getPointPosition(i, offset);
                ctx.beginPath();
                ctx.moveTo(this.xCenter, this.yCenter);
                ctx.lineTo(position.x, position.y);
                ctx.stroke();
              }
              ctx.restore();
            }
          }
          drawBorder() {
          }
          drawLabels() {
            const ctx = this.ctx;
            const opts = this.options;
            const tickOpts = opts.ticks;
            if (!tickOpts.display) {
              return;
            }
            const startAngle = this.getIndexAngle(0);
            let offset, width;
            ctx.save();
            ctx.translate(this.xCenter, this.yCenter);
            ctx.rotate(startAngle);
            ctx.textAlign = "center";
            ctx.textBaseline = "middle";
            this.ticks.forEach((tick, index2) => {
              if (index2 === 0 && !opts.reverse) {
                return;
              }
              const optsAtIndex = tickOpts.setContext(this.getContext(index2));
              const tickFont = toFont(optsAtIndex.font);
              offset = this.getDistanceFromCenterForValue(this.ticks[index2].value);
              if (optsAtIndex.showLabelBackdrop) {
                ctx.font = tickFont.string;
                width = ctx.measureText(tick.label).width;
                ctx.fillStyle = optsAtIndex.backdropColor;
                const padding = toPadding(optsAtIndex.backdropPadding);
                ctx.fillRect(-width / 2 - padding.left, -offset - tickFont.size / 2 - padding.top, width + padding.width, tickFont.size + padding.height);
              }
              renderText(ctx, tick.label, 0, -offset, tickFont, {
                color: optsAtIndex.color
              });
            });
            ctx.restore();
          }
          drawTitle() {
          }
        }
        RadialLinearScale.id = "radialLinear";
        RadialLinearScale.defaults = {
          display: true,
          animate: true,
          position: "chartArea",
          angleLines: {
            display: true,
            lineWidth: 1,
            borderDash: [],
            borderDashOffset: 0
          },
          grid: {
            circular: false
          },
          startAngle: 0,
          ticks: {
            showLabelBackdrop: true,
            callback: Ticks.formatters.numeric
          },
          pointLabels: {
            backdropColor: void 0,
            backdropPadding: 2,
            display: true,
            font: {
              size: 10
            },
            callback(label) {
              return label;
            },
            padding: 5,
            centerPointLabels: false
          }
        };
        RadialLinearScale.defaultRoutes = {
          "angleLines.color": "borderColor",
          "pointLabels.color": "color",
          "ticks.color": "color"
        };
        RadialLinearScale.descriptors = {
          angleLines: {
            _fallback: "grid"
          }
        };
        const INTERVALS = {
          millisecond: { common: true, size: 1, steps: 1e3 },
          second: { common: true, size: 1e3, steps: 60 },
          minute: { common: true, size: 6e4, steps: 60 },
          hour: { common: true, size: 36e5, steps: 24 },
          day: { common: true, size: 864e5, steps: 30 },
          week: { common: false, size: 6048e5, steps: 4 },
          month: { common: true, size: 2628e6, steps: 12 },
          quarter: { common: false, size: 7884e6, steps: 4 },
          year: { common: true, size: 3154e7 }
        };
        const UNITS = Object.keys(INTERVALS);
        function sorter(a, b) {
          return a - b;
        }
        function parse(scale, input) {
          if (isNullOrUndef(input)) {
            return null;
          }
          const adapter = scale._adapter;
          const { parser, round: round2, isoWeekday } = scale._parseOpts;
          let value = input;
          if (typeof parser === "function") {
            value = parser(value);
          }
          if (!isNumberFinite(value)) {
            value = typeof parser === "string" ? adapter.parse(value, parser) : adapter.parse(value);
          }
          if (value === null) {
            return null;
          }
          if (round2) {
            value = round2 === "week" && (isNumber(isoWeekday) || isoWeekday === true) ? adapter.startOf(value, "isoWeek", isoWeekday) : adapter.startOf(value, round2);
          }
          return +value;
        }
        function determineUnitForAutoTicks(minUnit, min, max, capacity) {
          const ilen = UNITS.length;
          for (let i = UNITS.indexOf(minUnit); i < ilen - 1; ++i) {
            const interval = INTERVALS[UNITS[i]];
            const factor = interval.steps ? interval.steps : Number.MAX_SAFE_INTEGER;
            if (interval.common && Math.ceil((max - min) / (factor * interval.size)) <= capacity) {
              return UNITS[i];
            }
          }
          return UNITS[ilen - 1];
        }
        function determineUnitForFormatting(scale, numTicks, minUnit, min, max) {
          for (let i = UNITS.length - 1; i >= UNITS.indexOf(minUnit); i--) {
            const unit = UNITS[i];
            if (INTERVALS[unit].common && scale._adapter.diff(max, min, unit) >= numTicks - 1) {
              return unit;
            }
          }
          return UNITS[minUnit ? UNITS.indexOf(minUnit) : 0];
        }
        function determineMajorUnit(unit) {
          for (let i = UNITS.indexOf(unit) + 1, ilen = UNITS.length; i < ilen; ++i) {
            if (INTERVALS[UNITS[i]].common) {
              return UNITS[i];
            }
          }
        }
        function addTick(ticks, time, timestamps) {
          if (!timestamps) {
            ticks[time] = true;
          } else if (timestamps.length) {
            const { lo, hi } = _lookup(timestamps, time);
            const timestamp = timestamps[lo] >= time ? timestamps[lo] : timestamps[hi];
            ticks[timestamp] = true;
          }
        }
        function setMajorTicks(scale, ticks, map2, majorUnit) {
          const adapter = scale._adapter;
          const first = +adapter.startOf(ticks[0].value, majorUnit);
          const last = ticks[ticks.length - 1].value;
          let major, index2;
          for (major = first; major <= last; major = +adapter.add(major, 1, majorUnit)) {
            index2 = map2[major];
            if (index2 >= 0) {
              ticks[index2].major = true;
            }
          }
          return ticks;
        }
        function ticksFromTimestamps(scale, values, majorUnit) {
          const ticks = [];
          const map2 = {};
          const ilen = values.length;
          let i, value;
          for (i = 0; i < ilen; ++i) {
            value = values[i];
            map2[value] = i;
            ticks.push({
              value,
              major: false
            });
          }
          return ilen === 0 || !majorUnit ? ticks : setMajorTicks(scale, ticks, map2, majorUnit);
        }
        class TimeScale extends Scale {
          constructor(props) {
            super(props);
            this._cache = {
              data: [],
              labels: [],
              all: []
            };
            this._unit = "day";
            this._majorUnit = void 0;
            this._offsets = {};
            this._normalized = false;
            this._parseOpts = void 0;
          }
          init(scaleOpts, opts) {
            const time = scaleOpts.time || (scaleOpts.time = {});
            const adapter = this._adapter = new _adapters._date(scaleOpts.adapters.date);
            mergeIf(time.displayFormats, adapter.formats());
            this._parseOpts = {
              parser: time.parser,
              round: time.round,
              isoWeekday: time.isoWeekday
            };
            super.init(scaleOpts);
            this._normalized = opts.normalized;
          }
          parse(raw, index2) {
            if (raw === void 0) {
              return null;
            }
            return parse(this, raw);
          }
          beforeLayout() {
            super.beforeLayout();
            this._cache = {
              data: [],
              labels: [],
              all: []
            };
          }
          determineDataLimits() {
            const options = this.options;
            const adapter = this._adapter;
            const unit = options.time.unit || "day";
            let { min, max, minDefined, maxDefined } = this.getUserBounds();
            function _applyBounds(bounds) {
              if (!minDefined && !isNaN(bounds.min)) {
                min = Math.min(min, bounds.min);
              }
              if (!maxDefined && !isNaN(bounds.max)) {
                max = Math.max(max, bounds.max);
              }
            }
            if (!minDefined || !maxDefined) {
              _applyBounds(this._getLabelBounds());
              if (options.bounds !== "ticks" || options.ticks.source !== "labels") {
                _applyBounds(this.getMinMax(false));
              }
            }
            min = isNumberFinite(min) && !isNaN(min) ? min : +adapter.startOf(Date.now(), unit);
            max = isNumberFinite(max) && !isNaN(max) ? max : +adapter.endOf(Date.now(), unit) + 1;
            this.min = Math.min(min, max - 1);
            this.max = Math.max(min + 1, max);
          }
          _getLabelBounds() {
            const arr = this.getLabelTimestamps();
            let min = Number.POSITIVE_INFINITY;
            let max = Number.NEGATIVE_INFINITY;
            if (arr.length) {
              min = arr[0];
              max = arr[arr.length - 1];
            }
            return { min, max };
          }
          buildTicks() {
            const options = this.options;
            const timeOpts = options.time;
            const tickOpts = options.ticks;
            const timestamps = tickOpts.source === "labels" ? this.getLabelTimestamps() : this._generate();
            if (options.bounds === "ticks" && timestamps.length) {
              this.min = this._userMin || timestamps[0];
              this.max = this._userMax || timestamps[timestamps.length - 1];
            }
            const min = this.min;
            const max = this.max;
            const ticks = _filterBetween(timestamps, min, max);
            this._unit = timeOpts.unit || (tickOpts.autoSkip ? determineUnitForAutoTicks(timeOpts.minUnit, this.min, this.max, this._getLabelCapacity(min)) : determineUnitForFormatting(this, ticks.length, timeOpts.minUnit, this.min, this.max));
            this._majorUnit = !tickOpts.major.enabled || this._unit === "year" ? void 0 : determineMajorUnit(this._unit);
            this.initOffsets(timestamps);
            if (options.reverse) {
              ticks.reverse();
            }
            return ticksFromTimestamps(this, ticks, this._majorUnit);
          }
          afterAutoSkip() {
            if (this.options.offsetAfterAutoskip) {
              this.initOffsets(this.ticks.map((tick) => +tick.value));
            }
          }
          initOffsets(timestamps) {
            let start = 0;
            let end = 0;
            let first, last;
            if (this.options.offset && timestamps.length) {
              first = this.getDecimalForValue(timestamps[0]);
              if (timestamps.length === 1) {
                start = 1 - first;
              } else {
                start = (this.getDecimalForValue(timestamps[1]) - first) / 2;
              }
              last = this.getDecimalForValue(timestamps[timestamps.length - 1]);
              if (timestamps.length === 1) {
                end = last;
              } else {
                end = (last - this.getDecimalForValue(timestamps[timestamps.length - 2])) / 2;
              }
            }
            const limit = timestamps.length < 3 ? 0.5 : 0.25;
            start = _limitValue(start, 0, limit);
            end = _limitValue(end, 0, limit);
            this._offsets = { start, end, factor: 1 / (start + 1 + end) };
          }
          _generate() {
            const adapter = this._adapter;
            const min = this.min;
            const max = this.max;
            const options = this.options;
            const timeOpts = options.time;
            const minor = timeOpts.unit || determineUnitForAutoTicks(timeOpts.minUnit, min, max, this._getLabelCapacity(min));
            const stepSize = valueOrDefault(timeOpts.stepSize, 1);
            const weekday = minor === "week" ? timeOpts.isoWeekday : false;
            const hasWeekday = isNumber(weekday) || weekday === true;
            const ticks = {};
            let first = min;
            let time, count;
            if (hasWeekday) {
              first = +adapter.startOf(first, "isoWeek", weekday);
            }
            first = +adapter.startOf(first, hasWeekday ? "day" : minor);
            if (adapter.diff(max, min, minor) > 1e5 * stepSize) {
              throw new Error(min + " and " + max + " are too far apart with stepSize of " + stepSize + " " + minor);
            }
            const timestamps = options.ticks.source === "data" && this.getDataTimestamps();
            for (time = first, count = 0; time < max; time = +adapter.add(time, stepSize, minor), count++) {
              addTick(ticks, time, timestamps);
            }
            if (time === max || options.bounds === "ticks" || count === 1) {
              addTick(ticks, time, timestamps);
            }
            return Object.keys(ticks).sort((a, b) => a - b).map((x) => +x);
          }
          getLabelForValue(value) {
            const adapter = this._adapter;
            const timeOpts = this.options.time;
            if (timeOpts.tooltipFormat) {
              return adapter.format(value, timeOpts.tooltipFormat);
            }
            return adapter.format(value, timeOpts.displayFormats.datetime);
          }
          _tickFormatFunction(time, index2, ticks, format) {
            const options = this.options;
            const formats = options.time.displayFormats;
            const unit = this._unit;
            const majorUnit = this._majorUnit;
            const minorFormat = unit && formats[unit];
            const majorFormat = majorUnit && formats[majorUnit];
            const tick = ticks[index2];
            const major = majorUnit && majorFormat && tick && tick.major;
            const label = this._adapter.format(time, format || (major ? majorFormat : minorFormat));
            const formatter = options.ticks.callback;
            return formatter ? callback(formatter, [label, index2, ticks], this) : label;
          }
          generateTickLabels(ticks) {
            let i, ilen, tick;
            for (i = 0, ilen = ticks.length; i < ilen; ++i) {
              tick = ticks[i];
              tick.label = this._tickFormatFunction(tick.value, i, ticks);
            }
          }
          getDecimalForValue(value) {
            return value === null ? NaN : (value - this.min) / (this.max - this.min);
          }
          getPixelForValue(value) {
            const offsets = this._offsets;
            const pos = this.getDecimalForValue(value);
            return this.getPixelForDecimal((offsets.start + pos) * offsets.factor);
          }
          getValueForPixel(pixel) {
            const offsets = this._offsets;
            const pos = this.getDecimalForPixel(pixel) / offsets.factor - offsets.end;
            return this.min + pos * (this.max - this.min);
          }
          _getLabelSize(label) {
            const ticksOpts = this.options.ticks;
            const tickLabelWidth = this.ctx.measureText(label).width;
            const angle = toRadians(this.isHorizontal() ? ticksOpts.maxRotation : ticksOpts.minRotation);
            const cosRotation = Math.cos(angle);
            const sinRotation = Math.sin(angle);
            const tickFontSize = this._resolveTickFontOptions(0).size;
            return {
              w: tickLabelWidth * cosRotation + tickFontSize * sinRotation,
              h: tickLabelWidth * sinRotation + tickFontSize * cosRotation
            };
          }
          _getLabelCapacity(exampleTime) {
            const timeOpts = this.options.time;
            const displayFormats = timeOpts.displayFormats;
            const format = displayFormats[timeOpts.unit] || displayFormats.millisecond;
            const exampleLabel = this._tickFormatFunction(exampleTime, 0, ticksFromTimestamps(this, [exampleTime], this._majorUnit), format);
            const size = this._getLabelSize(exampleLabel);
            const capacity = Math.floor(this.isHorizontal() ? this.width / size.w : this.height / size.h) - 1;
            return capacity > 0 ? capacity : 1;
          }
          getDataTimestamps() {
            let timestamps = this._cache.data || [];
            let i, ilen;
            if (timestamps.length) {
              return timestamps;
            }
            const metas = this.getMatchingVisibleMetas();
            if (this._normalized && metas.length) {
              return this._cache.data = metas[0].controller.getAllParsedValues(this);
            }
            for (i = 0, ilen = metas.length; i < ilen; ++i) {
              timestamps = timestamps.concat(metas[i].controller.getAllParsedValues(this));
            }
            return this._cache.data = this.normalize(timestamps);
          }
          getLabelTimestamps() {
            const timestamps = this._cache.labels || [];
            let i, ilen;
            if (timestamps.length) {
              return timestamps;
            }
            const labels = this.getLabels();
            for (i = 0, ilen = labels.length; i < ilen; ++i) {
              timestamps.push(parse(this, labels[i]));
            }
            return this._cache.labels = this._normalized ? timestamps : this.normalize(timestamps);
          }
          normalize(values) {
            return _arrayUnique(values.sort(sorter));
          }
        }
        TimeScale.id = "time";
        TimeScale.defaults = {
          bounds: "data",
          adapters: {},
          time: {
            parser: false,
            unit: false,
            round: false,
            isoWeekday: false,
            minUnit: "millisecond",
            displayFormats: {}
          },
          ticks: {
            source: "auto",
            major: {
              enabled: false
            }
          }
        };
        function interpolate(table, val, reverse) {
          let lo = 0;
          let hi = table.length - 1;
          let prevSource, nextSource, prevTarget, nextTarget;
          if (reverse) {
            if (val >= table[lo].pos && val <= table[hi].pos) {
              ({ lo, hi } = _lookupByKey(table, "pos", val));
            }
            ({ pos: prevSource, time: prevTarget } = table[lo]);
            ({ pos: nextSource, time: nextTarget } = table[hi]);
          } else {
            if (val >= table[lo].time && val <= table[hi].time) {
              ({ lo, hi } = _lookupByKey(table, "time", val));
            }
            ({ time: prevSource, pos: prevTarget } = table[lo]);
            ({ time: nextSource, pos: nextTarget } = table[hi]);
          }
          const span = nextSource - prevSource;
          return span ? prevTarget + (nextTarget - prevTarget) * (val - prevSource) / span : prevTarget;
        }
        class TimeSeriesScale extends TimeScale {
          constructor(props) {
            super(props);
            this._table = [];
            this._minPos = void 0;
            this._tableRange = void 0;
          }
          initOffsets() {
            const timestamps = this._getTimestampsForTable();
            const table = this._table = this.buildLookupTable(timestamps);
            this._minPos = interpolate(table, this.min);
            this._tableRange = interpolate(table, this.max) - this._minPos;
            super.initOffsets(timestamps);
          }
          buildLookupTable(timestamps) {
            const { min, max } = this;
            const items = [];
            const table = [];
            let i, ilen, prev, curr, next;
            for (i = 0, ilen = timestamps.length; i < ilen; ++i) {
              curr = timestamps[i];
              if (curr >= min && curr <= max) {
                items.push(curr);
              }
            }
            if (items.length < 2) {
              return [
                { time: min, pos: 0 },
                { time: max, pos: 1 }
              ];
            }
            for (i = 0, ilen = items.length; i < ilen; ++i) {
              next = items[i + 1];
              prev = items[i - 1];
              curr = items[i];
              if (Math.round((next + prev) / 2) !== curr) {
                table.push({ time: curr, pos: i / (ilen - 1) });
              }
            }
            return table;
          }
          _getTimestampsForTable() {
            let timestamps = this._cache.all || [];
            if (timestamps.length) {
              return timestamps;
            }
            const data = this.getDataTimestamps();
            const label = this.getLabelTimestamps();
            if (data.length && label.length) {
              timestamps = this.normalize(data.concat(label));
            } else {
              timestamps = data.length ? data : label;
            }
            timestamps = this._cache.all = timestamps;
            return timestamps;
          }
          getDecimalForValue(value) {
            return (interpolate(this._table, value) - this._minPos) / this._tableRange;
          }
          getValueForPixel(pixel) {
            const offsets = this._offsets;
            const decimal = this.getDecimalForPixel(pixel) / offsets.factor - offsets.end;
            return interpolate(this._table, decimal * this._tableRange + this._minPos, true);
          }
        }
        TimeSeriesScale.id = "timeseries";
        TimeSeriesScale.defaults = TimeScale.defaults;
        var scales = /* @__PURE__ */ Object.freeze({
          __proto__: null,
          CategoryScale,
          LinearScale,
          LogarithmicScale,
          RadialLinearScale,
          TimeScale,
          TimeSeriesScale
        });
        Chart3.register(controllers, scales, elements, plugins);
        Chart3.helpers = __spreadValues({}, helpers);
        Chart3._adapters = _adapters;
        Chart3.Animation = Animation;
        Chart3.Animations = Animations;
        Chart3.animator = animator;
        Chart3.controllers = registry.controllers.items;
        Chart3.DatasetController = DatasetController;
        Chart3.Element = Element2;
        Chart3.elements = elements;
        Chart3.Interaction = Interaction;
        Chart3.layouts = layouts;
        Chart3.platforms = platforms;
        Chart3.Scale = Scale;
        Chart3.Ticks = Ticks;
        Object.assign(Chart3, controllers, scales, elements, plugins, platforms);
        Chart3.Chart = Chart3;
        if (typeof window !== "undefined") {
          window.Chart = Chart3;
        }
        return Chart3;
      });
    }
  });

  // node_modules/chart.js/helpers/helpers.js
  var require_helpers = __commonJS({
    "node_modules/chart.js/helpers/helpers.js"(exports, module) {
      module.exports = require_chart().helpers;
    }
  });

  // node_modules/chartjs-plugin-datalabels/dist/chartjs-plugin-datalabels.js
  var require_chartjs_plugin_datalabels = __commonJS({
    "node_modules/chartjs-plugin-datalabels/dist/chartjs-plugin-datalabels.js"(exports, module) {
      (function(global2, factory) {
        typeof exports === "object" && typeof module !== "undefined" ? module.exports = factory(require_helpers(), require_chart()) : typeof define === "function" && define.amd ? define(["chart.js/helpers", "chart.js"], factory) : (global2 = typeof globalThis !== "undefined" ? globalThis : global2 || self, global2.ChartDataLabels = factory(global2.Chart.helpers, global2.Chart));
      })(exports, function(helpers, chart_js) {
        "use strict";
        var devicePixelRatio = function() {
          if (typeof window !== "undefined") {
            if (window.devicePixelRatio) {
              return window.devicePixelRatio;
            }
            var screen = window.screen;
            if (screen) {
              return (screen.deviceXDPI || 1) / (screen.logicalXDPI || 1);
            }
          }
          return 1;
        }();
        var utils = {
          toTextLines: function(inputs) {
            var lines = [];
            var input;
            inputs = [].concat(inputs);
            while (inputs.length) {
              input = inputs.pop();
              if (typeof input === "string") {
                lines.unshift.apply(lines, input.split("\n"));
              } else if (Array.isArray(input)) {
                inputs.push.apply(inputs, input);
              } else if (!helpers.isNullOrUndef(inputs)) {
                lines.unshift("" + input);
              }
            }
            return lines;
          },
          textSize: function(ctx, lines, font) {
            var items = [].concat(lines);
            var ilen = items.length;
            var prev = ctx.font;
            var width = 0;
            var i;
            ctx.font = font.string;
            for (i = 0; i < ilen; ++i) {
              width = Math.max(ctx.measureText(items[i]).width, width);
            }
            ctx.font = prev;
            return {
              height: ilen * font.lineHeight,
              width
            };
          },
          bound: function(min, value, max) {
            return Math.max(min, Math.min(value, max));
          },
          arrayDiff: function(a0, a1) {
            var prev = a0.slice();
            var updates = [];
            var i, j, ilen, v;
            for (i = 0, ilen = a1.length; i < ilen; ++i) {
              v = a1[i];
              j = prev.indexOf(v);
              if (j === -1) {
                updates.push([v, 1]);
              } else {
                prev.splice(j, 1);
              }
            }
            for (i = 0, ilen = prev.length; i < ilen; ++i) {
              updates.push([prev[i], -1]);
            }
            return updates;
          },
          rasterize: function(v) {
            return Math.round(v * devicePixelRatio) / devicePixelRatio;
          }
        };
        function orient(point, origin) {
          var x0 = origin.x;
          var y0 = origin.y;
          if (x0 === null) {
            return { x: 0, y: -1 };
          }
          if (y0 === null) {
            return { x: 1, y: 0 };
          }
          var dx = point.x - x0;
          var dy = point.y - y0;
          var ln = Math.sqrt(dx * dx + dy * dy);
          return {
            x: ln ? dx / ln : 0,
            y: ln ? dy / ln : -1
          };
        }
        function aligned(x, y, vx, vy, align) {
          switch (align) {
            case "center":
              vx = vy = 0;
              break;
            case "bottom":
              vx = 0;
              vy = 1;
              break;
            case "right":
              vx = 1;
              vy = 0;
              break;
            case "left":
              vx = -1;
              vy = 0;
              break;
            case "top":
              vx = 0;
              vy = -1;
              break;
            case "start":
              vx = -vx;
              vy = -vy;
              break;
            case "end":
              break;
            default:
              align *= Math.PI / 180;
              vx = Math.cos(align);
              vy = Math.sin(align);
              break;
          }
          return {
            x,
            y,
            vx,
            vy
          };
        }
        var R_INSIDE = 0;
        var R_LEFT = 1;
        var R_RIGHT = 2;
        var R_BOTTOM = 4;
        var R_TOP = 8;
        function region(x, y, rect) {
          var res = R_INSIDE;
          if (x < rect.left) {
            res |= R_LEFT;
          } else if (x > rect.right) {
            res |= R_RIGHT;
          }
          if (y < rect.top) {
            res |= R_TOP;
          } else if (y > rect.bottom) {
            res |= R_BOTTOM;
          }
          return res;
        }
        function clipped(segment, area) {
          var x0 = segment.x0;
          var y0 = segment.y0;
          var x1 = segment.x1;
          var y1 = segment.y1;
          var r0 = region(x0, y0, area);
          var r1 = region(x1, y1, area);
          var r, x, y;
          while (true) {
            if (!(r0 | r1) || r0 & r1) {
              break;
            }
            r = r0 || r1;
            if (r & R_TOP) {
              x = x0 + (x1 - x0) * (area.top - y0) / (y1 - y0);
              y = area.top;
            } else if (r & R_BOTTOM) {
              x = x0 + (x1 - x0) * (area.bottom - y0) / (y1 - y0);
              y = area.bottom;
            } else if (r & R_RIGHT) {
              y = y0 + (y1 - y0) * (area.right - x0) / (x1 - x0);
              x = area.right;
            } else if (r & R_LEFT) {
              y = y0 + (y1 - y0) * (area.left - x0) / (x1 - x0);
              x = area.left;
            }
            if (r === r0) {
              x0 = x;
              y0 = y;
              r0 = region(x0, y0, area);
            } else {
              x1 = x;
              y1 = y;
              r1 = region(x1, y1, area);
            }
          }
          return {
            x0,
            x1,
            y0,
            y1
          };
        }
        function compute$1(range2, config) {
          var anchor = config.anchor;
          var segment = range2;
          var x, y;
          if (config.clamp) {
            segment = clipped(segment, config.area);
          }
          if (anchor === "start") {
            x = segment.x0;
            y = segment.y0;
          } else if (anchor === "end") {
            x = segment.x1;
            y = segment.y1;
          } else {
            x = (segment.x0 + segment.x1) / 2;
            y = (segment.y0 + segment.y1) / 2;
          }
          return aligned(x, y, range2.vx, range2.vy, config.align);
        }
        var positioners = {
          arc: function(el, config) {
            var angle = (el.startAngle + el.endAngle) / 2;
            var vx = Math.cos(angle);
            var vy = Math.sin(angle);
            var r0 = el.innerRadius;
            var r1 = el.outerRadius;
            return compute$1({
              x0: el.x + vx * r0,
              y0: el.y + vy * r0,
              x1: el.x + vx * r1,
              y1: el.y + vy * r1,
              vx,
              vy
            }, config);
          },
          point: function(el, config) {
            var v = orient(el, config.origin);
            var rx = v.x * el.options.radius;
            var ry = v.y * el.options.radius;
            return compute$1({
              x0: el.x - rx,
              y0: el.y - ry,
              x1: el.x + rx,
              y1: el.y + ry,
              vx: v.x,
              vy: v.y
            }, config);
          },
          bar: function(el, config) {
            var v = orient(el, config.origin);
            var x = el.x;
            var y = el.y;
            var sx = 0;
            var sy = 0;
            if (el.horizontal) {
              x = Math.min(el.x, el.base);
              sx = Math.abs(el.base - el.x);
            } else {
              y = Math.min(el.y, el.base);
              sy = Math.abs(el.base - el.y);
            }
            return compute$1({
              x0: x,
              y0: y + sy,
              x1: x + sx,
              y1: y,
              vx: v.x,
              vy: v.y
            }, config);
          },
          fallback: function(el, config) {
            var v = orient(el, config.origin);
            return compute$1({
              x0: el.x,
              y0: el.y,
              x1: el.x,
              y1: el.y,
              vx: v.x,
              vy: v.y
            }, config);
          }
        };
        var rasterize = utils.rasterize;
        function boundingRects(model) {
          var borderWidth = model.borderWidth || 0;
          var padding = model.padding;
          var th = model.size.height;
          var tw = model.size.width;
          var tx = -tw / 2;
          var ty = -th / 2;
          return {
            frame: {
              x: tx - padding.left - borderWidth,
              y: ty - padding.top - borderWidth,
              w: tw + padding.width + borderWidth * 2,
              h: th + padding.height + borderWidth * 2
            },
            text: {
              x: tx,
              y: ty,
              w: tw,
              h: th
            }
          };
        }
        function getScaleOrigin(el, context) {
          var scale = context.chart.getDatasetMeta(context.datasetIndex).vScale;
          if (!scale) {
            return null;
          }
          if (scale.xCenter !== void 0 && scale.yCenter !== void 0) {
            return { x: scale.xCenter, y: scale.yCenter };
          }
          var pixel = scale.getBasePixel();
          return el.horizontal ? { x: pixel, y: null } : { x: null, y: pixel };
        }
        function getPositioner(el) {
          if (el instanceof chart_js.ArcElement) {
            return positioners.arc;
          }
          if (el instanceof chart_js.PointElement) {
            return positioners.point;
          }
          if (el instanceof chart_js.BarElement) {
            return positioners.bar;
          }
          return positioners.fallback;
        }
        function drawRoundedRect(ctx, x, y, w, h, radius) {
          var HALF_PI = Math.PI / 2;
          if (radius) {
            var r = Math.min(radius, h / 2, w / 2);
            var left = x + r;
            var top = y + r;
            var right = x + w - r;
            var bottom = y + h - r;
            ctx.moveTo(x, top);
            if (left < right && top < bottom) {
              ctx.arc(left, top, r, -Math.PI, -HALF_PI);
              ctx.arc(right, top, r, -HALF_PI, 0);
              ctx.arc(right, bottom, r, 0, HALF_PI);
              ctx.arc(left, bottom, r, HALF_PI, Math.PI);
            } else if (left < right) {
              ctx.moveTo(left, y);
              ctx.arc(right, top, r, -HALF_PI, HALF_PI);
              ctx.arc(left, top, r, HALF_PI, Math.PI + HALF_PI);
            } else if (top < bottom) {
              ctx.arc(left, top, r, -Math.PI, 0);
              ctx.arc(left, bottom, r, 0, Math.PI);
            } else {
              ctx.arc(left, top, r, -Math.PI, Math.PI);
            }
            ctx.closePath();
            ctx.moveTo(x, y);
          } else {
            ctx.rect(x, y, w, h);
          }
        }
        function drawFrame(ctx, rect, model) {
          var bgColor = model.backgroundColor;
          var borderColor = model.borderColor;
          var borderWidth = model.borderWidth;
          if (!bgColor && (!borderColor || !borderWidth)) {
            return;
          }
          ctx.beginPath();
          drawRoundedRect(ctx, rasterize(rect.x) + borderWidth / 2, rasterize(rect.y) + borderWidth / 2, rasterize(rect.w) - borderWidth, rasterize(rect.h) - borderWidth, model.borderRadius);
          ctx.closePath();
          if (bgColor) {
            ctx.fillStyle = bgColor;
            ctx.fill();
          }
          if (borderColor && borderWidth) {
            ctx.strokeStyle = borderColor;
            ctx.lineWidth = borderWidth;
            ctx.lineJoin = "miter";
            ctx.stroke();
          }
        }
        function textGeometry(rect, align, font) {
          var h = font.lineHeight;
          var w = rect.w;
          var x = rect.x;
          var y = rect.y + h / 2;
          if (align === "center") {
            x += w / 2;
          } else if (align === "end" || align === "right") {
            x += w;
          }
          return {
            h,
            w,
            x,
            y
          };
        }
        function drawTextLine(ctx, text, cfg) {
          var shadow = ctx.shadowBlur;
          var stroked = cfg.stroked;
          var x = rasterize(cfg.x);
          var y = rasterize(cfg.y);
          var w = rasterize(cfg.w);
          if (stroked) {
            ctx.strokeText(text, x, y, w);
          }
          if (cfg.filled) {
            if (shadow && stroked) {
              ctx.shadowBlur = 0;
            }
            ctx.fillText(text, x, y, w);
            if (shadow && stroked) {
              ctx.shadowBlur = shadow;
            }
          }
        }
        function drawText(ctx, lines, rect, model) {
          var align = model.textAlign;
          var color = model.color;
          var filled = !!color;
          var font = model.font;
          var ilen = lines.length;
          var strokeColor = model.textStrokeColor;
          var strokeWidth = model.textStrokeWidth;
          var stroked = strokeColor && strokeWidth;
          var i;
          if (!ilen || !filled && !stroked) {
            return;
          }
          rect = textGeometry(rect, align, font);
          ctx.font = font.string;
          ctx.textAlign = align;
          ctx.textBaseline = "middle";
          ctx.shadowBlur = model.textShadowBlur;
          ctx.shadowColor = model.textShadowColor;
          if (filled) {
            ctx.fillStyle = color;
          }
          if (stroked) {
            ctx.lineJoin = "round";
            ctx.lineWidth = strokeWidth;
            ctx.strokeStyle = strokeColor;
          }
          for (i = 0, ilen = lines.length; i < ilen; ++i) {
            drawTextLine(ctx, lines[i], {
              stroked,
              filled,
              w: rect.w,
              x: rect.x,
              y: rect.y + rect.h * i
            });
          }
        }
        var Label = function(config, ctx, el, index) {
          var me = this;
          me._config = config;
          me._index = index;
          me._model = null;
          me._rects = null;
          me._ctx = ctx;
          me._el = el;
        };
        helpers.merge(Label.prototype, {
          _modelize: function(display, lines, config, context) {
            var me = this;
            var index = me._index;
            var font = helpers.toFont(helpers.resolve([config.font, {}], context, index));
            var color = helpers.resolve([config.color, chart_js.defaults.color], context, index);
            return {
              align: helpers.resolve([config.align, "center"], context, index),
              anchor: helpers.resolve([config.anchor, "center"], context, index),
              area: context.chart.chartArea,
              backgroundColor: helpers.resolve([config.backgroundColor, null], context, index),
              borderColor: helpers.resolve([config.borderColor, null], context, index),
              borderRadius: helpers.resolve([config.borderRadius, 0], context, index),
              borderWidth: helpers.resolve([config.borderWidth, 0], context, index),
              clamp: helpers.resolve([config.clamp, false], context, index),
              clip: helpers.resolve([config.clip, false], context, index),
              color,
              display,
              font,
              lines,
              offset: helpers.resolve([config.offset, 0], context, index),
              opacity: helpers.resolve([config.opacity, 1], context, index),
              origin: getScaleOrigin(me._el, context),
              padding: helpers.toPadding(helpers.resolve([config.padding, 0], context, index)),
              positioner: getPositioner(me._el),
              rotation: helpers.resolve([config.rotation, 0], context, index) * (Math.PI / 180),
              size: utils.textSize(me._ctx, lines, font),
              textAlign: helpers.resolve([config.textAlign, "start"], context, index),
              textShadowBlur: helpers.resolve([config.textShadowBlur, 0], context, index),
              textShadowColor: helpers.resolve([config.textShadowColor, color], context, index),
              textStrokeColor: helpers.resolve([config.textStrokeColor, color], context, index),
              textStrokeWidth: helpers.resolve([config.textStrokeWidth, 0], context, index)
            };
          },
          update: function(context) {
            var me = this;
            var model = null;
            var rects = null;
            var index = me._index;
            var config = me._config;
            var value, label, lines;
            var display = helpers.resolve([config.display, true], context, index);
            if (display) {
              value = context.dataset.data[index];
              label = helpers.valueOrDefault(helpers.callback(config.formatter, [value, context]), value);
              lines = helpers.isNullOrUndef(label) ? [] : utils.toTextLines(label);
              if (lines.length) {
                model = me._modelize(display, lines, config, context);
                rects = boundingRects(model);
              }
            }
            me._model = model;
            me._rects = rects;
          },
          geometry: function() {
            return this._rects ? this._rects.frame : {};
          },
          rotation: function() {
            return this._model ? this._model.rotation : 0;
          },
          visible: function() {
            return this._model && this._model.opacity;
          },
          model: function() {
            return this._model;
          },
          draw: function(chart2, center) {
            var me = this;
            var ctx = chart2.ctx;
            var model = me._model;
            var rects = me._rects;
            var area;
            if (!this.visible()) {
              return;
            }
            ctx.save();
            if (model.clip) {
              area = model.area;
              ctx.beginPath();
              ctx.rect(area.left, area.top, area.right - area.left, area.bottom - area.top);
              ctx.clip();
            }
            ctx.globalAlpha = utils.bound(0, model.opacity, 1);
            ctx.translate(rasterize(center.x), rasterize(center.y));
            ctx.rotate(model.rotation);
            drawFrame(ctx, rects.frame, model);
            drawText(ctx, model.lines, rects.text, model);
            ctx.restore();
          }
        });
        var MIN_INTEGER = Number.MIN_SAFE_INTEGER || -9007199254740991;
        var MAX_INTEGER = Number.MAX_SAFE_INTEGER || 9007199254740991;
        function rotated(point, center, angle) {
          var cos = Math.cos(angle);
          var sin = Math.sin(angle);
          var cx = center.x;
          var cy = center.y;
          return {
            x: cx + cos * (point.x - cx) - sin * (point.y - cy),
            y: cy + sin * (point.x - cx) + cos * (point.y - cy)
          };
        }
        function projected(points, axis) {
          var min = MAX_INTEGER;
          var max = MIN_INTEGER;
          var origin = axis.origin;
          var i, pt, vx, vy, dp;
          for (i = 0; i < points.length; ++i) {
            pt = points[i];
            vx = pt.x - origin.x;
            vy = pt.y - origin.y;
            dp = axis.vx * vx + axis.vy * vy;
            min = Math.min(min, dp);
            max = Math.max(max, dp);
          }
          return {
            min,
            max
          };
        }
        function toAxis(p0, p1) {
          var vx = p1.x - p0.x;
          var vy = p1.y - p0.y;
          var ln = Math.sqrt(vx * vx + vy * vy);
          return {
            vx: (p1.x - p0.x) / ln,
            vy: (p1.y - p0.y) / ln,
            origin: p0,
            ln
          };
        }
        var HitBox = function() {
          this._rotation = 0;
          this._rect = {
            x: 0,
            y: 0,
            w: 0,
            h: 0
          };
        };
        helpers.merge(HitBox.prototype, {
          center: function() {
            var r = this._rect;
            return {
              x: r.x + r.w / 2,
              y: r.y + r.h / 2
            };
          },
          update: function(center, rect, rotation) {
            this._rotation = rotation;
            this._rect = {
              x: rect.x + center.x,
              y: rect.y + center.y,
              w: rect.w,
              h: rect.h
            };
          },
          contains: function(point) {
            var me = this;
            var margin = 1;
            var rect = me._rect;
            point = rotated(point, me.center(), -me._rotation);
            return !(point.x < rect.x - margin || point.y < rect.y - margin || point.x > rect.x + rect.w + margin * 2 || point.y > rect.y + rect.h + margin * 2);
          },
          intersects: function(other) {
            var r0 = this._points();
            var r1 = other._points();
            var axes = [
              toAxis(r0[0], r0[1]),
              toAxis(r0[0], r0[3])
            ];
            var i, pr0, pr1;
            if (this._rotation !== other._rotation) {
              axes.push(toAxis(r1[0], r1[1]), toAxis(r1[0], r1[3]));
            }
            for (i = 0; i < axes.length; ++i) {
              pr0 = projected(r0, axes[i]);
              pr1 = projected(r1, axes[i]);
              if (pr0.max < pr1.min || pr1.max < pr0.min) {
                return false;
              }
            }
            return true;
          },
          _points: function() {
            var me = this;
            var rect = me._rect;
            var angle = me._rotation;
            var center = me.center();
            return [
              rotated({ x: rect.x, y: rect.y }, center, angle),
              rotated({ x: rect.x + rect.w, y: rect.y }, center, angle),
              rotated({ x: rect.x + rect.w, y: rect.y + rect.h }, center, angle),
              rotated({ x: rect.x, y: rect.y + rect.h }, center, angle)
            ];
          }
        });
        function coordinates(el, model, geometry) {
          var point = model.positioner(el, model);
          var vx = point.vx;
          var vy = point.vy;
          if (!vx && !vy) {
            return { x: point.x, y: point.y };
          }
          var w = geometry.w;
          var h = geometry.h;
          var rotation = model.rotation;
          var dx = Math.abs(w / 2 * Math.cos(rotation)) + Math.abs(h / 2 * Math.sin(rotation));
          var dy = Math.abs(w / 2 * Math.sin(rotation)) + Math.abs(h / 2 * Math.cos(rotation));
          var vs = 1 / Math.max(Math.abs(vx), Math.abs(vy));
          dx *= vx * vs;
          dy *= vy * vs;
          dx += model.offset * vx;
          dy += model.offset * vy;
          return {
            x: point.x + dx,
            y: point.y + dy
          };
        }
        function collide(labels, collider) {
          var i, j, s0, s1;
          for (i = labels.length - 1; i >= 0; --i) {
            s0 = labels[i].$layout;
            for (j = i - 1; j >= 0 && s0._visible; --j) {
              s1 = labels[j].$layout;
              if (s1._visible && s0._box.intersects(s1._box)) {
                collider(s0, s1);
              }
            }
          }
          return labels;
        }
        function compute(labels) {
          var i, ilen, label, state, geometry, center, proxy;
          for (i = 0, ilen = labels.length; i < ilen; ++i) {
            label = labels[i];
            state = label.$layout;
            if (state._visible) {
              proxy = new Proxy(label._el, { get: (el, p) => el.getProps([p], true)[p] });
              geometry = label.geometry();
              center = coordinates(proxy, label.model(), geometry);
              state._box.update(center, geometry, label.rotation());
            }
          }
          return collide(labels, function(s0, s1) {
            var h0 = s0._hidable;
            var h1 = s1._hidable;
            if (h0 && h1 || h1) {
              s1._visible = false;
            } else if (h0) {
              s0._visible = false;
            }
          });
        }
        var layout = {
          prepare: function(datasets) {
            var labels = [];
            var i, j, ilen, jlen, label;
            for (i = 0, ilen = datasets.length; i < ilen; ++i) {
              for (j = 0, jlen = datasets[i].length; j < jlen; ++j) {
                label = datasets[i][j];
                labels.push(label);
                label.$layout = {
                  _box: new HitBox(),
                  _hidable: false,
                  _visible: true,
                  _set: i,
                  _idx: j
                };
              }
            }
            labels.sort(function(a, b) {
              var sa = a.$layout;
              var sb = b.$layout;
              return sa._idx === sb._idx ? sb._set - sa._set : sb._idx - sa._idx;
            });
            this.update(labels);
            return labels;
          },
          update: function(labels) {
            var dirty = false;
            var i, ilen, label, model, state;
            for (i = 0, ilen = labels.length; i < ilen; ++i) {
              label = labels[i];
              model = label.model();
              state = label.$layout;
              state._hidable = model && model.display === "auto";
              state._visible = label.visible();
              dirty |= state._hidable;
            }
            if (dirty) {
              compute(labels);
            }
          },
          lookup: function(labels, point) {
            var i, state;
            for (i = labels.length - 1; i >= 0; --i) {
              state = labels[i].$layout;
              if (state && state._visible && state._box.contains(point)) {
                return labels[i];
              }
            }
            return null;
          },
          draw: function(chart2, labels) {
            var i, ilen, label, state, geometry, center;
            for (i = 0, ilen = labels.length; i < ilen; ++i) {
              label = labels[i];
              state = label.$layout;
              if (state._visible) {
                geometry = label.geometry();
                center = coordinates(label._el, label.model(), geometry);
                state._box.update(center, geometry, label.rotation());
                label.draw(chart2, center);
              }
            }
          }
        };
        var formatter = function(value) {
          if (helpers.isNullOrUndef(value)) {
            return null;
          }
          var label = value;
          var keys, klen, k;
          if (helpers.isObject(value)) {
            if (!helpers.isNullOrUndef(value.label)) {
              label = value.label;
            } else if (!helpers.isNullOrUndef(value.r)) {
              label = value.r;
            } else {
              label = "";
              keys = Object.keys(value);
              for (k = 0, klen = keys.length; k < klen; ++k) {
                label += (k !== 0 ? ", " : "") + keys[k] + ": " + value[keys[k]];
              }
            }
          }
          return "" + label;
        };
        var defaults = {
          align: "center",
          anchor: "center",
          backgroundColor: null,
          borderColor: null,
          borderRadius: 0,
          borderWidth: 0,
          clamp: false,
          clip: false,
          color: void 0,
          display: true,
          font: {
            family: void 0,
            lineHeight: 1.2,
            size: void 0,
            style: void 0,
            weight: null
          },
          formatter,
          labels: void 0,
          listeners: {},
          offset: 4,
          opacity: 1,
          padding: {
            top: 4,
            right: 4,
            bottom: 4,
            left: 4
          },
          rotation: 0,
          textAlign: "start",
          textStrokeColor: void 0,
          textStrokeWidth: 0,
          textShadowBlur: 0,
          textShadowColor: void 0
        };
        var EXPANDO_KEY = "$datalabels";
        var DEFAULT_KEY = "$default";
        function configure(dataset, options) {
          var override = dataset.datalabels;
          var listeners = {};
          var configs = [];
          var labels, keys;
          if (override === false) {
            return null;
          }
          if (override === true) {
            override = {};
          }
          options = helpers.merge({}, [options, override]);
          labels = options.labels || {};
          keys = Object.keys(labels);
          delete options.labels;
          if (keys.length) {
            keys.forEach(function(key) {
              if (labels[key]) {
                configs.push(helpers.merge({}, [
                  options,
                  labels[key],
                  { _key: key }
                ]));
              }
            });
          } else {
            configs.push(options);
          }
          listeners = configs.reduce(function(target, config) {
            helpers.each(config.listeners || {}, function(fn, event) {
              target[event] = target[event] || {};
              target[event][config._key || DEFAULT_KEY] = fn;
            });
            delete config.listeners;
            return target;
          }, {});
          return {
            labels: configs,
            listeners
          };
        }
        function dispatchEvent(chart2, listeners, label) {
          if (!listeners) {
            return;
          }
          var context = label.$context;
          var groups = label.$groups;
          var callback;
          if (!listeners[groups._set]) {
            return;
          }
          callback = listeners[groups._set][groups._key];
          if (!callback) {
            return;
          }
          if (helpers.callback(callback, [context]) === true) {
            chart2[EXPANDO_KEY]._dirty = true;
            label.update(context);
          }
        }
        function dispatchMoveEvents(chart2, listeners, previous, label) {
          var enter, leave;
          if (!previous && !label) {
            return;
          }
          if (!previous) {
            enter = true;
          } else if (!label) {
            leave = true;
          } else if (previous !== label) {
            leave = enter = true;
          }
          if (leave) {
            dispatchEvent(chart2, listeners.leave, previous);
          }
          if (enter) {
            dispatchEvent(chart2, listeners.enter, label);
          }
        }
        function handleMoveEvents(chart2, event) {
          var expando = chart2[EXPANDO_KEY];
          var listeners = expando._listeners;
          var previous, label;
          if (!listeners.enter && !listeners.leave) {
            return;
          }
          if (event.type === "mousemove") {
            label = layout.lookup(expando._labels, event);
          } else if (event.type !== "mouseout") {
            return;
          }
          previous = expando._hovered;
          expando._hovered = label;
          dispatchMoveEvents(chart2, listeners, previous, label);
        }
        function handleClickEvents(chart2, event) {
          var expando = chart2[EXPANDO_KEY];
          var handlers = expando._listeners.click;
          var label = handlers && layout.lookup(expando._labels, event);
          if (label) {
            dispatchEvent(chart2, handlers, label);
          }
        }
        var plugin = {
          id: "datalabels",
          defaults,
          beforeInit: function(chart2) {
            chart2[EXPANDO_KEY] = {
              _actives: []
            };
          },
          beforeUpdate: function(chart2) {
            var expando = chart2[EXPANDO_KEY];
            expando._listened = false;
            expando._listeners = {};
            expando._datasets = [];
            expando._labels = [];
          },
          afterDatasetUpdate: function(chart2, args, options) {
            var datasetIndex = args.index;
            var expando = chart2[EXPANDO_KEY];
            var labels = expando._datasets[datasetIndex] = [];
            var visible = chart2.isDatasetVisible(datasetIndex);
            var dataset = chart2.data.datasets[datasetIndex];
            var config = configure(dataset, options);
            var elements = args.meta.data || [];
            var ctx = chart2.ctx;
            var i, j, ilen, jlen, cfg, key, el, label;
            ctx.save();
            for (i = 0, ilen = elements.length; i < ilen; ++i) {
              el = elements[i];
              el[EXPANDO_KEY] = [];
              if (visible && el && chart2.getDataVisibility(i) && !el.skip) {
                for (j = 0, jlen = config.labels.length; j < jlen; ++j) {
                  cfg = config.labels[j];
                  key = cfg._key;
                  label = new Label(cfg, ctx, el, i);
                  label.$groups = {
                    _set: datasetIndex,
                    _key: key || DEFAULT_KEY
                  };
                  label.$context = {
                    active: false,
                    chart: chart2,
                    dataIndex: i,
                    dataset,
                    datasetIndex
                  };
                  label.update(label.$context);
                  el[EXPANDO_KEY].push(label);
                  labels.push(label);
                }
              }
            }
            ctx.restore();
            helpers.merge(expando._listeners, config.listeners, {
              merger: function(event, target, source) {
                target[event] = target[event] || {};
                target[event][args.index] = source[event];
                expando._listened = true;
              }
            });
          },
          afterUpdate: function(chart2, options) {
            chart2[EXPANDO_KEY]._labels = layout.prepare(chart2[EXPANDO_KEY]._datasets, options);
          },
          afterDatasetsDraw: function(chart2) {
            layout.draw(chart2, chart2[EXPANDO_KEY]._labels);
          },
          beforeEvent: function(chart2, args) {
            if (chart2[EXPANDO_KEY]._listened) {
              var event = args.event;
              switch (event.type) {
                case "mousemove":
                case "mouseout":
                  handleMoveEvents(chart2, event);
                  break;
                case "click":
                  handleClickEvents(chart2, event);
                  break;
              }
            }
          },
          afterEvent: function(chart2) {
            var expando = chart2[EXPANDO_KEY];
            var previous = expando._actives;
            var actives = expando._actives = chart2.getActiveElements();
            var updates = utils.arrayDiff(previous, actives);
            var i, ilen, j, jlen, update, label, labels;
            for (i = 0, ilen = updates.length; i < ilen; ++i) {
              update = updates[i];
              if (update[1]) {
                labels = update[0].element[EXPANDO_KEY] || [];
                for (j = 0, jlen = labels.length; j < jlen; ++j) {
                  label = labels[j];
                  label.$context.active = update[1] === 1;
                  label.update(label.$context);
                }
              }
            }
            if (expando._dirty || updates.length) {
              layout.update(expando._labels);
              chart2.render();
            }
            delete expando._dirty;
          }
        };
        return plugin;
      });
    }
  });

  // node_modules/bootstrap-icons/font/bootstrap-icons.css
  var require_ = __commonJS({
    "node_modules/bootstrap-icons/font/bootstrap-icons.css"(exports, module) {
      module.exports = {};
    }
  });

  // node_modules/material-icons/iconfont/material-icons.css
  var require_2 = __commonJS({
    "node_modules/material-icons/iconfont/material-icons.css"(exports, module) {
      module.exports = {};
    }
  });

  // ../deps/phoenix_html/priv/static/phoenix_html.js
  "use strict";
  (function() {
    var PolyfillEvent = eventConstructor();
    function eventConstructor() {
      if (typeof window.CustomEvent === "function")
        return window.CustomEvent;
      function CustomEvent2(event, params) {
        params = params || { bubbles: false, cancelable: false, detail: void 0 };
        var evt = document.createEvent("CustomEvent");
        evt.initCustomEvent(event, params.bubbles, params.cancelable, params.detail);
        return evt;
      }
      CustomEvent2.prototype = window.Event.prototype;
      return CustomEvent2;
    }
    function buildHiddenInput(name, value) {
      var input = document.createElement("input");
      input.type = "hidden";
      input.name = name;
      input.value = value;
      return input;
    }
    function handleClick(element, targetModifierKey) {
      var to = element.getAttribute("data-to"), method = buildHiddenInput("_method", element.getAttribute("data-method")), csrf = buildHiddenInput("_csrf_token", element.getAttribute("data-csrf")), form = document.createElement("form"), target = element.getAttribute("target");
      form.method = element.getAttribute("data-method") === "get" ? "get" : "post";
      form.action = to;
      form.style.display = "hidden";
      if (target)
        form.target = target;
      else if (targetModifierKey)
        form.target = "_blank";
      form.appendChild(csrf);
      form.appendChild(method);
      document.body.appendChild(form);
      form.submit();
    }
    window.addEventListener("click", function(e) {
      var element = e.target;
      if (e.defaultPrevented)
        return;
      while (element && element.getAttribute) {
        var phoenixLinkEvent = new PolyfillEvent("phoenix.link.click", {
          "bubbles": true,
          "cancelable": true
        });
        if (!element.dispatchEvent(phoenixLinkEvent)) {
          e.preventDefault();
          e.stopImmediatePropagation();
          return false;
        }
        if (element.getAttribute("data-method")) {
          handleClick(element, e.metaKey || e.shiftKey);
          e.preventDefault();
          return false;
        } else {
          element = element.parentNode;
        }
      }
    }, false);
    window.addEventListener("phoenix.link.click", function(e) {
      var message = e.target.getAttribute("data-confirm");
      if (message && !window.confirm(message)) {
        e.preventDefault();
      }
    }, false);
  })();

  // ../deps/phoenix/priv/static/phoenix.esm.js
  var closure = (value) => {
    if (typeof value === "function") {
      return value;
    } else {
      let closure22 = function() {
        return value;
      };
      return closure22;
    }
  };
  var globalSelf = typeof self !== "undefined" ? self : null;
  var phxWindow = typeof window !== "undefined" ? window : null;
  var global = globalSelf || phxWindow || void 0;
  var DEFAULT_VSN = "2.0.0";
  var SOCKET_STATES = { connecting: 0, open: 1, closing: 2, closed: 3 };
  var DEFAULT_TIMEOUT = 1e4;
  var WS_CLOSE_NORMAL = 1e3;
  var CHANNEL_STATES = {
    closed: "closed",
    errored: "errored",
    joined: "joined",
    joining: "joining",
    leaving: "leaving"
  };
  var CHANNEL_EVENTS = {
    close: "phx_close",
    error: "phx_error",
    join: "phx_join",
    reply: "phx_reply",
    leave: "phx_leave"
  };
  var TRANSPORTS = {
    longpoll: "longpoll",
    websocket: "websocket"
  };
  var XHR_STATES = {
    complete: 4
  };
  var Push = class {
    constructor(channel, event, payload, timeout) {
      this.channel = channel;
      this.event = event;
      this.payload = payload || function() {
        return {};
      };
      this.receivedResp = null;
      this.timeout = timeout;
      this.timeoutTimer = null;
      this.recHooks = [];
      this.sent = false;
    }
    resend(timeout) {
      this.timeout = timeout;
      this.reset();
      this.send();
    }
    send() {
      if (this.hasReceived("timeout")) {
        return;
      }
      this.startTimeout();
      this.sent = true;
      this.channel.socket.push({
        topic: this.channel.topic,
        event: this.event,
        payload: this.payload(),
        ref: this.ref,
        join_ref: this.channel.joinRef()
      });
    }
    receive(status, callback) {
      if (this.hasReceived(status)) {
        callback(this.receivedResp.response);
      }
      this.recHooks.push({ status, callback });
      return this;
    }
    reset() {
      this.cancelRefEvent();
      this.ref = null;
      this.refEvent = null;
      this.receivedResp = null;
      this.sent = false;
    }
    matchReceive({ status, response, _ref }) {
      this.recHooks.filter((h) => h.status === status).forEach((h) => h.callback(response));
    }
    cancelRefEvent() {
      if (!this.refEvent) {
        return;
      }
      this.channel.off(this.refEvent);
    }
    cancelTimeout() {
      clearTimeout(this.timeoutTimer);
      this.timeoutTimer = null;
    }
    startTimeout() {
      if (this.timeoutTimer) {
        this.cancelTimeout();
      }
      this.ref = this.channel.socket.makeRef();
      this.refEvent = this.channel.replyEventName(this.ref);
      this.channel.on(this.refEvent, (payload) => {
        this.cancelRefEvent();
        this.cancelTimeout();
        this.receivedResp = payload;
        this.matchReceive(payload);
      });
      this.timeoutTimer = setTimeout(() => {
        this.trigger("timeout", {});
      }, this.timeout);
    }
    hasReceived(status) {
      return this.receivedResp && this.receivedResp.status === status;
    }
    trigger(status, response) {
      this.channel.trigger(this.refEvent, { status, response });
    }
  };
  var Timer = class {
    constructor(callback, timerCalc) {
      this.callback = callback;
      this.timerCalc = timerCalc;
      this.timer = null;
      this.tries = 0;
    }
    reset() {
      this.tries = 0;
      clearTimeout(this.timer);
    }
    scheduleTimeout() {
      clearTimeout(this.timer);
      this.timer = setTimeout(() => {
        this.tries = this.tries + 1;
        this.callback();
      }, this.timerCalc(this.tries + 1));
    }
  };
  var Channel = class {
    constructor(topic, params, socket) {
      this.state = CHANNEL_STATES.closed;
      this.topic = topic;
      this.params = closure(params || {});
      this.socket = socket;
      this.bindings = [];
      this.bindingRef = 0;
      this.timeout = this.socket.timeout;
      this.joinedOnce = false;
      this.joinPush = new Push(this, CHANNEL_EVENTS.join, this.params, this.timeout);
      this.pushBuffer = [];
      this.stateChangeRefs = [];
      this.rejoinTimer = new Timer(() => {
        if (this.socket.isConnected()) {
          this.rejoin();
        }
      }, this.socket.rejoinAfterMs);
      this.stateChangeRefs.push(this.socket.onError(() => this.rejoinTimer.reset()));
      this.stateChangeRefs.push(this.socket.onOpen(() => {
        this.rejoinTimer.reset();
        if (this.isErrored()) {
          this.rejoin();
        }
      }));
      this.joinPush.receive("ok", () => {
        this.state = CHANNEL_STATES.joined;
        this.rejoinTimer.reset();
        this.pushBuffer.forEach((pushEvent) => pushEvent.send());
        this.pushBuffer = [];
      });
      this.joinPush.receive("error", () => {
        this.state = CHANNEL_STATES.errored;
        if (this.socket.isConnected()) {
          this.rejoinTimer.scheduleTimeout();
        }
      });
      this.onClose(() => {
        this.rejoinTimer.reset();
        if (this.socket.hasLogger())
          this.socket.log("channel", `close ${this.topic} ${this.joinRef()}`);
        this.state = CHANNEL_STATES.closed;
        this.socket.remove(this);
      });
      this.onError((reason) => {
        if (this.socket.hasLogger())
          this.socket.log("channel", `error ${this.topic}`, reason);
        if (this.isJoining()) {
          this.joinPush.reset();
        }
        this.state = CHANNEL_STATES.errored;
        if (this.socket.isConnected()) {
          this.rejoinTimer.scheduleTimeout();
        }
      });
      this.joinPush.receive("timeout", () => {
        if (this.socket.hasLogger())
          this.socket.log("channel", `timeout ${this.topic} (${this.joinRef()})`, this.joinPush.timeout);
        let leavePush = new Push(this, CHANNEL_EVENTS.leave, closure({}), this.timeout);
        leavePush.send();
        this.state = CHANNEL_STATES.errored;
        this.joinPush.reset();
        if (this.socket.isConnected()) {
          this.rejoinTimer.scheduleTimeout();
        }
      });
      this.on(CHANNEL_EVENTS.reply, (payload, ref) => {
        this.trigger(this.replyEventName(ref), payload);
      });
    }
    join(timeout = this.timeout) {
      if (this.joinedOnce) {
        throw new Error("tried to join multiple times. 'join' can only be called a single time per channel instance");
      } else {
        this.timeout = timeout;
        this.joinedOnce = true;
        this.rejoin();
        return this.joinPush;
      }
    }
    onClose(callback) {
      this.on(CHANNEL_EVENTS.close, callback);
    }
    onError(callback) {
      return this.on(CHANNEL_EVENTS.error, (reason) => callback(reason));
    }
    on(event, callback) {
      let ref = this.bindingRef++;
      this.bindings.push({ event, ref, callback });
      return ref;
    }
    off(event, ref) {
      this.bindings = this.bindings.filter((bind) => {
        return !(bind.event === event && (typeof ref === "undefined" || ref === bind.ref));
      });
    }
    canPush() {
      return this.socket.isConnected() && this.isJoined();
    }
    push(event, payload, timeout = this.timeout) {
      payload = payload || {};
      if (!this.joinedOnce) {
        throw new Error(`tried to push '${event}' to '${this.topic}' before joining. Use channel.join() before pushing events`);
      }
      let pushEvent = new Push(this, event, function() {
        return payload;
      }, timeout);
      if (this.canPush()) {
        pushEvent.send();
      } else {
        pushEvent.startTimeout();
        this.pushBuffer.push(pushEvent);
      }
      return pushEvent;
    }
    leave(timeout = this.timeout) {
      this.rejoinTimer.reset();
      this.joinPush.cancelTimeout();
      this.state = CHANNEL_STATES.leaving;
      let onClose = () => {
        if (this.socket.hasLogger())
          this.socket.log("channel", `leave ${this.topic}`);
        this.trigger(CHANNEL_EVENTS.close, "leave");
      };
      let leavePush = new Push(this, CHANNEL_EVENTS.leave, closure({}), timeout);
      leavePush.receive("ok", () => onClose()).receive("timeout", () => onClose());
      leavePush.send();
      if (!this.canPush()) {
        leavePush.trigger("ok", {});
      }
      return leavePush;
    }
    onMessage(_event, payload, _ref) {
      return payload;
    }
    isMember(topic, event, payload, joinRef) {
      if (this.topic !== topic) {
        return false;
      }
      if (joinRef && joinRef !== this.joinRef()) {
        if (this.socket.hasLogger())
          this.socket.log("channel", "dropping outdated message", { topic, event, payload, joinRef });
        return false;
      } else {
        return true;
      }
    }
    joinRef() {
      return this.joinPush.ref;
    }
    rejoin(timeout = this.timeout) {
      if (this.isLeaving()) {
        return;
      }
      this.socket.leaveOpenTopic(this.topic);
      this.state = CHANNEL_STATES.joining;
      this.joinPush.resend(timeout);
    }
    trigger(event, payload, ref, joinRef) {
      let handledPayload = this.onMessage(event, payload, ref, joinRef);
      if (payload && !handledPayload) {
        throw new Error("channel onMessage callbacks must return the payload, modified or unmodified");
      }
      let eventBindings = this.bindings.filter((bind) => bind.event === event);
      for (let i = 0; i < eventBindings.length; i++) {
        let bind = eventBindings[i];
        bind.callback(handledPayload, ref, joinRef || this.joinRef());
      }
    }
    replyEventName(ref) {
      return `chan_reply_${ref}`;
    }
    isClosed() {
      return this.state === CHANNEL_STATES.closed;
    }
    isErrored() {
      return this.state === CHANNEL_STATES.errored;
    }
    isJoined() {
      return this.state === CHANNEL_STATES.joined;
    }
    isJoining() {
      return this.state === CHANNEL_STATES.joining;
    }
    isLeaving() {
      return this.state === CHANNEL_STATES.leaving;
    }
  };
  var Ajax = class {
    static request(method, endPoint, accept, body, timeout, ontimeout, callback) {
      if (global.XDomainRequest) {
        let req = new global.XDomainRequest();
        this.xdomainRequest(req, method, endPoint, body, timeout, ontimeout, callback);
      } else {
        let req = new global.XMLHttpRequest();
        this.xhrRequest(req, method, endPoint, accept, body, timeout, ontimeout, callback);
      }
    }
    static xdomainRequest(req, method, endPoint, body, timeout, ontimeout, callback) {
      req.timeout = timeout;
      req.open(method, endPoint);
      req.onload = () => {
        let response = this.parseJSON(req.responseText);
        callback && callback(response);
      };
      if (ontimeout) {
        req.ontimeout = ontimeout;
      }
      req.onprogress = () => {
      };
      req.send(body);
    }
    static xhrRequest(req, method, endPoint, accept, body, timeout, ontimeout, callback) {
      req.open(method, endPoint, true);
      req.timeout = timeout;
      req.setRequestHeader("Content-Type", accept);
      req.onerror = () => {
        callback && callback(null);
      };
      req.onreadystatechange = () => {
        if (req.readyState === XHR_STATES.complete && callback) {
          let response = this.parseJSON(req.responseText);
          callback(response);
        }
      };
      if (ontimeout) {
        req.ontimeout = ontimeout;
      }
      req.send(body);
    }
    static parseJSON(resp) {
      if (!resp || resp === "") {
        return null;
      }
      try {
        return JSON.parse(resp);
      } catch (e) {
        console && console.log("failed to parse JSON response", resp);
        return null;
      }
    }
    static serialize(obj, parentKey) {
      let queryStr = [];
      for (var key in obj) {
        if (!Object.prototype.hasOwnProperty.call(obj, key)) {
          continue;
        }
        let paramKey = parentKey ? `${parentKey}[${key}]` : key;
        let paramVal = obj[key];
        if (typeof paramVal === "object") {
          queryStr.push(this.serialize(paramVal, paramKey));
        } else {
          queryStr.push(encodeURIComponent(paramKey) + "=" + encodeURIComponent(paramVal));
        }
      }
      return queryStr.join("&");
    }
    static appendParams(url, params) {
      if (Object.keys(params).length === 0) {
        return url;
      }
      let prefix = url.match(/\?/) ? "&" : "?";
      return `${url}${prefix}${this.serialize(params)}`;
    }
  };
  var LongPoll = class {
    constructor(endPoint) {
      this.endPoint = null;
      this.token = null;
      this.skipHeartbeat = true;
      this.onopen = function() {
      };
      this.onerror = function() {
      };
      this.onmessage = function() {
      };
      this.onclose = function() {
      };
      this.pollEndpoint = this.normalizeEndpoint(endPoint);
      this.readyState = SOCKET_STATES.connecting;
      this.poll();
    }
    normalizeEndpoint(endPoint) {
      return endPoint.replace("ws://", "http://").replace("wss://", "https://").replace(new RegExp("(.*)/" + TRANSPORTS.websocket), "$1/" + TRANSPORTS.longpoll);
    }
    endpointURL() {
      return Ajax.appendParams(this.pollEndpoint, { token: this.token });
    }
    closeAndRetry() {
      this.close();
      this.readyState = SOCKET_STATES.connecting;
    }
    ontimeout() {
      this.onerror("timeout");
      this.closeAndRetry();
    }
    poll() {
      if (!(this.readyState === SOCKET_STATES.open || this.readyState === SOCKET_STATES.connecting)) {
        return;
      }
      Ajax.request("GET", this.endpointURL(), "application/json", null, this.timeout, this.ontimeout.bind(this), (resp) => {
        if (resp) {
          var { status, token, messages } = resp;
          this.token = token;
        } else {
          status = 0;
        }
        switch (status) {
          case 200:
            messages.forEach((msg) => {
              setTimeout(() => {
                this.onmessage({ data: msg });
              }, 0);
            });
            this.poll();
            break;
          case 204:
            this.poll();
            break;
          case 410:
            this.readyState = SOCKET_STATES.open;
            this.onopen();
            this.poll();
            break;
          case 403:
            this.onerror();
            this.close();
            break;
          case 0:
          case 500:
            this.onerror();
            this.closeAndRetry();
            break;
          default:
            throw new Error(`unhandled poll status ${status}`);
        }
      });
    }
    send(body) {
      Ajax.request("POST", this.endpointURL(), "application/json", body, this.timeout, this.onerror.bind(this, "timeout"), (resp) => {
        if (!resp || resp.status !== 200) {
          this.onerror(resp && resp.status);
          this.closeAndRetry();
        }
      });
    }
    close(_code, _reason) {
      this.readyState = SOCKET_STATES.closed;
      this.onclose();
    }
  };
  var serializer_default = {
    HEADER_LENGTH: 1,
    META_LENGTH: 4,
    KINDS: { push: 0, reply: 1, broadcast: 2 },
    encode(msg, callback) {
      if (msg.payload.constructor === ArrayBuffer) {
        return callback(this.binaryEncode(msg));
      } else {
        let payload = [msg.join_ref, msg.ref, msg.topic, msg.event, msg.payload];
        return callback(JSON.stringify(payload));
      }
    },
    decode(rawPayload, callback) {
      if (rawPayload.constructor === ArrayBuffer) {
        return callback(this.binaryDecode(rawPayload));
      } else {
        let [join_ref, ref, topic, event, payload] = JSON.parse(rawPayload);
        return callback({ join_ref, ref, topic, event, payload });
      }
    },
    binaryEncode(message) {
      let { join_ref, ref, event, topic, payload } = message;
      let metaLength = this.META_LENGTH + join_ref.length + ref.length + topic.length + event.length;
      let header = new ArrayBuffer(this.HEADER_LENGTH + metaLength);
      let view = new DataView(header);
      let offset = 0;
      view.setUint8(offset++, this.KINDS.push);
      view.setUint8(offset++, join_ref.length);
      view.setUint8(offset++, ref.length);
      view.setUint8(offset++, topic.length);
      view.setUint8(offset++, event.length);
      Array.from(join_ref, (char) => view.setUint8(offset++, char.charCodeAt(0)));
      Array.from(ref, (char) => view.setUint8(offset++, char.charCodeAt(0)));
      Array.from(topic, (char) => view.setUint8(offset++, char.charCodeAt(0)));
      Array.from(event, (char) => view.setUint8(offset++, char.charCodeAt(0)));
      var combined = new Uint8Array(header.byteLength + payload.byteLength);
      combined.set(new Uint8Array(header), 0);
      combined.set(new Uint8Array(payload), header.byteLength);
      return combined.buffer;
    },
    binaryDecode(buffer) {
      let view = new DataView(buffer);
      let kind = view.getUint8(0);
      let decoder = new TextDecoder();
      switch (kind) {
        case this.KINDS.push:
          return this.decodePush(buffer, view, decoder);
        case this.KINDS.reply:
          return this.decodeReply(buffer, view, decoder);
        case this.KINDS.broadcast:
          return this.decodeBroadcast(buffer, view, decoder);
      }
    },
    decodePush(buffer, view, decoder) {
      let joinRefSize = view.getUint8(1);
      let topicSize = view.getUint8(2);
      let eventSize = view.getUint8(3);
      let offset = this.HEADER_LENGTH + this.META_LENGTH - 1;
      let joinRef = decoder.decode(buffer.slice(offset, offset + joinRefSize));
      offset = offset + joinRefSize;
      let topic = decoder.decode(buffer.slice(offset, offset + topicSize));
      offset = offset + topicSize;
      let event = decoder.decode(buffer.slice(offset, offset + eventSize));
      offset = offset + eventSize;
      let data = buffer.slice(offset, buffer.byteLength);
      return { join_ref: joinRef, ref: null, topic, event, payload: data };
    },
    decodeReply(buffer, view, decoder) {
      let joinRefSize = view.getUint8(1);
      let refSize = view.getUint8(2);
      let topicSize = view.getUint8(3);
      let eventSize = view.getUint8(4);
      let offset = this.HEADER_LENGTH + this.META_LENGTH;
      let joinRef = decoder.decode(buffer.slice(offset, offset + joinRefSize));
      offset = offset + joinRefSize;
      let ref = decoder.decode(buffer.slice(offset, offset + refSize));
      offset = offset + refSize;
      let topic = decoder.decode(buffer.slice(offset, offset + topicSize));
      offset = offset + topicSize;
      let event = decoder.decode(buffer.slice(offset, offset + eventSize));
      offset = offset + eventSize;
      let data = buffer.slice(offset, buffer.byteLength);
      let payload = { status: event, response: data };
      return { join_ref: joinRef, ref, topic, event: CHANNEL_EVENTS.reply, payload };
    },
    decodeBroadcast(buffer, view, decoder) {
      let topicSize = view.getUint8(1);
      let eventSize = view.getUint8(2);
      let offset = this.HEADER_LENGTH + 2;
      let topic = decoder.decode(buffer.slice(offset, offset + topicSize));
      offset = offset + topicSize;
      let event = decoder.decode(buffer.slice(offset, offset + eventSize));
      offset = offset + eventSize;
      let data = buffer.slice(offset, buffer.byteLength);
      return { join_ref: null, ref: null, topic, event, payload: data };
    }
  };
  var Socket = class {
    constructor(endPoint, opts = {}) {
      this.stateChangeCallbacks = { open: [], close: [], error: [], message: [] };
      this.channels = [];
      this.sendBuffer = [];
      this.ref = 0;
      this.timeout = opts.timeout || DEFAULT_TIMEOUT;
      this.transport = opts.transport || global.WebSocket || LongPoll;
      this.establishedConnections = 0;
      this.defaultEncoder = serializer_default.encode.bind(serializer_default);
      this.defaultDecoder = serializer_default.decode.bind(serializer_default);
      this.closeWasClean = false;
      this.binaryType = opts.binaryType || "arraybuffer";
      this.connectClock = 1;
      if (this.transport !== LongPoll) {
        this.encode = opts.encode || this.defaultEncoder;
        this.decode = opts.decode || this.defaultDecoder;
      } else {
        this.encode = this.defaultEncoder;
        this.decode = this.defaultDecoder;
      }
      let awaitingConnectionOnPageShow = null;
      if (phxWindow && phxWindow.addEventListener) {
        phxWindow.addEventListener("pagehide", (_e) => {
          if (this.conn) {
            this.disconnect();
            awaitingConnectionOnPageShow = this.connectClock;
          }
        });
        phxWindow.addEventListener("pageshow", (_e) => {
          if (awaitingConnectionOnPageShow === this.connectClock) {
            awaitingConnectionOnPageShow = null;
            this.connect();
          }
        });
      }
      this.heartbeatIntervalMs = opts.heartbeatIntervalMs || 3e4;
      this.rejoinAfterMs = (tries) => {
        if (opts.rejoinAfterMs) {
          return opts.rejoinAfterMs(tries);
        } else {
          return [1e3, 2e3, 5e3][tries - 1] || 1e4;
        }
      };
      this.reconnectAfterMs = (tries) => {
        if (opts.reconnectAfterMs) {
          return opts.reconnectAfterMs(tries);
        } else {
          return [10, 50, 100, 150, 200, 250, 500, 1e3, 2e3][tries - 1] || 5e3;
        }
      };
      this.logger = opts.logger || null;
      this.longpollerTimeout = opts.longpollerTimeout || 2e4;
      this.params = closure(opts.params || {});
      this.endPoint = `${endPoint}/${TRANSPORTS.websocket}`;
      this.vsn = opts.vsn || DEFAULT_VSN;
      this.heartbeatTimer = null;
      this.pendingHeartbeatRef = null;
      this.reconnectTimer = new Timer(() => {
        this.teardown(() => this.connect());
      }, this.reconnectAfterMs);
    }
    replaceTransport(newTransport) {
      this.disconnect();
      this.transport = newTransport;
    }
    protocol() {
      return location.protocol.match(/^https/) ? "wss" : "ws";
    }
    endPointURL() {
      let uri = Ajax.appendParams(Ajax.appendParams(this.endPoint, this.params()), { vsn: this.vsn });
      if (uri.charAt(0) !== "/") {
        return uri;
      }
      if (uri.charAt(1) === "/") {
        return `${this.protocol()}:${uri}`;
      }
      return `${this.protocol()}://${location.host}${uri}`;
    }
    disconnect(callback, code, reason) {
      this.connectClock++;
      this.closeWasClean = true;
      this.reconnectTimer.reset();
      this.teardown(callback, code, reason);
    }
    connect(params) {
      this.connectClock++;
      if (params) {
        console && console.log("passing params to connect is deprecated. Instead pass :params to the Socket constructor");
        this.params = closure(params);
      }
      if (this.conn) {
        return;
      }
      this.closeWasClean = false;
      this.conn = new this.transport(this.endPointURL());
      this.conn.binaryType = this.binaryType;
      this.conn.timeout = this.longpollerTimeout;
      this.conn.onopen = () => this.onConnOpen();
      this.conn.onerror = (error) => this.onConnError(error);
      this.conn.onmessage = (event) => this.onConnMessage(event);
      this.conn.onclose = (event) => this.onConnClose(event);
    }
    log(kind, msg, data) {
      this.logger(kind, msg, data);
    }
    hasLogger() {
      return this.logger !== null;
    }
    onOpen(callback) {
      let ref = this.makeRef();
      this.stateChangeCallbacks.open.push([ref, callback]);
      return ref;
    }
    onClose(callback) {
      let ref = this.makeRef();
      this.stateChangeCallbacks.close.push([ref, callback]);
      return ref;
    }
    onError(callback) {
      let ref = this.makeRef();
      this.stateChangeCallbacks.error.push([ref, callback]);
      return ref;
    }
    onMessage(callback) {
      let ref = this.makeRef();
      this.stateChangeCallbacks.message.push([ref, callback]);
      return ref;
    }
    onConnOpen() {
      if (this.hasLogger())
        this.log("transport", `connected to ${this.endPointURL()}`);
      this.closeWasClean = false;
      this.establishedConnections++;
      this.flushSendBuffer();
      this.reconnectTimer.reset();
      this.resetHeartbeat();
      this.stateChangeCallbacks.open.forEach(([, callback]) => callback());
    }
    heartbeatTimeout() {
      if (this.pendingHeartbeatRef) {
        this.pendingHeartbeatRef = null;
        if (this.hasLogger()) {
          this.log("transport", "heartbeat timeout. Attempting to re-establish connection");
        }
        this.abnormalClose("heartbeat timeout");
      }
    }
    resetHeartbeat() {
      if (this.conn && this.conn.skipHeartbeat) {
        return;
      }
      this.pendingHeartbeatRef = null;
      clearTimeout(this.heartbeatTimer);
      setTimeout(() => this.sendHeartbeat(), this.heartbeatIntervalMs);
    }
    teardown(callback, code, reason) {
      if (!this.conn) {
        return callback && callback();
      }
      this.waitForBufferDone(() => {
        if (this.conn) {
          if (code) {
            this.conn.close(code, reason || "");
          } else {
            this.conn.close();
          }
        }
        this.waitForSocketClosed(() => {
          if (this.conn) {
            this.conn.onclose = function() {
            };
            this.conn = null;
          }
          callback && callback();
        });
      });
    }
    waitForBufferDone(callback, tries = 1) {
      if (tries === 5 || !this.conn || !this.conn.bufferedAmount) {
        callback();
        return;
      }
      setTimeout(() => {
        this.waitForBufferDone(callback, tries + 1);
      }, 150 * tries);
    }
    waitForSocketClosed(callback, tries = 1) {
      if (tries === 5 || !this.conn || this.conn.readyState === SOCKET_STATES.closed) {
        callback();
        return;
      }
      setTimeout(() => {
        this.waitForSocketClosed(callback, tries + 1);
      }, 150 * tries);
    }
    onConnClose(event) {
      let closeCode = event && event.code;
      if (this.hasLogger())
        this.log("transport", "close", event);
      this.triggerChanError();
      clearTimeout(this.heartbeatTimer);
      if (!this.closeWasClean && closeCode !== 1e3) {
        this.reconnectTimer.scheduleTimeout();
      }
      this.stateChangeCallbacks.close.forEach(([, callback]) => callback(event));
    }
    onConnError(error) {
      if (this.hasLogger())
        this.log("transport", error);
      let transportBefore = this.transport;
      let establishedBefore = this.establishedConnections;
      this.stateChangeCallbacks.error.forEach(([, callback]) => {
        callback(error, transportBefore, establishedBefore);
      });
      if (transportBefore === this.transport || establishedBefore > 0) {
        this.triggerChanError();
      }
    }
    triggerChanError() {
      this.channels.forEach((channel) => {
        if (!(channel.isErrored() || channel.isLeaving() || channel.isClosed())) {
          channel.trigger(CHANNEL_EVENTS.error);
        }
      });
    }
    connectionState() {
      switch (this.conn && this.conn.readyState) {
        case SOCKET_STATES.connecting:
          return "connecting";
        case SOCKET_STATES.open:
          return "open";
        case SOCKET_STATES.closing:
          return "closing";
        default:
          return "closed";
      }
    }
    isConnected() {
      return this.connectionState() === "open";
    }
    remove(channel) {
      this.off(channel.stateChangeRefs);
      this.channels = this.channels.filter((c) => c.joinRef() !== channel.joinRef());
    }
    off(refs) {
      for (let key in this.stateChangeCallbacks) {
        this.stateChangeCallbacks[key] = this.stateChangeCallbacks[key].filter(([ref]) => {
          return refs.indexOf(ref) === -1;
        });
      }
    }
    channel(topic, chanParams = {}) {
      let chan = new Channel(topic, chanParams, this);
      this.channels.push(chan);
      return chan;
    }
    push(data) {
      if (this.hasLogger()) {
        let { topic, event, payload, ref, join_ref } = data;
        this.log("push", `${topic} ${event} (${join_ref}, ${ref})`, payload);
      }
      if (this.isConnected()) {
        this.encode(data, (result) => this.conn.send(result));
      } else {
        this.sendBuffer.push(() => this.encode(data, (result) => this.conn.send(result)));
      }
    }
    makeRef() {
      let newRef = this.ref + 1;
      if (newRef === this.ref) {
        this.ref = 0;
      } else {
        this.ref = newRef;
      }
      return this.ref.toString();
    }
    sendHeartbeat() {
      if (this.pendingHeartbeatRef && !this.isConnected()) {
        return;
      }
      this.pendingHeartbeatRef = this.makeRef();
      this.push({ topic: "phoenix", event: "heartbeat", payload: {}, ref: this.pendingHeartbeatRef });
      this.heartbeatTimer = setTimeout(() => this.heartbeatTimeout(), this.heartbeatIntervalMs);
    }
    abnormalClose(reason) {
      this.closeWasClean = false;
      if (this.isConnected()) {
        this.conn.close(WS_CLOSE_NORMAL, reason);
      }
    }
    flushSendBuffer() {
      if (this.isConnected() && this.sendBuffer.length > 0) {
        this.sendBuffer.forEach((callback) => callback());
        this.sendBuffer = [];
      }
    }
    onConnMessage(rawMessage) {
      this.decode(rawMessage.data, (msg) => {
        let { topic, event, payload, ref, join_ref } = msg;
        if (ref && ref === this.pendingHeartbeatRef) {
          clearTimeout(this.heartbeatTimer);
          this.pendingHeartbeatRef = null;
          setTimeout(() => this.sendHeartbeat(), this.heartbeatIntervalMs);
        }
        if (this.hasLogger())
          this.log("receive", `${payload.status || ""} ${topic} ${event} ${ref && "(" + ref + ")" || ""}`, payload);
        for (let i = 0; i < this.channels.length; i++) {
          const channel = this.channels[i];
          if (!channel.isMember(topic, event, payload, join_ref)) {
            continue;
          }
          channel.trigger(event, payload, ref, join_ref);
        }
        for (let i = 0; i < this.stateChangeCallbacks.message.length; i++) {
          let [, callback] = this.stateChangeCallbacks.message[i];
          callback(msg);
        }
      });
    }
    leaveOpenTopic(topic) {
      let dupChannel = this.channels.find((c) => c.topic === topic && (c.isJoined() || c.isJoining()));
      if (dupChannel) {
        if (this.hasLogger())
          this.log("transport", `leaving duplicate topic "${topic}"`);
        dupChannel.leave();
      }
    }
  };

  // ../deps/phoenix_live_view/priv/static/phoenix_live_view.esm.js
  var CONSECUTIVE_RELOADS = "consecutive-reloads";
  var MAX_RELOADS = 10;
  var RELOAD_JITTER_MIN = 1e3;
  var RELOAD_JITTER_MAX = 3e3;
  var FAILSAFE_JITTER = 3e4;
  var PHX_EVENT_CLASSES = [
    "phx-click-loading",
    "phx-change-loading",
    "phx-submit-loading",
    "phx-keydown-loading",
    "phx-keyup-loading",
    "phx-blur-loading",
    "phx-focus-loading"
  ];
  var PHX_COMPONENT = "data-phx-component";
  var PHX_LIVE_LINK = "data-phx-link";
  var PHX_TRACK_STATIC = "track-static";
  var PHX_LINK_STATE = "data-phx-link-state";
  var PHX_REF = "data-phx-ref";
  var PHX_REF_SRC = "data-phx-ref-src";
  var PHX_TRACK_UPLOADS = "track-uploads";
  var PHX_UPLOAD_REF = "data-phx-upload-ref";
  var PHX_PREFLIGHTED_REFS = "data-phx-preflighted-refs";
  var PHX_DONE_REFS = "data-phx-done-refs";
  var PHX_DROP_TARGET = "drop-target";
  var PHX_ACTIVE_ENTRY_REFS = "data-phx-active-refs";
  var PHX_LIVE_FILE_UPDATED = "phx:live-file:updated";
  var PHX_SKIP = "data-phx-skip";
  var PHX_PRUNE = "data-phx-prune";
  var PHX_PAGE_LOADING = "page-loading";
  var PHX_CONNECTED_CLASS = "phx-connected";
  var PHX_DISCONNECTED_CLASS = "phx-loading";
  var PHX_NO_FEEDBACK_CLASS = "phx-no-feedback";
  var PHX_ERROR_CLASS = "phx-error";
  var PHX_PARENT_ID = "data-phx-parent-id";
  var PHX_MAIN = "data-phx-main";
  var PHX_ROOT_ID = "data-phx-root-id";
  var PHX_TRIGGER_ACTION = "trigger-action";
  var PHX_FEEDBACK_FOR = "feedback-for";
  var PHX_HAS_FOCUSED = "phx-has-focused";
  var FOCUSABLE_INPUTS = ["text", "textarea", "number", "email", "password", "search", "tel", "url", "date", "time", "datetime-local", "color", "range"];
  var CHECKABLE_INPUTS = ["checkbox", "radio"];
  var PHX_HAS_SUBMITTED = "phx-has-submitted";
  var PHX_SESSION = "data-phx-session";
  var PHX_VIEW_SELECTOR = `[${PHX_SESSION}]`;
  var PHX_STICKY = "data-phx-sticky";
  var PHX_STATIC = "data-phx-static";
  var PHX_READONLY = "data-phx-readonly";
  var PHX_DISABLED = "data-phx-disabled";
  var PHX_DISABLE_WITH = "disable-with";
  var PHX_DISABLE_WITH_RESTORE = "data-phx-disable-with-restore";
  var PHX_HOOK = "hook";
  var PHX_DEBOUNCE = "debounce";
  var PHX_THROTTLE = "throttle";
  var PHX_UPDATE = "update";
  var PHX_KEY = "key";
  var PHX_PRIVATE = "phxPrivate";
  var PHX_AUTO_RECOVER = "auto-recover";
  var PHX_LV_DEBUG = "phx:live-socket:debug";
  var PHX_LV_PROFILE = "phx:live-socket:profiling";
  var PHX_LV_LATENCY_SIM = "phx:live-socket:latency-sim";
  var PHX_PROGRESS = "progress";
  var LOADER_TIMEOUT = 1;
  var BEFORE_UNLOAD_LOADER_TIMEOUT = 200;
  var BINDING_PREFIX = "phx-";
  var PUSH_TIMEOUT = 3e4;
  var DEBOUNCE_TRIGGER = "debounce-trigger";
  var THROTTLED = "throttled";
  var DEBOUNCE_PREV_KEY = "debounce-prev-key";
  var DEFAULTS = {
    debounce: 300,
    throttle: 300
  };
  var DYNAMICS = "d";
  var STATIC = "s";
  var COMPONENTS = "c";
  var EVENTS = "e";
  var REPLY = "r";
  var TITLE = "t";
  var TEMPLATES = "p";
  var EntryUploader = class {
    constructor(entry, chunkSize, liveSocket2) {
      this.liveSocket = liveSocket2;
      this.entry = entry;
      this.offset = 0;
      this.chunkSize = chunkSize;
      this.chunkTimer = null;
      this.uploadChannel = liveSocket2.channel(`lvu:${entry.ref}`, { token: entry.metadata() });
    }
    error(reason) {
      clearTimeout(this.chunkTimer);
      this.uploadChannel.leave();
      this.entry.error(reason);
    }
    upload() {
      this.uploadChannel.onError((reason) => this.error(reason));
      this.uploadChannel.join().receive("ok", (_data) => this.readNextChunk()).receive("error", (reason) => this.error(reason));
    }
    isDone() {
      return this.offset >= this.entry.file.size;
    }
    readNextChunk() {
      let reader = new window.FileReader();
      let blob = this.entry.file.slice(this.offset, this.chunkSize + this.offset);
      reader.onload = (e) => {
        if (e.target.error === null) {
          this.offset += e.target.result.byteLength;
          this.pushChunk(e.target.result);
        } else {
          return logError("Read error: " + e.target.error);
        }
      };
      reader.readAsArrayBuffer(blob);
    }
    pushChunk(chunk) {
      if (!this.uploadChannel.isJoined()) {
        return;
      }
      this.uploadChannel.push("chunk", chunk).receive("ok", () => {
        this.entry.progress(this.offset / this.entry.file.size * 100);
        if (!this.isDone()) {
          this.chunkTimer = setTimeout(() => this.readNextChunk(), this.liveSocket.getLatencySim() || 0);
        }
      });
    }
  };
  var logError = (msg, obj) => console.error && console.error(msg, obj);
  var isCid = (cid) => {
    let type = typeof cid;
    return type === "number" || type === "string" && /^(0|[1-9]\d*)$/.test(cid);
  };
  function detectDuplicateIds() {
    let ids = /* @__PURE__ */ new Set();
    let elems = document.querySelectorAll("*[id]");
    for (let i = 0, len = elems.length; i < len; i++) {
      if (ids.has(elems[i].id)) {
        console.error(`Multiple IDs detected: ${elems[i].id}. Ensure unique element ids.`);
      } else {
        ids.add(elems[i].id);
      }
    }
  }
  var debug = (view, kind, msg, obj) => {
    if (view.liveSocket.isDebugEnabled()) {
      console.log(`${view.id} ${kind}: ${msg} - `, obj);
    }
  };
  var closure2 = (val) => typeof val === "function" ? val : function() {
    return val;
  };
  var clone = (obj) => {
    return JSON.parse(JSON.stringify(obj));
  };
  var closestPhxBinding = (el, binding, borderEl) => {
    do {
      if (el.matches(`[${binding}]`)) {
        return el;
      }
      el = el.parentElement || el.parentNode;
    } while (el !== null && el.nodeType === 1 && !(borderEl && borderEl.isSameNode(el) || el.matches(PHX_VIEW_SELECTOR)));
    return null;
  };
  var isObject = (obj) => {
    return obj !== null && typeof obj === "object" && !(obj instanceof Array);
  };
  var isEqualObj = (obj1, obj2) => JSON.stringify(obj1) === JSON.stringify(obj2);
  var isEmpty = (obj) => {
    for (let x in obj) {
      return false;
    }
    return true;
  };
  var maybe = (el, callback) => el && callback(el);
  var channelUploader = function(entries, onError, resp, liveSocket2) {
    entries.forEach((entry) => {
      let entryUploader = new EntryUploader(entry, resp.config.chunk_size, liveSocket2);
      entryUploader.upload();
    });
  };
  var Browser = {
    canPushState() {
      return typeof history.pushState !== "undefined";
    },
    dropLocal(localStorage, namespace, subkey) {
      return localStorage.removeItem(this.localKey(namespace, subkey));
    },
    updateLocal(localStorage, namespace, subkey, initial, func) {
      let current = this.getLocal(localStorage, namespace, subkey);
      let key = this.localKey(namespace, subkey);
      let newVal = current === null ? initial : func(current);
      localStorage.setItem(key, JSON.stringify(newVal));
      return newVal;
    },
    getLocal(localStorage, namespace, subkey) {
      return JSON.parse(localStorage.getItem(this.localKey(namespace, subkey)));
    },
    updateCurrentState(callback) {
      if (!this.canPushState()) {
        return;
      }
      history.replaceState(callback(history.state || {}), "", window.location.href);
    },
    pushState(kind, meta, to) {
      if (this.canPushState()) {
        if (to !== window.location.href) {
          if (meta.type == "redirect" && meta.scroll) {
            let currentState = history.state || {};
            currentState.scroll = meta.scroll;
            history.replaceState(currentState, "", window.location.href);
          }
          delete meta.scroll;
          history[kind + "State"](meta, "", to || null);
          let hashEl = this.getHashTargetEl(window.location.hash);
          if (hashEl) {
            hashEl.scrollIntoView();
          } else if (meta.type === "redirect") {
            window.scroll(0, 0);
          }
        }
      } else {
        this.redirect(to);
      }
    },
    setCookie(name, value) {
      document.cookie = `${name}=${value}`;
    },
    getCookie(name) {
      return document.cookie.replace(new RegExp(`(?:(?:^|.*;s*)${name}s*=s*([^;]*).*$)|^.*$`), "$1");
    },
    redirect(toURL, flash) {
      if (flash) {
        Browser.setCookie("__phoenix_flash__", flash + "; max-age=60000; path=/");
      }
      window.location = toURL;
    },
    localKey(namespace, subkey) {
      return `${namespace}-${subkey}`;
    },
    getHashTargetEl(maybeHash) {
      let hash = maybeHash.toString().substring(1);
      if (hash === "") {
        return;
      }
      return document.getElementById(hash) || document.querySelector(`a[name="${hash}"]`);
    }
  };
  var browser_default = Browser;
  var DOM = {
    byId(id) {
      return document.getElementById(id) || logError(`no id found for ${id}`);
    },
    removeClass(el, className) {
      el.classList.remove(className);
      if (el.classList.length === 0) {
        el.removeAttribute("class");
      }
    },
    all(node, query, callback) {
      if (!node) {
        return [];
      }
      let array = Array.from(node.querySelectorAll(query));
      return callback ? array.forEach(callback) : array;
    },
    childNodeLength(html) {
      let template = document.createElement("template");
      template.innerHTML = html;
      return template.content.childElementCount;
    },
    isUploadInput(el) {
      return el.type === "file" && el.getAttribute(PHX_UPLOAD_REF) !== null;
    },
    findUploadInputs(node) {
      return this.all(node, `input[type="file"][${PHX_UPLOAD_REF}]`);
    },
    findComponentNodeList(node, cid) {
      return this.filterWithinSameLiveView(this.all(node, `[${PHX_COMPONENT}="${cid}"]`), node);
    },
    isPhxDestroyed(node) {
      return node.id && DOM.private(node, "destroyed") ? true : false;
    },
    markPhxChildDestroyed(el) {
      if (this.isPhxChild(el)) {
        el.setAttribute(PHX_SESSION, "");
      }
      this.putPrivate(el, "destroyed", true);
    },
    findPhxChildrenInFragment(html, parentId) {
      let template = document.createElement("template");
      template.innerHTML = html;
      return this.findPhxChildren(template.content, parentId);
    },
    isIgnored(el, phxUpdate) {
      return (el.getAttribute(phxUpdate) || el.getAttribute("data-phx-update")) === "ignore";
    },
    isPhxUpdate(el, phxUpdate, updateTypes) {
      return el.getAttribute && updateTypes.indexOf(el.getAttribute(phxUpdate)) >= 0;
    },
    findPhxSticky(el) {
      return this.all(el, `[${PHX_STICKY}]`);
    },
    findPhxChildren(el, parentId) {
      return this.all(el, `${PHX_VIEW_SELECTOR}[${PHX_PARENT_ID}="${parentId}"]`);
    },
    findParentCIDs(node, cids) {
      let initial = new Set(cids);
      return cids.reduce((acc, cid) => {
        let selector = `[${PHX_COMPONENT}="${cid}"] [${PHX_COMPONENT}]`;
        this.filterWithinSameLiveView(this.all(node, selector), node).map((el) => parseInt(el.getAttribute(PHX_COMPONENT))).forEach((childCID) => acc.delete(childCID));
        return acc;
      }, initial);
    },
    filterWithinSameLiveView(nodes, parent) {
      if (parent.querySelector(PHX_VIEW_SELECTOR)) {
        return nodes.filter((el) => this.withinSameLiveView(el, parent));
      } else {
        return nodes;
      }
    },
    withinSameLiveView(node, parent) {
      while (node = node.parentNode) {
        if (node.isSameNode(parent)) {
          return true;
        }
        if (node.getAttribute(PHX_SESSION) !== null) {
          return false;
        }
      }
    },
    private(el, key) {
      return el[PHX_PRIVATE] && el[PHX_PRIVATE][key];
    },
    deletePrivate(el, key) {
      el[PHX_PRIVATE] && delete el[PHX_PRIVATE][key];
    },
    putPrivate(el, key, value) {
      if (!el[PHX_PRIVATE]) {
        el[PHX_PRIVATE] = {};
      }
      el[PHX_PRIVATE][key] = value;
    },
    updatePrivate(el, key, defaultVal, updateFunc) {
      let existing = this.private(el, key);
      if (existing === void 0) {
        this.putPrivate(el, key, updateFunc(defaultVal));
      } else {
        this.putPrivate(el, key, updateFunc(existing));
      }
    },
    copyPrivates(target, source) {
      if (source[PHX_PRIVATE]) {
        target[PHX_PRIVATE] = source[PHX_PRIVATE];
      }
    },
    putTitle(str) {
      let titleEl = document.querySelector("title");
      let { prefix, suffix } = titleEl.dataset;
      document.title = `${prefix || ""}${str}${suffix || ""}`;
    },
    debounce(el, event, phxDebounce, defaultDebounce, phxThrottle, defaultThrottle, callback) {
      let debounce = el.getAttribute(phxDebounce);
      let throttle = el.getAttribute(phxThrottle);
      if (debounce === "") {
        debounce = defaultDebounce;
      }
      if (throttle === "") {
        throttle = defaultThrottle;
      }
      let value = debounce || throttle;
      switch (value) {
        case null:
          return callback();
        case "blur":
          if (this.once(el, "debounce-blur")) {
            el.addEventListener("blur", () => callback());
          }
          return;
        default:
          let timeout = parseInt(value);
          let trigger = () => throttle ? this.deletePrivate(el, THROTTLED) : callback();
          let currentCycle = this.incCycle(el, DEBOUNCE_TRIGGER, trigger);
          if (isNaN(timeout)) {
            return logError(`invalid throttle/debounce value: ${value}`);
          }
          if (throttle) {
            let newKeyDown = false;
            if (event.type === "keydown") {
              let prevKey = this.private(el, DEBOUNCE_PREV_KEY);
              this.putPrivate(el, DEBOUNCE_PREV_KEY, event.key);
              newKeyDown = prevKey !== event.key;
            }
            if (!newKeyDown && this.private(el, THROTTLED)) {
              return false;
            } else {
              callback();
              this.putPrivate(el, THROTTLED, true);
              setTimeout(() => this.triggerCycle(el, DEBOUNCE_TRIGGER), timeout);
            }
          } else {
            setTimeout(() => this.triggerCycle(el, DEBOUNCE_TRIGGER, currentCycle), timeout);
          }
          let form = el.form;
          if (form && this.once(form, "bind-debounce")) {
            form.addEventListener("submit", () => {
              Array.from(new FormData(form).entries(), ([name]) => {
                let input = form.querySelector(`[name="${name}"]`);
                this.incCycle(input, DEBOUNCE_TRIGGER);
                this.deletePrivate(input, THROTTLED);
              });
            });
          }
          if (this.once(el, "bind-debounce")) {
            el.addEventListener("blur", () => this.triggerCycle(el, DEBOUNCE_TRIGGER));
          }
      }
    },
    triggerCycle(el, key, currentCycle) {
      let [cycle, trigger] = this.private(el, key);
      if (!currentCycle) {
        currentCycle = cycle;
      }
      if (currentCycle === cycle) {
        this.incCycle(el, key);
        trigger();
      }
    },
    once(el, key) {
      if (this.private(el, key) === true) {
        return false;
      }
      this.putPrivate(el, key, true);
      return true;
    },
    incCycle(el, key, trigger = function() {
    }) {
      let [currentCycle] = this.private(el, key) || [0, trigger];
      currentCycle++;
      this.putPrivate(el, key, [currentCycle, trigger]);
      return currentCycle;
    },
    discardError(container, el, phxFeedbackFor) {
      let field = el.getAttribute && el.getAttribute(phxFeedbackFor);
      let input = field && container.querySelector(`[id="${field}"], [name="${field}"]`);
      if (!input) {
        return;
      }
      if (!(this.private(input, PHX_HAS_FOCUSED) || this.private(input.form, PHX_HAS_SUBMITTED))) {
        el.classList.add(PHX_NO_FEEDBACK_CLASS);
      }
    },
    showError(inputEl, phxFeedbackFor) {
      if (inputEl.id || inputEl.name) {
        this.all(inputEl.form, `[${phxFeedbackFor}="${inputEl.id}"], [${phxFeedbackFor}="${inputEl.name}"]`, (el) => {
          this.removeClass(el, PHX_NO_FEEDBACK_CLASS);
        });
      }
    },
    isPhxChild(node) {
      return node.getAttribute && node.getAttribute(PHX_PARENT_ID);
    },
    isPhxSticky(node) {
      return node.getAttribute && node.getAttribute(PHX_STICKY) !== null;
    },
    firstPhxChild(el) {
      return this.isPhxChild(el) ? el : this.all(el, `[${PHX_PARENT_ID}]`)[0];
    },
    dispatchEvent(target, eventString, detail = {}) {
      let event = new CustomEvent(eventString, { bubbles: true, cancelable: true, detail });
      target.dispatchEvent(event);
    },
    cloneNode(node, html) {
      if (typeof html === "undefined") {
        return node.cloneNode(true);
      } else {
        let cloned = node.cloneNode(false);
        cloned.innerHTML = html;
        return cloned;
      }
    },
    mergeAttrs(target, source, opts = {}) {
      let exclude = opts.exclude || [];
      let isIgnored = opts.isIgnored;
      let sourceAttrs = source.attributes;
      for (let i = sourceAttrs.length - 1; i >= 0; i--) {
        let name = sourceAttrs[i].name;
        if (exclude.indexOf(name) < 0) {
          target.setAttribute(name, source.getAttribute(name));
        }
      }
      let targetAttrs = target.attributes;
      for (let i = targetAttrs.length - 1; i >= 0; i--) {
        let name = targetAttrs[i].name;
        if (isIgnored) {
          if (name.startsWith("data-") && !source.hasAttribute(name)) {
            target.removeAttribute(name);
          }
        } else {
          if (!source.hasAttribute(name)) {
            target.removeAttribute(name);
          }
        }
      }
    },
    mergeFocusedInput(target, source) {
      if (!(target instanceof HTMLSelectElement)) {
        DOM.mergeAttrs(target, source, { except: ["value"] });
      }
      if (source.readOnly) {
        target.setAttribute("readonly", true);
      } else {
        target.removeAttribute("readonly");
      }
    },
    hasSelectionRange(el) {
      return el.setSelectionRange && (el.type === "text" || el.type === "textarea");
    },
    restoreFocus(focused, selectionStart, selectionEnd) {
      if (!DOM.isTextualInput(focused)) {
        return;
      }
      let wasFocused = focused.matches(":focus");
      if (focused.readOnly) {
        focused.blur();
      }
      if (!wasFocused) {
        focused.focus();
      }
      if (this.hasSelectionRange(focused)) {
        focused.setSelectionRange(selectionStart, selectionEnd);
      }
    },
    isFormInput(el) {
      return /^(?:input|select|textarea)$/i.test(el.tagName) && el.type !== "button";
    },
    syncAttrsToProps(el) {
      if (el instanceof HTMLInputElement && CHECKABLE_INPUTS.indexOf(el.type.toLocaleLowerCase()) >= 0) {
        el.checked = el.getAttribute("checked") !== null;
      }
    },
    isTextualInput(el) {
      return FOCUSABLE_INPUTS.indexOf(el.type) >= 0;
    },
    isNowTriggerFormExternal(el, phxTriggerExternal) {
      return el.getAttribute && el.getAttribute(phxTriggerExternal) !== null;
    },
    syncPendingRef(fromEl, toEl, disableWith) {
      let ref = fromEl.getAttribute(PHX_REF);
      if (ref === null) {
        return true;
      }
      let refSrc = fromEl.getAttribute(PHX_REF_SRC);
      if (DOM.isFormInput(fromEl) || fromEl.getAttribute(disableWith) !== null) {
        if (DOM.isUploadInput(fromEl)) {
          DOM.mergeAttrs(fromEl, toEl, { isIgnored: true });
        }
        DOM.putPrivate(fromEl, PHX_REF, toEl);
        return false;
      } else {
        PHX_EVENT_CLASSES.forEach((className) => {
          fromEl.classList.contains(className) && toEl.classList.add(className);
        });
        toEl.setAttribute(PHX_REF, ref);
        toEl.setAttribute(PHX_REF_SRC, refSrc);
        return true;
      }
    },
    cleanChildNodes(container, phxUpdate) {
      if (DOM.isPhxUpdate(container, phxUpdate, ["append", "prepend"])) {
        let toRemove = [];
        container.childNodes.forEach((childNode) => {
          if (!childNode.id) {
            let isEmptyTextNode = childNode.nodeType === Node.TEXT_NODE && childNode.nodeValue.trim() === "";
            if (!isEmptyTextNode) {
              logError(`only HTML element tags with an id are allowed inside containers with phx-update.

removing illegal node: "${(childNode.outerHTML || childNode.nodeValue).trim()}"

`);
            }
            toRemove.push(childNode);
          }
        });
        toRemove.forEach((childNode) => childNode.remove());
      }
    },
    replaceRootContainer(container, tagName, attrs) {
      let retainedAttrs = /* @__PURE__ */ new Set(["id", PHX_SESSION, PHX_STATIC, PHX_MAIN, PHX_ROOT_ID]);
      if (container.tagName.toLowerCase() === tagName.toLowerCase()) {
        Array.from(container.attributes).filter((attr) => !retainedAttrs.has(attr.name.toLowerCase())).forEach((attr) => container.removeAttribute(attr.name));
        Object.keys(attrs).filter((name) => !retainedAttrs.has(name.toLowerCase())).forEach((attr) => container.setAttribute(attr, attrs[attr]));
        return container;
      } else {
        let newContainer = document.createElement(tagName);
        Object.keys(attrs).forEach((attr) => newContainer.setAttribute(attr, attrs[attr]));
        retainedAttrs.forEach((attr) => newContainer.setAttribute(attr, container.getAttribute(attr)));
        newContainer.innerHTML = container.innerHTML;
        container.replaceWith(newContainer);
        return newContainer;
      }
    },
    getSticky(el, name, defaultVal) {
      let op = (DOM.private(el, "sticky") || []).find(([existingName]) => name === existingName);
      if (op) {
        let [_name, _op, stashedResult] = op;
        return stashedResult;
      } else {
        return typeof defaultVal === "function" ? defaultVal() : defaultVal;
      }
    },
    deleteSticky(el, name) {
      this.updatePrivate(el, "sticky", [], (ops) => {
        return ops.filter(([existingName, _]) => existingName !== name);
      });
    },
    putSticky(el, name, op) {
      let stashedResult = op(el);
      this.updatePrivate(el, "sticky", [], (ops) => {
        let existingIndex = ops.findIndex(([existingName]) => name === existingName);
        if (existingIndex >= 0) {
          ops[existingIndex] = [name, op, stashedResult];
        } else {
          ops.push([name, op, stashedResult]);
        }
        return ops;
      });
    },
    applyStickyOperations(el) {
      let ops = DOM.private(el, "sticky");
      if (!ops) {
        return;
      }
      ops.forEach(([name, op, _stashed]) => this.putSticky(el, name, op));
    }
  };
  var dom_default = DOM;
  var UploadEntry = class {
    static isActive(fileEl, file) {
      let isNew = file._phxRef === void 0;
      let activeRefs = fileEl.getAttribute(PHX_ACTIVE_ENTRY_REFS).split(",");
      let isActive = activeRefs.indexOf(LiveUploader.genFileRef(file)) >= 0;
      return file.size > 0 && (isNew || isActive);
    }
    static isPreflighted(fileEl, file) {
      let preflightedRefs = fileEl.getAttribute(PHX_PREFLIGHTED_REFS).split(",");
      let isPreflighted = preflightedRefs.indexOf(LiveUploader.genFileRef(file)) >= 0;
      return isPreflighted && this.isActive(fileEl, file);
    }
    constructor(fileEl, file, view) {
      this.ref = LiveUploader.genFileRef(file);
      this.fileEl = fileEl;
      this.file = file;
      this.view = view;
      this.meta = null;
      this._isCancelled = false;
      this._isDone = false;
      this._progress = 0;
      this._lastProgressSent = -1;
      this._onDone = function() {
      };
      this._onElUpdated = this.onElUpdated.bind(this);
      this.fileEl.addEventListener(PHX_LIVE_FILE_UPDATED, this._onElUpdated);
    }
    metadata() {
      return this.meta;
    }
    progress(progress) {
      this._progress = Math.floor(progress);
      if (this._progress > this._lastProgressSent) {
        if (this._progress >= 100) {
          this._progress = 100;
          this._lastProgressSent = 100;
          this._isDone = true;
          this.view.pushFileProgress(this.fileEl, this.ref, 100, () => {
            LiveUploader.untrackFile(this.fileEl, this.file);
            this._onDone();
          });
        } else {
          this._lastProgressSent = this._progress;
          this.view.pushFileProgress(this.fileEl, this.ref, this._progress);
        }
      }
    }
    cancel() {
      this._isCancelled = true;
      this._isDone = true;
      this._onDone();
    }
    isDone() {
      return this._isDone;
    }
    error(reason = "failed") {
      this.view.pushFileProgress(this.fileEl, this.ref, { error: reason });
      LiveUploader.clearFiles(this.fileEl);
    }
    onDone(callback) {
      this._onDone = () => {
        this.fileEl.removeEventListener(PHX_LIVE_FILE_UPDATED, this._onElUpdated);
        callback();
      };
    }
    onElUpdated() {
      let activeRefs = this.fileEl.getAttribute(PHX_ACTIVE_ENTRY_REFS).split(",");
      if (activeRefs.indexOf(this.ref) === -1) {
        this.cancel();
      }
    }
    toPreflightPayload() {
      return {
        last_modified: this.file.lastModified,
        name: this.file.name,
        size: this.file.size,
        type: this.file.type,
        ref: this.ref
      };
    }
    uploader(uploaders) {
      if (this.meta.uploader) {
        let callback = uploaders[this.meta.uploader] || logError(`no uploader configured for ${this.meta.uploader}`);
        return { name: this.meta.uploader, callback };
      } else {
        return { name: "channel", callback: channelUploader };
      }
    }
    zipPostFlight(resp) {
      this.meta = resp.entries[this.ref];
      if (!this.meta) {
        logError(`no preflight upload response returned with ref ${this.ref}`, { input: this.fileEl, response: resp });
      }
    }
  };
  var liveUploaderFileRef = 0;
  var LiveUploader = class {
    static genFileRef(file) {
      let ref = file._phxRef;
      if (ref !== void 0) {
        return ref;
      } else {
        file._phxRef = (liveUploaderFileRef++).toString();
        return file._phxRef;
      }
    }
    static getEntryDataURL(inputEl, ref, callback) {
      let file = this.activeFiles(inputEl).find((file2) => this.genFileRef(file2) === ref);
      callback(URL.createObjectURL(file));
    }
    static hasUploadsInProgress(formEl) {
      let active = 0;
      dom_default.findUploadInputs(formEl).forEach((input) => {
        if (input.getAttribute(PHX_PREFLIGHTED_REFS) !== input.getAttribute(PHX_DONE_REFS)) {
          active++;
        }
      });
      return active > 0;
    }
    static serializeUploads(inputEl) {
      let files = this.activeFiles(inputEl);
      let fileData = {};
      files.forEach((file) => {
        let entry = { path: inputEl.name };
        let uploadRef = inputEl.getAttribute(PHX_UPLOAD_REF);
        fileData[uploadRef] = fileData[uploadRef] || [];
        entry.ref = this.genFileRef(file);
        entry.name = file.name || entry.ref;
        entry.type = file.type;
        entry.size = file.size;
        fileData[uploadRef].push(entry);
      });
      return fileData;
    }
    static clearFiles(inputEl) {
      inputEl.value = null;
      inputEl.removeAttribute(PHX_UPLOAD_REF);
      dom_default.putPrivate(inputEl, "files", []);
    }
    static untrackFile(inputEl, file) {
      dom_default.putPrivate(inputEl, "files", dom_default.private(inputEl, "files").filter((f) => !Object.is(f, file)));
    }
    static trackFiles(inputEl, files) {
      if (inputEl.getAttribute("multiple") !== null) {
        let newFiles = files.filter((file) => !this.activeFiles(inputEl).find((f) => Object.is(f, file)));
        dom_default.putPrivate(inputEl, "files", this.activeFiles(inputEl).concat(newFiles));
        inputEl.value = null;
      } else {
        dom_default.putPrivate(inputEl, "files", files);
      }
    }
    static activeFileInputs(formEl) {
      let fileInputs = dom_default.findUploadInputs(formEl);
      return Array.from(fileInputs).filter((el) => el.files && this.activeFiles(el).length > 0);
    }
    static activeFiles(input) {
      return (dom_default.private(input, "files") || []).filter((f) => UploadEntry.isActive(input, f));
    }
    static inputsAwaitingPreflight(formEl) {
      let fileInputs = dom_default.findUploadInputs(formEl);
      return Array.from(fileInputs).filter((input) => this.filesAwaitingPreflight(input).length > 0);
    }
    static filesAwaitingPreflight(input) {
      return this.activeFiles(input).filter((f) => !UploadEntry.isPreflighted(input, f));
    }
    constructor(inputEl, view, onComplete) {
      this.view = view;
      this.onComplete = onComplete;
      this._entries = Array.from(LiveUploader.filesAwaitingPreflight(inputEl) || []).map((file) => new UploadEntry(inputEl, file, view));
      this.numEntriesInProgress = this._entries.length;
    }
    entries() {
      return this._entries;
    }
    initAdapterUpload(resp, onError, liveSocket2) {
      this._entries = this._entries.map((entry) => {
        entry.zipPostFlight(resp);
        entry.onDone(() => {
          this.numEntriesInProgress--;
          if (this.numEntriesInProgress === 0) {
            this.onComplete();
          }
        });
        return entry;
      });
      let groupedEntries = this._entries.reduce((acc, entry) => {
        let { name, callback } = entry.uploader(liveSocket2.uploaders);
        acc[name] = acc[name] || { callback, entries: [] };
        acc[name].entries.push(entry);
        return acc;
      }, {});
      for (let name in groupedEntries) {
        let { callback, entries } = groupedEntries[name];
        callback(entries, onError, resp, liveSocket2);
      }
    }
  };
  var Hooks = {
    LiveFileUpload: {
      activeRefs() {
        return this.el.getAttribute(PHX_ACTIVE_ENTRY_REFS);
      },
      preflightedRefs() {
        return this.el.getAttribute(PHX_PREFLIGHTED_REFS);
      },
      mounted() {
        this.preflightedWas = this.preflightedRefs();
      },
      updated() {
        let newPreflights = this.preflightedRefs();
        if (this.preflightedWas !== newPreflights) {
          this.preflightedWas = newPreflights;
          if (newPreflights === "") {
            this.__view.cancelSubmit(this.el.form);
          }
        }
        if (this.activeRefs() === "") {
          this.el.value = null;
        }
        this.el.dispatchEvent(new CustomEvent(PHX_LIVE_FILE_UPDATED));
      }
    },
    LiveImgPreview: {
      mounted() {
        this.ref = this.el.getAttribute("data-phx-entry-ref");
        this.inputEl = document.getElementById(this.el.getAttribute(PHX_UPLOAD_REF));
        LiveUploader.getEntryDataURL(this.inputEl, this.ref, (url) => {
          this.url = url;
          this.el.src = url;
        });
      },
      destroyed() {
        URL.revokeObjectURL(this.url);
      }
    }
  };
  var hooks_default = Hooks;
  var DOMPostMorphRestorer = class {
    constructor(containerBefore, containerAfter, updateType) {
      let idsBefore = /* @__PURE__ */ new Set();
      let idsAfter = new Set([...containerAfter.children].map((child) => child.id));
      let elementsToModify = [];
      Array.from(containerBefore.children).forEach((child) => {
        if (child.id) {
          idsBefore.add(child.id);
          if (idsAfter.has(child.id)) {
            let previousElementId = child.previousElementSibling && child.previousElementSibling.id;
            elementsToModify.push({ elementId: child.id, previousElementId });
          }
        }
      });
      this.containerId = containerAfter.id;
      this.updateType = updateType;
      this.elementsToModify = elementsToModify;
      this.elementIdsToAdd = [...idsAfter].filter((id) => !idsBefore.has(id));
    }
    perform() {
      let container = dom_default.byId(this.containerId);
      this.elementsToModify.forEach((elementToModify) => {
        if (elementToModify.previousElementId) {
          maybe(document.getElementById(elementToModify.previousElementId), (previousElem) => {
            maybe(document.getElementById(elementToModify.elementId), (elem) => {
              let isInRightPlace = elem.previousElementSibling && elem.previousElementSibling.id == previousElem.id;
              if (!isInRightPlace) {
                previousElem.insertAdjacentElement("afterend", elem);
              }
            });
          });
        } else {
          maybe(document.getElementById(elementToModify.elementId), (elem) => {
            let isInRightPlace = elem.previousElementSibling == null;
            if (!isInRightPlace) {
              container.insertAdjacentElement("afterbegin", elem);
            }
          });
        }
      });
      if (this.updateType == "prepend") {
        this.elementIdsToAdd.reverse().forEach((elemId) => {
          maybe(document.getElementById(elemId), (elem) => container.insertAdjacentElement("afterbegin", elem));
        });
      }
    }
  };
  var DOCUMENT_FRAGMENT_NODE = 11;
  function morphAttrs(fromNode, toNode) {
    var toNodeAttrs = toNode.attributes;
    var attr;
    var attrName;
    var attrNamespaceURI;
    var attrValue;
    var fromValue;
    if (toNode.nodeType === DOCUMENT_FRAGMENT_NODE || fromNode.nodeType === DOCUMENT_FRAGMENT_NODE) {
      return;
    }
    for (var i = toNodeAttrs.length - 1; i >= 0; i--) {
      attr = toNodeAttrs[i];
      attrName = attr.name;
      attrNamespaceURI = attr.namespaceURI;
      attrValue = attr.value;
      if (attrNamespaceURI) {
        attrName = attr.localName || attrName;
        fromValue = fromNode.getAttributeNS(attrNamespaceURI, attrName);
        if (fromValue !== attrValue) {
          if (attr.prefix === "xmlns") {
            attrName = attr.name;
          }
          fromNode.setAttributeNS(attrNamespaceURI, attrName, attrValue);
        }
      } else {
        fromValue = fromNode.getAttribute(attrName);
        if (fromValue !== attrValue) {
          fromNode.setAttribute(attrName, attrValue);
        }
      }
    }
    var fromNodeAttrs = fromNode.attributes;
    for (var d = fromNodeAttrs.length - 1; d >= 0; d--) {
      attr = fromNodeAttrs[d];
      attrName = attr.name;
      attrNamespaceURI = attr.namespaceURI;
      if (attrNamespaceURI) {
        attrName = attr.localName || attrName;
        if (!toNode.hasAttributeNS(attrNamespaceURI, attrName)) {
          fromNode.removeAttributeNS(attrNamespaceURI, attrName);
        }
      } else {
        if (!toNode.hasAttribute(attrName)) {
          fromNode.removeAttribute(attrName);
        }
      }
    }
  }
  var range;
  var NS_XHTML = "http://www.w3.org/1999/xhtml";
  var doc = typeof document === "undefined" ? void 0 : document;
  var HAS_TEMPLATE_SUPPORT = !!doc && "content" in doc.createElement("template");
  var HAS_RANGE_SUPPORT = !!doc && doc.createRange && "createContextualFragment" in doc.createRange();
  function createFragmentFromTemplate(str) {
    var template = doc.createElement("template");
    template.innerHTML = str;
    return template.content.childNodes[0];
  }
  function createFragmentFromRange(str) {
    if (!range) {
      range = doc.createRange();
      range.selectNode(doc.body);
    }
    var fragment = range.createContextualFragment(str);
    return fragment.childNodes[0];
  }
  function createFragmentFromWrap(str) {
    var fragment = doc.createElement("body");
    fragment.innerHTML = str;
    return fragment.childNodes[0];
  }
  function toElement(str) {
    str = str.trim();
    if (HAS_TEMPLATE_SUPPORT) {
      return createFragmentFromTemplate(str);
    } else if (HAS_RANGE_SUPPORT) {
      return createFragmentFromRange(str);
    }
    return createFragmentFromWrap(str);
  }
  function compareNodeNames(fromEl, toEl) {
    var fromNodeName = fromEl.nodeName;
    var toNodeName = toEl.nodeName;
    var fromCodeStart, toCodeStart;
    if (fromNodeName === toNodeName) {
      return true;
    }
    fromCodeStart = fromNodeName.charCodeAt(0);
    toCodeStart = toNodeName.charCodeAt(0);
    if (fromCodeStart <= 90 && toCodeStart >= 97) {
      return fromNodeName === toNodeName.toUpperCase();
    } else if (toCodeStart <= 90 && fromCodeStart >= 97) {
      return toNodeName === fromNodeName.toUpperCase();
    } else {
      return false;
    }
  }
  function createElementNS(name, namespaceURI) {
    return !namespaceURI || namespaceURI === NS_XHTML ? doc.createElement(name) : doc.createElementNS(namespaceURI, name);
  }
  function moveChildren(fromEl, toEl) {
    var curChild = fromEl.firstChild;
    while (curChild) {
      var nextChild = curChild.nextSibling;
      toEl.appendChild(curChild);
      curChild = nextChild;
    }
    return toEl;
  }
  function syncBooleanAttrProp(fromEl, toEl, name) {
    if (fromEl[name] !== toEl[name]) {
      fromEl[name] = toEl[name];
      if (fromEl[name]) {
        fromEl.setAttribute(name, "");
      } else {
        fromEl.removeAttribute(name);
      }
    }
  }
  var specialElHandlers = {
    OPTION: function(fromEl, toEl) {
      var parentNode = fromEl.parentNode;
      if (parentNode) {
        var parentName = parentNode.nodeName.toUpperCase();
        if (parentName === "OPTGROUP") {
          parentNode = parentNode.parentNode;
          parentName = parentNode && parentNode.nodeName.toUpperCase();
        }
        if (parentName === "SELECT" && !parentNode.hasAttribute("multiple")) {
          if (fromEl.hasAttribute("selected") && !toEl.selected) {
            fromEl.setAttribute("selected", "selected");
            fromEl.removeAttribute("selected");
          }
          parentNode.selectedIndex = -1;
        }
      }
      syncBooleanAttrProp(fromEl, toEl, "selected");
    },
    INPUT: function(fromEl, toEl) {
      syncBooleanAttrProp(fromEl, toEl, "checked");
      syncBooleanAttrProp(fromEl, toEl, "disabled");
      if (fromEl.value !== toEl.value) {
        fromEl.value = toEl.value;
      }
      if (!toEl.hasAttribute("value")) {
        fromEl.removeAttribute("value");
      }
    },
    TEXTAREA: function(fromEl, toEl) {
      var newValue = toEl.value;
      if (fromEl.value !== newValue) {
        fromEl.value = newValue;
      }
      var firstChild = fromEl.firstChild;
      if (firstChild) {
        var oldValue = firstChild.nodeValue;
        if (oldValue == newValue || !newValue && oldValue == fromEl.placeholder) {
          return;
        }
        firstChild.nodeValue = newValue;
      }
    },
    SELECT: function(fromEl, toEl) {
      if (!toEl.hasAttribute("multiple")) {
        var selectedIndex = -1;
        var i = 0;
        var curChild = fromEl.firstChild;
        var optgroup;
        var nodeName;
        while (curChild) {
          nodeName = curChild.nodeName && curChild.nodeName.toUpperCase();
          if (nodeName === "OPTGROUP") {
            optgroup = curChild;
            curChild = optgroup.firstChild;
          } else {
            if (nodeName === "OPTION") {
              if (curChild.hasAttribute("selected")) {
                selectedIndex = i;
                break;
              }
              i++;
            }
            curChild = curChild.nextSibling;
            if (!curChild && optgroup) {
              curChild = optgroup.nextSibling;
              optgroup = null;
            }
          }
        }
        fromEl.selectedIndex = selectedIndex;
      }
    }
  };
  var ELEMENT_NODE = 1;
  var DOCUMENT_FRAGMENT_NODE$1 = 11;
  var TEXT_NODE = 3;
  var COMMENT_NODE = 8;
  function noop() {
  }
  function defaultGetNodeKey(node) {
    if (node) {
      return node.getAttribute && node.getAttribute("id") || node.id;
    }
  }
  function morphdomFactory(morphAttrs2) {
    return function morphdom2(fromNode, toNode, options) {
      if (!options) {
        options = {};
      }
      if (typeof toNode === "string") {
        if (fromNode.nodeName === "#document" || fromNode.nodeName === "HTML" || fromNode.nodeName === "BODY") {
          var toNodeHtml = toNode;
          toNode = doc.createElement("html");
          toNode.innerHTML = toNodeHtml;
        } else {
          toNode = toElement(toNode);
        }
      }
      var getNodeKey = options.getNodeKey || defaultGetNodeKey;
      var onBeforeNodeAdded = options.onBeforeNodeAdded || noop;
      var onNodeAdded = options.onNodeAdded || noop;
      var onBeforeElUpdated = options.onBeforeElUpdated || noop;
      var onElUpdated = options.onElUpdated || noop;
      var onBeforeNodeDiscarded = options.onBeforeNodeDiscarded || noop;
      var onNodeDiscarded = options.onNodeDiscarded || noop;
      var onBeforeElChildrenUpdated = options.onBeforeElChildrenUpdated || noop;
      var childrenOnly = options.childrenOnly === true;
      var fromNodesLookup = Object.create(null);
      var keyedRemovalList = [];
      function addKeyedRemoval(key) {
        keyedRemovalList.push(key);
      }
      function walkDiscardedChildNodes(node, skipKeyedNodes) {
        if (node.nodeType === ELEMENT_NODE) {
          var curChild = node.firstChild;
          while (curChild) {
            var key = void 0;
            if (skipKeyedNodes && (key = getNodeKey(curChild))) {
              addKeyedRemoval(key);
            } else {
              onNodeDiscarded(curChild);
              if (curChild.firstChild) {
                walkDiscardedChildNodes(curChild, skipKeyedNodes);
              }
            }
            curChild = curChild.nextSibling;
          }
        }
      }
      function removeNode(node, parentNode, skipKeyedNodes) {
        if (onBeforeNodeDiscarded(node) === false) {
          return;
        }
        if (parentNode) {
          parentNode.removeChild(node);
        }
        onNodeDiscarded(node);
        walkDiscardedChildNodes(node, skipKeyedNodes);
      }
      function indexTree(node) {
        if (node.nodeType === ELEMENT_NODE || node.nodeType === DOCUMENT_FRAGMENT_NODE$1) {
          var curChild = node.firstChild;
          while (curChild) {
            var key = getNodeKey(curChild);
            if (key) {
              fromNodesLookup[key] = curChild;
            }
            indexTree(curChild);
            curChild = curChild.nextSibling;
          }
        }
      }
      indexTree(fromNode);
      function handleNodeAdded(el) {
        onNodeAdded(el);
        var curChild = el.firstChild;
        while (curChild) {
          var nextSibling = curChild.nextSibling;
          var key = getNodeKey(curChild);
          if (key) {
            var unmatchedFromEl = fromNodesLookup[key];
            if (unmatchedFromEl && compareNodeNames(curChild, unmatchedFromEl)) {
              curChild.parentNode.replaceChild(unmatchedFromEl, curChild);
              morphEl(unmatchedFromEl, curChild);
            } else {
              handleNodeAdded(curChild);
            }
          } else {
            handleNodeAdded(curChild);
          }
          curChild = nextSibling;
        }
      }
      function cleanupFromEl(fromEl, curFromNodeChild, curFromNodeKey) {
        while (curFromNodeChild) {
          var fromNextSibling = curFromNodeChild.nextSibling;
          if (curFromNodeKey = getNodeKey(curFromNodeChild)) {
            addKeyedRemoval(curFromNodeKey);
          } else {
            removeNode(curFromNodeChild, fromEl, true);
          }
          curFromNodeChild = fromNextSibling;
        }
      }
      function morphEl(fromEl, toEl, childrenOnly2) {
        var toElKey = getNodeKey(toEl);
        if (toElKey) {
          delete fromNodesLookup[toElKey];
        }
        if (!childrenOnly2) {
          if (onBeforeElUpdated(fromEl, toEl) === false) {
            return;
          }
          morphAttrs2(fromEl, toEl);
          onElUpdated(fromEl);
          if (onBeforeElChildrenUpdated(fromEl, toEl) === false) {
            return;
          }
        }
        if (fromEl.nodeName !== "TEXTAREA") {
          morphChildren(fromEl, toEl);
        } else {
          specialElHandlers.TEXTAREA(fromEl, toEl);
        }
      }
      function morphChildren(fromEl, toEl) {
        var curToNodeChild = toEl.firstChild;
        var curFromNodeChild = fromEl.firstChild;
        var curToNodeKey;
        var curFromNodeKey;
        var fromNextSibling;
        var toNextSibling;
        var matchingFromEl;
        outer:
          while (curToNodeChild) {
            toNextSibling = curToNodeChild.nextSibling;
            curToNodeKey = getNodeKey(curToNodeChild);
            while (curFromNodeChild) {
              fromNextSibling = curFromNodeChild.nextSibling;
              if (curToNodeChild.isSameNode && curToNodeChild.isSameNode(curFromNodeChild)) {
                curToNodeChild = toNextSibling;
                curFromNodeChild = fromNextSibling;
                continue outer;
              }
              curFromNodeKey = getNodeKey(curFromNodeChild);
              var curFromNodeType = curFromNodeChild.nodeType;
              var isCompatible = void 0;
              if (curFromNodeType === curToNodeChild.nodeType) {
                if (curFromNodeType === ELEMENT_NODE) {
                  if (curToNodeKey) {
                    if (curToNodeKey !== curFromNodeKey) {
                      if (matchingFromEl = fromNodesLookup[curToNodeKey]) {
                        if (fromNextSibling === matchingFromEl) {
                          isCompatible = false;
                        } else {
                          fromEl.insertBefore(matchingFromEl, curFromNodeChild);
                          if (curFromNodeKey) {
                            addKeyedRemoval(curFromNodeKey);
                          } else {
                            removeNode(curFromNodeChild, fromEl, true);
                          }
                          curFromNodeChild = matchingFromEl;
                        }
                      } else {
                        isCompatible = false;
                      }
                    }
                  } else if (curFromNodeKey) {
                    isCompatible = false;
                  }
                  isCompatible = isCompatible !== false && compareNodeNames(curFromNodeChild, curToNodeChild);
                  if (isCompatible) {
                    morphEl(curFromNodeChild, curToNodeChild);
                  }
                } else if (curFromNodeType === TEXT_NODE || curFromNodeType == COMMENT_NODE) {
                  isCompatible = true;
                  if (curFromNodeChild.nodeValue !== curToNodeChild.nodeValue) {
                    curFromNodeChild.nodeValue = curToNodeChild.nodeValue;
                  }
                }
              }
              if (isCompatible) {
                curToNodeChild = toNextSibling;
                curFromNodeChild = fromNextSibling;
                continue outer;
              }
              if (curFromNodeKey) {
                addKeyedRemoval(curFromNodeKey);
              } else {
                removeNode(curFromNodeChild, fromEl, true);
              }
              curFromNodeChild = fromNextSibling;
            }
            if (curToNodeKey && (matchingFromEl = fromNodesLookup[curToNodeKey]) && compareNodeNames(matchingFromEl, curToNodeChild)) {
              fromEl.appendChild(matchingFromEl);
              morphEl(matchingFromEl, curToNodeChild);
            } else {
              var onBeforeNodeAddedResult = onBeforeNodeAdded(curToNodeChild);
              if (onBeforeNodeAddedResult !== false) {
                if (onBeforeNodeAddedResult) {
                  curToNodeChild = onBeforeNodeAddedResult;
                }
                if (curToNodeChild.actualize) {
                  curToNodeChild = curToNodeChild.actualize(fromEl.ownerDocument || doc);
                }
                fromEl.appendChild(curToNodeChild);
                handleNodeAdded(curToNodeChild);
              }
            }
            curToNodeChild = toNextSibling;
            curFromNodeChild = fromNextSibling;
          }
        cleanupFromEl(fromEl, curFromNodeChild, curFromNodeKey);
        var specialElHandler = specialElHandlers[fromEl.nodeName];
        if (specialElHandler) {
          specialElHandler(fromEl, toEl);
        }
      }
      var morphedNode = fromNode;
      var morphedNodeType = morphedNode.nodeType;
      var toNodeType = toNode.nodeType;
      if (!childrenOnly) {
        if (morphedNodeType === ELEMENT_NODE) {
          if (toNodeType === ELEMENT_NODE) {
            if (!compareNodeNames(fromNode, toNode)) {
              onNodeDiscarded(fromNode);
              morphedNode = moveChildren(fromNode, createElementNS(toNode.nodeName, toNode.namespaceURI));
            }
          } else {
            morphedNode = toNode;
          }
        } else if (morphedNodeType === TEXT_NODE || morphedNodeType === COMMENT_NODE) {
          if (toNodeType === morphedNodeType) {
            if (morphedNode.nodeValue !== toNode.nodeValue) {
              morphedNode.nodeValue = toNode.nodeValue;
            }
            return morphedNode;
          } else {
            morphedNode = toNode;
          }
        }
      }
      if (morphedNode === toNode) {
        onNodeDiscarded(fromNode);
      } else {
        if (toNode.isSameNode && toNode.isSameNode(morphedNode)) {
          return;
        }
        morphEl(morphedNode, toNode, childrenOnly);
        if (keyedRemovalList) {
          for (var i = 0, len = keyedRemovalList.length; i < len; i++) {
            var elToRemove = fromNodesLookup[keyedRemovalList[i]];
            if (elToRemove) {
              removeNode(elToRemove, elToRemove.parentNode, false);
            }
          }
        }
      }
      if (!childrenOnly && morphedNode !== fromNode && fromNode.parentNode) {
        if (morphedNode.actualize) {
          morphedNode = morphedNode.actualize(fromNode.ownerDocument || doc);
        }
        fromNode.parentNode.replaceChild(morphedNode, fromNode);
      }
      return morphedNode;
    };
  }
  var morphdom = morphdomFactory(morphAttrs);
  var morphdom_esm_default = morphdom;
  var DOMPatch = class {
    static patchEl(fromEl, toEl, activeElement) {
      morphdom_esm_default(fromEl, toEl, {
        childrenOnly: false,
        onBeforeElUpdated: (fromEl2, toEl2) => {
          if (activeElement && activeElement.isSameNode(fromEl2) && dom_default.isFormInput(fromEl2)) {
            dom_default.mergeFocusedInput(fromEl2, toEl2);
            return false;
          }
        }
      });
    }
    constructor(view, container, id, html, targetCID) {
      this.view = view;
      this.liveSocket = view.liveSocket;
      this.container = container;
      this.id = id;
      this.rootID = view.root.id;
      this.html = html;
      this.targetCID = targetCID;
      this.cidPatch = isCid(this.targetCID);
      this.callbacks = {
        beforeadded: [],
        beforeupdated: [],
        beforephxChildAdded: [],
        afteradded: [],
        afterupdated: [],
        afterdiscarded: [],
        afterphxChildAdded: [],
        aftertransitionsDiscarded: []
      };
    }
    before(kind, callback) {
      this.callbacks[`before${kind}`].push(callback);
    }
    after(kind, callback) {
      this.callbacks[`after${kind}`].push(callback);
    }
    trackBefore(kind, ...args) {
      this.callbacks[`before${kind}`].forEach((callback) => callback(...args));
    }
    trackAfter(kind, ...args) {
      this.callbacks[`after${kind}`].forEach((callback) => callback(...args));
    }
    markPrunableContentForRemoval() {
      dom_default.all(this.container, "[phx-update=append] > *, [phx-update=prepend] > *", (el) => {
        el.setAttribute(PHX_PRUNE, "");
      });
    }
    perform() {
      let { view, liveSocket: liveSocket2, container, html } = this;
      let targetContainer = this.isCIDPatch() ? this.targetCIDContainer(html) : container;
      if (this.isCIDPatch() && !targetContainer) {
        return;
      }
      let focused = liveSocket2.getActiveElement();
      let { selectionStart, selectionEnd } = focused && dom_default.hasSelectionRange(focused) ? focused : {};
      let phxUpdate = liveSocket2.binding(PHX_UPDATE);
      let phxFeedbackFor = liveSocket2.binding(PHX_FEEDBACK_FOR);
      let disableWith = liveSocket2.binding(PHX_DISABLE_WITH);
      let phxTriggerExternal = liveSocket2.binding(PHX_TRIGGER_ACTION);
      let phxRemove = liveSocket2.binding("remove");
      let added = [];
      let updates = [];
      let appendPrependUpdates = [];
      let pendingRemoves = [];
      let externalFormTriggered = null;
      let diffHTML = liveSocket2.time("premorph container prep", () => {
        return this.buildDiffHTML(container, html, phxUpdate, targetContainer);
      });
      this.trackBefore("added", container);
      this.trackBefore("updated", container, container);
      liveSocket2.time("morphdom", () => {
        morphdom_esm_default(targetContainer, diffHTML, {
          childrenOnly: targetContainer.getAttribute(PHX_COMPONENT) === null,
          getNodeKey: (node) => {
            return dom_default.isPhxDestroyed(node) ? null : node.id;
          },
          onBeforeNodeAdded: (el) => {
            this.trackBefore("added", el);
            return el;
          },
          onNodeAdded: (el) => {
            if (el instanceof HTMLImageElement && el.srcset) {
              el.srcset = el.srcset;
            } else if (el instanceof HTMLVideoElement && el.autoplay) {
              el.play();
            }
            if (dom_default.isNowTriggerFormExternal(el, phxTriggerExternal)) {
              externalFormTriggered = el;
            }
            dom_default.discardError(targetContainer, el, phxFeedbackFor);
            if (dom_default.isPhxChild(el) && view.ownsElement(el) || dom_default.isPhxSticky(el) && view.ownsElement(el.parentNode)) {
              this.trackAfter("phxChildAdded", el);
            }
            added.push(el);
          },
          onNodeDiscarded: (el) => {
            if (dom_default.isPhxChild(el) || dom_default.isPhxSticky(el)) {
              liveSocket2.destroyViewByEl(el);
            }
            this.trackAfter("discarded", el);
          },
          onBeforeNodeDiscarded: (el) => {
            if (el.getAttribute && el.getAttribute(PHX_PRUNE) !== null) {
              return true;
            }
            if (el.parentNode !== null && dom_default.isPhxUpdate(el.parentNode, phxUpdate, ["append", "prepend"]) && el.id) {
              return false;
            }
            if (el.getAttribute && el.getAttribute(phxRemove)) {
              pendingRemoves.push(el);
              return false;
            }
            if (this.skipCIDSibling(el)) {
              return false;
            }
            return true;
          },
          onElUpdated: (el) => {
            if (dom_default.isNowTriggerFormExternal(el, phxTriggerExternal)) {
              externalFormTriggered = el;
            }
            updates.push(el);
          },
          onBeforeElUpdated: (fromEl, toEl) => {
            dom_default.cleanChildNodes(toEl, phxUpdate);
            if (this.skipCIDSibling(toEl)) {
              return false;
            }
            if (dom_default.isPhxSticky(fromEl)) {
              return false;
            }
            if (dom_default.isIgnored(fromEl, phxUpdate)) {
              this.trackBefore("updated", fromEl, toEl);
              dom_default.mergeAttrs(fromEl, toEl, { isIgnored: true });
              updates.push(fromEl);
              dom_default.applyStickyOperations(fromEl);
              return false;
            }
            if (fromEl.type === "number" && (fromEl.validity && fromEl.validity.badInput)) {
              return false;
            }
            if (!dom_default.syncPendingRef(fromEl, toEl, disableWith)) {
              if (dom_default.isUploadInput(fromEl)) {
                this.trackBefore("updated", fromEl, toEl);
                updates.push(fromEl);
              }
              dom_default.applyStickyOperations(fromEl);
              return false;
            }
            if (dom_default.isPhxChild(toEl)) {
              let prevSession = fromEl.getAttribute(PHX_SESSION);
              dom_default.mergeAttrs(fromEl, toEl, { exclude: [PHX_STATIC] });
              if (prevSession !== "") {
                fromEl.setAttribute(PHX_SESSION, prevSession);
              }
              fromEl.setAttribute(PHX_ROOT_ID, this.rootID);
              dom_default.applyStickyOperations(fromEl);
              return false;
            }
            dom_default.copyPrivates(toEl, fromEl);
            dom_default.discardError(targetContainer, toEl, phxFeedbackFor);
            let isFocusedFormEl = focused && fromEl.isSameNode(focused) && dom_default.isFormInput(fromEl);
            if (isFocusedFormEl) {
              this.trackBefore("updated", fromEl, toEl);
              dom_default.mergeFocusedInput(fromEl, toEl);
              dom_default.syncAttrsToProps(fromEl);
              updates.push(fromEl);
              dom_default.applyStickyOperations(fromEl);
              return false;
            } else {
              if (dom_default.isPhxUpdate(toEl, phxUpdate, ["append", "prepend"])) {
                appendPrependUpdates.push(new DOMPostMorphRestorer(fromEl, toEl, toEl.getAttribute(phxUpdate)));
              }
              dom_default.syncAttrsToProps(toEl);
              dom_default.applyStickyOperations(toEl);
              this.trackBefore("updated", fromEl, toEl);
              return true;
            }
          }
        });
      });
      if (liveSocket2.isDebugEnabled()) {
        detectDuplicateIds();
      }
      if (appendPrependUpdates.length > 0) {
        liveSocket2.time("post-morph append/prepend restoration", () => {
          appendPrependUpdates.forEach((update) => update.perform());
        });
      }
      liveSocket2.silenceEvents(() => dom_default.restoreFocus(focused, selectionStart, selectionEnd));
      dom_default.dispatchEvent(document, "phx:update");
      added.forEach((el) => this.trackAfter("added", el));
      updates.forEach((el) => this.trackAfter("updated", el));
      if (pendingRemoves.length > 0) {
        liveSocket2.transitionRemoves(pendingRemoves);
        liveSocket2.requestDOMUpdate(() => {
          pendingRemoves.forEach((el) => {
            let child = dom_default.firstPhxChild(el);
            if (child) {
              liveSocket2.destroyViewByEl(child);
            }
            el.remove();
          });
          this.trackAfter("transitionsDiscarded", pendingRemoves);
        });
      }
      if (externalFormTriggered) {
        liveSocket2.disconnect();
        externalFormTriggered.submit();
      }
      return true;
    }
    isCIDPatch() {
      return this.cidPatch;
    }
    skipCIDSibling(el) {
      return el.nodeType === Node.ELEMENT_NODE && el.getAttribute(PHX_SKIP) !== null;
    }
    targetCIDContainer(html) {
      if (!this.isCIDPatch()) {
        return;
      }
      let [first, ...rest] = dom_default.findComponentNodeList(this.container, this.targetCID);
      if (rest.length === 0 && dom_default.childNodeLength(html) === 1) {
        return first;
      } else {
        return first && first.parentNode;
      }
    }
    buildDiffHTML(container, html, phxUpdate, targetContainer) {
      let isCIDPatch = this.isCIDPatch();
      let isCIDWithSingleRoot = isCIDPatch && targetContainer.getAttribute(PHX_COMPONENT) === this.targetCID.toString();
      if (!isCIDPatch || isCIDWithSingleRoot) {
        return html;
      } else {
        let diffContainer = null;
        let template = document.createElement("template");
        diffContainer = dom_default.cloneNode(targetContainer);
        let [firstComponent, ...rest] = dom_default.findComponentNodeList(diffContainer, this.targetCID);
        template.innerHTML = html;
        rest.forEach((el) => el.remove());
        Array.from(diffContainer.childNodes).forEach((child) => {
          if (child.id && child.nodeType === Node.ELEMENT_NODE && child.getAttribute(PHX_COMPONENT) !== this.targetCID.toString()) {
            child.setAttribute(PHX_SKIP, "");
            child.innerHTML = "";
          }
        });
        Array.from(template.content.childNodes).forEach((el) => diffContainer.insertBefore(el, firstComponent));
        firstComponent.remove();
        return diffContainer.outerHTML;
      }
    }
  };
  var Rendered = class {
    static extract(diff) {
      let { [REPLY]: reply, [EVENTS]: events, [TITLE]: title } = diff;
      delete diff[REPLY];
      delete diff[EVENTS];
      delete diff[TITLE];
      return { diff, title, reply: reply || null, events: events || [] };
    }
    constructor(viewId, rendered) {
      this.viewId = viewId;
      this.rendered = {};
      this.mergeDiff(rendered);
    }
    parentViewId() {
      return this.viewId;
    }
    toString(onlyCids) {
      return this.recursiveToString(this.rendered, this.rendered[COMPONENTS], onlyCids);
    }
    recursiveToString(rendered, components = rendered[COMPONENTS], onlyCids) {
      onlyCids = onlyCids ? new Set(onlyCids) : null;
      let output = { buffer: "", components, onlyCids };
      this.toOutputBuffer(rendered, null, output);
      return output.buffer;
    }
    componentCIDs(diff) {
      return Object.keys(diff[COMPONENTS] || {}).map((i) => parseInt(i));
    }
    isComponentOnlyDiff(diff) {
      if (!diff[COMPONENTS]) {
        return false;
      }
      return Object.keys(diff).length === 1;
    }
    getComponent(diff, cid) {
      return diff[COMPONENTS][cid];
    }
    mergeDiff(diff) {
      let newc = diff[COMPONENTS];
      let cache = {};
      delete diff[COMPONENTS];
      this.rendered = this.mutableMerge(this.rendered, diff);
      this.rendered[COMPONENTS] = this.rendered[COMPONENTS] || {};
      if (newc) {
        let oldc = this.rendered[COMPONENTS];
        for (let cid in newc) {
          newc[cid] = this.cachedFindComponent(cid, newc[cid], oldc, newc, cache);
        }
        for (let cid in newc) {
          oldc[cid] = newc[cid];
        }
        diff[COMPONENTS] = newc;
      }
    }
    cachedFindComponent(cid, cdiff, oldc, newc, cache) {
      if (cache[cid]) {
        return cache[cid];
      } else {
        let ndiff, stat, scid = cdiff[STATIC];
        if (isCid(scid)) {
          let tdiff;
          if (scid > 0) {
            tdiff = this.cachedFindComponent(scid, newc[scid], oldc, newc, cache);
          } else {
            tdiff = oldc[-scid];
          }
          stat = tdiff[STATIC];
          ndiff = this.cloneMerge(tdiff, cdiff);
          ndiff[STATIC] = stat;
        } else {
          ndiff = cdiff[STATIC] !== void 0 ? cdiff : this.cloneMerge(oldc[cid] || {}, cdiff);
        }
        cache[cid] = ndiff;
        return ndiff;
      }
    }
    mutableMerge(target, source) {
      if (source[STATIC] !== void 0) {
        return source;
      } else {
        this.doMutableMerge(target, source);
        return target;
      }
    }
    doMutableMerge(target, source) {
      for (let key in source) {
        let val = source[key];
        let targetVal = target[key];
        if (isObject(val) && val[STATIC] === void 0 && isObject(targetVal)) {
          this.doMutableMerge(targetVal, val);
        } else {
          target[key] = val;
        }
      }
    }
    cloneMerge(target, source) {
      let merged = __spreadValues(__spreadValues({}, target), source);
      for (let key in merged) {
        let val = source[key];
        let targetVal = target[key];
        if (isObject(val) && val[STATIC] === void 0 && isObject(targetVal)) {
          merged[key] = this.cloneMerge(targetVal, val);
        }
      }
      return merged;
    }
    componentToString(cid) {
      return this.recursiveCIDToString(this.rendered[COMPONENTS], cid);
    }
    pruneCIDs(cids) {
      cids.forEach((cid) => delete this.rendered[COMPONENTS][cid]);
    }
    get() {
      return this.rendered;
    }
    isNewFingerprint(diff = {}) {
      return !!diff[STATIC];
    }
    templateStatic(part, templates) {
      if (typeof part === "number") {
        return templates[part];
      } else {
        return part;
      }
    }
    toOutputBuffer(rendered, templates, output) {
      if (rendered[DYNAMICS]) {
        return this.comprehensionToBuffer(rendered, templates, output);
      }
      let { [STATIC]: statics } = rendered;
      statics = this.templateStatic(statics, templates);
      output.buffer += statics[0];
      for (let i = 1; i < statics.length; i++) {
        this.dynamicToBuffer(rendered[i - 1], templates, output);
        output.buffer += statics[i];
      }
    }
    comprehensionToBuffer(rendered, templates, output) {
      let { [DYNAMICS]: dynamics, [STATIC]: statics } = rendered;
      statics = this.templateStatic(statics, templates);
      let compTemplates = templates || rendered[TEMPLATES];
      for (let d = 0; d < dynamics.length; d++) {
        let dynamic = dynamics[d];
        output.buffer += statics[0];
        for (let i = 1; i < statics.length; i++) {
          this.dynamicToBuffer(dynamic[i - 1], compTemplates, output);
          output.buffer += statics[i];
        }
      }
    }
    dynamicToBuffer(rendered, templates, output) {
      if (typeof rendered === "number") {
        output.buffer += this.recursiveCIDToString(output.components, rendered, output.onlyCids);
      } else if (isObject(rendered)) {
        this.toOutputBuffer(rendered, templates, output);
      } else {
        output.buffer += rendered;
      }
    }
    recursiveCIDToString(components, cid, onlyCids) {
      let component = components[cid] || logError(`no component for CID ${cid}`, components);
      let template = document.createElement("template");
      template.innerHTML = this.recursiveToString(component, components, onlyCids);
      let container = template.content;
      let skip = onlyCids && !onlyCids.has(cid);
      let [hasChildNodes, hasChildComponents] = Array.from(container.childNodes).reduce(([hasNodes, hasComponents], child, i) => {
        if (child.nodeType === Node.ELEMENT_NODE) {
          if (child.getAttribute(PHX_COMPONENT)) {
            return [hasNodes, true];
          }
          child.setAttribute(PHX_COMPONENT, cid);
          if (!child.id) {
            child.id = `${this.parentViewId()}-${cid}-${i}`;
          }
          if (skip) {
            child.setAttribute(PHX_SKIP, "");
            child.innerHTML = "";
          }
          return [true, hasComponents];
        } else {
          if (child.nodeValue.trim() !== "") {
            logError(`only HTML element tags are allowed at the root of components.

got: "${child.nodeValue.trim()}"

within:
`, template.innerHTML.trim());
            child.replaceWith(this.createSpan(child.nodeValue, cid));
            return [true, hasComponents];
          } else {
            child.remove();
            return [hasNodes, hasComponents];
          }
        }
      }, [false, false]);
      if (!hasChildNodes && !hasChildComponents) {
        logError("expected at least one HTML element tag inside a component, but the component is empty:\n", template.innerHTML.trim());
        return this.createSpan("", cid).outerHTML;
      } else if (!hasChildNodes && hasChildComponents) {
        logError("expected at least one HTML element tag directly inside a component, but only subcomponents were found. A component must render at least one HTML tag directly inside itself.", template.innerHTML.trim());
        return template.innerHTML;
      } else {
        return template.innerHTML;
      }
    }
    createSpan(text, cid) {
      let span = document.createElement("span");
      span.innerText = text;
      span.setAttribute(PHX_COMPONENT, cid);
      return span;
    }
  };
  var viewHookID = 1;
  var ViewHook = class {
    static makeID() {
      return viewHookID++;
    }
    static elementID(el) {
      return el.phxHookId;
    }
    constructor(view, el, callbacks) {
      this.__view = view;
      this.__liveSocket = view.liveSocket;
      this.__callbacks = callbacks;
      this.__listeners = /* @__PURE__ */ new Set();
      this.__isDisconnected = false;
      this.el = el;
      this.el.phxHookId = this.constructor.makeID();
      for (let key in this.__callbacks) {
        this[key] = this.__callbacks[key];
      }
    }
    __mounted() {
      this.mounted && this.mounted();
    }
    __updated() {
      this.updated && this.updated();
    }
    __beforeUpdate() {
      this.beforeUpdate && this.beforeUpdate();
    }
    __destroyed() {
      this.destroyed && this.destroyed();
    }
    __reconnected() {
      if (this.__isDisconnected) {
        this.__isDisconnected = false;
        this.reconnected && this.reconnected();
      }
    }
    __disconnected() {
      this.__isDisconnected = true;
      this.disconnected && this.disconnected();
    }
    pushEvent(event, payload = {}, onReply = function() {
    }) {
      return this.__view.pushHookEvent(null, event, payload, onReply);
    }
    pushEventTo(phxTarget, event, payload = {}, onReply = function() {
    }) {
      return this.__view.withinTargets(phxTarget, (view, targetCtx) => {
        return view.pushHookEvent(targetCtx, event, payload, onReply);
      });
    }
    handleEvent(event, callback) {
      let callbackRef = (customEvent, bypass) => bypass ? event : callback(customEvent.detail);
      window.addEventListener(`phx:${event}`, callbackRef);
      this.__listeners.add(callbackRef);
      return callbackRef;
    }
    removeHandleEvent(callbackRef) {
      let event = callbackRef(null, true);
      window.removeEventListener(`phx:${event}`, callbackRef);
      this.__listeners.delete(callbackRef);
    }
    upload(name, files) {
      return this.__view.dispatchUploads(name, files);
    }
    uploadTo(phxTarget, name, files) {
      return this.__view.withinTargets(phxTarget, (view) => view.dispatchUploads(name, files));
    }
    __cleanup__() {
      this.__listeners.forEach((callbackRef) => this.removeHandleEvent(callbackRef));
    }
  };
  var JS = {
    exec(eventType, phxEvent, view, sourceEl, defaults) {
      let [defaultKind, defaultArgs] = defaults || [null, {}];
      let commands = phxEvent.charAt(0) === "[" ? JSON.parse(phxEvent) : [[defaultKind, defaultArgs]];
      commands.forEach(([kind, args]) => {
        if (kind === defaultKind && defaultArgs.data) {
          args.data = Object.assign(args.data || {}, defaultArgs.data);
        }
        this.filterToEls(sourceEl, args).forEach((el) => {
          this[`exec_${kind}`](eventType, phxEvent, view, sourceEl, el, args);
        });
      });
    },
    isVisible(el) {
      return !!(el.offsetWidth || el.offsetHeight || el.getClientRects().length > 0);
    },
    exec_dispatch(eventType, phxEvent, view, sourceEl, el, { to, event, detail }) {
      dom_default.dispatchEvent(el, event, detail);
    },
    exec_push(eventType, phxEvent, view, sourceEl, el, args) {
      let { event, data, target, page_loading, loading, value } = args;
      let pushOpts = { loading, value, target, page_loading: !!page_loading };
      let targetSrc = eventType === "change" ? sourceEl.form : sourceEl;
      let phxTarget = target || targetSrc.getAttribute(view.binding("target")) || targetSrc;
      view.withinTargets(phxTarget, (targetView, targetCtx) => {
        if (eventType === "change") {
          let { newCid, _target, callback } = args;
          if (_target) {
            pushOpts._target = _target;
          }
          targetView.pushInput(sourceEl, targetCtx, newCid, event || phxEvent, pushOpts, callback);
        } else if (eventType === "submit") {
          targetView.submitForm(sourceEl, targetCtx, event || phxEvent, pushOpts);
        } else {
          targetView.pushEvent(eventType, sourceEl, targetCtx, event || phxEvent, data, pushOpts);
        }
      });
    },
    exec_add_class(eventType, phxEvent, view, sourceEl, el, { names, transition, time }) {
      this.addOrRemoveClasses(el, names, [], transition, time, view);
    },
    exec_remove_class(eventType, phxEvent, view, sourceEl, el, { names, transition, time }) {
      this.addOrRemoveClasses(el, [], names, transition, time, view);
    },
    exec_transition(eventType, phxEvent, view, sourceEl, el, { time, transition }) {
      let [transition_start, running, transition_end] = transition;
      let onStart = () => this.addOrRemoveClasses(el, transition_start.concat(running), []);
      let onDone = () => this.addOrRemoveClasses(el, transition_end, transition_start.concat(running));
      view.transition(time, onStart, onDone);
    },
    exec_toggle(eventType, phxEvent, view, sourceEl, el, { display, ins, outs, time }) {
      this.toggle(eventType, view, el, display, ins, outs, time);
    },
    exec_show(eventType, phxEvent, view, sourceEl, el, { display, transition, time }) {
      this.show(eventType, view, el, display, transition, time);
    },
    exec_hide(eventType, phxEvent, view, sourceEl, el, { display, transition, time }) {
      this.hide(eventType, view, el, display, transition, time);
    },
    exec_set_attr(eventType, phxEvent, view, sourceEl, el, { attr: [attr, val] }) {
      this.setOrRemoveAttrs(el, [[attr, val]], []);
    },
    exec_remove_attr(eventType, phxEvent, view, sourceEl, el, { attr }) {
      this.setOrRemoveAttrs(el, [], [attr]);
    },
    show(eventType, view, el, display, transition, time) {
      if (!this.isVisible(el)) {
        this.toggle(eventType, view, el, display, transition, null, time);
      }
    },
    hide(eventType, view, el, display, transition, time) {
      if (this.isVisible(el)) {
        this.toggle(eventType, view, el, display, null, transition, time);
      }
    },
    toggle(eventType, view, el, display, ins, outs, time) {
      let [inClasses, inStartClasses, inEndClasses] = ins || [[], [], []];
      let [outClasses, outStartClasses, outEndClasses] = outs || [[], [], []];
      if (inClasses.length > 0 || outClasses.length > 0) {
        if (this.isVisible(el)) {
          let onStart = () => {
            this.addOrRemoveClasses(el, outStartClasses, inClasses.concat(inStartClasses).concat(inEndClasses));
            window.requestAnimationFrame(() => {
              this.addOrRemoveClasses(el, outClasses, []);
              window.requestAnimationFrame(() => this.addOrRemoveClasses(el, outEndClasses, outStartClasses));
            });
          };
          el.dispatchEvent(new Event("phx:hide-start"));
          view.transition(time, onStart, () => {
            this.addOrRemoveClasses(el, [], outClasses.concat(outEndClasses));
            dom_default.putSticky(el, "toggle", (currentEl) => currentEl.style.display = "none");
            el.dispatchEvent(new Event("phx:hide-end"));
          });
        } else {
          if (eventType === "remove") {
            return;
          }
          let onStart = () => {
            this.addOrRemoveClasses(el, inStartClasses, outClasses.concat(outStartClasses).concat(outEndClasses));
            dom_default.putSticky(el, "toggle", (currentEl) => currentEl.style.display = display || "block");
            window.requestAnimationFrame(() => {
              this.addOrRemoveClasses(el, inClasses, []);
              window.requestAnimationFrame(() => this.addOrRemoveClasses(el, inEndClasses, inStartClasses));
            });
          };
          el.dispatchEvent(new Event("phx:show-start"));
          view.transition(time, onStart, () => {
            this.addOrRemoveClasses(el, [], inClasses.concat(inEndClasses));
            el.dispatchEvent(new Event("phx:show-end"));
          });
        }
      } else {
        if (this.isVisible(el)) {
          window.requestAnimationFrame(() => {
            el.dispatchEvent(new Event("phx:hide-start"));
            dom_default.putSticky(el, "toggle", (currentEl) => currentEl.style.display = "none");
            el.dispatchEvent(new Event("phx:hide-end"));
          });
        } else {
          window.requestAnimationFrame(() => {
            el.dispatchEvent(new Event("phx:show-start"));
            dom_default.putSticky(el, "toggle", (currentEl) => currentEl.style.display = display || "block");
            el.dispatchEvent(new Event("phx:show-end"));
          });
        }
      }
    },
    addOrRemoveClasses(el, adds, removes, transition, time, view) {
      let [transition_run, transition_start, transition_end] = transition || [[], [], []];
      if (transition_run.length > 0) {
        let onStart = () => this.addOrRemoveClasses(el, transition_start.concat(transition_run), []);
        let onDone = () => this.addOrRemoveClasses(el, adds.concat(transition_end), removes.concat(transition_run).concat(transition_start));
        return view.transition(time, onStart, onDone);
      }
      window.requestAnimationFrame(() => {
        let [prevAdds, prevRemoves] = dom_default.getSticky(el, "classes", [[], []]);
        let keepAdds = adds.filter((name) => prevAdds.indexOf(name) < 0 && !el.classList.contains(name));
        let keepRemoves = removes.filter((name) => prevRemoves.indexOf(name) < 0 && el.classList.contains(name));
        let newAdds = prevAdds.filter((name) => removes.indexOf(name) < 0).concat(keepAdds);
        let newRemoves = prevRemoves.filter((name) => adds.indexOf(name) < 0).concat(keepRemoves);
        dom_default.putSticky(el, "classes", (currentEl) => {
          currentEl.classList.remove(...newRemoves);
          currentEl.classList.add(...newAdds);
          return [newAdds, newRemoves];
        });
      });
    },
    setOrRemoveAttrs(el, sets, removes) {
      let [prevSets, prevRemoves] = dom_default.getSticky(el, "attrs", [[], []]);
      let keepSets = sets.filter(([attr, _val]) => !this.hasSet(prevSets, attr) && !el.attributes.getNamedItem(attr));
      let keepRemoves = removes.filter((attr) => prevRemoves.indexOf(attr) < 0 && el.attributes.getNamedItem(attr));
      let newSets = prevSets.filter(([attr, _val]) => removes.indexOf(attr) < 0).concat(keepSets);
      let newRemoves = prevRemoves.filter((attr) => !this.hasSet(sets, attr)).concat(keepRemoves);
      dom_default.putSticky(el, "attrs", (currentEl) => {
        newRemoves.forEach((attr) => currentEl.removeAttribute(attr));
        newSets.forEach(([attr, val]) => currentEl.setAttribute(attr, val));
        return [newSets, newRemoves];
      });
    },
    hasSet(sets, nameSearch) {
      return sets.find(([name, val]) => name === nameSearch);
    },
    hasAllClasses(el, classes) {
      return classes.every((name) => el.classList.contains(name));
    },
    isToggledOut(el, outClasses) {
      return !this.isVisible(el) || this.hasAllClasses(el, outClasses);
    },
    filterToEls(sourceEl, { to }) {
      return to ? dom_default.all(document, to) : [sourceEl];
    }
  };
  var js_default = JS;
  var serializeForm = (form, meta = {}) => {
    let formData = new FormData(form);
    let toRemove = [];
    formData.forEach((val, key, _index) => {
      if (val instanceof File) {
        toRemove.push(key);
      }
    });
    toRemove.forEach((key) => formData.delete(key));
    let params = new URLSearchParams();
    for (let [key, val] of formData.entries()) {
      params.append(key, val);
    }
    for (let metaKey in meta) {
      params.append(metaKey, meta[metaKey]);
    }
    return params.toString();
  };
  var View = class {
    constructor(el, liveSocket2, parentView, flash) {
      this.liveSocket = liveSocket2;
      this.flash = flash;
      this.parent = parentView;
      this.root = parentView ? parentView.root : this;
      this.el = el;
      this.id = this.el.id;
      this.ref = 0;
      this.childJoins = 0;
      this.loaderTimer = null;
      this.pendingDiffs = [];
      this.pruningCIDs = [];
      this.redirect = false;
      this.href = null;
      this.joinCount = this.parent ? this.parent.joinCount - 1 : 0;
      this.joinPending = true;
      this.destroyed = false;
      this.joinCallback = function(onDone) {
        onDone && onDone();
      };
      this.stopCallback = function() {
      };
      this.pendingJoinOps = this.parent ? null : [];
      this.viewHooks = {};
      this.uploaders = {};
      this.formSubmits = [];
      this.children = this.parent ? null : {};
      this.root.children[this.id] = {};
      this.channel = this.liveSocket.channel(`lv:${this.id}`, () => {
        return {
          redirect: this.redirect ? this.href : void 0,
          url: this.redirect ? void 0 : this.href || void 0,
          params: this.connectParams(),
          session: this.getSession(),
          static: this.getStatic(),
          flash: this.flash
        };
      });
      this.showLoader(this.liveSocket.loaderTimeout);
      this.bindChannel();
    }
    setHref(href) {
      this.href = href;
    }
    setRedirect(href) {
      this.redirect = true;
      this.href = href;
    }
    isMain() {
      return this.el.getAttribute(PHX_MAIN) !== null;
    }
    connectParams() {
      let params = this.liveSocket.params(this.el);
      let manifest = dom_default.all(document, `[${this.binding(PHX_TRACK_STATIC)}]`).map((node) => node.src || node.href).filter((url) => typeof url === "string");
      if (manifest.length > 0) {
        params["_track_static"] = manifest;
      }
      params["_mounts"] = this.joinCount;
      return params;
    }
    isConnected() {
      return this.channel.canPush();
    }
    getSession() {
      return this.el.getAttribute(PHX_SESSION);
    }
    getStatic() {
      let val = this.el.getAttribute(PHX_STATIC);
      return val === "" ? null : val;
    }
    destroy(callback = function() {
    }) {
      this.destroyAllChildren();
      this.destroyed = true;
      delete this.root.children[this.id];
      if (this.parent) {
        delete this.root.children[this.parent.id][this.id];
      }
      clearTimeout(this.loaderTimer);
      let onFinished = () => {
        callback();
        for (let id in this.viewHooks) {
          this.destroyHook(this.viewHooks[id]);
        }
      };
      dom_default.markPhxChildDestroyed(this.el);
      this.log("destroyed", () => ["the child has been removed from the parent"]);
      this.channel.leave().receive("ok", onFinished).receive("error", onFinished).receive("timeout", onFinished);
    }
    setContainerClasses(...classes) {
      this.el.classList.remove(PHX_CONNECTED_CLASS, PHX_DISCONNECTED_CLASS, PHX_ERROR_CLASS);
      this.el.classList.add(...classes);
    }
    showLoader(timeout) {
      clearTimeout(this.loaderTimer);
      if (timeout) {
        this.loaderTimer = setTimeout(() => this.showLoader(), timeout);
      } else {
        for (let id in this.viewHooks) {
          this.viewHooks[id].__disconnected();
        }
        this.setContainerClasses(PHX_DISCONNECTED_CLASS);
      }
    }
    hideLoader() {
      clearTimeout(this.loaderTimer);
      this.setContainerClasses(PHX_CONNECTED_CLASS);
    }
    triggerReconnected() {
      for (let id in this.viewHooks) {
        this.viewHooks[id].__reconnected();
      }
    }
    log(kind, msgCallback) {
      this.liveSocket.log(this, kind, msgCallback);
    }
    transition(time, onStart, onDone = function() {
    }) {
      this.liveSocket.transition(time, onStart, onDone);
    }
    withinTargets(phxTarget, callback) {
      if (phxTarget instanceof HTMLElement || phxTarget instanceof SVGElement) {
        return this.liveSocket.owner(phxTarget, (view) => callback(view, phxTarget));
      }
      if (isCid(phxTarget)) {
        let targets = dom_default.findComponentNodeList(this.el, phxTarget);
        if (targets.length === 0) {
          logError(`no component found matching phx-target of ${phxTarget}`);
        } else {
          callback(this, parseInt(phxTarget));
        }
      } else {
        let targets = Array.from(document.querySelectorAll(phxTarget));
        if (targets.length === 0) {
          logError(`nothing found matching the phx-target selector "${phxTarget}"`);
        }
        targets.forEach((target) => this.liveSocket.owner(target, (view) => callback(view, target)));
      }
    }
    applyDiff(type, rawDiff, callback) {
      this.log(type, () => ["", clone(rawDiff)]);
      let { diff, reply, events, title } = Rendered.extract(rawDiff);
      if (title) {
        dom_default.putTitle(title);
      }
      callback({ diff, reply, events });
      return reply;
    }
    onJoin(resp) {
      let { rendered, container } = resp;
      if (container) {
        let [tag, attrs] = container;
        this.el = dom_default.replaceRootContainer(this.el, tag, attrs);
      }
      this.childJoins = 0;
      this.joinPending = true;
      this.flash = null;
      browser_default.dropLocal(this.liveSocket.localStorage, window.location.pathname, CONSECUTIVE_RELOADS);
      this.applyDiff("mount", rendered, ({ diff, events }) => {
        this.rendered = new Rendered(this.id, diff);
        let html = this.renderContainer(null, "join");
        this.dropPendingRefs();
        let forms = this.formsForRecovery(html);
        this.joinCount++;
        if (forms.length > 0) {
          forms.forEach(([form, newForm, newCid], i) => {
            this.pushFormRecovery(form, newCid, (resp2) => {
              if (i === forms.length - 1) {
                this.onJoinComplete(resp2, html, events);
              }
            });
          });
        } else {
          this.onJoinComplete(resp, html, events);
        }
      });
    }
    dropPendingRefs() {
      dom_default.all(document, `[${PHX_REF_SRC}="${this.id}"][${PHX_REF}]`, (el) => {
        el.removeAttribute(PHX_REF);
        el.removeAttribute(PHX_REF_SRC);
      });
    }
    onJoinComplete({ live_patch }, html, events) {
      if (this.joinCount > 1 || this.parent && !this.parent.isJoinPending()) {
        return this.applyJoinPatch(live_patch, html, events);
      }
      let newChildren = dom_default.findPhxChildrenInFragment(html, this.id).filter((toEl) => {
        let fromEl = toEl.id && this.el.querySelector(`[id="${toEl.id}"]`);
        let phxStatic = fromEl && fromEl.getAttribute(PHX_STATIC);
        if (phxStatic) {
          toEl.setAttribute(PHX_STATIC, phxStatic);
        }
        return this.joinChild(toEl);
      });
      if (newChildren.length === 0) {
        if (this.parent) {
          this.root.pendingJoinOps.push([this, () => this.applyJoinPatch(live_patch, html, events)]);
          this.parent.ackJoin(this);
        } else {
          this.onAllChildJoinsComplete();
          this.applyJoinPatch(live_patch, html, events);
        }
      } else {
        this.root.pendingJoinOps.push([this, () => this.applyJoinPatch(live_patch, html, events)]);
      }
    }
    attachTrueDocEl() {
      this.el = dom_default.byId(this.id);
      this.el.setAttribute(PHX_ROOT_ID, this.root.id);
    }
    applyJoinPatch(live_patch, html, events) {
      this.attachTrueDocEl();
      let patch = new DOMPatch(this, this.el, this.id, html, null);
      patch.markPrunableContentForRemoval();
      this.performPatch(patch, false);
      this.joinNewChildren();
      dom_default.all(this.el, `[${this.binding(PHX_HOOK)}], [data-phx-${PHX_HOOK}]`, (hookEl) => {
        let hook = this.addHook(hookEl);
        if (hook) {
          hook.__mounted();
        }
      });
      this.joinPending = false;
      this.liveSocket.dispatchEvents(events);
      this.applyPendingUpdates();
      if (live_patch) {
        let { kind, to } = live_patch;
        this.liveSocket.historyPatch(to, kind);
      }
      this.hideLoader();
      if (this.joinCount > 1) {
        this.triggerReconnected();
      }
      this.stopCallback();
    }
    triggerBeforeUpdateHook(fromEl, toEl) {
      this.liveSocket.triggerDOM("onBeforeElUpdated", [fromEl, toEl]);
      let hook = this.getHook(fromEl);
      let isIgnored = hook && dom_default.isIgnored(fromEl, this.binding(PHX_UPDATE));
      if (hook && !fromEl.isEqualNode(toEl) && !(isIgnored && isEqualObj(fromEl.dataset, toEl.dataset))) {
        hook.__beforeUpdate();
        return hook;
      }
    }
    performPatch(patch, pruneCids) {
      let removedEls = [];
      let phxChildrenAdded = false;
      let updatedHookIds = /* @__PURE__ */ new Set();
      patch.after("added", (el) => {
        this.liveSocket.triggerDOM("onNodeAdded", [el]);
        let newHook = this.addHook(el);
        if (newHook) {
          newHook.__mounted();
        }
      });
      patch.after("phxChildAdded", (el) => {
        if (dom_default.isPhxSticky(el)) {
          this.liveSocket.joinRootViews();
        } else {
          phxChildrenAdded = true;
        }
      });
      patch.before("updated", (fromEl, toEl) => {
        let hook = this.triggerBeforeUpdateHook(fromEl, toEl);
        if (hook) {
          updatedHookIds.add(fromEl.id);
        }
      });
      patch.after("updated", (el) => {
        if (updatedHookIds.has(el.id)) {
          this.getHook(el).__updated();
        }
      });
      patch.after("discarded", (el) => {
        if (el.nodeType === Node.ELEMENT_NODE) {
          removedEls.push(el);
        }
      });
      patch.after("transitionsDiscarded", (els) => this.afterElementsRemoved(els, pruneCids));
      patch.perform();
      this.afterElementsRemoved(removedEls, pruneCids);
      return phxChildrenAdded;
    }
    afterElementsRemoved(elements, pruneCids) {
      let destroyedCIDs = [];
      elements.forEach((parent) => {
        let components = dom_default.all(parent, `[${PHX_COMPONENT}]`);
        components.concat(parent).forEach((el) => {
          let cid = this.componentID(el);
          if (isCid(cid) && destroyedCIDs.indexOf(cid) === -1) {
            destroyedCIDs.push(cid);
          }
          let hook = this.getHook(el);
          hook && this.destroyHook(hook);
        });
      });
      if (pruneCids) {
        this.maybePushComponentsDestroyed(destroyedCIDs);
      }
    }
    joinNewChildren() {
      dom_default.findPhxChildren(this.el, this.id).forEach((el) => this.joinChild(el));
    }
    getChildById(id) {
      return this.root.children[this.id][id];
    }
    getDescendentByEl(el) {
      if (el.id === this.id) {
        return this;
      } else {
        return this.children[el.getAttribute(PHX_PARENT_ID)][el.id];
      }
    }
    destroyDescendent(id) {
      for (let parentId in this.root.children) {
        for (let childId in this.root.children[parentId]) {
          if (childId === id) {
            return this.root.children[parentId][childId].destroy();
          }
        }
      }
    }
    joinChild(el) {
      let child = this.getChildById(el.id);
      if (!child) {
        let view = new View(el, this.liveSocket, this);
        this.root.children[this.id][view.id] = view;
        view.join();
        this.childJoins++;
        return true;
      }
    }
    isJoinPending() {
      return this.joinPending;
    }
    ackJoin(_child) {
      this.childJoins--;
      if (this.childJoins === 0) {
        if (this.parent) {
          this.parent.ackJoin(this);
        } else {
          this.onAllChildJoinsComplete();
        }
      }
    }
    onAllChildJoinsComplete() {
      this.joinCallback(() => {
        this.pendingJoinOps.forEach(([view, op]) => {
          if (!view.isDestroyed()) {
            op();
          }
        });
        this.pendingJoinOps = [];
      });
    }
    update(diff, events) {
      if (this.isJoinPending() || this.liveSocket.hasPendingLink()) {
        return this.pendingDiffs.push({ diff, events });
      }
      this.rendered.mergeDiff(diff);
      let phxChildrenAdded = false;
      if (this.rendered.isComponentOnlyDiff(diff)) {
        this.liveSocket.time("component patch complete", () => {
          let parentCids = dom_default.findParentCIDs(this.el, this.rendered.componentCIDs(diff));
          parentCids.forEach((parentCID) => {
            if (this.componentPatch(this.rendered.getComponent(diff, parentCID), parentCID)) {
              phxChildrenAdded = true;
            }
          });
        });
      } else if (!isEmpty(diff)) {
        this.liveSocket.time("full patch complete", () => {
          let html = this.renderContainer(diff, "update");
          let patch = new DOMPatch(this, this.el, this.id, html, null);
          phxChildrenAdded = this.performPatch(patch, true);
        });
      }
      this.liveSocket.dispatchEvents(events);
      if (phxChildrenAdded) {
        this.joinNewChildren();
      }
    }
    renderContainer(diff, kind) {
      return this.liveSocket.time(`toString diff (${kind})`, () => {
        let tag = this.el.tagName;
        let cids = diff ? this.rendered.componentCIDs(diff).concat(this.pruningCIDs) : null;
        let html = this.rendered.toString(cids);
        return `<${tag}>${html}</${tag}>`;
      });
    }
    componentPatch(diff, cid) {
      if (isEmpty(diff))
        return false;
      let html = this.rendered.componentToString(cid);
      let patch = new DOMPatch(this, this.el, this.id, html, cid);
      let childrenAdded = this.performPatch(patch, true);
      return childrenAdded;
    }
    getHook(el) {
      return this.viewHooks[ViewHook.elementID(el)];
    }
    addHook(el) {
      if (ViewHook.elementID(el) || !el.getAttribute) {
        return;
      }
      let hookName = el.getAttribute(`data-phx-${PHX_HOOK}`) || el.getAttribute(this.binding(PHX_HOOK));
      if (hookName && !this.ownsElement(el)) {
        return;
      }
      let callbacks = this.liveSocket.getHookCallbacks(hookName);
      if (callbacks) {
        if (!el.id) {
          logError(`no DOM ID for hook "${hookName}". Hooks require a unique ID on each element.`, el);
        }
        let hook = new ViewHook(this, el, callbacks);
        this.viewHooks[ViewHook.elementID(hook.el)] = hook;
        return hook;
      } else if (hookName !== null) {
        logError(`unknown hook found for "${hookName}"`, el);
      }
    }
    destroyHook(hook) {
      hook.__destroyed();
      hook.__cleanup__();
      delete this.viewHooks[ViewHook.elementID(hook.el)];
    }
    applyPendingUpdates() {
      this.pendingDiffs.forEach(({ diff, events }) => this.update(diff, events));
      this.pendingDiffs = [];
    }
    onChannel(event, cb) {
      this.liveSocket.onChannel(this.channel, event, (resp) => {
        if (this.isJoinPending()) {
          this.root.pendingJoinOps.push([this, () => cb(resp)]);
        } else {
          this.liveSocket.requestDOMUpdate(() => cb(resp));
        }
      });
    }
    bindChannel() {
      this.liveSocket.onChannel(this.channel, "diff", (rawDiff) => {
        this.liveSocket.requestDOMUpdate(() => {
          this.applyDiff("update", rawDiff, ({ diff, events }) => this.update(diff, events));
        });
      });
      this.onChannel("redirect", ({ to, flash }) => this.onRedirect({ to, flash }));
      this.onChannel("live_patch", (redir) => this.onLivePatch(redir));
      this.onChannel("live_redirect", (redir) => this.onLiveRedirect(redir));
      this.channel.onError((reason) => this.onError(reason));
      this.channel.onClose((reason) => this.onClose(reason));
    }
    destroyAllChildren() {
      for (let id in this.root.children[this.id]) {
        this.getChildById(id).destroy();
      }
    }
    onLiveRedirect(redir) {
      let { to, kind, flash } = redir;
      let url = this.expandURL(to);
      this.liveSocket.historyRedirect(url, kind, flash);
    }
    onLivePatch(redir) {
      let { to, kind } = redir;
      this.href = this.expandURL(to);
      this.liveSocket.historyPatch(to, kind);
    }
    expandURL(to) {
      return to.startsWith("/") ? `${window.location.protocol}//${window.location.host}${to}` : to;
    }
    onRedirect({ to, flash }) {
      this.liveSocket.redirect(to, flash);
    }
    isDestroyed() {
      return this.destroyed;
    }
    join(callback) {
      if (this.isMain()) {
        this.stopCallback = this.liveSocket.withPageLoading({ to: this.href, kind: "initial" });
      }
      this.joinCallback = (onDone) => {
        onDone = onDone || function() {
        };
        callback ? callback(this.joinCount, onDone) : onDone();
      };
      this.liveSocket.wrapPush(this, { timeout: false }, () => {
        return this.channel.join().receive("ok", (data) => {
          if (!this.isDestroyed()) {
            this.liveSocket.requestDOMUpdate(() => this.onJoin(data));
          }
        }).receive("error", (resp) => !this.isDestroyed() && this.onJoinError(resp)).receive("timeout", () => !this.isDestroyed() && this.onJoinError({ reason: "timeout" }));
      });
    }
    onJoinError(resp) {
      if (resp.reason === "unauthorized" || resp.reason === "stale") {
        this.log("error", () => ["unauthorized live_redirect. Falling back to page request", resp]);
        return this.onRedirect({ to: this.href });
      }
      if (resp.redirect || resp.live_redirect) {
        this.joinPending = false;
        this.channel.leave();
      }
      if (resp.redirect) {
        return this.onRedirect(resp.redirect);
      }
      if (resp.live_redirect) {
        return this.onLiveRedirect(resp.live_redirect);
      }
      this.log("error", () => ["unable to join", resp]);
      return this.liveSocket.reloadWithJitter(this);
    }
    onClose(reason) {
      if (this.isDestroyed()) {
        return;
      }
      if (this.isJoinPending() && document.visibilityState !== "hidden" || this.liveSocket.hasPendingLink() && reason !== "leave") {
        return this.liveSocket.reloadWithJitter(this);
      }
      this.destroyAllChildren();
      this.liveSocket.dropActiveElement(this);
      if (document.activeElement) {
        document.activeElement.blur();
      }
      if (this.liveSocket.isUnloaded()) {
        this.showLoader(BEFORE_UNLOAD_LOADER_TIMEOUT);
      }
    }
    onError(reason) {
      this.onClose(reason);
      this.log("error", () => ["view crashed", reason]);
      if (!this.liveSocket.isUnloaded()) {
        this.displayError();
      }
    }
    displayError() {
      if (this.isMain()) {
        dom_default.dispatchEvent(window, "phx:page-loading-start", { to: this.href, kind: "error" });
      }
      this.showLoader();
      this.setContainerClasses(PHX_DISCONNECTED_CLASS, PHX_ERROR_CLASS);
    }
    pushWithReply(refGenerator, event, payload, onReply = function() {
    }) {
      if (!this.isConnected()) {
        return;
      }
      let [ref, [el], opts] = refGenerator ? refGenerator() : [null, [], {}];
      let onLoadingDone = function() {
      };
      if (opts.page_loading || el && el.getAttribute(this.binding(PHX_PAGE_LOADING)) !== null) {
        onLoadingDone = this.liveSocket.withPageLoading({ kind: "element", target: el });
      }
      if (typeof payload.cid !== "number") {
        delete payload.cid;
      }
      return this.liveSocket.wrapPush(this, { timeout: true }, () => {
        return this.channel.push(event, payload, PUSH_TIMEOUT).receive("ok", (resp) => {
          if (ref !== null) {
            this.undoRefs(ref);
          }
          let finish = (hookReply) => {
            if (resp.redirect) {
              this.onRedirect(resp.redirect);
            }
            if (resp.live_patch) {
              this.onLivePatch(resp.live_patch);
            }
            if (resp.live_redirect) {
              this.onLiveRedirect(resp.live_redirect);
            }
            onLoadingDone();
            onReply(resp, hookReply);
          };
          if (resp.diff) {
            this.liveSocket.requestDOMUpdate(() => {
              let hookReply = this.applyDiff("update", resp.diff, ({ diff, events }) => {
                this.update(diff, events);
              });
              finish(hookReply);
            });
          } else {
            finish(null);
          }
        });
      });
    }
    undoRefs(ref) {
      dom_default.all(document, `[${PHX_REF_SRC}="${this.id}"][${PHX_REF}="${ref}"]`, (el) => {
        let disabledVal = el.getAttribute(PHX_DISABLED);
        el.removeAttribute(PHX_REF);
        el.removeAttribute(PHX_REF_SRC);
        if (el.getAttribute(PHX_READONLY) !== null) {
          el.readOnly = false;
          el.removeAttribute(PHX_READONLY);
        }
        if (disabledVal !== null) {
          el.disabled = disabledVal === "true" ? true : false;
          el.removeAttribute(PHX_DISABLED);
        }
        PHX_EVENT_CLASSES.forEach((className) => dom_default.removeClass(el, className));
        let disableRestore = el.getAttribute(PHX_DISABLE_WITH_RESTORE);
        if (disableRestore !== null) {
          el.innerText = disableRestore;
          el.removeAttribute(PHX_DISABLE_WITH_RESTORE);
        }
        let toEl = dom_default.private(el, PHX_REF);
        if (toEl) {
          let hook = this.triggerBeforeUpdateHook(el, toEl);
          DOMPatch.patchEl(el, toEl, this.liveSocket.getActiveElement());
          if (hook) {
            hook.__updated();
          }
          dom_default.deletePrivate(el, PHX_REF);
        }
      });
    }
    putRef(elements, event, opts = {}) {
      let newRef = this.ref++;
      let disableWith = this.binding(PHX_DISABLE_WITH);
      if (opts.loading) {
        elements = elements.concat(dom_default.all(document, opts.loading));
      }
      elements.forEach((el) => {
        el.classList.add(`phx-${event}-loading`);
        el.setAttribute(PHX_REF, newRef);
        el.setAttribute(PHX_REF_SRC, this.el.id);
        let disableText = el.getAttribute(disableWith);
        if (disableText !== null) {
          if (!el.getAttribute(PHX_DISABLE_WITH_RESTORE)) {
            el.setAttribute(PHX_DISABLE_WITH_RESTORE, el.innerText);
          }
          if (disableText !== "") {
            el.innerText = disableText;
          }
          el.setAttribute("disabled", "");
        }
      });
      return [newRef, elements, opts];
    }
    componentID(el) {
      let cid = el.getAttribute && el.getAttribute(PHX_COMPONENT);
      return cid ? parseInt(cid) : null;
    }
    targetComponentID(target, targetCtx, opts = {}) {
      if (isCid(targetCtx)) {
        return targetCtx;
      }
      let cidOrSelector = target.getAttribute(this.binding("target"));
      if (isCid(cidOrSelector)) {
        return parseInt(cidOrSelector);
      } else if (targetCtx && (cidOrSelector !== null || opts.target)) {
        return this.closestComponentID(targetCtx);
      } else {
        return null;
      }
    }
    closestComponentID(targetCtx) {
      if (isCid(targetCtx)) {
        return targetCtx;
      } else if (targetCtx) {
        return maybe(targetCtx.closest(`[${PHX_COMPONENT}]`), (el) => this.ownsElement(el) && this.componentID(el));
      } else {
        return null;
      }
    }
    pushHookEvent(targetCtx, event, payload, onReply) {
      if (!this.isConnected()) {
        this.log("hook", () => ["unable to push hook event. LiveView not connected", event, payload]);
        return false;
      }
      let [ref, els, opts] = this.putRef([], "hook");
      this.pushWithReply(() => [ref, els, opts], "event", {
        type: "hook",
        event,
        value: payload,
        cid: this.closestComponentID(targetCtx)
      }, (resp, reply) => onReply(reply, ref));
      return ref;
    }
    extractMeta(el, meta, value) {
      let prefix = this.binding("value-");
      for (let i = 0; i < el.attributes.length; i++) {
        if (!meta) {
          meta = {};
        }
        let name = el.attributes[i].name;
        if (name.startsWith(prefix)) {
          meta[name.replace(prefix, "")] = el.getAttribute(name);
        }
      }
      if (el.value !== void 0) {
        if (!meta) {
          meta = {};
        }
        meta.value = el.value;
        if (el.tagName === "INPUT" && CHECKABLE_INPUTS.indexOf(el.type) >= 0 && !el.checked) {
          delete meta.value;
        }
      }
      if (value) {
        if (!meta) {
          meta = {};
        }
        for (let key in value) {
          meta[key] = value[key];
        }
      }
      return meta;
    }
    pushEvent(type, el, targetCtx, phxEvent, meta, opts = {}) {
      this.pushWithReply(() => this.putRef([el], type, opts), "event", {
        type,
        event: phxEvent,
        value: this.extractMeta(el, meta, opts.value),
        cid: this.targetComponentID(el, targetCtx, opts)
      });
    }
    pushFileProgress(fileEl, entryRef, progress, onReply = function() {
    }) {
      this.liveSocket.withinOwners(fileEl.form, (view, targetCtx) => {
        view.pushWithReply(null, "progress", {
          event: fileEl.getAttribute(view.binding(PHX_PROGRESS)),
          ref: fileEl.getAttribute(PHX_UPLOAD_REF),
          entry_ref: entryRef,
          progress,
          cid: view.targetComponentID(fileEl.form, targetCtx)
        }, onReply);
      });
    }
    pushInput(inputEl, targetCtx, forceCid, phxEvent, opts, callback) {
      let uploads;
      let cid = isCid(forceCid) ? forceCid : this.targetComponentID(inputEl.form, targetCtx);
      let refGenerator = () => this.putRef([inputEl, inputEl.form], "change", opts);
      let formData = serializeForm(inputEl.form, { _target: opts._target });
      if (dom_default.isUploadInput(inputEl) && inputEl.files && inputEl.files.length > 0) {
        LiveUploader.trackFiles(inputEl, Array.from(inputEl.files));
      }
      uploads = LiveUploader.serializeUploads(inputEl);
      let event = {
        type: "form",
        event: phxEvent,
        value: formData,
        uploads,
        cid
      };
      this.pushWithReply(refGenerator, "event", event, (resp) => {
        dom_default.showError(inputEl, this.liveSocket.binding(PHX_FEEDBACK_FOR));
        if (dom_default.isUploadInput(inputEl) && inputEl.getAttribute("data-phx-auto-upload") !== null) {
          if (LiveUploader.filesAwaitingPreflight(inputEl).length > 0) {
            let [ref, _els] = refGenerator();
            this.uploadFiles(inputEl.form, targetCtx, ref, cid, (_uploads) => {
              callback && callback(resp);
              this.triggerAwaitingSubmit(inputEl.form);
            });
          }
        } else {
          callback && callback(resp);
        }
      });
    }
    triggerAwaitingSubmit(formEl) {
      let awaitingSubmit = this.getScheduledSubmit(formEl);
      if (awaitingSubmit) {
        let [_el, _ref, _opts, callback] = awaitingSubmit;
        this.cancelSubmit(formEl);
        callback();
      }
    }
    getScheduledSubmit(formEl) {
      return this.formSubmits.find(([el, _ref, _opts, _callback]) => el.isSameNode(formEl));
    }
    scheduleSubmit(formEl, ref, opts, callback) {
      if (this.getScheduledSubmit(formEl)) {
        return true;
      }
      this.formSubmits.push([formEl, ref, opts, callback]);
    }
    cancelSubmit(formEl) {
      this.formSubmits = this.formSubmits.filter(([el, ref, _callback]) => {
        if (el.isSameNode(formEl)) {
          this.undoRefs(ref);
          return false;
        } else {
          return true;
        }
      });
    }
    pushFormSubmit(formEl, targetCtx, phxEvent, opts, onReply) {
      let filterIgnored = (el) => {
        let userIgnored = closestPhxBinding(el, `${this.binding(PHX_UPDATE)}=ignore`, el.form);
        return !(userIgnored || closestPhxBinding(el, "data-phx-update=ignore", el.form));
      };
      let filterDisables = (el) => {
        return el.hasAttribute(this.binding(PHX_DISABLE_WITH));
      };
      let filterButton = (el) => el.tagName == "BUTTON";
      let filterInput = (el) => ["INPUT", "TEXTAREA", "SELECT"].includes(el.tagName);
      let refGenerator = () => {
        let formElements = Array.from(formEl.elements);
        let disables = formElements.filter(filterDisables);
        let buttons = formElements.filter(filterButton).filter(filterIgnored);
        let inputs = formElements.filter(filterInput).filter(filterIgnored);
        buttons.forEach((button) => {
          button.setAttribute(PHX_DISABLED, button.disabled);
          button.disabled = true;
        });
        inputs.forEach((input) => {
          input.setAttribute(PHX_READONLY, input.readOnly);
          input.readOnly = true;
          if (input.files) {
            input.setAttribute(PHX_DISABLED, input.disabled);
            input.disabled = true;
          }
        });
        formEl.setAttribute(this.binding(PHX_PAGE_LOADING), "");
        return this.putRef([formEl].concat(disables).concat(buttons).concat(inputs), "submit", opts);
      };
      let cid = this.targetComponentID(formEl, targetCtx);
      if (LiveUploader.hasUploadsInProgress(formEl)) {
        let [ref, _els] = refGenerator();
        let push = () => this.pushFormSubmit(formEl, targetCtx, phxEvent, opts, onReply);
        return this.scheduleSubmit(formEl, ref, opts, push);
      } else if (LiveUploader.inputsAwaitingPreflight(formEl).length > 0) {
        let [ref, els] = refGenerator();
        let proxyRefGen = () => [ref, els, opts];
        this.uploadFiles(formEl, targetCtx, ref, cid, (_uploads) => {
          let formData = serializeForm(formEl, {});
          this.pushWithReply(proxyRefGen, "event", {
            type: "form",
            event: phxEvent,
            value: formData,
            cid
          }, onReply);
        });
      } else {
        let formData = serializeForm(formEl);
        this.pushWithReply(refGenerator, "event", {
          type: "form",
          event: phxEvent,
          value: formData,
          cid
        }, onReply);
      }
    }
    uploadFiles(formEl, targetCtx, ref, cid, onComplete) {
      let joinCountAtUpload = this.joinCount;
      let inputEls = LiveUploader.activeFileInputs(formEl);
      let numFileInputsInProgress = inputEls.length;
      inputEls.forEach((inputEl) => {
        let uploader = new LiveUploader(inputEl, this, () => {
          numFileInputsInProgress--;
          if (numFileInputsInProgress === 0) {
            onComplete();
          }
        });
        this.uploaders[inputEl] = uploader;
        let entries = uploader.entries().map((entry) => entry.toPreflightPayload());
        let payload = {
          ref: inputEl.getAttribute(PHX_UPLOAD_REF),
          entries,
          cid: this.targetComponentID(inputEl.form, targetCtx)
        };
        this.log("upload", () => ["sending preflight request", payload]);
        this.pushWithReply(null, "allow_upload", payload, (resp) => {
          this.log("upload", () => ["got preflight response", resp]);
          if (resp.error) {
            this.undoRefs(ref);
            let [entry_ref, reason] = resp.error;
            this.log("upload", () => [`error for entry ${entry_ref}`, reason]);
          } else {
            let onError = (callback) => {
              this.channel.onError(() => {
                if (this.joinCount === joinCountAtUpload) {
                  callback();
                }
              });
            };
            uploader.initAdapterUpload(resp, onError, this.liveSocket);
          }
        });
      });
    }
    dispatchUploads(name, filesOrBlobs) {
      let inputs = dom_default.findUploadInputs(this.el).filter((el) => el.name === name);
      if (inputs.length === 0) {
        logError(`no live file inputs found matching the name "${name}"`);
      } else if (inputs.length > 1) {
        logError(`duplicate live file inputs found matching the name "${name}"`);
      } else {
        dom_default.dispatchEvent(inputs[0], PHX_TRACK_UPLOADS, { files: filesOrBlobs });
      }
    }
    pushFormRecovery(form, newCid, callback) {
      this.liveSocket.withinOwners(form, (view, targetCtx) => {
        let input = form.elements[0];
        let phxEvent = form.getAttribute(this.binding(PHX_AUTO_RECOVER)) || form.getAttribute(this.binding("change"));
        js_default.exec("change", phxEvent, view, input, ["push", { _target: input.name, newCid, callback }]);
      });
    }
    pushLinkPatch(href, targetEl, callback) {
      let linkRef = this.liveSocket.setPendingLink(href);
      let refGen = targetEl ? () => this.putRef([targetEl], "click") : null;
      let fallback = () => this.liveSocket.redirect(window.location.href);
      let push = this.pushWithReply(refGen, "live_patch", { url: href }, (resp) => {
        this.liveSocket.requestDOMUpdate(() => {
          if (resp.link_redirect) {
            this.liveSocket.replaceMain(href, null, callback, linkRef);
          } else {
            if (this.liveSocket.commitPendingLink(linkRef)) {
              this.href = href;
            }
            this.applyPendingUpdates();
            callback && callback(linkRef);
          }
        });
      });
      if (push) {
        push.receive("timeout", fallback);
      } else {
        fallback();
      }
    }
    formsForRecovery(html) {
      if (this.joinCount === 0) {
        return [];
      }
      let phxChange = this.binding("change");
      let template = document.createElement("template");
      template.innerHTML = html;
      return dom_default.all(this.el, `form[${phxChange}]`).filter((form) => form.id && this.ownsElement(form)).filter((form) => form.elements.length > 0).filter((form) => form.getAttribute(this.binding(PHX_AUTO_RECOVER)) !== "ignore").map((form) => {
        let newForm = template.content.querySelector(`form[id="${form.id}"][${phxChange}="${form.getAttribute(phxChange)}"]`);
        if (newForm) {
          return [form, newForm, this.targetComponentID(newForm)];
        } else {
          return [form, null, null];
        }
      }).filter(([form, newForm, newCid]) => newForm);
    }
    maybePushComponentsDestroyed(destroyedCIDs) {
      let willDestroyCIDs = destroyedCIDs.filter((cid) => {
        return dom_default.findComponentNodeList(this.el, cid).length === 0;
      });
      if (willDestroyCIDs.length > 0) {
        this.pruningCIDs.push(...willDestroyCIDs);
        this.pushWithReply(null, "cids_will_destroy", { cids: willDestroyCIDs }, () => {
          this.pruningCIDs = this.pruningCIDs.filter((cid) => willDestroyCIDs.indexOf(cid) !== -1);
          let completelyDestroyCIDs = willDestroyCIDs.filter((cid) => {
            return dom_default.findComponentNodeList(this.el, cid).length === 0;
          });
          if (completelyDestroyCIDs.length > 0) {
            this.pushWithReply(null, "cids_destroyed", { cids: completelyDestroyCIDs }, (resp) => {
              this.rendered.pruneCIDs(resp.cids);
            });
          }
        });
      }
    }
    ownsElement(el) {
      return el.getAttribute(PHX_PARENT_ID) === this.id || maybe(el.closest(PHX_VIEW_SELECTOR), (node) => node.id) === this.id;
    }
    submitForm(form, targetCtx, phxEvent, opts = {}) {
      dom_default.putPrivate(form, PHX_HAS_SUBMITTED, true);
      let phxFeedback = this.liveSocket.binding(PHX_FEEDBACK_FOR);
      let inputs = Array.from(form.elements);
      this.liveSocket.blurActiveElement(this);
      this.pushFormSubmit(form, targetCtx, phxEvent, opts, () => {
        inputs.forEach((input) => dom_default.showError(input, phxFeedback));
        this.liveSocket.restorePreviouslyActiveFocus();
      });
    }
    binding(kind) {
      return this.liveSocket.binding(kind);
    }
  };
  var LiveSocket = class {
    constructor(url, phxSocket, opts = {}) {
      this.unloaded = false;
      if (!phxSocket || phxSocket.constructor.name === "Object") {
        throw new Error(`
      a phoenix Socket must be provided as the second argument to the LiveSocket constructor. For example:

          import {Socket} from "phoenix"
          import {LiveSocket} from "phoenix_live_view"
          let liveSocket = new LiveSocket("/live", Socket, {...})
      `);
      }
      this.socket = new phxSocket(url, opts);
      this.bindingPrefix = opts.bindingPrefix || BINDING_PREFIX;
      this.opts = opts;
      this.params = closure2(opts.params || {});
      this.viewLogger = opts.viewLogger;
      this.metadataCallbacks = opts.metadata || {};
      this.defaults = Object.assign(clone(DEFAULTS), opts.defaults || {});
      this.activeElement = null;
      this.prevActive = null;
      this.silenced = false;
      this.main = null;
      this.linkRef = 1;
      this.clickRef = 1;
      this.roots = {};
      this.href = window.location.href;
      this.pendingLink = null;
      this.currentLocation = clone(window.location);
      this.hooks = opts.hooks || {};
      this.uploaders = opts.uploaders || {};
      this.loaderTimeout = opts.loaderTimeout || LOADER_TIMEOUT;
      this.maxReloads = opts.maxReloads || MAX_RELOADS;
      this.reloadJitterMin = opts.reloadJitterMin || RELOAD_JITTER_MIN;
      this.reloadJitterMax = opts.reloadJitterMax || RELOAD_JITTER_MAX;
      this.failsafeJitter = opts.failsafeJitter || FAILSAFE_JITTER;
      this.localStorage = opts.localStorage || window.localStorage;
      this.sessionStorage = opts.sessionStorage || window.sessionStorage;
      this.boundTopLevelEvents = false;
      this.domCallbacks = Object.assign({ onNodeAdded: closure2(), onBeforeElUpdated: closure2() }, opts.dom || {});
      this.transitions = new TransitionSet();
      window.addEventListener("pagehide", (_e) => {
        this.unloaded = true;
      });
      this.socket.onOpen(() => {
        if (this.isUnloaded()) {
          window.location.reload();
        }
      });
    }
    isProfileEnabled() {
      return this.sessionStorage.getItem(PHX_LV_PROFILE) === "true";
    }
    isDebugEnabled() {
      return this.sessionStorage.getItem(PHX_LV_DEBUG) === "true";
    }
    enableDebug() {
      this.sessionStorage.setItem(PHX_LV_DEBUG, "true");
    }
    enableProfiling() {
      this.sessionStorage.setItem(PHX_LV_PROFILE, "true");
    }
    disableDebug() {
      this.sessionStorage.removeItem(PHX_LV_DEBUG);
    }
    disableProfiling() {
      this.sessionStorage.removeItem(PHX_LV_PROFILE);
    }
    enableLatencySim(upperBoundMs) {
      this.enableDebug();
      console.log("latency simulator enabled for the duration of this browser session. Call disableLatencySim() to disable");
      this.sessionStorage.setItem(PHX_LV_LATENCY_SIM, upperBoundMs);
    }
    disableLatencySim() {
      this.sessionStorage.removeItem(PHX_LV_LATENCY_SIM);
    }
    getLatencySim() {
      let str = this.sessionStorage.getItem(PHX_LV_LATENCY_SIM);
      return str ? parseInt(str) : null;
    }
    getSocket() {
      return this.socket;
    }
    connect() {
      let doConnect = () => {
        if (this.joinRootViews()) {
          this.bindTopLevelEvents();
          this.socket.connect();
        }
      };
      if (["complete", "loaded", "interactive"].indexOf(document.readyState) >= 0) {
        doConnect();
      } else {
        document.addEventListener("DOMContentLoaded", () => doConnect());
      }
    }
    disconnect(callback) {
      this.socket.disconnect(callback);
    }
    execJS(el, encodedJS, eventType = null) {
      this.owner(el, (view) => js_default.exec(eventType, encodedJS, view, el));
    }
    triggerDOM(kind, args) {
      this.domCallbacks[kind](...args);
    }
    time(name, func) {
      if (!this.isProfileEnabled() || !console.time) {
        return func();
      }
      console.time(name);
      let result = func();
      console.timeEnd(name);
      return result;
    }
    log(view, kind, msgCallback) {
      if (this.viewLogger) {
        let [msg, obj] = msgCallback();
        this.viewLogger(view, kind, msg, obj);
      } else if (this.isDebugEnabled()) {
        let [msg, obj] = msgCallback();
        debug(view, kind, msg, obj);
      }
    }
    requestDOMUpdate(callback) {
      this.transitions.after(callback);
    }
    transition(time, onStart, onDone = function() {
    }) {
      this.transitions.addTransition(time, onStart, onDone);
    }
    onChannel(channel, event, cb) {
      channel.on(event, (data) => {
        let latency = this.getLatencySim();
        if (!latency) {
          cb(data);
        } else {
          console.log(`simulating ${latency}ms of latency from server to client`);
          setTimeout(() => cb(data), latency);
        }
      });
    }
    wrapPush(view, opts, push) {
      let latency = this.getLatencySim();
      let oldJoinCount = view.joinCount;
      if (!latency) {
        if (opts.timeout) {
          return push().receive("timeout", () => {
            if (view.joinCount === oldJoinCount && !view.isDestroyed()) {
              this.reloadWithJitter(view, () => {
                this.log(view, "timeout", () => ["received timeout while communicating with server. Falling back to hard refresh for recovery"]);
              });
            }
          });
        } else {
          return push();
        }
      }
      console.log(`simulating ${latency}ms of latency from client to server`);
      let fakePush = {
        receives: [],
        receive(kind, cb) {
          this.receives.push([kind, cb]);
        }
      };
      setTimeout(() => {
        if (view.isDestroyed()) {
          return;
        }
        fakePush.receives.reduce((acc, [kind, cb]) => acc.receive(kind, cb), push());
      }, latency);
      return fakePush;
    }
    reloadWithJitter(view, log) {
      view.destroy();
      this.disconnect();
      let minMs = this.reloadJitterMin;
      let maxMs = this.reloadJitterMax;
      let afterMs = Math.floor(Math.random() * (maxMs - minMs + 1)) + minMs;
      let tries = browser_default.updateLocal(this.localStorage, window.location.pathname, CONSECUTIVE_RELOADS, 0, (count) => count + 1);
      log ? log() : this.log(view, "join", () => [`encountered ${tries} consecutive reloads`]);
      if (tries > this.maxReloads) {
        this.log(view, "join", () => [`exceeded ${this.maxReloads} consecutive reloads. Entering failsafe mode`]);
        afterMs = this.failsafeJitter;
      }
      setTimeout(() => {
        if (this.hasPendingLink()) {
          window.location = this.pendingLink;
        } else {
          window.location.reload();
        }
      }, afterMs);
    }
    getHookCallbacks(name) {
      return name && name.startsWith("Phoenix.") ? hooks_default[name.split(".")[1]] : this.hooks[name];
    }
    isUnloaded() {
      return this.unloaded;
    }
    isConnected() {
      return this.socket.isConnected();
    }
    getBindingPrefix() {
      return this.bindingPrefix;
    }
    binding(kind) {
      return `${this.getBindingPrefix()}${kind}`;
    }
    channel(topic, params) {
      return this.socket.channel(topic, params);
    }
    joinRootViews() {
      let rootsFound = false;
      dom_default.all(document, `${PHX_VIEW_SELECTOR}:not([${PHX_PARENT_ID}])`, (rootEl) => {
        if (!this.getRootById(rootEl.id)) {
          let view = this.newRootView(rootEl);
          view.setHref(this.getHref());
          view.join();
          if (rootEl.getAttribute(PHX_MAIN)) {
            this.main = view;
          }
        }
        rootsFound = true;
      });
      return rootsFound;
    }
    redirect(to, flash) {
      this.disconnect();
      browser_default.redirect(to, flash);
    }
    replaceMain(href, flash, callback = null, linkRef = this.setPendingLink(href)) {
      let oldMainEl = this.main.el;
      let newMainEl = dom_default.cloneNode(oldMainEl, "");
      this.main.showLoader(this.loaderTimeout);
      this.main.destroy();
      this.main = this.newRootView(newMainEl, flash);
      this.main.setRedirect(href);
      this.transitionRemoves();
      this.main.join((joinCount, onDone) => {
        if (joinCount === 1 && this.commitPendingLink(linkRef)) {
          this.requestDOMUpdate(() => {
            dom_default.findPhxSticky(document).forEach((el) => newMainEl.appendChild(el));
            oldMainEl.replaceWith(newMainEl);
            callback && callback();
            onDone();
          });
        }
      });
    }
    transitionRemoves(elements) {
      let removeAttr = this.binding("remove");
      elements = elements || dom_default.all(document, `[${removeAttr}]`);
      elements.forEach((el) => {
        if (document.body.contains(el)) {
          this.execJS(el, el.getAttribute(removeAttr), "remove");
        }
      });
    }
    isPhxView(el) {
      return el.getAttribute && el.getAttribute(PHX_SESSION) !== null;
    }
    newRootView(el, flash) {
      let view = new View(el, this, null, flash);
      this.roots[view.id] = view;
      return view;
    }
    owner(childEl, callback) {
      let view = maybe(childEl.closest(PHX_VIEW_SELECTOR), (el) => this.getViewByEl(el)) || this.main;
      if (view) {
        callback(view);
      }
    }
    withinOwners(childEl, callback) {
      this.owner(childEl, (view) => callback(view, childEl));
    }
    getViewByEl(el) {
      let rootId = el.getAttribute(PHX_ROOT_ID);
      return maybe(this.getRootById(rootId), (root) => root.getDescendentByEl(el));
    }
    getRootById(id) {
      return this.roots[id];
    }
    destroyAllViews() {
      for (let id in this.roots) {
        this.roots[id].destroy();
        delete this.roots[id];
      }
    }
    destroyViewByEl(el) {
      let root = this.getRootById(el.getAttribute(PHX_ROOT_ID));
      if (root && root.id === el.id) {
        root.destroy();
        delete this.roots[root.id];
      } else if (root) {
        root.destroyDescendent(el.id);
      }
    }
    setActiveElement(target) {
      if (this.activeElement === target) {
        return;
      }
      this.activeElement = target;
      let cancel = () => {
        if (target === this.activeElement) {
          this.activeElement = null;
        }
        target.removeEventListener("mouseup", this);
        target.removeEventListener("touchend", this);
      };
      target.addEventListener("mouseup", cancel);
      target.addEventListener("touchend", cancel);
    }
    getActiveElement() {
      if (document.activeElement === document.body) {
        return this.activeElement || document.activeElement;
      } else {
        return document.activeElement || document.body;
      }
    }
    dropActiveElement(view) {
      if (this.prevActive && view.ownsElement(this.prevActive)) {
        this.prevActive = null;
      }
    }
    restorePreviouslyActiveFocus() {
      if (this.prevActive && this.prevActive !== document.body) {
        this.prevActive.focus();
      }
    }
    blurActiveElement() {
      this.prevActive = this.getActiveElement();
      if (this.prevActive !== document.body) {
        this.prevActive.blur();
      }
    }
    bindTopLevelEvents() {
      if (this.boundTopLevelEvents) {
        return;
      }
      this.boundTopLevelEvents = true;
      this.socket.onClose((event) => {
        if (event.code === 1e3 && this.main) {
          this.reloadWithJitter(this.main);
        }
      });
      document.body.addEventListener("click", function() {
      });
      window.addEventListener("pageshow", (e) => {
        if (e.persisted) {
          this.getSocket().disconnect();
          this.withPageLoading({ to: window.location.href, kind: "redirect" });
          window.location.reload();
        }
      }, true);
      this.bindNav();
      this.bindClicks();
      this.bindForms();
      this.bind({ keyup: "keyup", keydown: "keydown" }, (e, type, view, targetEl, phxEvent, eventTarget) => {
        let matchKey = targetEl.getAttribute(this.binding(PHX_KEY));
        let pressedKey = e.key && e.key.toLowerCase();
        if (matchKey && matchKey.toLowerCase() !== pressedKey) {
          return;
        }
        let data = __spreadValues({ key: e.key }, this.eventMeta(type, e, targetEl));
        js_default.exec(type, phxEvent, view, targetEl, ["push", { data }]);
      });
      this.bind({ blur: "focusout", focus: "focusin" }, (e, type, view, targetEl, phxEvent, eventTarget) => {
        if (!eventTarget) {
          let data = __spreadValues({ key: e.key }, this.eventMeta(type, e, targetEl));
          js_default.exec(type, phxEvent, view, targetEl, ["push", { data }]);
        }
      });
      this.bind({ blur: "blur", focus: "focus" }, (e, type, view, targetEl, targetCtx, phxEvent, phxTarget) => {
        if (phxTarget === "window") {
          let data = this.eventMeta(type, e, targetEl);
          js_default.exec(type, phxEvent, view, targetEl, ["push", { data }]);
        }
      });
      window.addEventListener("dragover", (e) => e.preventDefault());
      window.addEventListener("drop", (e) => {
        e.preventDefault();
        let dropTargetId = maybe(closestPhxBinding(e.target, this.binding(PHX_DROP_TARGET)), (trueTarget) => {
          return trueTarget.getAttribute(this.binding(PHX_DROP_TARGET));
        });
        let dropTarget = dropTargetId && document.getElementById(dropTargetId);
        let files = Array.from(e.dataTransfer.files || []);
        if (!dropTarget || dropTarget.disabled || files.length === 0 || !(dropTarget.files instanceof FileList)) {
          return;
        }
        LiveUploader.trackFiles(dropTarget, files);
        dropTarget.dispatchEvent(new Event("input", { bubbles: true }));
      });
      this.on(PHX_TRACK_UPLOADS, (e) => {
        let uploadTarget = e.target;
        if (!dom_default.isUploadInput(uploadTarget)) {
          return;
        }
        let files = Array.from(e.detail.files || []).filter((f) => f instanceof File || f instanceof Blob);
        LiveUploader.trackFiles(uploadTarget, files);
        uploadTarget.dispatchEvent(new Event("input", { bubbles: true }));
      });
    }
    eventMeta(eventName, e, targetEl) {
      let callback = this.metadataCallbacks[eventName];
      return callback ? callback(e, targetEl) : {};
    }
    setPendingLink(href) {
      this.linkRef++;
      this.pendingLink = href;
      return this.linkRef;
    }
    commitPendingLink(linkRef) {
      if (this.linkRef !== linkRef) {
        return false;
      } else {
        this.href = this.pendingLink;
        this.pendingLink = null;
        return true;
      }
    }
    getHref() {
      return this.href;
    }
    hasPendingLink() {
      return !!this.pendingLink;
    }
    bind(events, callback) {
      for (let event in events) {
        let browserEventName = events[event];
        this.on(browserEventName, (e) => {
          let binding = this.binding(event);
          let windowBinding = this.binding(`window-${event}`);
          let targetPhxEvent = e.target.getAttribute && e.target.getAttribute(binding);
          if (targetPhxEvent) {
            this.debounce(e.target, e, () => {
              this.withinOwners(e.target, (view) => {
                callback(e, event, view, e.target, targetPhxEvent, null);
              });
            });
          } else {
            dom_default.all(document, `[${windowBinding}]`, (el) => {
              let phxEvent = el.getAttribute(windowBinding);
              this.debounce(el, e, () => {
                this.withinOwners(el, (view) => {
                  callback(e, event, view, el, phxEvent, "window");
                });
              });
            });
          }
        });
      }
    }
    bindClicks() {
      this.bindClick("click", "click", false);
      this.bindClick("mousedown", "capture-click", true);
    }
    bindClick(eventName, bindingName, capture) {
      let click = this.binding(bindingName);
      window.addEventListener(eventName, (e) => {
        if (!this.isConnected()) {
          return;
        }
        this.clickRef++;
        let clickRefWas = this.clickRef;
        let target = null;
        if (capture) {
          target = e.target.matches(`[${click}]`) ? e.target : e.target.querySelector(`[${click}]`);
        } else {
          target = closestPhxBinding(e.target, click);
          this.dispatchClickAway(e, clickRefWas);
        }
        let phxEvent = target && target.getAttribute(click);
        if (!phxEvent) {
          return;
        }
        if (target.getAttribute("href") === "#") {
          e.preventDefault();
        }
        this.debounce(target, e, () => {
          this.withinOwners(target, (view) => {
            js_default.exec("click", phxEvent, view, target, ["push", { data: this.eventMeta("click", e, target) }]);
          });
        });
      }, capture);
    }
    dispatchClickAway(e, clickRefWas) {
      let phxClickAway = this.binding("click-away");
      let phxClick = this.binding("click");
      dom_default.all(document, `[${phxClickAway}]`, (el) => {
        if (!(el.isSameNode(e.target) || el.contains(e.target))) {
          this.withinOwners(e.target, (view) => {
            let phxEvent = el.getAttribute(phxClickAway);
            if (js_default.isVisible(el)) {
              let target = e.target.closest(`[${phxClick}]`) || e.target;
              js_default.exec("click", phxEvent, view, el, ["push", { data: this.eventMeta("click", e, e.target) }]);
            }
          });
        }
      });
    }
    bindNav() {
      if (!browser_default.canPushState()) {
        return;
      }
      if (history.scrollRestoration) {
        history.scrollRestoration = "manual";
      }
      let scrollTimer = null;
      window.addEventListener("scroll", (_e) => {
        clearTimeout(scrollTimer);
        scrollTimer = setTimeout(() => {
          browser_default.updateCurrentState((state) => Object.assign(state, { scroll: window.scrollY }));
        }, 100);
      });
      window.addEventListener("popstate", (event) => {
        if (!this.registerNewLocation(window.location)) {
          return;
        }
        let { type, id, root, scroll } = event.state || {};
        let href = window.location.href;
        this.requestDOMUpdate(() => {
          if (this.main.isConnected() && (type === "patch" && id === this.main.id)) {
            this.main.pushLinkPatch(href, null);
          } else {
            this.replaceMain(href, null, () => {
              if (root) {
                this.replaceRootHistory();
              }
              if (typeof scroll === "number") {
                setTimeout(() => {
                  window.scrollTo(0, scroll);
                }, 0);
              }
            });
          }
        });
      }, false);
      window.addEventListener("click", (e) => {
        let target = closestPhxBinding(e.target, PHX_LIVE_LINK);
        let type = target && target.getAttribute(PHX_LIVE_LINK);
        let wantsNewTab = e.metaKey || e.ctrlKey || e.button === 1;
        if (!type || !this.isConnected() || !this.main || wantsNewTab) {
          return;
        }
        let href = target.href;
        let linkState = target.getAttribute(PHX_LINK_STATE);
        e.preventDefault();
        if (this.pendingLink === href) {
          return;
        }
        this.requestDOMUpdate(() => {
          if (type === "patch") {
            this.pushHistoryPatch(href, linkState, target);
          } else if (type === "redirect") {
            this.historyRedirect(href, linkState);
          } else {
            throw new Error(`expected ${PHX_LIVE_LINK} to be "patch" or "redirect", got: ${type}`);
          }
        });
      }, false);
    }
    dispatchEvent(event, payload = {}) {
      dom_default.dispatchEvent(window, `phx:${event}`, payload);
    }
    dispatchEvents(events) {
      events.forEach(([event, payload]) => this.dispatchEvent(event, payload));
    }
    withPageLoading(info, callback) {
      dom_default.dispatchEvent(window, "phx:page-loading-start", info);
      let done = () => dom_default.dispatchEvent(window, "phx:page-loading-stop", info);
      return callback ? callback(done) : done;
    }
    pushHistoryPatch(href, linkState, targetEl) {
      this.withPageLoading({ to: href, kind: "patch" }, (done) => {
        this.main.pushLinkPatch(href, targetEl, (linkRef) => {
          this.historyPatch(href, linkState, linkRef);
          done();
        });
      });
    }
    historyPatch(href, linkState, linkRef = this.setPendingLink(href)) {
      if (!this.commitPendingLink(linkRef)) {
        return;
      }
      browser_default.pushState(linkState, { type: "patch", id: this.main.id }, href);
      this.registerNewLocation(window.location);
    }
    historyRedirect(href, linkState, flash) {
      let scroll = window.scrollY;
      this.withPageLoading({ to: href, kind: "redirect" }, (done) => {
        this.replaceMain(href, flash, () => {
          browser_default.pushState(linkState, { type: "redirect", id: this.main.id, scroll }, href);
          this.registerNewLocation(window.location);
          done();
        });
      });
    }
    replaceRootHistory() {
      browser_default.pushState("replace", { root: true, type: "patch", id: this.main.id });
    }
    registerNewLocation(newLocation) {
      let { pathname, search } = this.currentLocation;
      if (pathname + search === newLocation.pathname + newLocation.search) {
        return false;
      } else {
        this.currentLocation = clone(newLocation);
        return true;
      }
    }
    bindForms() {
      let iterations = 0;
      this.on("submit", (e) => {
        let phxEvent = e.target.getAttribute(this.binding("submit"));
        if (!phxEvent) {
          return;
        }
        e.preventDefault();
        e.target.disabled = true;
        this.withinOwners(e.target, (view) => {
          js_default.exec("submit", phxEvent, view, e.target, ["push", {}]);
        });
      }, false);
      for (let type of ["change", "input"]) {
        this.on(type, (e) => {
          let input = e.target;
          let phxEvent = input.form && input.form.getAttribute(this.binding("change"));
          if (!phxEvent) {
            return;
          }
          if (input.type === "number" && input.validity && input.validity.badInput) {
            return;
          }
          let currentIterations = iterations;
          iterations++;
          let { at, type: lastType } = dom_default.private(input, "prev-iteration") || {};
          if (at === currentIterations - 1 && type !== lastType) {
            return;
          }
          dom_default.putPrivate(input, "prev-iteration", { at: currentIterations, type });
          this.debounce(input, e, () => {
            this.withinOwners(input.form, (view) => {
              dom_default.putPrivate(input, PHX_HAS_FOCUSED, true);
              if (!dom_default.isTextualInput(input)) {
                this.setActiveElement(input);
              }
              js_default.exec("change", phxEvent, view, input, ["push", { _target: e.target.name }]);
            });
          });
        }, false);
      }
    }
    debounce(el, event, callback) {
      let phxDebounce = this.binding(PHX_DEBOUNCE);
      let phxThrottle = this.binding(PHX_THROTTLE);
      let defaultDebounce = this.defaults.debounce.toString();
      let defaultThrottle = this.defaults.throttle.toString();
      dom_default.debounce(el, event, phxDebounce, defaultDebounce, phxThrottle, defaultThrottle, callback);
    }
    silenceEvents(callback) {
      this.silenced = true;
      callback();
      this.silenced = false;
    }
    on(event, callback) {
      window.addEventListener(event, (e) => {
        if (!this.silenced) {
          callback(e);
        }
      });
    }
  };
  var TransitionSet = class {
    constructor() {
      this.transitions = /* @__PURE__ */ new Set();
      this.pendingOps = [];
      this.reset();
    }
    reset() {
      this.transitions.forEach((timer) => {
        cancelTimeout(timer);
        this.transitions.delete(timer);
      });
      this.flushPendingOps();
    }
    after(callback) {
      if (this.size() === 0) {
        callback();
      } else {
        this.pushPendingOp(callback);
      }
    }
    addTransition(time, onStart, onDone) {
      onStart();
      let timer = setTimeout(() => {
        this.transitions.delete(timer);
        onDone();
        if (this.size() === 0) {
          this.flushPendingOps();
        }
      }, time);
      this.transitions.add(timer);
    }
    pushPendingOp(op) {
      this.pendingOps.push(op);
    }
    size() {
      return this.transitions.size;
    }
    flushPendingOps() {
      this.pendingOps.forEach((op) => op());
      this.pendingOps = [];
    }
  };

  // js/app.js
  var import_draggable = __toModule(require_draggable_bundle());
  var import_topbar = __toModule(require_topbar());

  // js/chart.js
  var import_chart = __toModule(require_chart());
  var import_chartjs_plugin_datalabels = __toModule(require_chartjs_plugin_datalabels());

  // node_modules/chart.js-plugin-labels-dv/dist/chartjs-plugin-labels.min.js
  !function(t) {
    typeof define == "function" && define.amd ? define(t) : t();
  }(function() {
    "use strict";
    !function() {
      if (typeof Chart == "undefined")
        return void console.error("Cannot find Chart object.");
      const t = Chart.helpers;
      typeof Object.assign != "function" && (Object.assign = function(t2) {
        if (!t2)
          throw new TypeError("Cannot convert undefined or null to object");
        const e2 = Object(t2);
        for (let t3 = 1; t3 < arguments.length; t3++) {
          const o2 = arguments[t3];
          if (o2)
            for (const t4 in o2)
              Object.prototype.hasOwnProperty.call(o2, t4) && (e2[t4] = o2[t4]);
        }
        return e2;
      });
      const e = {};
      function o() {
        this.renderToDataset = this.renderToDataset.bind(this);
      }
      ["pie", "doughnut", "polarArea", "bar"].forEach(function(t2) {
        e[t2] = true;
      }), o.prototype.setup = function(t2, e2) {
        this.chart = t2, this.ctx = t2.ctx, this.args = {}, this.barTotal = {};
        const o2 = t2.config.options;
        this.options = Object.assign({ position: "default", precision: 0, fontSize: o2.font ? o2.font.size : 12, fontColor: o2.color || "#333333", fontStyle: o2.font ? o2.font.style : "normal", fontFamily: o2.font ? o2.font.family : "'Helvetica Neue', 'Helvetica', 'Arial', sans-serif", shadowOffsetX: 3, shadowOffsetY: 3, shadowColor: "rgba(0,0,0,0.3)", shadowBlur: 6, images: [], outsidePadding: 2, textMargin: 2, overlap: true }, e2), t2.config.type === "bar" && (this.options.position = "default", this.options.arc = false, this.options.overlap = true);
      }, o.prototype.render = function() {
        this.labelBounds = [], this.chart.data.datasets.forEach(this.renderToDataset);
      }, o.prototype.renderToDataset = function(t2, e2) {
        this.totalPercentage = 0, this.total = null;
        const o2 = this.args[e2];
        o2.meta.data.forEach(function(e3, n) {
          this.renderToElement(t2, o2, e3, n);
        }.bind(this));
      }, o.prototype.renderToElement = function(e2, o2, n, i) {
        if (!this.shouldRenderToElement(o2.meta, n))
          return;
        this.percentage = null;
        const s = this.getLabel(e2, n, i);
        if (!s)
          return;
        const r = this.ctx;
        r.save(), r.font = t.fontString(this.options.fontSize, this.options.fontStyle, this.options.fontFamily);
        const a = this.getRenderInfo(n, s);
        this.drawable(n, s, a) ? (r.beginPath(), r.fillStyle = this.getFontColor(e2, n, i), this.renderLabel(s, a), r.restore()) : r.restore();
      }, o.prototype.renderLabel = function(t2, e2) {
        return this.options.arc ? this.renderArcLabel(t2, e2) : this.renderBaseLabel(t2, e2);
      }, o.prototype.renderBaseLabel = function(t2, e2) {
        const o2 = this.ctx;
        if (typeof t2 == "object")
          o2.drawImage(t2, e2.x - t2.width / 2, e2.y - t2.height / 2, t2.width, t2.height);
        else {
          o2.save(), o2.textBaseline = "top", o2.textAlign = "center", this.options.textShadow && (o2.shadowOffsetX = this.options.shadowOffsetX, o2.shadowOffsetY = this.options.shadowOffsetY, o2.shadowColor = this.options.shadowColor, o2.shadowBlur = this.options.shadowBlur);
          const n = t2.split("\n");
          for (let t3 = 0; t3 < n.length; t3++) {
            const i = e2.y - this.options.fontSize / 2 * n.length + this.options.fontSize * t3;
            o2.fillText(n[t3], e2.x, i);
          }
          o2.restore();
        }
      }, o.prototype.renderArcLabel = function(t2, e2) {
        const o2 = this.ctx, n = e2.radius, i = e2.view;
        if (o2.save(), o2.translate(i.x, i.y), typeof t2 == "string") {
          o2.rotate(e2.startAngle), o2.textBaseline = "middle", o2.textAlign = "left";
          const i2 = t2.split("\n");
          let s = 0;
          const r = [];
          let a, h = 0;
          this.options.position === "border" && (h = (i2.length - 1) * this.options.fontSize / 2);
          for (let t3 = 0; t3 < i2.length; ++t3)
            a = o2.measureText(i2[t3]), a.width > s && (s = a.width), r.push(a.width);
          for (let t3 = 0; t3 < i2.length; ++t3) {
            const e3 = i2[t3], l = (i2.length - 1 - t3) * -this.options.fontSize + h;
            o2.save();
            const c = (s - r[t3]) / 2;
            o2.rotate(c / n);
            for (let t4 = 0; t4 < e3.length; t4++) {
              const i3 = e3.charAt(t4);
              a = o2.measureText(i3), o2.save(), o2.translate(0, -1 * n), o2.fillText(i3, 0, l), o2.restore(), o2.rotate(a.width / n);
            }
            o2.restore();
          }
        } else
          o2.rotate((i.startAngle + Math.PI / 2 + e2.endAngle) / 2), o2.translate(0, -1 * n), this.renderLabel(t2, { x: 0, y: 0 });
        o2.restore();
      }, o.prototype.shouldRenderToElement = function(t2, e2) {
        return !t2.hidden && (this.options.showZero || this.chart.config.type === "polarArea" ? e2.outerRadius !== 0 : e2.circumference !== 0);
      }, o.prototype.getLabel = function(t2, e2, o2) {
        let n;
        if (typeof this.options.render == "function")
          n = this.options.render({ label: this.chart.config.data.labels[o2], value: t2.data[o2], percentage: this.getPercentage(t2, e2, o2), dataset: t2, index: o2 });
        else
          switch (this.options.render) {
            case "value":
              n = t2.data[o2];
              break;
            case "label":
              n = this.chart.config.data.labels[o2];
              break;
            case "image":
              n = this.options.images[o2] ? this.loadImage(this.options.images[o2]) : "";
              break;
            case "percentage":
            default:
              n = this.getPercentage(t2, e2, o2) + "%";
          }
        return typeof n == "object" ? n = this.loadImage(n) : n && (n = n.toString()), n;
      }, o.prototype.getFontColor = function(t2, e2, o2) {
        let n = this.options.fontColor;
        return typeof n == "function" ? n = n({ label: this.chart.config.data.labels[o2], value: t2.data[o2], percentage: this.getPercentage(t2, e2, o2), backgroundColor: t2.backgroundColor[o2], dataset: t2, index: o2 }) : typeof n != "string" && (n = n[o2] || this.chart.config.options.color), n;
      }, o.prototype.getPercentage = function(t2, e2, o2) {
        if (this.percentage)
          return this.percentage;
        let n;
        if (this.chart.config.type === "polarArea" || this.chart.config.type === "doughnut" || this.chart.config.type === "pie") {
          if (!this.total) {
            this.total = 0;
            for (let e3 = 0; e3 < t2.data.length; ++e3)
              this.total += t2.data[e3];
          }
          n = t2.data[o2] / this.total * 100;
        } else if (this.chart.config.type === "bar") {
          if (!this.barTotal[o2]) {
            this.barTotal[o2] = 0;
            for (let t3 = 0; t3 < this.chart.data.datasets.length; ++t3)
              this.barTotal[o2] += this.chart.data.datasets[t3].data[o2];
          }
          n = t2.data[o2] / this.barTotal[o2] * 100;
        } else
          n = e2.circumference / this.chart.config.options.circumference * 100;
        return n = parseFloat(n.toFixed(this.options.precision)), this.options.showActualPercentages || (this.chart.config.type === "bar" && (this.totalPercentage = this.barTotalPercentage[o2] || 0), this.totalPercentage += n, this.totalPercentage > 100 && (n -= this.totalPercentage - 100, n = parseFloat(n.toFixed(this.options.precision))), this.chart.config.type === "bar" && (this.barTotalPercentage[o2] = this.totalPercentage)), this.percentage = n, n;
      }, o.prototype.getRenderInfo = function(t2, e2) {
        return this.chart.config.type === "bar" ? this.getBarRenderInfo(t2, e2) : this.options.arc ? this.getArcRenderInfo(t2, e2) : this.getBaseRenderInfo(t2, e2);
      }, o.prototype.getBaseRenderInfo = function(t2, e2) {
        if (this.options.position === "outside" || this.options.position === "border") {
          let o2, n = {};
          const i = t2, s = i.startAngle + (i.endAngle - i.startAngle) / 2, r = i.outerRadius / 2;
          if (this.options.position === "border" ? o2 = (i.outerRadius - r) / 2 + r : this.options.position === "outside" && (o2 = i.outerRadius - r + r + this.options.textMargin), n = { x: i.x + Math.cos(s) * o2, y: i.y + Math.sin(s) * o2 }, this.options.position === "outside") {
            const t3 = this.options.textMargin + this.measureLabel(e2).width / 2;
            n.x += n.x < i.x ? -t3 : t3;
          }
          return n;
        }
        return t2.tooltipPosition();
      }, o.prototype.getArcRenderInfo = function(t2, e2) {
        let o2;
        const n = t2;
        o2 = this.options.position === "outside" ? n.outerRadius + this.options.fontSize + this.options.textMargin : this.options.position === "border" ? (n.outerRadius / 2 + n.outerRadius) / 2 : (n.innerRadius + n.outerRadius) / 2;
        let i = n.startAngle, s = n.endAngle;
        const r = s - i;
        i += Math.PI / 2, s += Math.PI / 2;
        return i += (s - (this.measureLabel(e2).width / o2 + i)) / 2, { radius: o2, startAngle: i, endAngle: s, totalAngle: r, view: n };
      }, o.prototype.getBarRenderInfo = function(t2, e2) {
        const o2 = t2.tooltipPosition();
        return o2.y -= this.measureLabel(e2).height / 2 + this.options.textMargin, o2;
      }, o.prototype.drawable = function(t2, e2, o2) {
        if (this.options.overlap)
          return true;
        if (this.options.arc)
          return o2.endAngle - o2.startAngle <= o2.totalAngle;
        {
          const n = this.measureLabel(e2), i = o2.x - n.width / 2, s = o2.x + n.width / 2, r = o2.y - n.height / 2, a = o2.y + n.height / 2;
          return this.options.position === "outside" ? this.outsideInRange(i, s, r, a) : t2.inRange(i, r) && t2.inRange(i, a) && t2.inRange(s, r) && t2.inRange(s, a);
        }
      }, o.prototype.outsideInRange = function(t2, e2, o2, n) {
        const i = this.labelBounds;
        for (let s = 0; s < i.length; ++s) {
          const r = i[s];
          let a = [[t2, o2], [t2, n], [e2, o2], [e2, n]];
          for (let t3 = 0; t3 < a.length; ++t3) {
            const e3 = a[t3][0], o3 = a[t3][1];
            if (e3 >= r.left && e3 <= r.right && o3 >= r.top && o3 <= r.bottom)
              return false;
          }
          a = [[r.left, r.top], [r.left, r.bottom], [r.right, r.top], [r.right, r.bottom]];
          for (let i2 = 0; i2 < a.length; ++i2) {
            const s2 = a[i2][0], r2 = a[i2][1];
            if (s2 >= t2 && s2 <= e2 && r2 >= o2 && r2 <= n)
              return false;
          }
        }
        return i.push({ left: t2, right: e2, top: o2, bottom: n }), true;
      }, o.prototype.measureLabel = function(t2) {
        if (typeof t2 == "object")
          return { width: t2.width, height: t2.height };
        {
          let e2 = 0;
          const o2 = t2.split("\n");
          for (let t3 = 0; t3 < o2.length; ++t3) {
            const n = this.ctx.measureText(o2[t3]);
            n.width > e2 && (e2 = n.width);
          }
          return { width: e2, height: this.options.fontSize * o2.length };
        }
      }, o.prototype.loadImage = function(t2) {
        const e2 = new Image();
        return e2.src = t2.src, e2.width = t2.width, e2.height = t2.height, e2;
      }, Chart.register({ id: "labels", beforeDatasetsUpdate: function(t2, n, i) {
        if (!e[t2.config.type])
          return;
        i.length || (i = [i]);
        const s = i.length;
        t2._labels && s === t2._labels.length || (t2._labels = i.map(function() {
          return new o();
        }));
        let r = false, a = 0;
        for (let e2 = 0; e2 < s; ++e2) {
          const o2 = t2._labels[e2];
          if (o2.setup(t2, i[e2]), o2.options.position === "outside") {
            r = true;
            const t3 = 1.5 * o2.options.fontSize + o2.options.outsidePadding;
            t3 > a && (a = t3);
          }
        }
        r && (t2.chartArea.top += a, t2.chartArea.bottom -= a);
      }, afterDatasetUpdate: function(t2, o2) {
        e[t2.config.type] && t2._labels.forEach(function(t3) {
          t3.args[o2.index] = o2;
        });
      }, beforeDraw: function(t2) {
        e[t2.config.type] && t2._labels.forEach(function(t3) {
          t3.barTotalPercentage = {};
        });
      }, afterDatasetsDraw: function(t2) {
        e[t2.config.type] && t2._labels.forEach(function(t3) {
          t3.render();
        });
      } });
    }();
  });

  // js/chart.js
  var colors = ["#36a2eb"];
  var month = [
    "Janvier",
    "F\xE9vrier",
    "Mars",
    "Avril",
    "Mai",
    "Juin",
    "Juillet",
    "Ao\xFBt",
    "Septembre",
    "Octobre",
    "Novembre",
    "D\xE9cembre"
  ];
  var SURVEY = [
    "Qualit\xE9 du travail effectu\xE9",
    "Gain de temps du client",
    "Respect du d\xE9lai de livraison",
    "Qualit\xE9 de la communication"
  ];
  var HorizontalBarChart = class {
    constructor(ctx, labels, values) {
      this.chart = new import_chart.default(ctx, {
        type: "bar",
        data: {
          labels,
          datasets: [
            {
              axis: "x",
              label: "Liste des t\xE2ches",
              data: values,
              fill: false,
              borderColor: colors,
              backgroundColor: colors,
              borderWidth: 1,
              color: "#fff"
            }
          ]
        },
        options: {
          indexAxis: "x",
          responsive: true,
          plugins: {
            labels: {
              render: "value",
              fontColor: "#5c5c5c",
              position: "outside"
            },
            legend: {
              position: "bottom"
            },
            title: {
              display: true,
              text: "Liste des t\xE2ches par contributeurs"
            },
            datalabels: {
              color: "#fff"
            }
          }
        }
      });
    }
  };
  var StackedBarChart = class {
    constructor(ctx, todo_tasks, blocked_tasks, tasks_in_progress, tasks_in_control, achieved_tasks) {
      this.chart = new import_chart.default(ctx, {
        type: "bar",
        data: {
          labels: month,
          datasets: [
            {
              label: "T\xE2ches \xE0 faire",
              data: todo_tasks,
              backgroundColor: "#36a2eb"
            },
            {
              label: "T\xE2ches en blocage",
              data: blocked_tasks,
              backgroundColor: "#e67e22"
            },
            {
              label: "T\xE2ches en cours",
              data: tasks_in_progress,
              backgroundColor: "#27ae60"
            },
            {
              label: "T\xE2ches en contr\xF4le",
              data: tasks_in_control,
              backgroundColor: "#8e44ad"
            },
            {
              label: "T\xE2ches achev\xE9es",
              data: achieved_tasks,
              backgroundColor: "#ff6384"
            }
          ]
        },
        options: {
          plugins: {
            labels: {
              render: "value",
              fontColor: "#5c5c5c",
              position: "outside"
            },
            legend: {
              position: "bottom"
            },
            title: {
              display: true,
              text: "T\xE2ches par mois"
            }
          },
          responsive: true
        }
      });
    }
  };
  var SurveyChart = class {
    constructor(ctx, values) {
      this.chart = new import_chart.default(ctx, {
        type: "bar",
        data: {
          labels: SURVEY,
          datasets: [
            {
              axis: "x",
              label: "Pourcentage de satisfaction en %",
              data: values,
              fill: false,
              borderColor: colors,
              backgroundColor: colors,
              borderWidth: 2,
              color: "#fff"
            }
          ]
        },
        options: {
          maintainAspectRatio: false,
          indexAxis: "y",
          responsive: true,
          plugins: {
            labels: {
              render: "value",
              fontColor: "#5c5c5c",
              position: "outside"
            },
            legend: {
              position: "bottom"
            },
            title: {
              display: true,
              text: "Taux de satisfaction du client"
            },
            datalabels: {
              color: "#fff"
            }
          }
        }
      });
    }
  };

  // js/app.js
  var import_chart3 = __toModule(require_chart());
  require_();
  require_2();
  var Hooks2 = {};
  Hooks2.CsvExportHook = {
    mounted() {
      this.handleExportClick = this.handleExportClick.bind(this);
      this.el.addEventListener("click", this.handleExportClick);
    },
    destroyed() {
      this.el.removeEventListener("click", this.handleExportClick);
    },
    handleExportClick(event) {
      let csvData = this.el.getAttribute("data-csv");
      console.log("avant :", csvData);
      csvData = csvData.replace(/\\r\\n/g, "\n");
      console.log("apres :", csvData);
      const blob = new Blob([csvData], { type: "text/csv;charset=utf-8;" });
      const link = document.createElement("a");
      link.href = window.URL.createObjectURL(blob);
      link.download = "exemple.csv";
      document.body.appendChild(link);
      link.click();
      document.body.removeChild(link);
    }
  };
  Hooks2.HorizontalBarChart = {
    mounted() {
      const { labels_tasks_by_contributors, values_tasks_by_contributors } = JSON.parse(this.el.dataset.chartData);
      this.chart = new HorizontalBarChart(this.el, labels_tasks_by_contributors, values_tasks_by_contributors);
    }
  };
  Hooks2.StackedBarChart = {
    mounted() {
      const {
        values_tasks_todo_by_month,
        values_blocking_tasks_by_month,
        values_tasks_in_progress_by_month,
        values_tasks_in_control_by_month,
        values_tasks_achieved_by_month
      } = JSON.parse(this.el.dataset.chartData);
      this.chart = new StackedBarChart(this.el, values_tasks_todo_by_month, values_blocking_tasks_by_month, values_tasks_in_progress_by_month, values_tasks_in_control_by_month, values_tasks_achieved_by_month);
    }
  };
  Hooks2.SurveyChart = {
    mounted() {
      console.log("is mounted");
      const { values } = JSON.parse(this.el.dataset.chartData);
      this.mychart = new SurveyChart(this.el, values);
    }
  };
  Hooks2.Board = {
    mounted() {
      this.initDraggables();
    },
    updated() {
      this.sortableCard.destroy();
      this.sortableStage.destroy();
      this.initDraggables();
    },
    initDraggables() {
      this.sortableCard = new import_draggable.Sortable(document.querySelectorAll(".stage__cards"), {
        draggable: ".card",
        mirror: {
          constrainDimensions: true
        },
        swapAnimation: {
          duration: 200,
          easingFunction: "ease-in-out"
        },
        plugins: [import_draggable.Plugins.SwapAnimation]
      });
      this.sortableCard.on("sortable:stop", (event) => {
        const source = event.data.dragEvent.data.source;
        const cardId = parseInt(source.getAttribute("data-card-id"));
        const newStageId = parseInt(event.data.newContainer.getAttribute("data-stage-id"));
        const newIndex = parseInt(event.data.newIndex);
        const cardPayload = {
          card: {
            id: cardId,
            stage_id: newStageId,
            position: newIndex
          }
        };
        this.pushEvent("update_card", cardPayload);
      });
      this.sortableStage = new import_draggable.Sortable(document.querySelectorAll(".board"), {
        draggable: ".stage",
        handle: ".draggable-handle",
        mirror: {
          constrainDimensions: true,
          yAxis: false
        }
      });
      this.sortableStage.on("sortable:stop", (event) => {
        const source = event.data.dragEvent.data.source;
        const stageId = parseInt(source.getAttribute("data-stage-id"));
        const newIndex = parseInt(event.data.newIndex);
        const stagePayload = {
          stage: {
            id: stageId,
            position: newIndex
          }
        };
        this.pushEvent("update_stage", stagePayload);
      });
    }
  };
  Hooks2.AnimateAlert = {
    mounted() {
      this.handleEvent("AnimateAlert", ({}) => this.reset_opacity());
    },
    updated() {
    },
    reset_opacity() {
      var alert = document.querySelector("#alert_anim");
      alert.style.opacity = 1;
      window.setTimeout(function() {
        alert.style.display = "none";
      }, 2e3);
    },
    anim_onload() {
      var alerts2 = document.querySelectorAll(".alert");
      alerts2.forEach((item) => {
        item.style.opacity = 1;
        item.onload = window.setTimeout(function() {
          item.style.opacity = 0;
        }, 2e3);
      });
      for (var i = 0; i < alerts2.length; i++) {
        alerts2[i].style.opacity = 1;
        alerts2[i].onload = window.setTimeout(function() {
          alerts2[i].style.opacity = 0;
        }, 2e3);
      }
    }
  };
  Hooks2.blurHook = {
    mounted() {
      this.handleEvent("blurBody", ({ param1, param2 }) => this.blurBody());
    },
    blurBody() {
      var body = document.body;
      var request_form = document.querySelector("#the_request_form");
      body.style.opacity = 0.5;
      request_form.style.opacity = 1;
    }
  };
  Hooks2.MessageBody = {
    mounted() {
      var messageBody = document.querySelector("#messageBody");
      this.handleEvent("updateScroll", ({}) => messageBody.scrollTop = messageBody.scrollHeight - messageBody.clientHeight);
    }
  };
  Hooks2.urlProcess = {
    mounted() {
      let main = document.querySelector("#main");
      var url = window.location.href;
      url.includes("/logs") ? main.classList.remove("container") : main.classList.add("container");
    }
  };
  Hooks2.SpinTest = {
    mounted() {
      this.handleEvent("SpinTest", ({}) => this.spin_icon());
      this.handleEvent("SpinComment", ({}) => this.spin_comment_icon());
    },
    spin_icon() {
      var spins = document.querySelectorAll(".notif__load");
      spins.forEach((item) => {
        item.classList.add("new__rotate__icon");
      });
      spins.forEach((item) => {
        window.setTimeout(function() {
          item.classList.remove("new__rotate__icon");
        }, 500);
      });
    },
    spin_comment_icon() {
      var clock_comment = document.getElementById("clock_comment");
      clock_comment.classList.add("rotate__icon");
      window.setTimeout(function() {
        clock_comment.classList.remove("rotate__icon");
      }, 500);
    }
  };
  var navToggle = document.querySelector(".nav__toggle");
  var navWrapper = document.querySelector(".nav__wrapper");
  navToggle.addEventListener("click", function() {
    if (navWrapper.classList.contains("active")) {
      this.setAttribute("aria-expanded", "false");
      this.setAttribute("aria-label", "menu");
      navWrapper.classList.remove("active");
    } else {
      navWrapper.classList.add("active");
      this.setAttribute("aria-label", "close menu");
      this.setAttribute("aria-expanded", "true");
    }
  });
  var copyrightIcon = document.getElementById("copyright__icon");
  if (copyrightIcon) {
    copyrightIcon.innerHTML = "copyright PHIDIA / Project monitoring -2024";
  }
  var menuBtn = document.querySelector(".menu-btn");
  var menuOpen = false;
  menuBtn.addEventListener("click", () => {
    if (!menuOpen) {
      menuBtn.classList.add("open");
      menuOpen = true;
    } else {
      menuBtn.classList.remove("open");
      menuOpen = false;
    }
  });
  var alerts = document.querySelectorAll(".alert");
  alerts.forEach((item) => {
    item.style.opacity = 1;
    item.onload = window.setTimeout(function() {
      item.style.opacity = 0;
    }, 2e3);
  });
  var csrfToken = document.querySelector("meta[name='csrf-token']").getAttribute("content");
  var liveSocket = new LiveSocket("/live", Socket, {
    params: { _csrf_token: csrfToken },
    hooks: Hooks2
  });
  import_topbar.default.config({ barColors: { 0: "#29d" }, shadowColor: "rgba(0, 0, 0, .3)" });
  window.addEventListener("phx:page-loading-start", (info) => import_topbar.default.show());
  window.addEventListener("phx:page-loading-stop", (info) => import_topbar.default.hide());
  liveSocket.connect();
  window.liveSocket = liveSocket;
})();
/*!
 * @kurkle/color v0.2.1
 * https://github.com/kurkle/color#readme
 * (c) 2022 Jukka Kurkela
 * Released under the MIT License
 */
/*!
 * Chart.js v3.8.0
 * https://www.chartjs.org
 * (c) 2022 Chart.js Contributors
 * Released under the MIT License
 */
/*!
 * chartjs-plugin-datalabels v2.0.0
 * https://chartjs-plugin-datalabels.netlify.app
 * (c) 2017-2021 chartjs-plugin-datalabels contributors
 * Released under the MIT license
 */
/**
   * [chartjs-plugin-labels]{@link https://github.com/DavideViolante/chartjs-plugin-labels}
   *
   * @version 3.1.0
   * @author Chen, Yi-Cyuan [emn178@gmail.com], Davide Violante
   * @copyright Chen, Yi-Cyuan 2017-2018
   * @license MIT
   */
/**
 * @license MIT
 * topbar 1.0.0, 2021-01-06
 * https://buunguyen.github.io/topbar
 * Copyright (c) 2021 Buu Nguyen
 */