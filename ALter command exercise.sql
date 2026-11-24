Drop database if exists DDL_Commands;
create DATABASE DDL_Commands;
use  DDL_Commands;

CREATE TABLE my_table(
id INT,
name VARCHAR(100) Not NULL,
age int NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO my_table (id, name, age) VALUES
(1, 'Rohit', 25),
(2, 'Sachin', 35),
(3, 'Vikas', 28);

-- Create my_table2
-- Create my_table2
CREATE TABLE my_table2(
    id INT,
    description VARCHAR(255) NOT NULL
);

-- Insert data into my_table2
INSERT INTO my_table2 (id, description) VALUES
(1, 'Item 1'),
(2, 'Item 2'),
(3, 'Item 3');

alter table my_table rename column name to full_name;
alter table my_table modify age bigint not null;
alter table my_table add email varchar(100);
alter table my_table add middle_name varchar(50) after full_name;
alter table my_table add emp_rank int first;
alter table my_table modify created_at datetime default current_timestamp;
alter table my_table2 modify description text not null; 
alter table my_table modify full_name varchar(100) null;
alter table my_table add primary key (id);
alter table my_table drop column middle_name;
alter table my_table rename column email_address to email;
alter table my_table modify age bigint null;
alter table my_table2 add constraint fk_id foreign key(id) references my_table(id);
alter table my_table2 drop foreign key fk_id;
alter table my_table modify full_name varchar(200) null;
drop table my_table2;
alter table my_table2 drop foreign key fk_id;
alter table my_table drop primary key;
alter table my_table drop column age;
drop database ddl_commands;