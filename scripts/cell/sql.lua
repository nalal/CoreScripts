Database = require("database")
local BaseCell = require("cell.base")

local Cell = class("Cell", BaseCell)

function Cell:__init(cellDescription)
    BaseCell.__init(self, cellDescription)

    if self.hasEntry == nil then

        -- Not implemented yet
    end
end

function Cell:CreateEntry()
    -- Not implemented yet
end

function Cell:SaveToDisk()
    -- Not implemented yet
end

function Cell:LoadFromDisk()
    -- Not implemented yet
end

return Cell
