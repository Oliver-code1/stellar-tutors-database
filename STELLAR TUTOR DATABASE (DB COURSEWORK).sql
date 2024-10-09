/*STELLAR TUTORS' DATEBASE*/ 

------------------------------
-- Create 'guardians' table
------------------------------
CREATE TABLE guardians(
    guard_id SERIAL PRIMARY KEY,
    guard_first_name VARCHAR(50) NOT NULL,
    guard_last_name VARCHAR(50) NOT NULL,
    guard_email VARCHAR(100) UNIQUE NOT NULL,
    guard_phone VARCHAR(15) UNIQUE NOT NULL,
    guard_occupation VARCHAR(50),
    relationship_to_student VARCHAR(50) NOT NULL
);

-- Insert guardians
INSERT INTO guardians 
    (guard_first_name, guard_last_name, guard_email, guard_phone, guard_occupation, relationship_to_student) 
VALUES 
    ('Martin', 'Gyamprah', 'sgyamprah@gmail.com', '523-726-7690', 'Business Man', 'Father'),
    ('Charity', 'Okeke', 'cokeke@gmail.com', '784-909-7392', 'Engineer', 'Mother'),
    ('Emmanuel', 'Joseph', 'ejoseph@gmail.com', '489-5089-9012', NULL, 'Father'),
    ('Mohamed', 'Mohamed', 'mmohamed@gmail.com', '456-789-0123',   NULL, 'Father'),
    ('Robert', 'Johnson', 'rjohnson@gmail.com', '567-890-7932', 'Lawyer', 'Father'),
    ('Jane', 'Smith', 'jsmith@gmail.com', '678-901-3892', 'Teacher', 'Mother'),
    ('Michael', 'Brown', 'mbrown@gmail.com', '789-390-3879', 'Artist', 'Father'),
    ('Christopher', 'Lee', 'clee@gmail.com', '890-380-3892', 'Architect', 'Father'),
    ('Juan', 'Martinez', 'jmartinez@gmail.com', '901-392-5678', 'Chef', 'Father'),
    ('Richard', 'Anderson', 'randerson@gmail.com', '389-449-9833', 'Pilot', 'Father'),
    ('Jonathan', 'Wilson', 'jwilson@gmail.com', '390-390-2988', 'Entrepreneur', 'Father'),
    ('Cecillia', 'Gyamprah', 'lwilson@gmail.com', '908-093-3894', 'Consultant', 'Mother'),
    ('Michael', 'Clark', 'mclark@gmail.com', '495-488-9012', 'Firefighter', 'Father'),
    ('Maria', 'Rodriguez', 'mrodriguez@gmail.com', '393-709-3789', 'Nurse', 'Mother'),
    ('Brian', 'Thomas', 'bthomas@gmail.com', '807-378-8733', 'Plumber', 'Father'),
    ('Antonio', 'Hernandez', 'ahernandez@gmail.com', '398-901-9373', 'Mechanic', 'Father'),
    ('James', 'Young', 'jyoung@gmail.com', '789-478-3456', NULL, 'Father'),
    ('Michelle', 'Walker', 'mwalker@gmail.com', '390-387-8799', 'Psychologist', 'Mother'),
    ('Michael', 'Scott', 'mscott@gmail.com', '901-380-4892', 'Dentist', 'Father'),
    ('Rachel', 'Perez', 'rperez@gmail.com', '390-180-1902', 'Professor', 'Mother');


------------------------------
-- Create 'departments' table
------------------------------
CREATE TABLE departments(
    dept_id SERIAL PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL,
    dept_email VARCHAR(100) UNIQUE NOT NULL,
    dept_phone VARCHAR(15) UNIQUE NOT NULL
);

-- Insert departments
INSERT INTO departments 
    (dept_name, dept_email, dept_phone)
VALUES 
    ('Mathematics', 'math_dept@stellartutors.com', '546-309-4674'),
    ('Computing', 'computing_dept@stellartutors.com', '893-345-8901'),
    ('Humanities', 'humanities_dept@stellartutors.com', '232-342-9012'),
    ('Arts', 'arts_dept@stellartutors.com', '408-482-2784'),
    ('HR', 'hr_dept@stellartutors.com', '303-489-9834'),
    ('Finance', 'finance_dept@stellartutors.com', '298-674-9803');



-- Create 'staff_members' table
CREATE TABLE staff_members(
    staff_id SERIAL PRIMARY KEY,
    staff_first_name VARCHAR(50) NOT NULL,
    staff_mid_name VARCHAR(50),
    staff_last_name VARCHAR(50) NOT NULL,
    staff_address VARCHAR(50) NOT NULL,
    staff_country VARCHAR(50) NOT NULL,
    staff_email VARCHAR(100) UNIQUE NOT NULL,
    staff_phone VARCHAR(15) UNIQUE NOT NULL,
    staff_qualification VARCHAR(50) NOT NULL,
    emergency_contact VARCHAR(15) UNIQUE NOT NULL,
    staff_login_username VARCHAR(50) NOT NULL
); 



-- Insert staff_members
INSERT INTO staff_members 
    (staff_first_name, staff_mid_name, staff_last_name, staff_address, staff_country, staff_email, staff_phone, staff_qualification, emergency_contact, staff_login_username)
VALUES 
    ('John', 'Doe', 'Smith', '849 Main St', 'USA', 'john.smith@gmail.com', '478-309-3877', 'Bachelor of Science, Computer Science', '9876543210', 'johnsmith_08'),
    ('Michael', 'Annan', 'Johnson', '495 Elm St', 'Ghana', 'michael.johnson@gmail.com', '755-489-200', 'Ph.D. in Engineering', '7654321098', 'michaeljohnson_09'),
    ('Christopher', 'Bayo', 'Davis', '304 Cedar Ave', 'Nigeria', 'christopher.davis@gmail.com', '402-390-2789', 'Master of Science', '5432109876', 'christopherdavis_09'),
    ('Jane', NULL, 'Doe', '456 Oak Ave', 'USA', 'jane.doe@gmail.com', '007-395-387', 'Master of Arts, cultural studies', '8765432109', 'janedoe_01'),
    ('Emily', NULL, 'Williams', '321 Pine St', 'USA', 'emily.williams@gmail.com', '456-789-4787', 'Bachelor of Business Administration', '6543210987', 'emilyw_87'),
    ('Sarah', 'Eric', 'Brown', '890 Oakwood Ave', 'USA', 'sarah.brown@gmail.com', '678-901-4093', 'Bachelor of Arts', '4321098765', 'sarah_04'),
    ('Daniel', NULL, 'Martinez', '490 Maple St', 'USA', 'daniel.martinez@gmail.com', '390-482-589', 'Master of Business Administration', '3210987654', 'danielmartinez_45'),
    ('Amanda', NULL, 'Garcia', '492 Pine St', 'Spain', 'amanda.garcia@gmail.com', '890-147-4567', 'Doctor of Medicine', '2109876543', 'amandagarcia_30'),
    ('Matthew', NULL, 'Anderson', '409 Birch Ave', 'USA', 'matthew.anderson@gmail.com', '901-492-5678', 'Bachelor of Engineering', '1098765432', 'matthew_78'),
    ('Jessica', 'Luke', 'Wilson', '901 Cedar St', 'United Kingdom', 'jessica.wilson@gmail.com', '012-398-0943', 'Master of Fine Arts', '0987654321', 'jessi_23');



-- Create 'roles' table
CREATE TABLE roles(
    role_id SERIAL PRIMARY KEY,
    role_name VARCHAR(50) NOT NULL
);

-- Insert roles
INSERT INTO roles 
    (role_name)
VALUES 
    ('IT Support'),
    ('Head Teacher'),
    ('Teacher'),
    ('Manager');



-- Create 'courses' table
CREATE TABLE courses(
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(50) NOT NULL,
    start_course_date DATE NOT NULL,
    end_course_date DATE NOT NULL,
    course_passmark DECIMAL(6,2) NOT NULL, 
    CONSTRAINT valid_course_passmark CHECK (course_passmark > 0)
);


-- Insert courses
INSERT INTO courses 
    (course_name, start_course_date, end_course_date, course_passmark)
VALUES 
    ('Software Engineering', '2024-01-01', '2027-12-31', 70.00),
    ('Data Science', '2024-11-02', '2027-12-31', 65.00),
    ('Mathematics', '2024-03-09', '2027-06-24', 75.00),
    ('Artificial Intelligence', '2024-12-05', '2027-12-31', 60.00),
    ('Cybersecurity', '2024-01-01', '2027-07-31', 70.00),
    ('Mobile App Development', '2024-01-01', '2027-12-31', 65.00),
    ('Art History', '2024-09-10', '2027-12-31', 75.00),
    ('Machine Learning', '2024-06-11', '2027-07-25', 60.00),
    ('Software Testing', '2024-05-20', '2027-02-28', 70.00),
    ('Culture Studies', '2024-05-30', '2027-10-04', 65.00);


-- Create 'virtual_classrooms' table
CREATE TABLE virtual_classrooms(
    class_id SERIAL PRIMARY KEY,
    meeting_id VARCHAR(50) NOT NULL,
    meeting_link VARCHAR(100) NOT NULL
);

--Insert virtual_classrooms
INSERT INTO virtual_classrooms 
    (meeting_id, meeting_link)
VALUES 
    ('589-8763', 'https://stellarinstitution/meeting1'),
    ('987-5432', 'https://stellarinstitution/meeting2'),
    ('456-8912', 'https://stellarinstitution/meeting3');


-- Create 'students' table
CREATE TYPE enrolment_status_enum AS ENUM ('Enrolled', 'On Hold', 'Withdrawn', 'Graduated');
CREATE TYPE stud_level_enum AS ENUM ('Level 4','Level 5','Level 6','Level 7');
CREATE TABLE students(
    stud_id SERIAL PRIMARY KEY,
    course_id INT NOT NULL,
    stud_first_name VARCHAR(50) NOT NULL,
    stud_mid_name VARCHAR(50),
    stud_last_name VARCHAR(50) NOT NULL,
    stud_address VARCHAR(50) NOT NULL,
    stud_country VARCHAR(50) NOT NULL,
    stud_email VARCHAR(100) UNIQUE NOT NULL,
    stud_phone VARCHAR(15) UNIQUE NOT NULL,
    enrolment_status enrolment_status_enum NOT NULL,
    stud_level stud_level_enum NOT NULL,
    stud_course_credit DECIMAL(6,2) NOT NULL,
    stud_subject_credit DECIMAL (6,2) NOT NULL,
    stud_login_username VARCHAR(50) NOT NULL,
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- Inserting students with modified names
INSERT INTO students -- we will continue from here tomorrow
    (course_id, stud_first_name, stud_mid_name, stud_last_name, stud_address, stud_country, stud_email, stud_phone, enrolment_status, stud_level, stud_course_credit, stud_subject_credit, stud_login_username)
VALUES 
    (1, 'Augustine', 'Somiah', 'Gyamprah', '345 Elm St', 'Ghana', 'augustine.gyamprah@gmail.com', '473-487-2876', 'Enrolled', 'Level 6', 160.00, 78.00, 'augustine_gyamprah_25'),
    (1, 'Okeke', 'Oliver', 'Chidubem', '567 Oak Ave', 'Ghana', 'oliver.okeke@gmail.com', '448-424-4992', 'Enrolled', 'Level 7', 180.00, 90.00, 'oliver_okeke_26'),
    (1, 'Flavian', NULL, 'Joseph', '789 Elm St', 'USA', 'flavian.joseph@gmail.com', '498-345-5093', 'Enrolled', 'Level 4', 120.00, 56.00, 'flavian_joseph_27'),
    (1, 'Abdelrhman', NULL, 'Mohamed', '678 Main St', 'Ghana', 'abdelrhman.mohamed@gmail.com', '389-492-4894', 'Enrolled', 'Level 5', 140.00, 65.00, 'abdelrhman_mohamed_28'),
    (2, 'Emily', 'Rose', 'Johnson', '456 Oakwood Ave', 'USA', 'emily.johnson@gmail.com', '095-783-4884', 'Enrolled', 'Level 6', 160.00, 78.00, 'emily_johnson_29'),
    (2, 'Michael', 'James', 'Smith', '678 Pine St', 'USA', 'michael.smith@gmail.com', '590-901-4034', 'Enrolled', 'Level 7', 180.00, 90.00, 'michael_smith_30'),
    (3, 'Ashley', 'Marie', 'Brown', '890 Cedar Ave', 'USA', 'ashley.brown@gmail.com', '689-389-2684', 'Enrolled', 'Level 4', 120.00, 56.00, 'ashley_brown_31'),
    (3, 'Joshua', 'David', 'Lee', '901 Birch St', 'Canada', 'joshua.lee@gmail.com', '890-7498-4567', 'Enrolled', 'Level 5', 140.00, 65.00, 'joshua_lee_32'),
    (4, 'Samantha', 'Marie', 'Martinez', '389 Oakwood Ave', 'Mexico', 'samantha.martinez@gmail.com', '901-489-9853', 'Enrolled', 'Level 6', 160.00, 78.00, 'samantha_martinez_33'),
    (4, 'David', 'Matthew', 'Anderson', '458 Elm St', 'USA', 'david.anderson@gmail.com', '985-384-5599', 'Enrolled', 'Level 7', 180.00, 90.00, 'david_anderson_34'),
    (5, 'Angela', NULL, 'Gyamprah', '478 Cedar Ave', 'Canada', 'sarah.wilson@gmail.com', '437-456-7890', 'Enrolled', 'Level 4', 120.00, 56.00, 'sarah_wilson_35'),
    (5, 'Christopher', 'John', 'Taylor', '901 Pine St', 'Canada', 'christopher.taylor@gmail.com', '480-567-8901', 'Enrolled', 'Level 5', 140.00, 65.00, 'christopher_taylor_36'),
    (6, 'Jessica', 'Lynn', 'Clark', '373 Birch St', 'USA', 'jessica.clark@gmail.com', '443-456-9012', 'Enrolled', 'Level 6', 160.00, 78.00, 'jessica_clark_37'),
    (6, 'Matthew', 'Ryan', 'Rodriguez', '456 Cedar Ave', 'Mexico', 'matthew.rodriguez@gmail.com', '456-789-5875', 'Enrolled', 'Level 7', 180.00, 90.00, 'matthew_rodriguez_38'),
    (7, 'Lauren', 'Ashley', 'Thomas', '459 Oak St', 'USA', 'lauren.thomas@gmail.com', '857-890-3876', 'Enrolled', 'Level 4', 120.00, 56.00, 'lauren_thomas_39'),
    (7, 'Ryan', 'Christopher', 'Hernandez', '789 Elm Ave', 'Mexico', 'ryan.hernandez@gmail.com', '678-901-4873', 'Enrolled', 'Level 5', 140.00, 65.00, 'ryan_hernandez_40'),
    (8, 'Amanda', 'Marie', 'Young', '990 Pine St', 'USA', 'amanda.young@gmail.com', '980-392-2149', 'Enrolled', 'Level 6', 160.00, 78.00, 'amanda_young_41'),
    (9, 'Daniel', 'Joseph', 'Walker', '478 Cedar Ave', 'Canada', 'daniel.walker@gmail.com', '378-759-5850', 'Enrolled', 'Level 7', 180.00, 90.00, 'daniel_walker_42'),
    (9, 'Elizabeth', 'Anne', 'Scott', '575 Elm St', 'USA', 'elizabeth.scott@gmail.com', '901-392-5678', 'Enrolled', 'Level 4', 120.00, 56.00, 'elizabeth_scott_43'),
    (10, 'Kevin', 'Michael', 'Perez', '673 Elm St', 'USA', 'kevin.perez@gmail.com', '901-398-5678', 'Enrolled', 'Level 5', 140.00, 65.00, 'kevin_perez_44');



-- Create 'subjects' table 
CREATE TYPE duration_enum AS ENUM ('Semester-long', 'Year-long');
CREATE TABLE subjects(
    sub_id SERIAL PRIMARY KEY,
    staff_id INT NOT NULL,
    sub_name VARCHAR(50) NOT NULL, 
    sub_duration duration_enum NOT NULL,
    sub_passmark DECIMAL(6,2) NOT NULL, --will make some changes here
    CONSTRAINT valid_sub_passmark CHECK (sub_passmark > 0),
    FOREIGN KEY (staff_id) REFERENCES staff_members(staff_id)
);
-- Insert subjects
INSERT INTO subjects 
    (staff_id, sub_name, sub_duration, sub_passmark)
VALUES 
    (1, 'Programming', 'Semester-long', 70.00),
    (1, 'Data Mining and Analytics', 'Year-long', 65.00),
    (1, 'Database system development', 'Year-long', 60.00),
    (2, 'Advanced Calculus', 'Semester-long', 75.00),
    (3, 'Network Security', 'Semester-long', 70.00),
    (3, 'Mobile Application Development', 'Year-long', 65.00),
    (3, 'Software Quality Assurance', 'Semester-long', 70.00),
    (4, 'Deep Learning', 'Year-long', 60.00),
    (4, 'Renaissance Art', 'Semester-long', 75.00),
    (4, 'Cultural Anthropology', 'Semester-long', 65.00);

-- Create 'sessions' table
CREATE TABLE sessions(
    session_id SERIAL PRIMARY KEY,
    staff_id INT NOT NULL,
    class_id INT NOT NULL,
    sub_id INT NOT NULL,
    session_duration VARCHAR(15) NOT NULL,
    session_date DATE NOT NULL,
    session_start_time TIME NOT NULL,
    session_end_time TIME NOT NULL,
    FOREIGN KEY (staff_id) REFERENCES staff_members(staff_id),
    FOREIGN KEY (class_id) REFERENCES virtual_classrooms(class_id),
    FOREIGN KEY (sub_id) REFERENCES subjects(sub_id)
);

-- Insert sessions
INSERT INTO sessions 
    (staff_id, class_id, sub_id, session_duration, session_date, session_start_time, session_end_time)
VALUES 
    (1, 1, 1, '2 hours', '2024-09-15', '09:00', '11:00'),
    (1, 2, 2, '1.5 hours', '2024-09-16', '14:00', '15:30'),
    (1, 1, 3, '2 hours', '2024-09-17', '10:00', '12:00'),
    (2, 1, 4, '1.5 hours', '2024-09-18', '11:30', '13:00'),
    (3, 2, 5, '2 hours', '2024-09-19', '13:00', '15:00'),
    (3, 2, 6, '1.5 hours', '2024-09-20', '09:30', '11:00'),
    (3, 2, 7, '2 hours', '2024-09-21', '10:00', '12:00'),
    (4, 3, 8, '1.5 hours', '2024-09-22', '11:30', '13:00'),
    (4, 3, 9, '2 hours', '2024-09-23', '13:00', '15:00'),
    (4, 1, 10, '1.5 hours', '2024-09-24', '09:30', '11:00');

-- Create 'attendances' table
CREATE TYPE status_enum AS ENUM ('present', 'half present', 'absent');
CREATE TABLE attendances(
    attend_id SERIAL PRIMARY KEY,
    stud_id INT NOT NULL,
    attend_status status_enum NOT NULL,
    reason_for_absence VARCHAR(100),
    attend_percentage DECIMAL(6,2) NOT NULL,
    FOREIGN KEY (stud_id) REFERENCES students(stud_id)
);

-- Insert attendances
INSERT INTO attendances --we will come back to it
    (stud_id, attend_status, reason_for_absence, attend_percentage)
VALUES 
    (1, 'present', NULL, 100.00),
    (2, 'half present', 'Doctor appointment', 50.00),
    (3, 'absent', 'Family emergency', 0.00),
    (4, 'present', NULL, 100.00),
    (5, 'present', NULL, 100.00),
    (6, 'absent', 'Sick leave', 0.00),
    (7, 'present', NULL, 100.00),
    (8, 'present', NULL, 100.00),
    (9, 'half present', 'Late arrival', 50.00),
    (10, 'absent', 'Car breakdown', 0.00),
    (11, 'present', NULL, 100.00),
    (12, 'present', NULL, 100.00),
    (13, 'absent', 'Internet connectivity issue', 0.00),
    (14, 'present', NULL, 100.00),
    (15, 'present', NULL, 100.00),
    (16, 'absent', 'Work commitment', 0.00),
    (17, 'present', NULL, 100.00),
    (18, 'present', NULL, 100.00),
    (19, 'half present', 'Personal reasons', 50.00),
    (20, 'absent', 'Power outage', 0.00);

-- Create 'online_assessments' table
CREATE TYPE assessment_enum AS ENUM ('Quiz', 'Project', 'Midterm Exam', 'Final Exam');
CREATE TABLE online_assessments(
    assessment_id SERIAL PRIMARY KEY,
    sub_id INT NOT NULL,
    assessment_type assessment_enum NOT NULL,
    submission_deadline DATE,
    FOREIGN KEY (sub_id) REFERENCES subjects(sub_id)
);

-- Insert online assessments
INSERT INTO online_assessments
    (sub_id, assessment_type, submission_deadline)
VALUES 
    (1, 'Quiz', NULL),
    (1, 'Project', '2024-12-10'),
    (1, 'Midterm Exam', NULL),
    (1, 'Final Exam', NULL),
    (2, 'Quiz', '2024-06-30'),
    (2, 'Project', '2024-11-15'),
    (3, 'Midterm Exam', '2024-09-25'),
    (3, 'Final Exam', NULL),
    (4, 'Quiz', '2024-07-20'),
    (4, 'Project', '2024-08-30'),
    (5, 'Midterm Exam', '2024-09-10'),
    (5, 'Final Exam', NULL),
    (6, 'Quiz', '2024-07-25'),
    (6, 'Project', '2024-10-05'),
    (7, 'Midterm Exam', '2024-08-20'),
    (7, 'Final Exam', NULL),
    (8, 'Quiz', '2024-07-15'),
    (9, 'Project', '2024-08-05'),
    (10, 'Midterm Exam', '2024-07-10'),
    (10, 'Final Exam', NULL);

-- Create 'progress_reports' table
CREATE TABLE progress_reports(
    prog_id SERIAL PRIMARY KEY,
    course_id INT NOT NULL,
    stud_id INT NOT NULL,
    report_date DATE NOT NULL,
    overall_progress DECIMAL(6,2) NOT NULL,
    strength VARCHAR(100) NOT NULL,
    area_for_improvement VARCHAR(100),
    FOREIGN KEY (course_id) REFERENCES courses(course_id),
    FOREIGN KEY (stud_id) REFERENCES students(stud_id)   
);

-- Insert progress_reports
INSERT INTO progress_reports 
    (course_id, stud_id, report_date, overall_progress, strength, area_for_improvement)
VALUES 
    (1, 1, '2024-09-15', 85.00, 'Good understanding of programming concepts', NULL),
    (1, 2, '2024-09-15', 75.00, 'Excellent problem-solving skills', NULL),
    (1, 2, '2024-09-25', 70.00, 'Good understanding of historical context', 'Needs more engagement in class discussions'),
    (1, 3, '2024-09-20', 90.00, 'Strong grasp of statistical methods', 'Should work on interpreting data visualizations better'),
    (1, 4, '2024-09-20', 80.00, 'Great understanding of machine learning algorithms', 'Needs more practice in feature engineering'),
    (2, 5, '2024-09-25', 85.00, 'Excellent analytical skills', 'Should focus on improving written communication'),
    (2, 6, '2024-09-25', 70.00, 'Good understanding of historical context', 'Needs more engagement in class discussions'),
    (3, 7, '2024-10-01', 80.00, 'Strong creativity and originality in artwork', 'Needs to work on time management during exams'),
    (3, 8, '2024-10-01', 75.00, 'Shows promise in experimenting with different art techniques', 'Needs to develop a deeper understanding of art history'),
    (4, 9, '2024-10-05', 90.00, 'Excellent knowledge of cybersecurity fundamentals', 'Needs to pay attention to emerging threats and trends'),
    (4, 10, '2024-10-05', 85.00, 'Good understanding of network security protocols', 'Should focus on improving coding skills in cybersecurity applications'),
    (5, 11, '2024-11-15', 70.00, 'Solid understanding of mobile app architecture', 'Needs more practice in UI/UX design'),
    (5, 12, '2024-11-30', 80.00, 'Solid understanding of art movements and styles', 'Needs more engagement in class discussions'),
    (6, 13, '2024-12-10', 75.00, 'Good understanding of supervised learning algorithms', 'Needs more practice in unsupervised learning'),
    (6, 14, '2024-12-20', 85.00, 'Good grasp of feature engineering techniques', 'Should work on understanding bias and fairness in ML models'),
    (7, 15, '2024-12-25', 85.00, 'Solid understanding of software testing methodologies', 'Needs more practice in test automation'),
    (7, 16, '2024-12-30', 80.00, 'Strong understanding of performance testing', 'Should work on understanding security testing techniques'),
    (8, 17, '2025-01-04', 85.00, 'Good analytical skills in software quality assurance', 'Needs more practice in test planning and strategy'),
    (9, 18, '2025-01-04', 70.00, 'Solid understanding of cultural diversity and globalization', 'Needs more engagement in cultural events and activities'),
    (9, 19, '2025-01-09', 80.00, 'Good knowledge of cultural anthropology', 'Should focus on understanding contemporary cultural issues'),
    (10, 20, '2025-01-09', 75.00, 'Shows promise in cross-cultural communication', 'Needs to work on cultural sensitivity and awareness');

-- Create 'academic_needs' table
CREATE TABLE academic_needs(
    need_id SERIAL PRIMARY KEY,
    stud_id INT NOT NULL, 
    need_description VARCHAR (100),
    FOREIGN KEY(stud_id) REFERENCES students(stud_id)
);

-- Insert academic_needs
INSERT INTO academic_needs 
    (stud_id, need_description)
VALUES 
    (1, NULL),
    (2, 'Guidance in developing presentation skills'),
    (3, 'Support in understanding complex computer concepts'),
    (4, 'Help with time management and study skills'),
    (5, NULL),
    (6, NULL),
    (7, 'Tutoring in art techniques and art history'),
    (8, NULL),
    (9, NULL),
    (10, 'Additional support in computer programming'),
    (11, 'Help with critical thinking and analysis'),
    (12, 'Tutoring in advanced mathematics topics'),
    (13, NULL),
    (14, NULL),
    (15, 'Guidance in developing presentation skills'),
    (16, NULL),
    (17, 'Tutoring in economics principles'),
    (18, NULL),
    (19, NULL),
    (20, 'Guidance in understanding philosophical concepts');

-- Create 'health_records' table 
CREATE TABLE health_records(
    health_record_id SERIAL PRIMARY KEY,
    stud_id INT NOT NULL,
    medical_condition VARCHAR(100),
    allergies VARCHAR(50),
    special_health_needs VARCHAR(100),
    emergency_contact_name VARCHAR(50) NOT NULL,
    emergency_contact_relationship VARCHAR(50),
    emergency_contact_phone VARCHAR(15) UNIQUE NOT NULL,
    FOREIGN KEY (stud_id) REFERENCES students(stud_id)
);

-- Insert health_records
INSERT INTO health_records 
    (stud_id, medical_condition, allergies, special_health_needs, emergency_contact_name, emergency_contact_relationship, emergency_contact_phone)
VALUES 
    (1, NULL, NULL, NULL, 'Martin', 'Father', '095-839-1982'),
    (2, NULL, NULL, NULL, 'Oliver', 'Father', '392-487-3792'),
    (3, 'Asthma', 'Pollen', 'Requires inhaler', 'Joseph', 'Father', '791-301-2874'),
    (4, 'High Blood Pressure', 'Penicillin', 'Requires regular medication', 'Mohamed', 'Father', '334-567-4456'),
    (5, 'Diabetes', 'Peanuts', 'Requires insulin shots', 'Johnson ', 'Father', '380-092-4792'),
    (6, 'Eczema', 'Dust', NULL, 'Jane ', 'Mother', '387-298-3299'),
    (7, NULL, NULL, NULL, 'Kingsley', 'Uncle', '238-399-2683'),
    (8, NULL, NULL, NULL, 'Christopher', 'Father', '293-982-3298'),
    (9, NULL, NULL, NULL, 'Juan', 'Father', '901-379-4992'),
    (10, 'Severe Allergy', 'Shellfish', 'Carries EpiPen', 'Richard', 'Father', '683-983-3979'),
    (11, NULL, NULL, NULL, 'Jonathan', 'Father', '289-726-3893'),
    (12, 'Asthma', 'Dust', 'Requires inhaler', 'Laura', 'Sister', '353-478-8901'),
    (13, NULL, NULL, NULL, 'Michael', 'Father', '784-409-3985'),
    (14, NULL, NULL, NULL, 'Maria', 'Mother', '402-389-884'),
    (15, 'Seasonal Allergies', 'Pollen', 'Carries antihistamines', 'Frank', 'Uncle', '492-392-3787'),
    (16, NULL, NULL, NULL, 'Antonio', 'Father', '489-901-4982'),
    (17, NULL, NULL, NULL, 'Desmond', 'Uncle', '492-949-8328'),
    (18, NULL, NULL, NULL, 'Esther', 'Sister', '502-860-4845'),
    (19, NULL, NULL, NULL, 'Michael', 'Father', '901-583-4982'),
    (20, 'Nut Allergy', 'Nuts', 'Carries EpiPen', 'Rachel', 'Mother', '894-849-9848');


-- Create 'billing_and_payments' table
CREATE TYPE payment_methods_enum AS ENUM ('Credit Card', 'Debit Card', 'PayPal', 'Bank Transfer');
CREATE TYPE payment_status_enum AS ENUM ('Pending', 'Completed', 'Failed', 'Refunded');
CREATE TABLE billing_and_payments(
    transaction_id SERIAL PRIMARY KEY,
    stud_id INT NOT NULL,
    amount DECIMAL(6,2) NOT NULL,
    transaction_type VARCHAR(50) NOT NULL,
    payment_date DATE NOT NULL,
    payment_methods payment_methods_enum NOT NULL,
    payment_status payment_status_enum NOT NULL,
    FOREIGN KEY(stud_id) REFERENCES students(stud_id)
);

-- Insert billing_and_payments
INSERT INTO billing_and_payments -- we will work on this
    (stud_id, amount, transaction_type, payment_date, payment_methods, payment_status)
VALUES 
    (1, 100.00, 'Tuition Fee', '2024-01-15', 'Credit Card', 'Completed'),
    (2, 120.00, 'Book Purchase', '2024-02-20', 'Debit Card', 'Completed'),
    (3, 150.00, 'School Supplies', '2024-03-25', 'PayPal', 'Completed'),
    (4, 110.00, 'Miscellaneous', '2024-04-30', 'Bank Transfer', 'Completed'),
    (5, 130.00, 'Tuition Fee', '2024-05-15', 'Credit Card', 'Completed'),
    (6, 100.00, 'Book Purchase', '2024-06-20', 'Debit Card', 'Completed'),
    (7, 120.00, 'Tuition Fee', '2024-07-25', 'PayPal', 'Completed'),
    (8, 140.00, 'School Supplies', '2024-08-30', 'Bank Transfer', 'Completed'),
    (9, 160.00, 'Miscellaneous', '2024-09-15', 'Credit Card', 'Completed'),
    (10, 100.00, 'Tuition Fee', '2024-10-20', 'Debit Card', 'Completed'),
    (11, 120.00, 'Book Purchase', '2024-11-25', 'PayPal', 'Completed'),
    (12, 130.00, 'Tuition Fee', '2024-12-30', 'Bank Transfer', 'Completed'),
    (13, 110.00, 'School Supplies', '2025-01-15', 'Credit Card', 'Completed'),
    (14, 150.00, 'Miscellaneous', '2025-02-20', 'Debit Card', 'Completed'),
    (15, 170.00, 'Tuition Fee', '2025-03-25', 'PayPal', 'Completed'),
    (16, 100.00, 'Book Purchase', '2025-04-30', 'Bank Transfer', 'Completed'),
    (17, 120.00, 'Tuition Fee', '2025-05-15', 'Credit Card', 'Completed'),
    (18, 130.00, 'School Supplies', '2025-06-20', 'Debit Card', 'Completed'),
    (19, 140.00, 'Miscellaneous', '2025-07-25', 'PayPal', 'Completed'),
    (20, 160.00, 'Tuition Fee', '2025-08-30', 'Bank Transfer', 'Completed');

-- Create 'staff_departments' table
CREATE TABLE staff_departments(
    staff_id INT NOT NULL REFERENCES staff_members(staff_id),
    dept_id INT NOT NULL REFERENCES departments(dept_id),
    PRIMARY KEY (staff_id, dept_id)
);

-- INSERT INTO staff_departments
INSERT INTO staff_departments 
    (staff_id, dept_id)
VALUES 
    (1, 2), 
    (2, 1),
    (3, 2),
    (4, 3),
    (5, 2),
    (6, 4),
    (7, 6),
    (8, 3),
    (9, 2),
    (10, 4);
 
-- Create 'student_sessions' table
CREATE TABLE student_sessions(
    stud_id INT NOT NULL REFERENCES students(stud_id),
    session_id INT NOT NULL REFERENCES sessions(session_id),
    PRIMARY KEY (stud_id, session_id)
);

-- Insert into 'student_sessions' table
INSERT INTO student_sessions 
    (stud_id, session_id)
VALUES 
    (1, 1),
    (2, 10),
    (3, 1),
    (4, 1),
    (5, 2),
    (6, 3),
    (7, 4),
    (8, 4),
    (9, 9),
    (10, 9),
    (11, 5),
    (12, 5),
    (13, 6),
    (14, 7),
    (15, 8),
    (16, 8),
    (17, 2),
    (18, 2),
    (19, 3),
    (20, 3);


-- Create 'student_guardians' table
CREATE TABLE student_guardians(
    stud_id INT NOT NULL REFERENCES students(stud_id),
    guard_id INT NOT NULL REFERENCES guardians(guard_id),
    PRIMARY KEY (stud_id, guard_id)
);

-- Insert into 'student_guardians' table
INSERT INTO student_guardians 
    (stud_id, guard_id)
VALUES 
    (1, 1),
    (1, 11),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10),
    (11, 11),
    (12, 11),
    (12, 1),
    (13, 13),
    (14, 14),
    (15, 15),
    (16, 16),
    (17, 17),
    (18, 18),
    (19, 19),
    (20, 20);

-- Create 'staff_roles' table
CREATE TABLE staff_roles(
    staff_id INT NOT NULL REFERENCES staff_members(staff_id),
    role_id INT NOT NULL REFERENCES roles(role_id),
    PRIMARY KEY (staff_id, role_id)
);

-- Insert into 'staff_roles' table
INSERT INTO staff_roles 
    (staff_id, role_id)
VALUES 
    (1, 1),
    (2, 2),
    (2, 3),
    (3, 3),
    (4, 3),
    (5, 4),
    (6, 2),
    (7, 3),
    (8, 3),
    (9, 2),
    (10, 2);

-- Create 'student_subjects' table
CREATE TABLE student_subjects(
    stud_id INT NOT NULL REFERENCES students(stud_id),
    sub_id INT NOT NULL REFERENCES subjects(sub_id),
    PRIMARY KEY (stud_id, sub_id)
);

-- Insert into 'student_subjects' table
INSERT INTO student_subjects 
    (stud_id, sub_id)
VALUES 
    (1, 1),
    (1, 2),
    (2, 1),
    (3, 1),
    (4, 1),
    (5, 2),
    (6, 2),
    (7, 3),
    (8, 3),
    (9, 4),
    (9, 1),
    (10, 4),
    (11, 4),
    (12, 5),
    (13, 5),
    (14, 6),
    (15, 6),
    (16, 7),
    (17, 6),
    (18, 8),
    (19, 9),
    (19, 10),
    (20, 10);

-- Create 'course_subjects' table
CREATE TABLE course_subjects(
    course_id INT NOT NULL REFERENCES courses(course_id),
    sub_id INT NOT NULL REFERENCES subjects(sub_id),
    PRIMARY KEY (course_id, sub_id)
);


-- Insert into 'course_subjects' table
INSERT INTO course_subjects 
    (course_id, sub_id)
VALUES 
    (1, 1),
    (1, 2),
    (1, 3),
    (2, 2),
    (2, 3),
    (3, 4),
    (4, 1),
    (5, 1),
    (5, 5),
    (6, 1),
    (6, 6),
    (7, 9),
    (7, 10),
    (8, 8),
    (9, 7),
    (10, 9),
    (10, 10);
