chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'wow-token', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()

    require('../src/wow-token')(@robot)

  it 'registers a respond listener', ->
    expect(@robot.respond).to.have.been.calledWith(/wowtoken EU/)

  it 'registers a respond listener', ->
    expect(@robot.respond).to.have.been.calledWith(/wowtoken NA/)

  it 'registers a respond listener', ->
    expect(@robot.respond).to.have.been.calledWith(/wowtoken CN/)

  it 'registers a respond listener', ->
    expect(@robot.respond).to.have.been.calledWith(/wowtoken KR/)

  it 'registers a respond listener', ->
    expect(@robot.respond).to.have.been.calledWith(/wowtoken TW/)
