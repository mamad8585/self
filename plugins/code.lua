local function run(msg,matches)
   local g = string.upper(matches[2])
local f = string.lower(matches[2])
       return '<code>-| Font Helper |-</code>\n<code>Code Font:</code> <code>'..matches[2]..'</code>\nCAPITAL FONT : '..g
end
return {
patterns = {
"^[#!/]([Mm][Kk]) +(.*)$",
"^([Mm][Kk]) +(.*)"
},
run = run
}
