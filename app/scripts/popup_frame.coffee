'use strict';

chrome.runtime.onMessage.addListener (request, sender, sendResponse) ->
  switch request.message
    when 'update'
      $("#result").jsontree(request.data)
