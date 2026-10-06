-- Inline Mac notes are written as  word[ (Mac: ...)]{.mac}  so that hiding
-- the span (Mac steps off) leaves no stray space. Pandoc trims the space
-- inside the brackets, so put it back here. Outside HTML there's no toggle,
-- so the span is simply unwrapped.
function Span(el)
  if not el.classes:includes("mac") then return nil end
  local c = el.content
  if #c > 0 and c[1].t == "Str" and c[1].text:sub(1, 1) == "(" then
    c:insert(1, pandoc.Space())
  end
  if quarto.doc.is_format("html") then
    el.content = c
    return el
  end
  return c
end
