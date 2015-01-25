z = require 'zorium'

RadioButton = require '../radio_button'
styles = require './index.styl'
styleVars = require '../../vars.json'

module.exports = class RadioButtonDemo
  constructor: ->
    styles.use()

    @state = z.state
      light: [
        new RadioButton
          color500: styleVars.$blue500
          color200: styleVars.$blue200
        new RadioButton
          color500: styleVars.$blue500
          color200: styleVars.$blue200
          isChecked: true
        new RadioButton
          color500: styleVars.$blue500
          color200: styleVars.$blue200
          isDisabled: true
        new RadioButton
          color500: styleVars.$blue500
          color200: styleVars.$blue200
          isChecked: true
          isDisabled: true
      ]
      dark: [
        new RadioButton
          color500: styleVars.$blue500
          color200: styleVars.$blue200
          isDark: true
        new RadioButton
          color500: styleVars.$blue500
          color200: styleVars.$blue200
          isChecked: true
          isDark: true
        new RadioButton
          color500: styleVars.$blue500
          color200: styleVars.$blue200
          isDisabled: true
          isDark: true
        new RadioButton
          color500: styleVars.$blue500
          color200: styleVars.$blue200
          isChecked: true
          isDisabled: true
          isDark: true
      ]

  render: ({light, dark}) ->
    z '.z-radio-button-demo',
      z '.light',
        light
      z '.dark',
        dark