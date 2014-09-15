'use strict';

getData = (tab) ->
  params =
    url: tab.url
    auth_token: localStorage.authToken

  $.post localStorage.apiUrl, params, (data) ->
    chrome.tabs.sendMessage tab.id, {message: 'update', data: data}

chrome.browserAction.onClicked.addListener (tab) ->
  chrome.tabs.sendMessage tab.id, {message: 'toggle_bar'}, (response) ->
    getData(tab) if response.isOpened
