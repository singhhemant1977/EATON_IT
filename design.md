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
  Storage (Hot / Cold) 
  Real Time Analytics 
  Abnormality Detection
  Notification escalation - Help Desk / Field Engineers
  Scaling Horizontally (as IOT device getting popular / not popular)
  Schema Less so that future design
## Design
