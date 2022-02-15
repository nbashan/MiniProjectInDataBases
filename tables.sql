CREATE TABLE area
(
  areaID NUMERIC(3) NOT NULL,
  areaName VARCHAR(20) NOT NULL,
  PRIMARY KEY (areaID)
);

CREATE TABLE city
(
  cityID INT NOT NULL,
  cityName VARCHAR(20) NOT NULL,
  areaID NUMERIC(3) NOT NULL,
  PRIMARY KEY (cityID),
  FOREIGN KEY (areaID) REFERENCES area(areaID)
);

CREATE TABLE agent
(
  agentID NUMERIC(9) NOT NULL,
  agentName VARCHAR(20) NOT NULL,
  rating NUMERIC(2) NOT NULL,
  hireYear NUMERIC(4) NOT NULL,
  bossID NUMERIC(9) NOT NULL,
  salary FLOAT NOT NULL,
  areaID NUMERIC(3) NOT NULL,
  PRIMARY KEY (agentID),
  FOREIGN KEY (areaID) REFERENCES area(areaID)
);

CREATE TABLE client
(
  clientID NUMERIC(9) NOT NULL,
  clientName VARCHAR(20) NOT NULL,
  phoneNr VARCHAR(10) NOT NULL,
  address VARCHAR(25) NOT NULL,
  cityID INT NOT NULL,
  agentID NUMERIC(9) NOT NULL,
  PRIMARY KEY (clientID),
  FOREIGN KEY (cityID) REFERENCES city(cityID),
  FOREIGN KEY (agentID) REFERENCES agent(agentID)
);

CREATE TABLE Schedule
(
  meetingTime DATE NOT NULL,
  clientID NUMERIC(9) NOT NULL,
  agentID NUMERIC(9) NOT NULL,
  PRIMARY KEY (meetingTime, clientID, agentID),
  FOREIGN KEY (clientID) REFERENCES client(clientID),
  FOREIGN KEY (agentID) REFERENCES agent(agentID)
);