


 SELECT ( Workers.Name +  ' ' + Workers.LastName ) as Nome , a.QtdHoras as Horas
 FROM  (SELECT MAX(ActivitiesWorkers.Hours) AS QtdHoras
		 FROM   ActivitiesWorkers) AS a, Workers,ActivitiesWorkers
		 WHERE ActivitiesWorkers.Hours = a.QtdHoras
		  AND ActivitiesWorkers.WorkerID = Workers.ID
		 GROUP by Workers.Name, Workers.LastName , a.QtdHoras

 
