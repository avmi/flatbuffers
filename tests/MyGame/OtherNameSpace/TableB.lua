--[[ MyGame.OtherNameSpace.TableB

  Automatically generated by the FlatBuffers compiler, do not modify.
  Or modify. I'm a message, not a cop.

  flatc version: 2.0.0

  Declared by  : //include_test/sub/include_test2.fbs
  Rooting type : MyGame.Example.Monster (//monster_test.fbs)

--]]

local __TableA = require('TableA')
local flatbuffers = require('flatbuffers')

local TableB = {}
local mt = {}

function TableB.New()
  local o = {}
  setmetatable(o, {__index = mt})
  return o
end

function mt:Init(buf, pos)
  self.view = flatbuffers.view.New(buf, pos)
end

function mt:A()
  local o = self.view:Offset(4)
  if o ~= 0 then
    local x = self.view:Indirect(self.view.pos + o)
    local obj = __TableA.New()
    obj:Init(self.view.bytes, x)
    return obj
  end
end

function TableB.Start(builder)
  builder:StartObject(1)
end

function TableB.AddA(builder, a)
  builder:PrependStructSlot(0, a, 0)
end

function TableB.End(builder)
  return builder:EndObject()
end

return TableB