local function foo(t, sortedKeys)
  local keys = sortedKeys or {} 
  for k, v in ipairs(keys) do
      if type(t[v]) == "table" then
          foo(t[v], next(t, v) and next(t, v) or {})
      end
  end
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
local sortedKeys = {} 
for k,_ in pairs(t) do
    table.insert(sortedKeys,k)
end
foo(t, sortedKeys) 