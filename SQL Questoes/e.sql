	
	
--select a.*
--from  (SELECT Workers.Name AS name, Sum(ActivitiesWorkers.Hours) AS QtdHoras
--	 FROM   Workers ,ActivitiesWorkers, Activities
--	 WHERE  Workers.ID = ActivitiesWorkers.WorkerID
--			AND Activities.ID = ActivitiesWorkers.ActivityID
--			and Activities.Date = '2016-07-26'		
--	 GROUP BY Workers.Name )as a
--	 where a.QtdHoras >= 6.7



SELECT A.* 
FROM (	SELECT (Workers.Name + ' ' + Workers.LastName ) as Nome, SUM(ActivitiesWorkers.Hours )  AS QtdHoras
	FROM Workers 
	INNER JOIN ActivitiesWorkers ON ActivitiesWorkers.WorkerID = Workers.ID
	INNER JOIN Activities ON Activities.ID = ActivitiesWorkers.ActivityID 
	WHERE Activities.Date = '2016-07-26'  
	GROUP BY Workers.Name, Workers.LastName) A
WHERE A.QtdHoras >= 6.7
 