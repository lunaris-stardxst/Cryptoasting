-- Update the cryptposting member count using https
Cryptposting = Cryptposting or {}
local member_fallback = 65 -- Fallback member count in case the request fails or is not available
local succ, https = pcall(require, "SMODS.https")
local last_update_time = 0
local initial = true
Cryptposting.member_count = member_fallback
if not succ then
    sendErrorMessage("HTTP module could not be loaded. " .. tostring(https), "Cryptposting")
end
local function apply_discord_member_count(code, body, headers)
    if body then
        local v = string.match(body, '"approximate_member_count"%s*:%s*(%d+)')
        Cryptposting.member_count = v or Cryptposting.member_count
    end
end
function Cryptposting.update_member_count()
    if https and https.asyncRequest then
        if (os.time() - last_update_time >= 60) or initial then
            initial = false
            last_update_time = os.time()
            https.asyncRequest(
                "https://discord.com/api/v10/invites/Jk9Q9usrNy?with_counts=true",
                apply_discord_member_count
            )
        end
    end -- :bulgoe:
end

Cryptposting.update_member_count()