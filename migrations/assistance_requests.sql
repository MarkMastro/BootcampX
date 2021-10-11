create table assignment_requests(
  id SERIAL PRIMARY KEY NOT NULL,
  assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE,
  student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
  teacher_id INTEGER REFERENCES teachers(id) ON DELETE CASCADE,
  created_at timestamp,
  started_at timestamp,
  completed_at timestamp,
  student_feedback text,
  teacher_feedback text
)