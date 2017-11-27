-- makeRaibowTitle.lua

function makeRaibowTitle(title, xFirst, y)
  local colors = { '#f24f21', '#7eb900', '#00a3ef', '#feb800', '#fff' }
  local j, xFirstPosition = 0, xFirst
  for i = 1, string.len(title) do
    j = (j < #colors and j + 1 or 1)
    local letter = display.newText(string.sub(title,i,i), xFirstPosition, y, "assets/fonts/Knewave-Regular.ttf", 45)
    letter:setFillColor(hex2rgb(colors[j]))
    xFirstPosition = xFirstPosition + 27
  end
end
