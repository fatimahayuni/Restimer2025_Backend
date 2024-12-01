-- Creating the Users Table
CREATE TABLE Users (
    user_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    role VARCHAR(50) NOT NULL
);

-- Creating the Schedules Table
CREATE TABLE Schedules (
    schedule_id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES Users(user_id),
    date DATE NOT NULL,
    start_time TIME NOT NULL,
    first_break_start TIME NOT NULL,
    first_break_end TIME NOT NULL,
    lunch_start TIME NOT NULL,
    lunch_end TIME NOT NULL,
    second_break_start TIME NOT NULL,
    second_break_end TIME NOT NULL,
    end_time TIME NOT NULL
);

-- Creating the Logs Table
CREATE TABLE Logs (
    log_id SERIAL PRIMARY KEY,
    schedule_id INTEGER REFERENCES Schedules(schedule_id),
    timestamp TIMESTAMP NOT NULL,
    event_type VARCHAR(50) NOT NULL,
    details TEXT
);

-- Creating indexes for optimized queries
CREATE INDEX idx_user_id ON Schedules(user_id);
CREATE INDEX idx_schedule_id ON Logs(schedule_id);
CREATE UNIQUE INDEX idx_users_email ON Users(email);
