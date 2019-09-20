local function fizzbuzzify (num)
  if (num % 3 == 0 and num % 5 == 0) then return 'fizzbuzz' end
  if (num % 3 == 0) then return 'fizz' end
  if (num % 5 == 0) then return 'buzz' end
end

return fizzbuzzify