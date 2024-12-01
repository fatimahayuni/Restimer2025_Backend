-- Inserting mock data into the Users table
INSERT INTO Users (name, email, role) VALUES
('Alice Johnson', 'alice.johnson@example.com', 'scheduler'),
('Bob Smith', 'bob.smith@example.com', 'agent'),
('Charlie Brown', 'charlie.brown@example.com', 'agent');

-- Inserting mock data into the Schedules table
INSERT INTO Schedules (user_id, date, start_time, first_break_start, first_break_end, 
                       lunch_start, lunch_end, second_break_start, second_break_end, end_time) VALUES
(1, '2024-12-01', '09:00:00', '10:30:00', '10:45:00', '12:00:00', '13:00:00', '15:00:00', '15:15:00', '17:00:00'),
(2, '2024-12-02', '09:15:00', '10:45:00', '11:00:00', '12:15:00', '13:15:00', '15:15:00', '15:30:00', '17:15:00'),
(3, '2024-12-03', '08:30:00', '10:00:00', '10:15:00', '12:30:00', '13:30:00', '14:45:00', '15:00:00', '16:45:00');

-- Inserting mock data into the Logs table
INSERT INTO Logs (schedule_id, timestamp, event_type, details) VALUES
(1, '2024-12-01 09:00:00', 'work started', 'Work started on schedule for Alice Johnson'),
(1, '2024-12-01 10:30:00', 'break started', 'First break for Alice Johnson'),
(1, '2024-12-01 10:45:00', 'break ended', 'First break ended for Alice Johnson'),
(1, '2024-12-01 12:00:00', 'lunch started', 'Lunch break for Alice Johnson'),
(1, '2024-12-01 13:00:00', 'lunch ended', 'Lunch break ended for Alice Johnson'),
(2, '2024-12-02 09:15:00', 'work started', 'Work started on schedule for Bob Smith'),
(2, '2024-12-02 10:45:00', 'break started', 'First break for Bob Smith'),
(2, '2024-12-02 11:00:00', 'break ended', 'First break ended for Bob Smith'),
(3, '2024-12-03 08:30:00', 'work started', 'Work started on schedule for Charlie Brown');
