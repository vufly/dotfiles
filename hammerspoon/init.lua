local log = hs.logger.new('hs','debug')

-- open app
function openApp(name)
  local app = hs.application.get(name)

  log.i('open App')
  log.i(name)

  if app then
    if app:isFrontmost() then
      log.i('app on top')
      -- local wf=hs.window.filter.new(false)
      -- wf:setAppFilter(name, {visible=nil, currentSpace=nil})
      -- local appWindows = wf:getWindows()
      local appWindows = app:allWindows()
      if (#appWindows > 1) then
        appWindows[2]:focus() --If app on top then open the second most recent window of the app
      end
    else
      log.i('app not on top')
      app:setFrontmost(true)
    end
  else
    log.i('app launch')
    if (name == 'Code') then
      name = 'Visual Studio Code'
    end
    if (name == 'Code - Insiders') then
      name = 'Visual Studio Code - Insiders'
    end
    if (name == 'Google Chrome') then
      name = 'Google Chrome Dev'
    end
    hs.application.launchOrFocus(name)
  end
end



hs.urlevent.bind('openActivityMonitor', function(eventName, params)
  openApp('Activity Monitor')
end)

hs.urlevent.bind('openSlack', function(eventName, params)
  openApp('Slack')
end)

hs.urlevent.bind('openDatabase', function(eventName, params)
  openApp('Navicat Premium')
end)

hs.urlevent.bind('openFirefox', function(eventName, params)
  openApp('Firefox Developer Edition')
end)

hs.urlevent.bind('openFork', function(eventName, params)
  openApp('Fork')
end)

hs.urlevent.bind('openFinder', function(eventName, params)
  openApp('Finder')
end)

hs.urlevent.bind('openKitty', function(eventName, params)
  openApp('Kitty')
end)

hs.urlevent.bind('openMessenger', function(eventName, params)
  openApp('Messenger')
end)

hs.urlevent.bind('openSpark', function(eventName, params)
  openApp('Spark')
end)

hs.urlevent.bind('openSkype', function(eventName, params)
  openApp('Skype')
end)

hs.urlevent.bind('openTelegram', function(eventName, params)
  openApp('Telegram')
end)

hs.urlevent.bind('openiTerm', function(eventName, params)
  openApp('iTerm')
end)

hs.urlevent.bind('openZoom', function(eventName, params)
  openApp('Zoom')
end)

hs.urlevent.bind('openChrome', function(eventName, params)
  openApp('Google Chrome')
end)

hs.urlevent.bind('openVSCode', function(eventName, params)
  -- openApp('Code')
  openApp('Code - Insiders')
end)

hs.urlevent.bind('openNotion', function(eventName, params)
  openApp('Notion')
end)

hs.urlevent.bind('openSpotify', function(eventName, params)
  openApp('Spotify')
end)
