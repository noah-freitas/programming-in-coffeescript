exports.sum = sum = (x) ->
  switch
    when x.length is 0 then 0
    when Array.isArray x then x.shift() + sum x

