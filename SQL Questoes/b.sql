--SELECT Projects.Name, SUM(ActivitiesWorkers.Hours)
--FROM  Projects , Activities,ActivitiesWorkers
--WHERE Projects.ID = Activities.ProjectID  AND
--      Activities.ID = ActivitiesWorkers.ActivityID AND
--	  Activities.Date = '2016-07-27'
--GROUP BY  (Projects.Name)



SELECT Projects.Name  as Nome, SUM(ActivitiesWorkers.Hours )  AS QtdHoras
	FROM Projects 
	INNER JOIN Activities ON Activities.ProjectID = Projects.ID
	INNER JOIN ActivitiesWorkers ON ActivitiesWorkers.ActivityID = Activities.ID 
	WHERE Activities.Date = '2016-07-27'  
	GROUP BY Projects.Name
 

 