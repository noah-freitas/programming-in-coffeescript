describe 'sum Number[] -> Number', ->
  sum = {}

  beforeEach ->
    @addMatchers toBeAFunction: -> typeof @actual is 'function'

  beforeEach ->
    sum = require('./../../src/1.5/sum.coffee').sum

  it 'should be a function', ->
    expect(sum).toBeAFunction() 

  it 'should return the sum of all the numbers in the list', ->
    expect(sum [1..3]).toBe 6
    expect(sum [-1..1]).toBe 0
    expect(sum [-3..-1]).toBe -6
 
