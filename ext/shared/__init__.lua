-- Pimped Ammo and medic bags

	      local partition_ammobag = Guid ("04CD683B-1F1B-11E0-BBD1-F7235575FD24")
     local partition_ammobag_Instance = Guid ("4AE515CE-846D-6070-5F56-1285B7E8E187")

	      local partition_medicbag = Guid ("1D6061B2-2234-11E0-92F5-C9B649EF6972")
     local partition_medicbag_Instance = Guid ("A867A678-615B-3FA6-7AF5-0DEE6ED69EA0")

ResourceManager:RegisterInstanceLoadHandler(partition_ammobag, partition_ammobag_Instance, function(loadedInstance)

    loadedInstance = SupplySphereEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.receivesExplosionDamage = false
    loadedInstance.supplyData.ammo.infiniteCapacity = true
    loadedInstance.supplyData.teamSpecific = true

    loadedInstance.supplyData.ammo.radius = 10
    loadedInstance.supplyData.ammo.supplyIncSpeed = 1.5
    loadedInstance.supplyData.ammo.supplyPointsRefillSpeed = 1 -- This a multiplier !
    loadedInstance.supplyData.ammo.supplyPointsCapacity = 1 -- This a multiplier !

    loadedInstance.supplyData.healing.radius = 10
    loadedInstance.supplyData.healing.supplyIncSpeed = 3 -- it is still a ammo bag
    loadedInstance.supplyData.healing.supplyPointsRefillSpeed = 1 -- This a multiplier !
    loadedInstance.supplyData.healing.supplyPointsCapacity = 1 -- This a multiplier !

	print('Changed Ammobag - you are now a medic in training !... ... ...')
end)

ResourceManager:RegisterInstanceLoadHandler(partition_medicbag, partition_medicbag_Instance, function(loadedInstance)

    loadedInstance = SupplySphereEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.receivesExplosionDamage = false
    loadedInstance.supplyData.healing.infiniteCapacity = true
    loadedInstance.supplyData.teamSpecific = true

    loadedInstance.supplyData.healing.radius = 10
    loadedInstance.supplyData.healing.supplyIncSpeed = 7.5
    loadedInstance.supplyData.healing.supplyPointsRefillSpeed = 1 -- This a multiplier !
    loadedInstance.supplyData.healing.supplyPointsCapacity = 1 -- This a multiplier !

    loadedInstance.supplyData.ammo.radius = 10
    loadedInstance.supplyData.ammo.supplyIncSpeed = 0.5 -- it is still a medic bag
    loadedInstance.supplyData.ammo.supplyPointsRefillSpeed = 1 -- This a multiplier !
    loadedInstance.supplyData.ammo.supplyPointsCapacity = 1 -- This a multiplier !

	print('Changed Medicbag - Now you are a ammo dealer !... ... ...')
end)

