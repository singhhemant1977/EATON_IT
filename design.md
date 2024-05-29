# This would act as a repository of all the ideas and thoughts
## Requirements
Design an IoT Architecture
You are working for a business that has IoT devices that need local and cloud support for monitoring and control of outlets and light switches. Requirements are as follows:
1. Outlets send telemetry data every 5 minutes which includes temperature, voltage, power, average voltage, average current, and state.
2. Switches send messages on a state change only.
3. The outlet telemetry data is 100kB per message.
4. Switch data size is 5kB per message.
5. Ability to remotely change the state of the light switch (on, off).
6. Ability to remotely turn the outlet power on and off.
7. Ability to get state change information in near real time.
8. We want to aggregate data for reporting metrics
  a. How much energy was dispensed form n devices over x amount of time
  b. Top N energy dispensation per device for a given sub-group (home)
9. IoT Device health and monitoring
  a. Is it connected
  b. Is it operating

Please supply an architectural diagram and summary that we would be able to build out infrastructure and begin to develop a solution. The architecture should be able to be
deployed in Azure and keep in mind data transmission costs and security.

Use whatever tools or design you prefer, Miro, Visio, boxes and arrows, C4, SysML, etc are all acceptable forms of presentation. Do as much as you can and we’ll discuss
during the interview.

## Tradeoffs
<ol>
  <li>Storage (Hot / Cold)</li>
  <li>Real Time Analytics</li>
  <li>Abnormality Detection</li>
  <li>Notification escalation - Help Desk / Field Engineers</li>
  <li>Scaling Horizontally (as IOT device getting popular / not popular)</li>
  <li>Schema Less future proofing (capture more/less data as business changes)</li>
</ol>
## Tools 

| Tools      | Description |
| :---        |    :----:   |      
| IoT Device      | Device that will capture data      | 
| Azure IoT Hub   | Ingest / Transform Telemetry data        | 
| Azure Stream Analytics   | Structured Streaming        |
| Azure Cosmos DB   | Hot Store / Cold Store via Synapse Link        |
| SQL Server DB  | Cold Storage        |
| Azure Synapse Analytics via Synapse Link   | Event driven dashboard live, can upload json file to see/analyze data        |
| Web Application/Mobile Application (Angular/React)   | Analytical Dashboard / Users (mgmt/field engg / help desk)       |
| Application Insights   | Monitoring application health       |

Azure Synapse Analytics : Code in T-sql, Python, PowerBI, Json File Uploader (Query everything)

Task 1
Capture data to hot store.
Send a real time feedback back to the device for monitoring like if there is a some sensor turn on the camera.
We need this data to present to the field engineer or to higher management. One or more dashboards.
Aggregating high level data so that they can get a good picture of overall health and drill down to the lower part so that they can identify problem areas.

Things to consider for designing
Hot Store should be horizontally scalable. So as demand increases you can add more and more and vice versa.
Hot Store supports some change driven event system so that you can see some data points and react to it.
Hot Store should be schema agnostic, so that future generations of device can start capturing more and more telemetry data.
Built analytics on top of the hot store so that you can run live checks for the system.

IOT Hub - Acts as a gateway collecting the data from the device -> 
Azure Synapse Studio -> Query all the files you need, see the transactions happening real time. 


