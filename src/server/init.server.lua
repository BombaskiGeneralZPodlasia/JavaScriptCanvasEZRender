local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Knit = require(ReplicatedStorage.Packages.Knit)

local Services = script.services
local LinkReference = {}
for _,Service in ipairs(Services:GetChildren()) do
   LinkReference[Service.Name] = require(Service)
   Service.LinkReference = LinkReference
end
