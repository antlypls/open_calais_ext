'use strict';

chrome.runtime.onMessage.addListener (request, sender, sendResponse) ->
  switch request.message
    when 'toggle_bar'
      iframe = document.getElementById('calaisFrame')
      # there is no iframe lets create
      if !iframe
        iframe = document.createElement('iframe')
        iframe.id = 'calaisFrame'
        iframe.src = chrome.extension.getURL('popup_frame.html')
        document.documentElement.appendChild(iframe)
        sendResponse({isOpened: true});
      # frame exists so remove it
      else
        iframe.parentNode.removeChild(iframe)
