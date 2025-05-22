CREATE TABLE tasks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    due_date DATE,
    status ENUM('pending', 'in_progress', 'completed') DEFAULT 'pending',
    priority TINYINT UNSIGNED,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO tasks (title, description, due_date, status, priority) VALUES
('Website redesign', 'Redesign de homepage en contactpagina', '2025-06-01', 'in_progress', 2),
('Back-up database', 'Maak weekelijkse back-up van de productiedatabase', '2025-05-20', 'pending', 1),
('Marketingcampagne', 'Start social media campagne voor nieuwe feature', '2025-05-25', 'pending', 3),
('Code review', 'Review pull requests van het team', '2025-05-16', 'in_progress', 2),
('Deployment', 'Deploy de nieuwste release naar productie', '2025-05-18', 'pending', 1);

SELECT id, title, status, priority, due_date FROM tasks;
SELECT title, description, id, created_at, status FROM tasks;
SELECT status, priority, title, due_date, id FROM tasks;
