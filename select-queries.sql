1. -- Selezione di tutti gli studenti nati nell'anno 1990
SELECT `name`, `surname`, `fiscal_code`, YEAR(`date_of_birth`) AS `birth_year`
FROM students
WHERE YEAR(`date_of_birth`) = 1990;

2. -- Selezione di tutti i corsi che valgono più di 10 CFU
SELECT *
FROM courses
WHERE `cfu` > 10;

3. -- Selezione di tutti gli studenti che hanno più di 30 anni
SELECT `name`, `surname`, `fiscal_code`, `date_of_birth`
FROM students
WHERE DATEDIFF(CURDATE(), `date_of_birth`) >= 365 * 31
ORDER BY `date_of_birth` DESC;

4. -- Selezione di tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laurea
SELECT *
FROM courses
WHERE `period` = 'I semestre' AND `year` = 1;

5. -- Selezione di tutti gli appelli d'esame che avvengono nel pomeriggio (dopo le 14:00) del 20/06/2020
SELECT `id`, `course_id`, `date`, `hour`
FROM exams
WHERE `date` = '2020-06-20' AND `hour` >= '14:00:00'
ORDER BY `hour` ASC;

6. -- Selezione di tutti i corsi di laurea magistrale
SELECT `name` as `degree_course_name`
FROM degrees
WHERE `level` = 'magistrale';

7. -- Count dei dipartimenti dell'università
SELECT COUNT(*) as `n_departments`
FROM departments;

8. -- Count degli insegnanti che non hanno un numero di telefono
SELECT COUNT(*) as `n_teachers_w/o_phone_number`
FROM teachers
WHERE `phone` IS NULL;