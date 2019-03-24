
SELECT Projects.Name,  isnull(Sum(ActivitiesWorkers.Hours), 0) as QtdHoras
FROM Projects
LEFT OUTER JOIN Activities ON Activities.ProjectID = Projects.ID
LEFT  OUTER JOIN ActivitiesWorkers ON ActivitiesWorkers.ActivityID = Activities.ID
GROUP BY Projects.Name 