#!/usr/local/bin/lua

package.path = './katas/lib/?.lua;' .. package.path
local luaunit = require('luaunit')

local fizzbuzzify = require('./katas/1-FizzBuzz/src/fizzbuzzify')

function testFizzing()
  luaunit.assertEquals(fizzbuzzify(3), 'fizz')
  luaunit.assertEquals(fizzbuzzify(6), 'fizz')
  luaunit.assertEquals(fizzbuzzify(9), 'fizz')
  luaunit.assertEquals(fizzbuzzify(21), 'fizz')
end

function testBuzzing()
  luaunit.assertEquals(fizzbuzzify(5), 'buzz')
  luaunit.assertEquals(fizzbuzzify(10), 'buzz')
  luaunit.assertEquals(fizzbuzzify(20), 'buzz')
  luaunit.assertEquals(fizzbuzzify(40), 'buzz')
end

function testFizzBuzzing()
  luaunit.assertEquals(fizzbuzzify(15), 'fizzbuzz')
  luaunit.assertEquals(fizzbuzzify(30), 'fizzbuzz')
  luaunit.assertEquals(fizzbuzzify(45), 'fizzbuzz')
  luaunit.assertEquals(fizzbuzzify(60), 'fizzbuzz')
end

function testNoFizzingOrBuzzing()
  luaunit.assertEquals(fizzbuzzify(2), '2')
  luaunit.assertEquals(fizzbuzzify(4), '4')
  luaunit.assertEquals(fizzbuzzify(8), '8')
  luaunit.assertEquals(fizzbuzzify(16), '16')
end


local runner = luaunit.LuaUnit.new()
runner:setOutputType("tap")
os.exit( runner:runSuite() )

