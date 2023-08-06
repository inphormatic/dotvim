local M = {}

function M.tablelen(t)
  local count = 0

  for _ in pairs(t) do
    count = count + 1
  end

  return count
end


return M
