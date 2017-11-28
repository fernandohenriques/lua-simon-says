-- makeRaibowTitle.lua

function makeRaibowTitle(title, xFirst, y)
  local colors = { '#f24f21', '#7eb900', '#00a3ef', '#feb800', '#fff' }
  local j, x, titleLetter, letter = 0, xFirst
  for i = 1, string.len(title) do
    j = (j < #colors and j + 1 or 1)
    titleLetter = string.sub(title,i,i)
    x = (titleLetter == 'i' and x - 6 or x)
    letter = display.newText(titleLetter, x, y, "assets/fonts/PassionOne-Bold.ttf", 50)
    letter:setFillColor(hex2rgb(colors[j]))
    x = x + (titleLetter == 'm' and 32.5 or 26)
  end
end
