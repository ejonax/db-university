/* 1-Contare quanti iscritti ci sono stati ogni anno */
select count(*) as cnt_iscritti,year(enrolment_date)
from students
group by year(enrolment_date);

/* 2 - Contare gli insegnanti che hanno l'ufficio nello stesso edificio*/
select count(*) as cnt_insegnanti, office_number
from teachers
group by office_number
order by count(*);

/* 3 - Calcolare la media dei voti di ogni appello d'esame */
select avg(vote) as media_voto,exam_id
from exam_student
group by exam_id
order by exam_id;

/* 4 - Contare quanti corsi di laurea ci sono per ogni dipartimento */
select count(*) as cnt_corsi, department_id
from degrees
group by department_id
order by department_id;

