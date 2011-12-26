# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

storeSlide = () ->
  if $('#user_role_store_owner').attr('checked')? || $('#user_role_store_assistant').attr('checked')?
    $('#store_select').slideDown()
  else
    $('#store_select').slideUp()

submitUser = () ->
  $('#user_store_id').val("") if !$('#user_role_store_owner').attr('checked') && !$('#user_role_store_assistant').attr('checked')
  false
  if $('#user_store_id').val()=='' && ($('#user_role_store_owner').attr('checked')? || $('#user_role_store_assistant').attr('checked')?)
    alert($('#NoneSelectErrorMessage').val())
    false

$(document).ready ->
  storeSlide()
  $('#user_role_store_owner').change storeSlide
  $('#user_role_store_assistant').change storeSlide
  $form=$('.edit_user') if $('.edit_user').html()?
  $form=$('.new_user') if $('.new_user').html()?
  if $form?
    $form.submit submitUser