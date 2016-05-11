
    alter table applications 
        drop constraint FK_9xik4mui6idc1fwgx4bkgp9uh;

    alter table applications 
        drop constraint FK_78su0wnn02817h354falvtovc;

    alter table applications 
        drop constraint FK_fvv8mt4q3l0jlgem0374rwfb5;

    alter table applications_education_background 
        drop constraint FK_dscys5rwtfu4tlnyylgd5al3l;

    alter table applications_education_background 
        drop constraint FK_m4hwf9lra4qonvwspyao144r2;

    alter table applications_score 
        drop constraint FK_lwatu7lxt09nva07utpvr6g3r;

    alter table applications_score 
        drop constraint FK_b0b0cn9t1gohui0548j1irgdl;

    alter table applications_usertypes 
        drop constraint FK_rw1dv626itavfex9o3nw9x3qr;

    alter table applications_usertypes 
        drop constraint FK_mgqfm9wocv07fo55i9iw7cc54;

    alter table department_additionaldetails 
        drop constraint FK_lkhavyykqche8q48xemhnv2lu;

    alter table department_additionaldetails 
        drop constraint FK_9bfywimkx7gdmull6fyu3n3q0;

    alter table department_program 
        drop constraint FK_ugjp0h7defngtro0ofncmn1c;

    alter table department_program 
        drop constraint FK_kk3uyb0bjxh58yfcyda4d2cw;

    alter table usertypes_applications 
        drop constraint FK_4at4ui8of6fccnxi0hjbxrn3b;

    alter table usertypes_applications 
        drop constraint FK_frjuof31lo8c2u7s961l5u466;

    alter table usertypes_department 
        drop constraint FK_rvaviwmm3tj84pdb1uv23c4br;

    alter table usertypes_department 
        drop constraint FK_tbnptmwbuwceg6yq64xb351ki;

    alter table usertypes_education_background 
        drop constraint FK_eoajmyq0yg410xxeit07imj2x;

    alter table usertypes_education_background 
        drop constraint FK_etvi8dybgkuk9n0e93jiqoake;

    alter table usertypes_program 
        drop constraint FK_d8y5yswidejvhinswumkb2jxh;

    alter table usertypes_program 
        drop constraint FK_sv060fke0e2giqagar4sbqdqq;

    alter table usertypes_users 
        drop constraint FK_nx3r5dnqju6t71q8m5jckm1f6;

    alter table usertypes_users 
        drop constraint FK_s1p0ricikdjlcuwn9s7u2swtp;

    drop table if exists additionaldetails cascade;

    drop table if exists applications cascade;

    drop table if exists applications_education_background cascade;

    drop table if exists applications_score cascade;

    drop table if exists applications_usertypes cascade;

    drop table if exists appstatus cascade;

    drop table if exists basicdetails cascade;

    drop table if exists department cascade;

    drop table if exists department_additionaldetails cascade;

    drop table if exists department_program cascade;

    drop table if exists education_background cascade;

    drop table if exists program cascade;

    drop table if exists score cascade;

    drop table if exists users cascade;

    drop table if exists usertypes cascade;

    drop table if exists usertypes_applications cascade;

    drop table if exists usertypes_department cascade;

    drop table if exists usertypes_education_background cascade;

    drop table if exists usertypes_program cascade;

    drop table if exists usertypes_users cascade;

    drop sequence hibernate_sequence;
