chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'the-more-you-know', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()

    require('../src/the-more-you-know')(@robot)

  it 'registers a hear listener', ->
    expect(@robot.hear).to.be.calledWith(/the more you know/i)
