SELECT DISTINCT t.worker_title
FROM title AS t
INNER JOIN worker AS w ON t.worker_ref_id = w.worker_id
WHERE
    w.salary = (
        SELECT MAX(w.salary) AS highest_salary
        FROM worker AS w
        INNER JOIN title AS t ON w.worker_id = t.worker_ref_id
    )


    -- select 
    --     max(w.salary) highest_salary
    -- from worker w
    -- join title t on w.worker_id = t.worker_ref_id
