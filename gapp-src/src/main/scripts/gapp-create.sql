
    create table additionaldetails (
        id int8 not null,
        fieldname varchar(255),
        requirement boolean not null,
        type varchar(255),
        primary key (id)
    );

    create table applications (
        id int8 not null,
        term varchar(255),
        basicdetails_id int8,
        department_id int8,
        program_id int8,
        primary key (id)
    );

    create table applications_education_background (
        applications_id int8 not null,
        educationalbackground_id int8 not null,
        primary key (applications_id, educationalbackground_id)
    );

    create table applications_score (
        applications_id int8 not null,
        scores_id int8 not null,
        primary key (applications_id, scores_id)
    );

    create table applications_usertypes (
        applications_id int8 not null,
        usertypes_id int8 not null,
        primary key (applications_id, usertypes_id)
    );

    create table appstatus (
        id int8 not null,
        comments varchar(255),
        date timestamp,
        status varchar(255),
        primary key (id)
    );

    create table basicdetails (
        id int8 not null,
        cin int4 not null,
        citizenship varchar(255),
        dob timestamp,
        email varchar(255),
        firstname varchar(255),
        gender varchar(255),
        lastname varchar(255),
        phonenumber int4,
        primary key (id)
    );

    create table department (
        id int8 not null,
        name varchar(255),
        primary key (id)
    );

    create table department_additionaldetails (
        department_id int8 not null,
        details_id int8 not null,
        primary key (department_id, details_id)
    );

    create table department_program (
        department_id int8 not null,
        programs_id int8 not null,
        primary key (department_id, programs_id)
    );

    create table education_background (
        id int8 not null,
        Major varchar(255),
        NameOfCollege varchar(255),
        TimeAttendedFrom timestamp,
        TimeAttendedTill timestamp,
        degreesReceived varchar(255),
        primary key (id)
    );

    create table program (
        id int8 not null,
        name varchar(255),
        department_id int8,
        primary key (id)
    );

    create table score (
        id int8 not null,
        gpa int4 not null,
        gre int4 not null,
        toefl_scores int4 not null,
        transcripts bytea,
        primary key (id)
    );

    create table users (
        id int4 not null,
        email varchar(255),
        enabled boolean not null,
        firstname varchar(255),
        lastname varchar(255),
        password varchar(255),
        usertype_id int8,
        primary key (id)
    );

    create table usertypes (
        id int8 not null,
        role varchar(255),
        roletype varchar(255),
        primary key (id)
    );

    create table usertypes_applications (
        usertypes_id int8 not null,
        application_id int8 not null,
        primary key (usertypes_id, application_id)
    );

    create table usertypes_department (
        usertypes_id int8 not null,
        department_id int8 not null,
        primary key (usertypes_id, department_id)
    );

    create table usertypes_education_background (
        usertypes_id int8 not null,
        degree_id int8 not null,
        primary key (usertypes_id, degree_id)
    );

    create table usertypes_program (
        usertypes_id int8 not null,
        programs_id int8 not null,
        primary key (usertypes_id, programs_id)
    );

    create table usertypes_users (
        usertypes_id int8 not null,
        users_id int4 not null,
        primary key (usertypes_id, users_id)
    );

    alter table applications_education_background 
        add constraint UK_dscys5rwtfu4tlnyylgd5al3l unique (educationalbackground_id);

    alter table applications_score 
        add constraint UK_lwatu7lxt09nva07utpvr6g3r unique (scores_id);

    alter table department_additionaldetails 
        add constraint UK_lkhavyykqche8q48xemhnv2lu unique (details_id);

    alter table department_program 
        add constraint UK_ugjp0h7defngtro0ofncmn1c unique (programs_id);

    alter table usertypes_applications 
        add constraint UK_4at4ui8of6fccnxi0hjbxrn3b unique (application_id);

    alter table usertypes_education_background 
        add constraint UK_eoajmyq0yg410xxeit07imj2x unique (degree_id);

    alter table applications 
        add constraint FK_9xik4mui6idc1fwgx4bkgp9uh 
        foreign key (basicdetails_id) 
        references basicdetails;

    alter table applications 
        add constraint FK_78su0wnn02817h354falvtovc 
        foreign key (department_id) 
        references department;

    alter table applications 
        add constraint FK_fvv8mt4q3l0jlgem0374rwfb5 
        foreign key (program_id) 
        references program;

    alter table applications_education_background 
        add constraint FK_dscys5rwtfu4tlnyylgd5al3l 
        foreign key (educationalbackground_id) 
        references education_background;

    alter table applications_education_background 
        add constraint FK_m4hwf9lra4qonvwspyao144r2 
        foreign key (applications_id) 
        references applications;

    alter table applications_score 
        add constraint FK_lwatu7lxt09nva07utpvr6g3r 
        foreign key (scores_id) 
        references score;

    alter table applications_score 
        add constraint FK_b0b0cn9t1gohui0548j1irgdl 
        foreign key (applications_id) 
        references applications;

    alter table applications_usertypes 
        add constraint FK_rw1dv626itavfex9o3nw9x3qr 
        foreign key (usertypes_id) 
        references usertypes;

    alter table applications_usertypes 
        add constraint FK_mgqfm9wocv07fo55i9iw7cc54 
        foreign key (applications_id) 
        references applications;

    alter table department_additionaldetails 
        add constraint FK_lkhavyykqche8q48xemhnv2lu 
        foreign key (details_id) 
        references additionaldetails;

    alter table department_additionaldetails 
        add constraint FK_9bfywimkx7gdmull6fyu3n3q0 
        foreign key (department_id) 
        references department;

    alter table department_program 
        add constraint FK_ugjp0h7defngtro0ofncmn1c 
        foreign key (programs_id) 
        references program;

    alter table department_program 
        add constraint FK_kk3uyb0bjxh58yfcyda4d2cw 
        foreign key (department_id) 
        references department;

    alter table program 
        add constraint FK_rxdg50tsqawbq3hd5l5whpwey 
        foreign key (department_id) 
        references department;

    alter table users 
        add constraint FK_cegy0fyrbstmyppwc0r5tqd5n 
        foreign key (usertype_id) 
        references usertypes;

    alter table usertypes_applications 
        add constraint FK_4at4ui8of6fccnxi0hjbxrn3b 
        foreign key (application_id) 
        references applications;

    alter table usertypes_applications 
        add constraint FK_frjuof31lo8c2u7s961l5u466 
        foreign key (usertypes_id) 
        references usertypes;

    alter table usertypes_department 
        add constraint FK_rvaviwmm3tj84pdb1uv23c4br 
        foreign key (department_id) 
        references department;

    alter table usertypes_department 
        add constraint FK_tbnptmwbuwceg6yq64xb351ki 
        foreign key (usertypes_id) 
        references usertypes;

    alter table usertypes_education_background 
        add constraint FK_eoajmyq0yg410xxeit07imj2x 
        foreign key (degree_id) 
        references education_background;

    alter table usertypes_education_background 
        add constraint FK_etvi8dybgkuk9n0e93jiqoake 
        foreign key (usertypes_id) 
        references usertypes;

    alter table usertypes_program 
        add constraint FK_d8y5yswidejvhinswumkb2jxh 
        foreign key (programs_id) 
        references program;

    alter table usertypes_program 
        add constraint FK_sv060fke0e2giqagar4sbqdqq 
        foreign key (usertypes_id) 
        references usertypes;

    alter table usertypes_users 
        add constraint FK_nx3r5dnqju6t71q8m5jckm1f6 
        foreign key (users_id) 
        references users;

    alter table usertypes_users 
        add constraint FK_s1p0ricikdjlcuwn9s7u2swtp 
        foreign key (usertypes_id) 
        references usertypes;

        insert into usertypes(role,roletype,id) values('Administrator','Responsible for managing and dept and users.',1);
    insert into usertypes(role, roletype,id) values('Staff','Responsible for reviewing and updating all applications',2);
    insert into usertypes(role, roletype,id) values('Student','Apply for programs',3);
    
    insert into users(email,enabled,firstname,lastname,password,usertype_id,id) values('admin@localhost.localdomain',true,'John','Doe','abcd',1,1);
    insert into users(email,enabled,firstname,lastname,password,usertype_id,id) values('staff1@localhost.localdomain',true,'Jane','Doe','abcd',2,2);
    insert into users(email,enabled,firstname,lastname,password,usertype_id,id)values('staff2@localhost.localdomain',true,'Joe','Doe','abcd',2,3);
    insert into users(email,enabled,firstname,lastname,password,usertype_id,id)values('student1@localhost.localdomain',true,'Jose','Doe','abcd',3,4);
    insert into users(email,enabled,firstname,lastname,password,usertype_id,id)values('student2@localhost.localdomain',true,'James','Doe','abcd',3,5);

    insert into basicdetails(cin, citizenship,dob,email,firstname,gender,lastname,phonenumber,id)values(1234567,'India','1992-04-02','admin@localhost.localdomain','John','Male','Doe',1232233,1);    
    insert into basicdetails(cin, citizenship,dob,email,firstname,gender,lastname,phonenumber,id) values(1234568,'India','1990-04-02','staff1@localhost.localdomain','Joe','Female','Doe',1232233,2);    
    insert into basicdetails(cin, citizenship,dob,email,firstname,gender,lastname,phonenumber,id) values(1234569,'India','1994-04-02','staff2@localhost.localdomain','Jane','Female','Doe',1232245,3);
    insert into basicdetails(cin, citizenship,dob,email,firstname,gender,lastname,phonenumber,id) values(123555,'India','1989-04-02','student1@localhost.localdomain','Jose','Male','Doe',1232133,4);
    insert into basicdetails(cin, citizenship,dob,email,firstname,gender,lastname,phonenumber,id) values(1234545,'India','1992-01-02','student2@localhost.localdomain','James','Male','Doe',1223233,5);
    
   insert into department (id,name) values(1,'Accounting');
   insert into department (id,name) values(2,'Computer Science');
  
   insert into program(id,name,department_id) values(1,'Masters',1);
   insert into program(id,name,department_id) values(2,'Masters',2);
   
   insert into department_program(department_id,programs_id) values(1,1);
   insert into department_program(department_id,programs_id) values(2,2);
   
   insert into additionaldetails(id,fieldname,requirement,type) values (1,'GMAT scores',true,'Scores');
 	
   insert into department_additionaldetails(department_id,details_id) values(1,1);
   
   INSERT INTO public.education_background(id, major, nameofcollege, timeattendedfrom, timeattendedtill, degreesreceived) VALUES (1, 'Accounting','ABC College of Commerce', '01-02-2010', '01-06-2013','Diploma in Accounting');
   
   insert into applications(id,term,basicdetails_id,department_id,program_id) values(1,'Fall 16',4,1,1);
   
   insert into applications_education_background(applications_id,educationalbackground_id) values(1,1);
   
   insert into applications_usertypes(applications_id,usertypes_id) values(1,3);
       
   insert into appstatus(id,comments,date,status) values(1,'Submitting',NOW(),'New');
   
   insert into usertypes_applications(usertypes_id,application_id) values(3,1);
       
   insert into usertypes_department(usertypes_id,department_id) values (3,1);
           
   insert into usertypes_education_background(usertypes_id,degree_id) values(3,1);
               
   insert into usertypes_program(usertypes_id,programs_id) values(3,1);
                   
   insert into usertypes_users(usertypes_id,users_id) values(3,4);
   
    create sequence hibernate_sequence;
