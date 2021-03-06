"use strict";

exports.__esModule = true;
exports.default = void 0;

var _utils = require("../utils");

var _constant = require("../utils/constant");

var _createNamespace = (0, _utils.createNamespace)('steps'),
    createComponent = _createNamespace[0],
    bem = _createNamespace[1];

var _default = createComponent({
  props: {
    inactiveIcon: String,
    active: {
      type: Number,
      default: 0
    },
    direction: {
      type: String,
      default: 'horizontal'
    },
    activeColor: {
      type: String,
      default: _constant.GREEN
    },
    activeIcon: {
      type: String,
      default: 'checked'
    }
  },
  data: function data() {
    return {
      steps: []
    };
  },
  render: function render() {
    var h = arguments[0];
    return h("div", {
      "class": bem([this.direction])
    }, [h("div", {
      "class": bem('items')
    }, [this.slots()])]);
  }
});

exports.default = _default;