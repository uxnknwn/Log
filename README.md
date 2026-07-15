````md
# Log

A lightweight logging utility for Roblox.

## Installation

Add this to your `wally.toml`:

toml
[dependencies]
Log = "uxnknwn/log@0.1.0"
````

Then run:

```bash
wally install
```

## Usage

```luau
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Log = require(ReplicatedStorage.Packages.Log)

Log.SetDebugEnabled(true)

Log.Debug("Loading player data")
Log.Info("Player data loaded")
Log.Warn("Failed to load player data")
```

Example output:

```text
[PlayerData] DEBUG: Loading player data
[PlayerData] INFO: Player data loaded
[PlayerData] WARN: Failed to load player data
```

Debug logs are disabled by default:

```luau
Log.SetDebugEnabled(false)
```

All log functions support multiple values:

```luau
Log.Info("Player joined:", player.Name, player.UserId)
```

## API

```luau
Log.SetDebugEnabled(enabled: boolean)
Log.Debug(...any)
Log.Info(...any)
Log.Warn(...any)
```
