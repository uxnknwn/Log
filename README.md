````md
# Log

A lightweight logging utility for Roblox.

## Installation

Add this to your `wally.toml`:

## toml
[dependencies]
log = "uxnknwn/log@0.1.0"
````

Then run:

```bash
wally install
```

## Usage

```luau
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local log = require(path.to.log)

log.SetDebugEnabled(true)

log.Debug("Loading player data")
log.Info("Player data loaded")
log.Warn("Failed to load player data")
```

Example output:

```text
[PlayerData] DEBUG: Loading player data
[PlayerData] INFO: Player data loaded
[PlayerData] WARN: Failed to load player data
```

Debug logs are disabled by default:

```luau
log.SetDebugEnabled(false)
```

All log functions support multiple values:

```luau
log.Info("Player joined:", player.Name, player.UserId)
```

## API

```luau
log.SetDebugEnabled(enabled: boolean)
log.Debug(...any)
log.Info(...any)
log.Warn(...any)
```
