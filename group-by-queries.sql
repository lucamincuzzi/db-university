-- Count degli iscritti per anno
SELECT YEAR(`students`.`enrolment_date`) AS `year_of_enrolment`, COUNT(*) AS `n_enrolments`
FROM `students`
GROUP BY YEAR(`students`.`enrolment_date`);

-- Count degli insegnanti per edificio
SELECT COUNT(*) AS `n_of_teachers`, `teachers`.`office_address` AS `building_address`
FROM `teachers`
GROUP BY `teachers`.`office_address`;

-- Media dei voti di ogni appello d'esame
SELECT `exam_student`.`exam_id` AS `exam`, AVG(`exam_student`.`vote`) AS `vote_avg`
FROM `exam_student`
GROUP BY `exam_student`.`exam_id`;

-- Count dei corsi di laurea per ogni dipartimento
SELECT `degrees`.`department_id`, COUNT(*) AS `n_of_degrees`
FROM `degrees`
GROUP BY `degrees`.`department_id`;