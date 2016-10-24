CREATE TABLE Groups (
        id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
        message TEXT,
        m_groups TEXT
    );

CREATE TABLE Partner_info (
        id  INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
        partner_name TEXT,
        tel_no TEXT,
        Groups_id INTEGER
    );

CREATE TABLE Reports (
        id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
        partner_id INTEGER,
        send_time DATE,
        delivery_status TEXT,
        report_time DATE 
        
    );

INSERT INTO Groups (message, m_groups) VALUES ("This is a Message for Group 1", "Group 1");
INSERT INTO Groups (message, m_groups) VALUES ("This is a Message for Group 2", "Group 2");
INSERT INTO Groups (message, m_groups) VALUES ("This is a Message for Group 3", "Group 3");
INSERT INTO Groups (message, m_groups) VALUES ("This is a Message for Group 4", "Group 4");
INSERT INTO Groups (message, m_groups) VALUES ("This is a Message for Group 5", "Group 5");

INSERT INTO Partner_info (partner_name, tel_no, Groups_id) VALUES ("Company A", "08022222222", "1");
INSERT INTO Partner_info (partner_name, tel_no, Groups_id) VALUES ("Company B", "08033333333", "1");
INSERT INTO Partner_info (partner_name, tel_no, Groups_id) VALUES ("Company C", "08044444444", "3");
INSERT INTO Partner_info (partner_name, tel_no, Groups_id) VALUES ("Company D", "08055555555", "4");

INSERT INTO Reports (partner_id, delivery_status, send_time, report_time) VALUES ("1", "message delivered", "24/10/2016 17:13:33",  "25/10/2016 17:13:33");
INSERT INTO Reports (partner_id, delivery_status, send_time, report_time) VALUES ("2", "message delivered", "24/10/2016 17:13:33",  "25/10/2016 17:13:33");
INSERT INTO Reports (partner_id, delivery_status, send_time, report_time) VALUES ("3", "message pending", "24/10/2016 17:13:33",  "24/10/2016 17:13:33");
INSERT INTO Reports (partner_id, delivery_status, send_time, report_time) VALUES ("4", "message failed", "24/10/2016 17:13:33",  "25/10/2016 17:13:33")