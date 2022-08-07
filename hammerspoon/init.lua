hs.loadSpoon('ControlEscape'):start() -- Load Hammerspoon bits from https://github.com/jasonrudolph/ControlEscape.spoon

function krispLauncher(appName, eventType, appObject)
  if (eventType == hs.application.watcher.launched) then
    if (appName == "zoom.us") then
      hs.application.open("krisp")
    end
  end
end
klauncher = hs.application.watcher.new(krispLauncher)
klauncher:start()

function dashLauncher(appName, eventType, appObject)
  if (eventType == hs.application.watcher.launched) then
    if (appName == "iTerm2") then
      hs.application.open("Dash")
    end
  end
end
dlauncher = hs.application.watcher.new(dashLauncher)
dlauncher:start()
