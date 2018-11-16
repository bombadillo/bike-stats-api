dbConnector = require './dbConnector'
mongo = require 'mongodb'

getAll = (collection, params) ->
  try
    params = params || {}
    db = await dbConnector.connect()
    collection = db.collection(collection)
    result = await collection.find(params).toArray()
    return result
  catch err
    return null

getOne = (collection, params) ->
  try
    params = params || {}
    db = await dbConnector.connect()
    collection = db.collection collection
    console.log params
    result = await collection.findOne params
    return result
  catch err
    return null

getById = (collection, id) ->
  try
    o_id = new mongo.ObjectId id
    db = await dbConnector.connect()
    collection = db.collection collection
    result = await collection.find({ _id: o_id }).toArray()
    return result
  catch err
    console.log err
    return null

insert = (collection, data) ->
  try
    console.log "inserting into #{collection}"
    db = await dbConnector.connect()
    collection = db.collection collection
    result = await collection.insertOne data
    console.log 'inserted'
    return result
  catch err
    return null

update = (collection, data) ->
  try
    o_id = new mongo.ObjectId data._id
    delete data._id
    newValues = { $set: data }
    db = await dbConnector.connect()
    collection = db.collection collection
    result = await collection.updateOne { _id: o_id }, newValues
    return result
  catch err
    console.log err
    return null


exports = this
exports.getAll = getAll
exports.getOne = getOne
exports.insert = insert
exports.getById = getById
exports.update = update
