/** test data **/

Insert into MEMBER2 (M_ID,PW,NAME,NICKNAME,TEL,GENDER,JOB,EMAIL,POINT,HABIT) values ('hansung','1234','박한성','원캐슬','1012121212','여','큰언뉘','hansung@naver.com','500',null);
Insert into MEMBER2 (M_ID,PW,NAME,NICKNAME,TEL,GENDER,JOB,EMAIL,POINT,HABIT) values ('minji','1234','윤민지','윤지씨','1012341234','여','선생님','minji@naver.com','1000',null);
Insert into MEMBER2 (M_ID,PW,NAME,NICKNAME,TEL,GENDER,JOB,EMAIL,POINT,HABIT) values ('hyewon','1234','정혜원','저세상인싸','1013131313','여','박사님','hyewon@naver.com','500',null);
Insert into MEMBER2 (M_ID,PW,NAME,NICKNAME,TEL,GENDER,JOB,EMAIL,POINT,HABIT) values ('yejiAn','1234','안예지','예둥지둥','1089102114','여','학생','yeji@naver.com','100',null);
Insert into MEMBER2 (M_ID,PW,NAME,NICKNAME,TEL,GENDER,JOB,EMAIL,POINT,HABIT) values ('seyeon','1234','정세연','nameChanger','1045567890','여','총장님','seyeon@naver.com','0',null);

Insert into MY_HABIT (H_ID,M_ID,H_NAME,H_DAY,H_STARTDATE,H_ENDDATE,H_ALARM) values (MY_HABIT_SEQ.NEXTVAL ,'hansung','물마시기','MON','09/10/2020',null,'19:00');
Insert into MY_HABIT (H_ID,M_ID,H_NAME,H_DAY,H_STARTDATE,H_ENDDATE,H_ALARM) values (MY_HABIT_SEQ.NEXTVAL,'hansung','핸드폰 시간 줄이기','TUES','12/12/2020',null,'19:00');
Insert into MY_HABIT (H_ID,M_ID,H_NAME,H_DAY,H_STARTDATE,H_ENDDATE,H_ALARM) values (MY_HABIT_SEQ.NEXTVAL,'minji','일찍 일어나기','THUR','01/01/2020',null,'19:00');
Insert into MY_HABIT (H_ID,M_ID,H_NAME,H_DAY,H_STARTDATE,H_ENDDATE,H_ALARM) values (MY_HABIT_SEQ.NEXTVAL,'hyewon','규칙적인 식사','WED','01/01/2020',null,'19:00');

Insert into CHALLENGE (CH_ID,CH_NAME,NUM,CH_DAY,STARTDATE,ENDDATE,CH_CONTENT,ALARM,CH_FILE) values (CHALLENGE_SEQ.NEXTVAL,'3달 10키로 감량',10,'MON, TUES, WED, THUR, FRI, SAT, SUN','09/18/2020','12/18/2020','- 하루 운동 최소 1시간! ','12:00, 19:00',null);
Insert into CHALLENGE (CH_ID,CH_NAME,NUM,CH_DAY,STARTDATE,ENDDATE,CH_CONTENT,ALARM,CH_FILE) values (CHALLENGE_SEQ.NEXTVAL  ,'핸드폰 사용시간 줄이기 프로젝트',10,'MON, TUES, WED, THUR, FRI, SAT, SUN','03/01/2020','03/01/2021','- 핸드폰 사용 금지 시간 설정 ','14:00, 22:00',null);
Insert into CHALLENGE (CH_ID,CH_NAME,NUM,CH_DAY,STARTDATE,ENDDATE,CH_CONTENT,ALARM,CH_FILE) values (CHALLENGE_SEQ.NEXTVAL  ,'5MIN ENGLISH TIME',10,'TUES, THUR, SAT, SUN', '04/23/2020','10/23/2020','- 하루 5분 영어 3줄 외우기 인증 (노트, 녹음, 만화 등등 모두 가능!)','12:00, 20:00',null);

Insert into PROOF (PRF_ID,CH_ID,M_ID,PRF_DATE,CH_POINT,PRF_FILE) values (PROOF_SEQ.NEXTVAL, CHALLENGE_SEQ.NEXTVAL, 'hansung', '09/09/20', 1500, 'C:\Users\SMT050\Downloads\crowd-1283691.jpg');
Insert into PROOF (PRF_ID,CH_ID,M_ID,PRF_DATE,CH_POINT,PRF_FILE) values (PROOF_SEQ.NEXTVAL, CHALLENGE_SEQ.NEXTVAL, 'minji', '09/10/20', 2000, 'C:\Users\SMT050\Downloads\crowd-1283691.jpg');
Insert into PROOF (PRF_ID,CH_ID,M_ID,PRF_DATE,CH_POINT,PRF_FILE) values (PROOF_SEQ.NEXTVAL, CHALLENGE_SEQ.NEXTVAL, 'hyewon', '08/09/20', 1500, 'C:\Users\SMT050\Downloads\crowd-1283691.jpg');
Insert into PROOF (PRF_ID,CH_ID,M_ID,PRF_DATE,CH_POINT,PRF_FILE) values (PROOF_SEQ.NEXTVAL, CHALLENGE_SEQ.NEXTVAL, 'yejiAn', '10/07/20', 1100, 'C:\Users\SMT050\Downloads\crowd-1283691.jpg');

Insert into REVIEW (R_ID,CH_ID,M_ID,R_DATE,R_POINT,R_FILE) values (REVIEW_SEQ.NEXTVAL,CHALLENGE_SEQ.NEXTVAL, 'hansung', '09/09/20',500,  'C:\Users\SMT050\Downloads\crowd-1283691.jpg');
Insert into REVIEW (R_ID,CH_ID,M_ID,R_DATE,R_POINT,R_FILE) values (REVIEW_SEQ.NEXTVAL,CHALLENGE_SEQ.NEXTVAL, 'minji', '09/10/20',500,  'C:\Users\SMT050\Downloads\crowd-1283691.jpg');
Insert into REVIEW (R_ID,CH_ID,M_ID,R_DATE,R_POINT,R_FILE) values (REVIEW_SEQ.NEXTVAL,CHALLENGE_SEQ.NEXTVAL, 'hyewon', '08/09/20',500,  'C:\Users\SMT050\Downloads\crowd-1283691.jpg');
Insert into REVIEW (R_ID,CH_ID,M_ID,R_DATE,R_POINT,R_FILE) values (REVIEW_SEQ.NEXTVAL,CHALLENGE_SEQ.NEXTVAL, 'yejiAn', '10/07/20',500,  'C:\Users\SMT050\Downloads\crowd-1283691.jpg');

Insert into 
