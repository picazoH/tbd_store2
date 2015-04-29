$ ->
  if ($ '#checkout_form_address').is('*')
    ($ '#checkout_form_address').validate()

    ($ 'input#order_use_shipping').click(->
      if ($ this).is(':checked')
        ($ '#billing-section').hide()
        ($ '#billing-section input, #shipping-section select').prop 'disabled', false
      else
        ($ '#billing-section').show()
        ($ '#billing-section input, #shipping-section select').prop 'disabled', false
    ).triggerHandler 'click'
