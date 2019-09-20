local function fizzbuzzify (num)
  local isFizz, isBuzz = num % 3 == 0, num % 5 == 0

  if (isFizz and isBuzz) 
    then return 'fizzbuzz' 
  elseif (isFizz) 
    then return 'fizz'
  elseif (isBuzz) 
    then return 'buzz' 
  end

  return tostring(num)
end

return fizzbuzzify