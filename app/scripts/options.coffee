'use strict';

loadSettings = ->
  document.getElementById('auth_token').value = localStorage.authToken || ''
  document.getElementById('api_url').value = localStorage.apiUrl || ''

window.onload = ->
  loadSettings()
  document.getElementById('save').onclick = ->
    localStorage.authToken = document.getElementById('auth_token').value
    localStorage.apiUrl = document.getElementById('api_url').value
