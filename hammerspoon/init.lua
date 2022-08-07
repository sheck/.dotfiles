hs.loadSpoon('ControlEscape'):start() -- Load Hammerspoon bits from https://github.com/jasonrudolph/ControlEscape.spoon

function applicationWatcher(appName, eventType, appObject)
  if (eventType == hs.application.watcher.activated) then
    if (appName == "zoom.us") then
      hs.application.open("krisp")
    end
  end
end
appWatcher = hs.application.watcher.new(applicationWatcher)
appWatcher:start()
