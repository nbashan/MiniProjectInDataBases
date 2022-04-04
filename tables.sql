CREATE TABLE Worker
(
  WorkerId INT NOT NULL,
  Name VARCHAR(30) NOT NULL,
  Role VARCHAR(30) NOT NULL,
  SalaryPerHour FLOAT NOT NULL,
  JoinDate DATE NOT NULL,
  LeftDate DATE,
  BirthDate DATE NOT NULL,
  Email VARCHAR(30) NOT NULL,
  PRIMARY KEY (WorkerId)
);

CREATE TABLE Wing
(
  WingId INT NOT NULL,
  Name VARCHAR(30) NOT NULL,
  PRIMARY KEY (WingId)
);

CREATE TABLE Department
(
  DepartmentId INT NOT NULL,
  Name VARCHAR(30) NOT NULL,
  WingId INT NOT NULL,
  PRIMARY KEY (DepartmentId),
  FOREIGN KEY (WingId) REFERENCES Wing(WingId)
);

CREATE TABLE WorksAt
(
  WorkerId INT NOT NULL,
  DepartmentId INT NOT NULL,
  PRIMARY KEY (WorkerId, DepartmentId),
  FOREIGN KEY (WorkerId) REFERENCES Worker(WorkerId),
  FOREIGN KEY (DepartmentId) REFERENCES Department(DepartmentId)
);
