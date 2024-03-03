-- Creating My Fav Sports (Formula One 🏎️) Table

CREATE TABLE F1 (
    ResultId INT,
    RaceId INT,
    DriverId INT,
    ConstructorId INT,
    Grid INT,
    PositionOrder INT,
    Points FLOAT,
    Laps INT,
    Times VARCHAR(20),
    Milliseconds INT,
    FastestLap INT,
    Rank INT,
    FastestLapTime VARCHAR(10),
    FastestLapSpeed FLOAT,
    DriverName VARCHAR(50),
    DriverDOB DATE,
    DriverNationality VARCHAR(50),
    ConstructorName VARCHAR(50),
    ConstructorNationality VARCHAR(50));

-- I have imported the records from downloaded csv file into my F1 table

-- Checking for the imported records in Table
Select * from F1

-- "Solving Questions for fun and practice"

-- Find the total number of races in the dataset
Select count(distinct(raceid)) from f1;

-- Count the number of unique drivers
Select count(distinct(driverid)) from f1;

-- Determine the number of constructors represented in the dataset
Select count(distinct(constructorid)) from f1;

-- Find the average number of laps per race
Select raceid, round(avg(laps),0) as average_laps_per_race from f1 group by raceid order by average_laps_per_race desc;

-- Calculate the total points scored by all drivers
Select drivername, sum(points) as points_scored from f1 group by drivername order by points_scored desc;

-- Identify the race with the highest number of points awarded
select raceid, max(points) as total_points from f1 group by raceid order by total_points desc limit(1);

-- Determine the constructor with the highest average grid position
Select constructorname, round(avg(grid),0) as avg_grid  from f1 GROUP BY constructorname order by avg_grid desc limit(1);

-- Find the race with the fastest lap time
Select raceid, min(fastestlaptime) as fastest_lap from f1 where fastestlap != 0 group by raceid order by fastest_lap limit(1);

-- Calculate the average fastest lap speed across all races
Select raceid, avg(fastestLapSpeed) as Topspeed from f1 where fastestLapSpeed !=0 group by raceid order by Topspeed desc;

-- Identify the drivers with the most points (highest position order)
Select drivername, sum(points) as most_points from f1 group by drivername order by sum(points) desc limit(3);

-- Determine the constructor with the most race wins
Select constructorname from f1 group by constructorname order by sum(points) desc limit(1);

-- Calculate the total time spent racing by each driver
Select drivername, Sum(milliseconds) as racing_time from f1 group by drivername order by sum(milliseconds) desc;

-- Find the average position order for each constructor
Select constructorname, ROUND(avg(positionorder)) from f1 group by constructorname order by avg(positionorder);

-- Identify the race with the longest duration (highest time)
Select raceid, max(times)from f1 group by raceid order by max(times) desc limit(1);

-- Calculate the percentage of races where Lewis Hamilton participated
Select Round((count(CASE WHEN drivername = 'Lewis Hamilton' then 1 end) * 100.0 / COUNT(*)),2) AS ParticipationPercentage FROM f1;

-- Determine the nationality with the highest number of represented drivers
Select drivernationality, Count(distinct(drivername)) as driverscount from f1 group by drivernationality order by Count(distinct(drivername)) desc limit(1);
