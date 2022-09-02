
"use strict";

let ShutdownSystem = require('./ShutdownSystem.js')
let GetObjectInfo = require('./GetObjectInfo.js')
let MetaService = require('./MetaService.js')
let GetObjectPose = require('./GetObjectPose.js')
let SetObjectInfo = require('./SetObjectInfo.js')
let GetObjectTrajectory = require('./GetObjectTrajectory.js')
let GetTactileState = require('./GetTactileState.js')

module.exports = {
  ShutdownSystem: ShutdownSystem,
  GetObjectInfo: GetObjectInfo,
  MetaService: MetaService,
  GetObjectPose: GetObjectPose,
  SetObjectInfo: SetObjectInfo,
  GetObjectTrajectory: GetObjectTrajectory,
  GetTactileState: GetTactileState,
};
