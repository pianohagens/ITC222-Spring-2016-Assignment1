use metro_Alt;

Create table Bus_Service
(
BusServiceKey int identity(1,1) primary key,
BusServiceName nvarchar(255) not null,
BusServiceDescription varchar (5000)

)
Create table Maintenance
(
MaintenanceKey int identity(1,1),
BusServiceKey int not null,
MainenanceDate Date default getDate(),
Constraint PK_Maintenance Primary Key (MaintenanceKey), 
Constraint FK_BusKey Foreign Key(BusServiceKey) References Bus_Service(BusServiceKey)
);

Create table MaintenanceDetail
(
MaintenanceDetailKey int identity(1,1),
Maintenancekey int not null,
EmployeeKey int not null,
BusServiceKey int not null,
MaintenanceNotes nvarchar (255)
)
Create table Employee
(
EmployeeKey varchar(20),
EmployeeLastName varchar(20),
EmployeeFirstName varchar(20)
)

Alter Table Maintenance
add constraint PK_Maintenance Primary Key (MaintenanceKey);

Alter Table Maintenance
add constraint FK_BusKey Foreign Key(MaintenanceKey) References Bus_Service(BusServiceKey);

Alter Table Bus_Service 
add constraint FK_BusKey Foreign Key(Bus_Service) References Bus_Service(BusServiceKey);

Alter Table Bus_Service 
Add column BusType Named BusTypeAccessible bit (0,1)

Alter Table Employee
Add constraint uipque_Email unique (employeeEamil)

Alter Table Employee
add constraint FK_EmployeeKey  Foreign Key (EmployeeKey)  References Bus_Service(BusServiceKey);

