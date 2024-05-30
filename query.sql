SELECT
DeviceId = DATAPOINTS.iotHub.connectionDeviceId,
AVG(average_current)
INTO [MY_ENERGY_DISPENSE]
FROM DATAPOINTS
TIMESTAMP BY DATAPOINTS.iotHub.enqueuedTime
GROUP BY
DATAPOINTS.iotHub.connectionDeviceId,
TumblingWindow(min, 15)
