#!/usr/local/bin/lua

package.path = './katas/1-FizzBuzz/src/?.lua;' .. package.path
local fizzbuzzify = require('fizzbuzzify')

local function fizzbuzz () 
  for i = 1, 100, 1
  do
    print(fizzbuzzify(i))
  end
end

fizzbuzz()
