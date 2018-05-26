# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $("form#search").on "ajax:beforeSend", (xhr, settings) ->
    console.debug "ajax:beforeSend"

    if $('#search_qtum_address').val().trim() == ""
      showError("Please input Qtum Address")
      # abort ajax request
      return false

    searchInProgress()
    hideBfcyResult()

  .on "ajax:success", (evt, data) ->
    console.debug "ajax:success", data
    status = data["status"]

    if status == 'success'
      showBfcy(data["bfcy"])
    else
      # query result rejected
      error = data["errors"]
      showError(error)

  .on "ajax:error", ->
    # server/network error
    console.log 'Error Fetching Query Result'

    showError('Error Fetching Query Result')

@searchInProgress = ->
  $('#bfcySearchProgress').fadeIn().html("Search in progress")

@hideSearchProgress = ->
  $('#bfcySearchProgress').fadeOut()

@showError = (error) ->
  $('#bfcySearchProgress').fadeIn().html(error)

@showBfcy = (bfcy) ->
  hideSearchProgress()
  $('#bfcyResult').show()
  $('#bfcyResult .qtum-address').html(bfcy["qtum_address"])
  $('#bfcyResult .ent-amount').html(bfcy["amount"])

@hideBfcyResult = -> $('#bfcyResult').fadeOut()