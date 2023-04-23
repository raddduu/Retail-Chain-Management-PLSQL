create table countries(
state_tag varchar(3) primary key,
state_name varchar(30));

insert into countries
    values('ROM','Romania');
insert into countries
    values('TUR','Turkey');
insert into countries
    values('BLG','Bulgaria');
insert into countries
    values('HUN','Hungary');
insert into countries
    values('SPN','Spain');
insert into countries
    values('FRA','France');
insert into countries
    values('USA','United States of America');
insert into countries
    values('CHN','China');
insert into countries
    values('GER','Germany');
insert into countries
    values('LIB','Libya');
insert into countries
    values('LEB','Lebanon');
insert into countries
    values('RCO','Congo');
insert into countries
    values('DRC','Congo');    
    
select * from countries;

create table cities(
city_tag varchar(3) primary key,
city_name varchar(20),
state_tag varchar(30),
constraint cities_fk foreign key(state_tag) references countries(state_tag));

insert into cities
    values ('BUC','Bucharest','ROM');
insert into cities
    values ('CTN','Constanta','ROM');
insert into cities
    values ('SOF','Sofia','BLG');
insert into cities
    values ('BDP','Budapest','HUN');
insert into cities
    values ('SZG','Szeged','HUN');
insert into cities
    values ('MAD','Madrid','SPN');
insert into cities
    values ('BAR','Barcelona','SPN');
insert into cities
    values ('VAL','Valencia','SPN');
insert into cities
    values ('PAR','Paris','FRA');
insert into cities
    values ('MRS','Marseilles','FRA');
insert into cities
    values ('LYN','Lyon','FRA');
insert into cities
    values ('BRL','Berlin','GER');
insert into cities
    values ('FRK','Frankfurt','GER');
insert into cities
    values ('MUN','Munich','GER');
insert into cities
    values ('HAM','Hamburg','GER');
insert into cities
    values ('TRP','Tripoli','LIB');
insert into cities
    values ('TRI','Tripoli','LEB');
    
select * from cities;

create table addresses(
address_code number(4) primary key,
city_tag varchar(3) not null,
postal_code varchar(15),
street_name varchar(30) not null,
number_s number(3) not null,
constraint addresses_fk foreign key (city_tag) references cities(city_tag));

create sequence addresses_seq
increment by 20
start with 20
maxvalue 10000
nocycle;

insert into addresses
    values(addresses_seq.nextval,'BUC','030353','Iuliu Maniu',5);
insert into addresses
    values(addresses_seq.nextval,'CTN','139303','Mihai Eminescu',23);
insert into addresses
    values(addresses_seq.nextval,'SOF','45-37-56','Aleksandry Zavdevsky',8);
insert into addresses
    values(addresses_seq.nextval,'BDP','678-205','Erkel',128);
insert into addresses
    values(addresses_seq.nextval,'SZG','723-365','Hatvan',52);
insert into addresses
    values(addresses_seq.nextval,'MAD','ZA56B3','Juan Bravo',12);
insert into addresses
    values(addresses_seq.nextval,'MAD','ZA67C9','Pedro de Valdivia',47);
insert into addresses
    values(addresses_seq.nextval,'VAL','GT49R2','Carrer de Borriana',5);
insert into addresses
    values(addresses_seq.nextval,'BAR','RH79N2','Avinguda Diagonal',34);
insert into addresses
    values(addresses_seq.nextval,'PAR','568230','Louis Rolland',5);
insert into addresses
    values(addresses_seq.nextval,'MRS','137475','Vincent Scotto',8);
insert into addresses
    values(addresses_seq.nextval,'LYN','567459','de Bonnel',76);
insert into addresses
    values(addresses_seq.nextval,'BRL','651246','Hallesches',89);
insert into addresses
    values(addresses_seq.nextval,'HAM','678578','Michelsenweg',35);
insert into addresses
    values(addresses_seq.nextval,'MUN','654345','Rosenheimer',87);
insert into addresses
    values(addresses_seq.nextval,'FRK','975773','Engelthaler',90);
insert into addresses
    values(addresses_seq.nextval,'BUD','498-275','Szytemlen',83);
    
select * from addresses;

create table departments(
id_depart number(3) primary key,
departmentg_name varchar(20) not null,
base_salary number(5) not null);

create sequence departments_seq
increment by 10
start with 20
maxvalue 1000
nocycle;

insert into departments
    values(departments_seq.nextval,'Bakery',2200);
insert into departments
    values(departments_seq.nextval,'Personnel',3500);
insert into departments
    values(departments_seq.nextval,'Sales',2300);
insert into departments
    values(departments_seq.nextval,'Marketing',3700);
insert into departments
    values(departments_seq.nextval,'Customer Service',3000);
insert into departments
    values(departments_seq.nextval,'Grocery',2200);
insert into departments
    values(departments_seq.nextval,'Logistics',3200);
insert into departments
    values(departments_seq.nextval,'Butcher',2200);
insert into departments
    values(departments_seq.nextval,'Board',5000);
    
select * from departments;

create table maintainance_companies(
id_comp number(3) primary key,
company_name varchar(15),
collab_start_date date,
monthly_payment number(5) not null,
company_type varchar(12) not null,
main_specialisation varchar(20),
cleaning_frequency number(2));

create sequence maintainance_seq
increment by 2
start with 10
maxvalue 1000
nocycle;

insert into maintainance_companies
    values(maintainance_seq.nextval,'Luna si Bec','24-Apr-2018',2500,'Cleaning',null,14);
insert into maintainance_companies
    values(maintainance_seq.nextval,'Boris Clean','19-Feb-2019',3000,'Cleaning',null,7);
insert into maintainance_companies
    values(maintainance_seq.nextval,'ROSAFE','02-Sep-2018',3500,'Security','theft',null);
insert into maintainance_companies
    values(maintainance_seq.nextval,'Sparkling','04-May-2020',2700,'Cleaning',null,14);
insert into maintainance_companies
    values(maintainance_seq.nextval,'Feliz Limpio','23-Mar-2021',3200,'Cleaning',null,7);
insert into maintainance_companies
    values(maintainance_seq.nextval,'La Mapadora', '30-Aug-2019',3000,'Cleaning',null,7);
insert into maintainance_companies
    values(maintainance_seq.nextval,'Belle', '27-Oct-2020',2800,'Cleaning',null,14);
insert into maintainance_companies
    values(maintainance_seq.nextval,'Hermannstein', '10-Jun-2021',3500,'Cleaning',null,7);
insert into maintainance_companies
    values(maintainance_seq.nextval,'BGS Bulgaria', '13-Sep-2021',4000,'Security','theft',null);
insert into maintainance_companies
    values(maintainance_seq.nextval,'BGS Hungary', '28-Oct-2020',4200,'Security','safety',null);
insert into maintainance_companies
    values(maintainance_seq.nextval,'Garda Grande', '28-Mar-2019',3700,'Security','safety',null);
insert into maintainance_companies
    values(maintainance_seq.nextval,'Protection Gran', '17-Jul-2018',4300,'Security','safety',null);
insert into maintainance_companies
    values(maintainance_seq.nextval,'BGS Germany', '24-Nov-2020',4500,'Security','safety',null);
    
select * from maintainance_companies;

create table markets(
id_market number(4) primary key,
address_code number(4) not null,
surface number(4) not null,
id_comp_sec number(3),
id_comp_cle number(3),
constraint markets_fk foreign key(address_code) references addresses(address_code),
constraint sec_fk foreign key(id_comp_sec) references maintainance_companies(id_comp),
constraint cle_fk foreign key(id_comp_cle) references maintainance_companies(id_comp));

create sequence markets_seq
increment by 5
start with 10
maxvalue 1000
nocycle;

insert into markets
    values(5,20,200,14,10);
insert into markets
    values(markets_seq.nextval,20,200,14,10);
insert into markets
    values(markets_seq.nextval,40,300,14,10);
insert into markets
    values(markets_seq.nextval,60,250,26,12);
insert into markets
    values(markets_seq.nextval,380,350,28,16);
insert into markets
    values(markets_seq.nextval,100,300,28,16);
insert into markets
    values(markets_seq.nextval,120,250,30,18);
insert into markets
    values(markets_seq.nextval,140,350,30,20);
insert into markets
    values(markets_seq.nextval,160,300,30,18);
insert into markets
    values(markets_seq.nextval,180,350,30,18);
insert into markets
    values(markets_seq.nextval,200,400,38,22);
insert into markets
    values(markets_seq.nextval,220,300,38,22);
insert into markets
    values(markets_seq.nextval,240,350,38,22);
insert into markets
    values(markets_seq.nextval,260,400,34,24);
insert into markets
    values(markets_seq.nextval,280,350,34,24);
insert into markets
    values(markets_seq.nextval,300,400,34,24);
insert into markets
    values(markets_seq.nextval,320,300,34,24);

select * from markets;

create table employees(
id_emp number(4) primary key,
last_name varchar(20) not null,
first_name varchar(20) not null,
hire_date date,
phone varchar(10) unique,
commission_quoef number(3,2),
id_depart number(3),
id_market number(4),
constraint dep_fk foreign key(id_depart) references departments(id_depart),
constraint market_fk foreign key(id_market) references markets(id_market));

create sequence emp_seq
increment by 1
start with 1
maxvalue 20000
nocycle;

insert into employees
    values(0,'Popescu','Mihnea','08-May-2019','07239890',null,40,5);
insert into employees
    values(emp_seq.nextval,'Popescu','Alexandru','02-May-2018','07235890',null,40,10);
insert into employees
    values(emp_seq.nextval,'Ionescu','Alina','03-May-2018','07635990',0.15,40,10);
insert into employees
    values(emp_seq.nextval,'Miron','Horatiu','07-May-2018','07635910',0.20,70,10);
insert into employees
    values(emp_seq.nextval,'Amirunei','Georgeta','05-May-2018','07655990',0.30,100,10);

insert into employees
    values(emp_seq.nextval,'Mihailescu','Adina','07-Jun-2019','07235890',0.25,60,15);
insert into employees
    values(emp_seq.nextval,'Ionescu','Alina','03-May-2018','07633990',null,40,15);
insert into employees
    values(emp_seq.nextval,'Miron','Horatiu','07-May-2018','07635990',0.05,90,15);
insert into employees
    values(emp_seq.nextval,'Amirunei','Georgeta','05-May-2018','07235990',0.15,100,15);
    
insert into employees
    values(emp_seq.nextval,'Milovich','Dmitry','02-May-2020','08235890',null,40,20);
insert into employees
    values(emp_seq.nextval,'Sayushkaya','Marya','03-Jul-2021','08635990',0.15,70,20);
insert into employees
    values(emp_seq.nextval,'Dobrovich','Aleksandr','07-Aug-2020','08635990',0.20,100,20);
insert into employees
    values(emp_seq.nextval,'Milovich','Dmitry','02-May-2020','08235890',null,220,20);
insert into employees
    values(emp_seq.nextval,'Sayushkaya','Marya','03-Jul-2021','08635990',0.15,240,20);
insert into employees
    values(emp_seq.nextval,'Dobrovich','Aleksandr','07-Aug-2020','08635990',0.20,100,20);
    
insert into employees
    values(emp_seq.nextval,'Anglossy','Istvan','05-Apr-2021','09235890',null,40,30);
insert into employees
    values(emp_seq.nextval,'Janos','Ardony','08-Jul-2021','09235890',null,40,30);    
insert into employees
    values(emp_seq.nextval,'Gyorgethery','Marika','05-Apr-2021','09235890',null,100,30);
    
insert into employees
    values(emp_seq.nextval,'Garcia','Esteban','06-Aug-2021','04235890',null,40,35);
insert into employees
    values(emp_seq.nextval,'LLuro','Javier','07-Sep-2020','04235070',null,100,35);

insert into employees
    values(emp_seq.nextval,'Fernan','Rofrigo','15-Apr-2021','04215899',null,100,40);
insert into employees
    values(emp_seq.nextval,'Goices','Ramiriz','15-Jul-2021','04215899',null,40,40);
  
insert into employees
    values(emp_seq.nextval,'Fernan','Jimena','15-Apr-2021','04215792',null,50,45);    
insert into employees
    values(emp_seq.nextval,'Garcia','Lopez','17-Apr-2021','04215891',null,40,45);
insert into employees
    values(emp_seq.nextval,'Malfrida','Infanta','18-Apr-2021','04215991',0.15,100,45);
    
insert into employees
    values(emp_seq.nextval,'Alvarez','Rofrigo','15-Apr-2021','04215896',null,40,50);    
insert into employees
    values(emp_seq.nextval,'Garcia','Lopez','17-Apr-2021','04215871',null,100,50);
    
insert into employees
    values(emp_seq.nextval,'Boivelle','Marie','15-Apr-2021','04215895',null,100,55);    
insert into employees
    values(emp_seq.nextval,'Blois','isabelle','17-Apr-2021','04285891',null,40,55);
    
insert into employees
    values(emp_seq.nextval,'Marquie','Alessandre','15-Apr-2021','04215893',null,40,60);    
insert into employees
    values(emp_seq.nextval,'Broget','Almec','17-Apr-2021','04225892',null,100,60);
    
insert into employees
    values(emp_seq.nextval,'Charlee','Antoine','15-Apr-2021','04215866',null,40,65);    
insert into employees
    values(emp_seq.nextval,'Vivizon','Louis','17-Apr-2021','04215867',null,100,65);
    
insert into employees
    values(emp_seq.nextval,'Gustav','Klauss','17-Apr-2021','09215867',null,40,70);
    
insert into employees
    values(emp_seq.nextval,'Mahstern','Mark','17-Apr-2021','09315867',null,40,75);
    
insert into employees
    values(emp_seq.nextval,'Friedrichson','Karl','17-Apr-2021','09415867',null,40,80);
    
select * from employees;

create table languages(
lang_tag varchar(3) primary key,
lang_name varchar(20) not null);

insert into languages
    values('ROM','Romanian');
insert into languages
    values('BLG','Bulgarian');
insert into languages
    values('FRE','French');
insert into languages
    values('ENG','English');
insert into languages
    values('DEU','German');
    
select * from languages;

create table product_types(
prod_type_tag varchar(3) primary key,
prod_name varchar(20) not null);

insert into product_types
    values('MEA','Meats');
insert into product_types
    values('DRY','Dairy');
insert into product_types
    values('FRU','Fruits');
insert into product_types
    values('VEG','Vegetables');
insert into product_types
    values('CSM','Cosmetics');
    
select * from product_types;

create table suppliers(
id_supplier  number(3) primary key,
name_s varchar(20) not null,
org_state varchar(3),
constraint sup_fk foreign key(org_state) references countries(state_tag));

insert into suppliers
    values(100,'Ferma lui Ion','ROM');
insert into suppliers
    values(101,'Antalya Garden','TUR');
insert into suppliers
    values(102,'Wuhan Industrials','CHN');
insert into suppliers
    values(103,'Agricola Sevilla','SPN');
insert into suppliers
    values(104,'Elmiplant','FRA');
insert into suppliers
    values(105,'Kasimiva Fermata','BLG');
insert into suppliers
    values(106,'Elmiplant','SPN');
    
select * from suppliers;

create table products(
id_prod  number(3) primary key,
prod_name varchar(20) not null,
prod_type varchar(3),
sell_type varchar(3),
price number(4,1),
constraint type_fk foreign key(prod_type) references product_types(prod_type_tag));

insert into products
    values(100,'carrots','VEG','eng',1.2);
insert into products
    values(101,'carrots','VEG','eng',1.6);
insert into products
    values(102,'soap','CSM','end',5);
insert into products
    values(103,'shampoo','CSM','end',10);
insert into products
    values(104,'beef','MEA','end',8);
insert into products
    values(105,'fried chicken','MEA','end',10);
insert into products
    values(106,'apples','FRU','eng',2.8);
insert into products
    values(107,'cheese','DRY','end',5);
insert into products
    values(108,'milk','DRY','end',6);
insert into products
    values(109,'face cream','CSM','end',12);
insert into products
    values(110,'hand cream','CSM','end',12);
insert into products
    values(111,'pears casolette','FRU','end',3);
insert into products
    values(112,'potatoes sack','VEG','end',4);
insert into products
    values(113,'hand cream','CSM','end',10);
insert into products
    values(114,'bananas','FRU','eng',2.5);

select * from products;

create table receipts(
receipt_id number(8) primary key,
transaction_date date,
id_market number(4),
constraint mark_fk foreign key(id_market) references markets(id_market));

insert into receipts
    values(10,'04-May-2022',35);
insert into receipts
    values(11,'04-May-2022',35);
insert into receipts
    values(12,'04-May-2022',35);
insert into receipts
    values(13,'04-May-2022',35);
insert into receipts
    values(14,'04-May-2022',35);
insert into receipts
    values(15,'04-May-2022',35);
insert into receipts
    values(16,'05-May-2022',35);
insert into receipts
    values(17,'06-May-2022',35);
insert into receipts
    values(18,'07-May-2022',35);
insert into receipts
    values(19,'07-May-2022',30);
    
select * from receipts;

create table provide(
id_supplier number(3),
prod_type_tag varchar(3),
constraint provide_pk primary key (prod_type_tag,id_supplier),
constraint provide_id_fk foreign key (id_supplier) references suppliers(id_supplier),
constraint provide_tg_fk foreign key (prod_type_tag) references product_types(prod_type_tag));

insert into provide
    values(100,'MEA');
insert into provide
    values(100,'DRY');
insert into provide
    values(102,'CSM');
insert into provide
    values(105,'VEG');
insert into provide
    values(105,'FRU');
insert into provide
    values(104,'CSM');
insert into provide
    values(103,'VEG');
insert into provide
    values(103,'FRU');
insert into provide
    values(103,'DRY');
insert into provide
    values(101,'VEG');
insert into provide
    values(101,'FRU');
insert into provide
    values(101,'MEA');
    
select * from provide;

create table contain(
receipt_id number(8),
id_prod number(3),
quantity number(4,2),
constraint contain_pk primary key (id_prod,receipt_id),
constraint contain_idp_fk foreign key (id_prod) references products(id_prod),
constraint contain_rid_fk foreign key (receipt_id) references receipts(receipt_id));

insert into contain
    values(10,100,5);
insert into contain
    values(10,101,5);
insert into contain
    values(11,103,2);
insert into contain
    values(12,111,3);
insert into contain
    values(13,109,1);
insert into contain
    values(13,110,1);
insert into contain
    values(14,104,2);
insert into contain
    values(15,106,3);
insert into contain
    values(16,108,8);
insert into contain
    values(16,105,1);
insert into contain
    values(17,114,2);
    
select * from contain;

create table supply(
id_supplier number(3),
id_prod number(3),
id_market number (4),
constraint supply_pk primary key (id_supplier,id_prod,id_market),
constraint supply_ids_fk foreign key (id_supplier) references suppliers(id_supplier),
constraint supply_idp_fk foreign key (id_prod) references products(id_prod),
constraint supply_idm_fk foreign key (id_market) references markets(id_market));

insert into supply
    values(100,104,10);
insert into supply
    values(100,105,10);
insert into supply
    values(100,104,15);
insert into supply
    values(100,107,10);
insert into supply
    values(100,108,10);
insert into supply
    values(100,108,15);
insert into supply
    values(102,109,10);
insert into supply
    values(102,110,10);
insert into supply
    values(102,110,35);
insert into supply
    values(105,112,10);
insert into supply
    values(105,106,10);
insert into supply
    values(105,106,15);

select * from supply;

create table know(
id_emp number(3),
lang_tag varchar(3),
constraint know_pk primary key (id_emp,lang_tag),
constraint know_ids_fk foreign key (id_emp) references employees(id_emp),
constraint know_idm_fk foreign key (lang_tag) references languages(lang_tag));

insert into know
    values(10,'BLG');
insert into know
    values(10,'ENG');
insert into know
    values(10,'FRE');
insert into know
    values(2,'BLG');
insert into know
    values(2,'ENG');
insert into know
    values(2,'FRE');
insert into know
    values(20,'BLG');
insert into know
    values(20,'ENG');
insert into know
    values(20,'FRE');
insert into know
    values(8,'BLG');
insert into know
    values(8,'ENG');
insert into know
    values(9,'FRE');
    
select * from know;
    
commit;

set serveroutput on;

--6 colectiile varray si tablou indexat + tip de date compus(record),
--join-uri si tratarea exceptiilor
create or replace procedure display_emplpoyees_city(oras cities.city_name%type) is
    type emp_rec is record( prenume employees.first_name%type,
                            nume employees.last_name%type,
                            department departments.departmentg_name%type,
                            salariu departments.base_salary%type);
    type tablou_indexat is table of emp_rec index by pls_integer;
    type vector_id_emp is varray(100) of employees.id_emp%type;
    v_cod_oras cities.city_name%type;
    v_ids vector_id_emp;
    tab_emp tablou_indexat;
begin
    select city_tag into v_cod_oras from cities where upper(oras) = upper(city_name);
    
    select employees.id_emp bulk collect into v_ids
    from cities join (addresses) using (city_tag)
                join markets using(address_code)
                    join employees using (id_market)
    where city_tag = v_cod_oras;
    
    for i in v_ids.first..v_ids.last loop
       select first_name, last_name, departmentg_name, base_salary
       into tab_emp(i)
       from employees join departments using (id_depart)
       where id_emp = v_ids(i);
    end loop;
    
    DBMS_OUTPUT.PUT_LINE('In orasul ' || oras || ' lucreaza ' || tab_emp.count || ' angajati');
    
    for i in tab_emp.first..tab_emp.last loop
        DBMS_OUTPUT.PUT_LINE(tab_emp(i).prenume || ' ' || tab_emp(i).nume || ', cu salariul de baza ' || tab_emp(i).salariu || ' la departamentul ' || tab_emp(i).department);
    end loop;
    
exception
    when TOO_MANY_ROWS then DBMS_OUTPUT.PUT_LINE('Mai multe orase cu numele ' || oras || '!');
    when NO_DATA_FOUND then DBMS_OUTPUT.PUT_LINE('Orasul ' || oras || ' nu exista!');
    when OTHERS then DBMS_OUTPUT.PUT_LINE('Eroare necunoscuta!');
end display_emplpoyees_city;
/

begin
    display_emplpoyees_city('Tripoli');
end;
/

begin
    display_emplpoyees_city('New York');
end;
/

begin
    display_emplpoyees_city('Bucharest');
end;
/

--7 ciclu cursor parametrizat + cursor clasic
create or replace procedure nr_ang_extrem_stat (nume_oras cities.city_name%type, selectie number) is
    subquery exception;
    pragma EXCEPTION_INIT(subquery, -01427);
    cursor c_magazine (nume_tara countries.state_name%type) is
         select id_market, count (*) nr_ang
         from (select id_market, id_emp
               from countries co
                    join cities ci on (ci.state_tag = co.state_tag and upper(co.state_name) = upper(nume_tara))
                    join addresses using (city_tag)
                    join markets using (address_code)
                    join employees using(id_market))
         group by id_market;
    cursor c_suprafata is
        select *
        from markets
        where surface >= selectie;
    type tab_indexat is table of markets%rowtype index by pls_integer;
    v_state_name countries.state_name%type;
    v_id_market markets.id_market%type;
    v_surface markets.surface%type;
    v_market markets%rowtype;
    v_index number := 1;
    v_tab tab_indexat;
begin
    select state_name into v_state_name from countries
    where (select state_tag 
           from cities
           where upper(city_name) = upper(nume_oras)) = state_tag;
    
    if selectie > 0 then
        open c_suprafata;
        
        loop
            fetch c_suprafata into v_tab(v_index);
            exit when c_suprafata%NOTFOUND;
            v_index := v_index + 1;
        end loop;
        
        close c_suprafata;
        
        for rec in c_magazine(v_state_name) loop
            for i in v_tab.first..v_tab.last loop
                if v_tab(i).id_market = rec.id_market
                    then DBMS_OUTPUT.PUT_LINE('Magazinul cu id-ul ' || rec.id_market || ' si ' || rec.nr_ang || ' angajati are suprafata de ' || v_tab(i).surface || ' mp');
                end if;
            end loop;
        end loop;
    else
        DBMS_OUTPUT.PUT_LINE('Optiune incorecta pentru selectia suprafetei');
    end if;
exception
    when NO_DATA_FOUND then DBMS_OUTPUT.PUT_LINE('Orasul nu exista!');
    when subquery then DBMS_OUTPUT.PUT_LINE('Mai multe orase cu acest nume!');
    when OTHERS then DBMS_OUTPUT.PUT_LINE('Eroare necunoscuta!');
end nr_ang_extrem_stat;
/

begin
    nr_ang_extrem_stat('Bucharest', 100);
end;
/

begin
    nr_ang_extrem_stat('Bucharest', -1);
end;
/

begin
    nr_ang_extrem_stat('New York', 150);
end;
/

begin
    nr_ang_extrem_stat('Tripoli', 200);
end;
/

--8 functie cu cerere in SQL care foloseste 3 tabele (in cazul de fata
--operatia de join pe 6 tabele), returning boolean, tablouri imbricate si indexate,
--outer join, functia nvl, tip de date compus(record), bulk collect into

create or replace function este_local (cod markets.id_market%type) return boolean is
    fara_return exception;
    cursor c_nr_prod is
    select id_market, nvl(nr_prod,0) nr_prod
    from (select id_market, count(*) nr_prod
          from supply 
          group by id_market) full outer join markets using(id_market)
    order by id_market;
    type prod_rec is record(id markets.id_market%type,
                            nr_prod number);
    type tablou_indexat is table of prod_rec index by pls_integer;
    type tablou_imbricat is table of prod_rec;
    v_locale tablou_indexat;
    v_totale tablou_imbricat := tablou_imbricat();
begin
    select id_market, nvl(nr_prod,0)
    bulk collect into v_locale
    from   (select id_market, count(*) nr_prod
            from supply
            join suppliers using (id_supplier)
            join markets using (id_market)
            join addresses using (address_code)
            join cities using (city_tag)
            join countries using (state_tag)
            where org_state = state_tag
            group by id_market)
            full outer join markets using(id_market)
    order by id_market;
    
    open c_nr_prod;
    
    loop
        v_totale.extend;
        fetch c_nr_prod into v_totale(v_totale.last);
        exit when c_nr_prod%NOTFOUND;
    end loop;
        
    close c_nr_prod;
    
    for i in v_locale.first..v_locale.last loop
        if (v_locale(i).id = cod) then
            if (v_locale(i).nr_prod / v_totale(i).nr_prod > 0.5) then
                return true;
            else
                if (v_locale(i).nr_prod / v_totale(i).nr_prod <= 0.5) then
                    return false;
                end if;
            end if;
        end if;
    end loop;
    
    raise fara_return;
    
exception
    --when NO_DATA_FOUND
    --    then DBMS_OUTPUT.PUT_LINE('Introduceti un cod valid!');
    --    return null;
    when ZERO_DIVIDE
        then DBMS_OUTPUT.PUT_LINE('Magazinul inca nu este aprovizionat!');
        return null;
    when fara_return
        then DBMS_OUTPUT.PUT_LINE('Introduceti un cod valid!');
        return null;
    when OTHERS
        then DBMS_OUTPUT.PUT_LINE('Eroare necunoscuta!');
        return null;
    --cazul TOO_MANY_ROWS nu are sens deoarece parametrul este un id
    --cazul NO_DATA_FOUND nu are sens deoarece, din structura functiei,
    --un cod care nu e valid genereaza un cursor gol deci se ajunge la final
    --fara sa se returneze ceva, nu se intra in cele doua foruri
end este_local;
/

declare
    v_status boolean;
begin
    v_status := este_local(15); --local
    
    if (v_status = true) then
        DBMS_OUTPUT.PUT_LINE('Magazin local');
    else
        DBMS_OUTPUT.PUT_LINE('Magazin international');
    end if;
end;
/

declare
    v_status boolean;
begin
    v_status := este_local(10); --international 
    
    if (v_status = true) then
        DBMS_OUTPUT.PUT_LINE('Magazin local');
    end if;
    if (v_status = false) then
        DBMS_OUTPUT.PUT_LINE('Magazin international');
    end if;
end;
/

declare
    v_status boolean;
begin
    v_status := este_local(20); --fara produse
    
    if (v_status = true) then
        DBMS_OUTPUT.PUT_LINE('Magazin local');
    end if;
    if (v_status = false) then
        DBMS_OUTPUT.PUT_LINE('Magazin international');
    end if;
end;
/

declare
    v_status boolean;
begin
    v_status := este_local(17); --codul nu exista
    
    if (v_status = true) then
        DBMS_OUTPUT.PUT_LINE('Magazin local');
    end if;
    if (v_status = false) then
        DBMS_OUTPUT.PUT_LINE('Magazin international');
    end if;
end;
/

--9 procedura cu cerere in SQL care foloseste 3 tabele (in cazul de fata
--operatia de join pe 6 tabele), parametru de iesire, ciclu cursor cu subcereri
create or replace procedure se_comercializeaza_in (furnizor in suppliers.name_s%type, tara in countries.state_name%type, status out boolean) is
    --definim exceptii noi ca sa tratam cazurile de exceptie pentru fiecare parametru
    no_furnizor exception;
    too_many_furnizor exception;
    no_stat exception;
    too_many_stat exception;
    v_exista number := 0;
    v_nr_rez number;
begin
    select count (*) into v_nr_rez
        from (select state_tag
              from countries
              where upper(state_name) = upper(tara));
              
    if (v_nr_rez > 1)
        then raise too_many_stat;
    end if;
    
    if (v_nr_rez < 1)
        then raise no_stat;
    end if;
    
    select count (*) into v_nr_rez
        from (select id_supplier
              from suppliers
              where upper(name_s) = upper(furnizor));
    
    if (v_nr_rez > 1)
        then raise too_many_furnizor;
    end if;
    
    if (v_nr_rez < 1)
        then raise no_furnizor;
    end if;

    for i in   (select id_supplier--, count(id_supplier) nr_prod
                from supply
                join suppliers using (id_supplier)
                join markets using (id_market)
                join addresses using (address_code)
                join cities using (city_tag)
                join countries using (state_tag)
                where (upper(tara) = upper(state_name)
                and  upper(name_s) = upper(furnizor))
                --group by id_supplier
                order by state_tag) loop
        status := true;
        v_exista := v_exista + 1;
    end loop;
    
    if v_exista = 0 then
        status := false;
        DBMS_OUTPUT.PUT_LINE('Furnizorul nu are produse pe piata!');
    else
        DBMS_OUTPUT.PUT_LINE('Furnizorul are produse pe piata!');
    end if;
    
exception
    when no_furnizor then
        DBMS_OUTPUT.PUT_LINE('Furnizor inexistent!');
        status := null;
    when too_many_furnizor then
        DBMS_OUTPUT.PUT_LINE('Mai multi furnizori cu acelasi nume!');
        status := null;
    when no_stat then
        DBMS_OUTPUT.PUT_LINE('Stat inexistent!');
        status := null;
    when too_many_stat then
        DBMS_OUTPUT.PUT_LINE('Mai multe state cu acelasi nume!');
        status := null;
    --when others then
    --    DBMS_OUTPUT.PUT_LINE('Eroare neidentificata!');
    --    status := null;
end se_comercializeaza_in;
/


declare
    este boolean;
begin
    se_comercializeaza_in('Elmiplant', 'Romania', este); --2 furnizori
    
    if este = true then
        DBMS_OUTPUT.PUT_LINE('Confirmare, se comercializeaza!');
    end if;
    
    if este = false then
        DBMS_OUTPUT.PUT_LINE('Confirmare, nu se comercializeaza!');
    end if;
end;
/

declare
    este boolean;
begin
    se_comercializeaza_in('Ferma lui Ion', 'Congo', este); --2 state
    
    if este = true then
        DBMS_OUTPUT.PUT_LINE('Confirmare, se comercializeaza!');
    end if;
    
    if este = false then
        DBMS_OUTPUT.PUT_LINE('Confirmare, nu se comercializeaza!');
    end if;
end;
/

declare
    este boolean;
begin
    se_comercializeaza_in('Dero', 'Romania', este); --0 furnizori
    
    if este = true then
        DBMS_OUTPUT.PUT_LINE('Confirmare, se comercializeaza!');
    end if;
    
    if este = false then
        DBMS_OUTPUT.PUT_LINE('Confirmare, nu se comercializeaza!');
    end if;
end;
/

declare
    este boolean;
begin
    se_comercializeaza_in('Ferma lui Ion', 'Japonia', este); --0 state
    
    if este = true then
        DBMS_OUTPUT.PUT_LINE('Confirmare, se comercializeaza!');
    end if;
    
    if este = false then
        DBMS_OUTPUT.PUT_LINE('Confirmare, nu se comercializeaza!');
    end if;
end;
/

declare
    este boolean;
begin
    se_comercializeaza_in('Ferma lui Ion', 'Romania', este); -- da
    
    if este = true then
        DBMS_OUTPUT.PUT_LINE('Confirmare, se comercializeaza!');
    end if;
    
    if este = false then
        DBMS_OUTPUT.PUT_LINE('Confirmare, nu se comercializeaza!');
    end if;
end;
/

declare
    este boolean;
begin
    se_comercializeaza_in('Ferma lui Ion', 'Spain', este); -- nu
    
    if este = true then
        DBMS_OUTPUT.PUT_LINE('Confirmare, se comercializeaza!');
    end if;
    
    if este = false then
        DBMS_OUTPUT.PUT_LINE('Confirmare, nu se comercializeaza!');
    end if;
end;
/

--10 trigger LMD la nivel de comanda cu lansare de exceptii in script output
create or replace trigger casa_deschisa before delete or update on products
begin
    if to_char(sysdate, 'day') = 'SUNDAY' THEN 
        if to_number(to_char(sysdate, 'hh24')) < 11 then
            RAISE_APPLICATION_ERROR(-21001, 'Magazinele se deschid dupa ora 11:00 duminica!'); 
        end if;
        
        if to_number(to_char(sysdate, 'hh24')) >= 19 then
            RAISE_APPLICATION_ERROR(-21002, 'magazinele se inchid dupa ora 19:00 in weekend!');
        end if;
        
    else 
        if to_number(to_char(sysdate, 'hh24')) < 10 then
            RAISE_APPLICATION_ERROR(-21003, 'Magazinele se deschid dupa ora 10:00 de luni pana sambata!'); 
        end if;
        
        if to_number(to_char(sysdate, 'hh24')) >= 21 then
            RAISE_APPLICATION_ERROR(-21004, 'Magazinele se inchid dupa ora 21:00 de luni pana sambata!');
        end if;
        
    end if;
end;
/

begin
    update products
    set price = price + price * 0.10
    where prod_name = 'hand cream';
end;
/

select * from products;

rollback;

begin
    delete from products
    where prod_name = 'beef';
end;
/

select * from products;

rollback;

--11 trigger LMD la nivel de linie cu lansare de exceptii in script output
create or replace trigger roluri_necesare_magazin before insert on employees for each row
declare
    v_nr_sales number;
    v_nr_board number;
    v_id_old_depart departments.id_depart%type;
    v_id_sales departments.id_depart%type;
    v_id_board departments.id_depart%type;
    sales_not_enough_insert exception;
    board_not_enough_insert exception;
begin
    select id_depart
    into v_id_sales
    from departments
    where upper(departmentg_name) = upper('Sales');
        
    select id_depart
    into v_id_board
    from departments
    where upper(departmentg_name) = upper('Board');    
    
    select count(*)
    into v_nr_sales
    from markets
    join employees using(id_market)
    join departments using(id_depart)
    where id_market = :new.id_market
    and id_depart = v_id_sales;
                         
    select count(*)
    into v_nr_board
    from markets
    join employees using(id_market)
    join departments using(id_depart)
    where id_market = :new.id_market
    and id_depart = v_id_board;
                         
    if (v_nr_sales < 1 and :new.id_depart != v_id_sales) then
         RAISE_APPLICATION_ERROR(-20001, 'Angajati mai intai un vanzator!');
    end if;
        
    if (v_nr_board < 1 and :new.id_depart != v_id_board) then
        if (v_nr_sales > 0 and :new.id_depart = v_id_sales) then
             RAISE_APPLICATION_ERROR(-20002, 'Angajati mai intai un manager!');
        end if;
    end if;
end;
/

begin
    insert into employees   --mai intai manager
        values(1000,'Andrei','Mihailescu','08-May-2019','08239890',null,40,5);
end;
/

begin
    insert into employees   --mai intai un vanzator
        values(emp_seq.nextval,'Klogge','Frau','17-Apr-2021','09515867',null,80,85);
end;
/

begin
    insert into employees   --inserare fara erori
        values(1200,'Andrei','Mihailescu','08-May-2019','01209800',null,70,10);
end;
/

select * from employees;

rollback;

--12 trigger LDD cu lansare de exceptii in script output cu salvare de informatii
create table istoric_modificari(
nume_user varchar(40),
nume_obiect_modificat varchar(35),
nume_comanda varchar(30),
data_modificare date);

create or replace trigger alterare_schema before create or alter or drop on schema
begin
    insert into istoric_modificari
        values(sys.login_user, sys.dictionary_obj_name, sys.sysevent, sysdate);
        
    if (to_char(sysdate) = to_char(last_day(sysdate)) or to_char(sysdate) = to_char(trunc(sysdate, 'mm'))) then
        RAISE_APPLICATION_ERROR(-20100, 'Se modifica schema doar in prima sau ultima zi din luna!');
    end if;
end;
/

create table testare(
camp1 number(3),
camp2 varchar(20)
);

alter table testare add camp3 date;

drop table testare;

select * from istoric_modificari;

--13 pachet cu procedurile si functiile de la 6 la 9
create or replace package subprograme_proiect as
    procedure display_emplpoyees_city(oras cities.city_name%type); --6
    
    procedure nr_ang_extrem_stat (nume_oras cities.city_name%type, selectie number); --7
    
    function este_local (cod markets.id_market%type) return boolean; --8
    
    procedure se_comercializeaza_in (furnizor in suppliers.name_s%type, tara in countries.state_name%type, status out boolean); --9
end subprograme_proiect;
/

create or replace package body subprograme_proiect as
    --6
    procedure display_emplpoyees_city(oras cities.city_name%type) is
    type emp_rec is record( prenume employees.first_name%type,
                            nume employees.last_name%type,
                            department departments.departmentg_name%type,
                            salariu departments.base_salary%type);
    type tablou_indexat is table of emp_rec index by pls_integer;
    type vector_id_emp is varray(100) of employees.id_emp%type;
    v_cod_oras cities.city_name%type;
    v_ids vector_id_emp;
    tab_emp tablou_indexat;
begin
    select city_tag into v_cod_oras from cities where upper(oras) = upper(city_name);
    
    select employees.id_emp bulk collect into v_ids
    from cities join (addresses) using (city_tag)
                join markets using(address_code)
                    join employees using (id_market)
    where city_tag = v_cod_oras;
    
    for i in v_ids.first..v_ids.last loop
       select first_name, last_name, departmentg_name, base_salary
       into tab_emp(i)
       from employees join departments using (id_depart)
       where id_emp = v_ids(i);
    end loop;
    
    DBMS_OUTPUT.PUT_LINE('In orasul ' || oras || ' lucreaza ' || tab_emp.count || ' angajati');
    
    for i in tab_emp.first..tab_emp.last loop
        DBMS_OUTPUT.PUT_LINE(tab_emp(i).prenume || ' ' || tab_emp(i).nume || ', cu salariul de baza ' || tab_emp(i).salariu || ' la departamentul ' || tab_emp(i).department);
    end loop;
    
exception
    when TOO_MANY_ROWS then DBMS_OUTPUT.PUT_LINE('Mai multe orase cu numele ' || oras || '!');
    when NO_DATA_FOUND then DBMS_OUTPUT.PUT_LINE('Orasul ' || oras || ' nu exista!');
    when OTHERS then DBMS_OUTPUT.PUT_LINE('Eroare necunoscuta!');
end display_emplpoyees_city;

    --7
    procedure nr_ang_extrem_stat (nume_oras cities.city_name%type, selectie number) is
    subquery exception;
    pragma EXCEPTION_INIT(subquery, -01427);
    cursor c_magazine (nume_tara countries.state_name%type) is
         select id_market, count (*) nr_ang
         from (select id_market, id_emp
               from countries co
                    join cities ci on (ci.state_tag = co.state_tag and upper(co.state_name) = upper(nume_tara))
                    join addresses using (city_tag)
                    join markets using (address_code)
                    join employees using(id_market))
         group by id_market;
    cursor c_suprafata is
        select *
        from markets
        where surface >= selectie;
    type tab_indexat is table of markets%rowtype index by pls_integer;
    v_state_name countries.state_name%type;
    v_id_market markets.id_market%type;
    v_surface markets.surface%type;
    v_market markets%rowtype;
    v_index number := 1;
    v_tab tab_indexat;
begin
    select state_name into v_state_name from countries
    where (select state_tag 
           from cities
           where upper(city_name) = upper(nume_oras)) = state_tag;
    
    if selectie > 0 then
        open c_suprafata;
        
        loop
            fetch c_suprafata into v_tab(v_index);
            exit when c_suprafata%NOTFOUND;
            v_index := v_index + 1;
        end loop;
        
        close c_suprafata;
        
        for rec in c_magazine(v_state_name) loop
            for i in v_tab.first..v_tab.last loop
                if v_tab(i).id_market = rec.id_market
                    then DBMS_OUTPUT.PUT_LINE('Magazinul cu id-ul ' || rec.id_market || ' si ' || rec.nr_ang || ' angajati are suprafata de ' || v_tab(i).surface || ' mp');
                end if;
            end loop;
        end loop;
    else
        DBMS_OUTPUT.PUT_LINE('Optiune incorecta pentru selectia suprafetei');
    end if;
exception
    when NO_DATA_FOUND then DBMS_OUTPUT.PUT_LINE('Orasul nu exista!');
    when subquery then DBMS_OUTPUT.PUT_LINE('Mai multe orase cu acest nume!');
    when OTHERS then DBMS_OUTPUT.PUT_LINE('Eroare necunoscuta!');
end nr_ang_extrem_stat;

    --8
    function este_local (cod markets.id_market%type) return boolean is
    fara_return exception;
    cursor c_nr_prod is
    select id_market, nvl(nr_prod,0) nr_prod
    from (select id_market, count(*) nr_prod
          from supply 
          group by id_market) full outer join markets using(id_market)
    order by id_market;
    type prod_rec is record(id markets.id_market%type,
                            nr_prod number);
    type tablou_indexat is table of prod_rec index by pls_integer;
    type tablou_imbricat is table of prod_rec;
    v_locale tablou_indexat;
    v_totale tablou_imbricat := tablou_imbricat();
begin
    select id_market, nvl(nr_prod,0)
    bulk collect into v_locale
    from   (select id_market, count(*) nr_prod
            from supply
            join suppliers using (id_supplier)
            join markets using (id_market)
            join addresses using (address_code)
            join cities using (city_tag)
            join countries using (state_tag)
            where org_state = state_tag
            group by id_market)
            full outer join markets using(id_market)
    order by id_market;
    
    open c_nr_prod;
    
    loop
        v_totale.extend;
        fetch c_nr_prod into v_totale(v_totale.last);
        exit when c_nr_prod%NOTFOUND;
    end loop;
        
    close c_nr_prod;
    
    for i in v_locale.first..v_locale.last loop
        if (v_locale(i).id = cod) then
            if (v_locale(i).nr_prod / v_totale(i).nr_prod > 0.5) then
                return true;
            else
                if (v_locale(i).nr_prod / v_totale(i).nr_prod <= 0.5) then
                    return false;
                end if;
            end if;
        end if;
    end loop;
    
    raise fara_return;
    
exception
    --when NO_DATA_FOUND
    --    then DBMS_OUTPUT.PUT_LINE('Introduceti un cod valid!');
    --    return null;
    when ZERO_DIVIDE
        then DBMS_OUTPUT.PUT_LINE('Magazinul inca nu este aprovizionat!');
        return null;
    when fara_return
        then DBMS_OUTPUT.PUT_LINE('Introduceti un cod valid!');
        return null;
    when OTHERS
        then DBMS_OUTPUT.PUT_LINE('Eroare necunoscuta!');
        return null;
    --cazul TOO_MANY_ROWS nu are sens deoarece parametrul este un id
    --cazul NO_DATA_FOUND nu are sens deoarece, din structura functiei,
    --un cod care nu e valid genereaza un cursor gol deci se ajunge la final
    --fara sa se returneze ceva, nu se intra in cele doua foruri
end este_local;

    --9
    procedure se_comercializeaza_in (furnizor in suppliers.name_s%type, tara in countries.state_name%type, status out boolean) is
    --definim exceptii noi ca sa tratam cazurile de exceptie pentru fiecare parametru
    no_furnizor exception;
    too_many_furnizor exception;
    no_stat exception;
    too_many_stat exception;
    v_exista number := 0;
    v_nr_rez number;
begin
    select count (*) into v_nr_rez
        from (select state_tag
              from countries
              where upper(state_name) = upper(tara));
              
    if (v_nr_rez > 1)
        then raise too_many_stat;
    end if;
    
    if (v_nr_rez < 1)
        then raise no_stat;
    end if;
    
    select count (*) into v_nr_rez
        from (select id_supplier
              from suppliers
              where upper(name_s) = upper(furnizor));
    
    if (v_nr_rez > 1)
        then raise too_many_furnizor;
    end if;
    
    if (v_nr_rez < 1)
        then raise no_furnizor;
    end if;

    for i in   (select id_supplier--, count(id_supplier) nr_prod
                from supply
                join suppliers using (id_supplier)
                join markets using (id_market)
                join addresses using (address_code)
                join cities using (city_tag)
                join countries using (state_tag)
                where (upper(tara) = upper(state_name)
                and  upper(name_s) = upper(furnizor))
                --group by id_supplier
                order by state_tag) loop
        status := true;
        v_exista := v_exista + 1;
    end loop;
    
    if v_exista = 0 then
        status := false;
        DBMS_OUTPUT.PUT_LINE('Furnizorul nu are produse pe piata!');
    else
        DBMS_OUTPUT.PUT_LINE('Furnizorul are produse pe piata!');
    end if;
    
exception
    when no_furnizor then
        DBMS_OUTPUT.PUT_LINE('Furnizor inexistent!');
        status := null;
    when too_many_furnizor then
        DBMS_OUTPUT.PUT_LINE('Mai multi furnizori cu acelasi nume!');
        status := null;
    when no_stat then
        DBMS_OUTPUT.PUT_LINE('Stat inexistent!');
        status := null;
    when too_many_stat then
        DBMS_OUTPUT.PUT_LINE('Mai multe state cu acelasi nume!');
        status := null;
    --when others then
    --    DBMS_OUTPUT.PUT_LINE('Eroare neidentificata!');
    --    status := null;
end se_comercializeaza_in;
end subprograme_proiect;
/

begin
    subprograme_proiect.display_emplpoyees_city('Bucharest');
end;
/

begin
    subprograme_proiect.nr_ang_extrem_stat('Bucharest', 100);
end;
/

declare
    v_status boolean;
begin
    v_status := subprograme_proiect.este_local(15); --local
    
    if (v_status = true) then
        DBMS_OUTPUT.PUT_LINE('Magazin local');
    else
        DBMS_OUTPUT.PUT_LINE('Magazin international');
    end if;
end;
/

declare
    v_status boolean;
begin
    v_status := subprograme_proiect.este_local(10); --international 
    
    if (v_status = true) then
        DBMS_OUTPUT.PUT_LINE('Magazin local');
    end if;
    if (v_status = false) then
        DBMS_OUTPUT.PUT_LINE('Magazin international');
    end if;
end;
/

declare
    este boolean;
begin
    subprograme_proiect.se_comercializeaza_in('Ferma lui Ion', 'Romania', este); -- da
    
    if este = true then
        DBMS_OUTPUT.PUT_LINE('Confirmare, se comercializeaza!');
    end if;
    
    if este = false then
        DBMS_OUTPUT.PUT_LINE('Confirmare, nu se comercializeaza!');
    end if;
end;
/

declare
    este boolean;
begin
    subprograme_proiect.se_comercializeaza_in('Ferma lui Ion', 'Spain', este); -- nu
    
    if este = true then
        DBMS_OUTPUT.PUT_LINE('Confirmare, se comercializeaza!');
    end if;
    
    if este = false then
        DBMS_OUTPUT.PUT_LINE('Confirmare, nu se comercializeaza!');
    end if;
end;
/
