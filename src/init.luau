local Log = {}

local debugEnabled = false

local function getCallerName(): string
	local source = debug.info(3, "s") or "Unknown"
	local moduleName = source:match("([^/\\]+)$") or source

	return moduleName:gsub("^@", ""):gsub("%.luau$", "")
end

local function createLogFunction(levelName: string, logFunction: (...any) -> (), devOnly: boolean): (...any) -> ()
	return function(...)
		if devOnly and not debugEnabled then
			return
		end

		local moduleName = getCallerName()

		logFunction(`[${moduleName}] {levelName}:`, ...)
	end
end

function Log.SetDebugEnabled(enabled: boolean)
	debugEnabled = enabled
end

Log.Debug = createLogFunction("DEBUG", print, true)
Log.Info = createLogFunction("INFO", print, false)
Log.Warn = createLogFunction("WARN", warn, false)

return Log
