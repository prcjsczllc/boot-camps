CREATE TABLE student_family_deaths (
	student_no INTEGER PRIMARY KEY,
	death_none BOOLEAN,
	death_midterm BOOLEAN,
	death_final BOOLEAN
);
CREATE TABLE student_grades (
	student_no INTEGER PRIMARY KEY,
	grade REAL,
	letter_grade TEXT
);
