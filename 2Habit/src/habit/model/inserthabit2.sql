/** test data **/

Insert into MEMBER2 (M_ID,PW,NAME,NICKNAME,TEL,GENDER,JOB,EMAIL,POINT,HABIT) values ('hansung','1234','���Ѽ�','��ĳ��','1012121212','��','ū��','hansung@naver.com','500',null);
Insert into MEMBER2 (M_ID,PW,NAME,NICKNAME,TEL,GENDER,JOB,EMAIL,POINT,HABIT) values ('minji','1234','������','������','1012341234','��','������','minji@naver.com','1000',null);
Insert into MEMBER2 (M_ID,PW,NAME,NICKNAME,TEL,GENDER,JOB,EMAIL,POINT,HABIT) values ('hyewon','1234','������','�������ν�','1013131313','��','�ڻ��','hyewon@naver.com','500',null);
Insert into MEMBER2 (M_ID,PW,NAME,NICKNAME,TEL,GENDER,JOB,EMAIL,POINT,HABIT) values ('yejiAn','1234','�ȿ���','��������','1089102114','��','�л�','yeji@naver.com','100',null);
Insert into MEMBER2 (M_ID,PW,NAME,NICKNAME,TEL,GENDER,JOB,EMAIL,POINT,HABIT) values ('seyeon','1234','������','nameChanger','1045567890','��','�����','seyeon@naver.com','0',null);

Insert into MY_HABIT (H_ID,M_ID,H_NAME,H_DAY,H_STARTDATE,H_ENDDATE,H_ALARM) values (MY_HABIT_SEQ.NEXTVAL ,'hansung','�����ñ�','MON','09/10/2020',null,'19:00');
Insert into MY_HABIT (H_ID,M_ID,H_NAME,H_DAY,H_STARTDATE,H_ENDDATE,H_ALARM) values (MY_HABIT_SEQ.NEXTVAL,'hansung','�ڵ��� �ð� ���̱�','TUES','12/12/2020',null,'19:00');
Insert into MY_HABIT (H_ID,M_ID,H_NAME,H_DAY,H_STARTDATE,H_ENDDATE,H_ALARM) values (MY_HABIT_SEQ.NEXTVAL,'minji','���� �Ͼ��','THUR','01/01/2020',null,'19:00');
Insert into MY_HABIT (H_ID,M_ID,H_NAME,H_DAY,H_STARTDATE,H_ENDDATE,H_ALARM) values (MY_HABIT_SEQ.NEXTVAL,'hyewon','��Ģ���� �Ļ�','WED','01/01/2020',null,'19:00');

Insert into CHALLENGE (CH_ID,CH_NAME,NUM,CH_DAY,STARTDATE,ENDDATE,CH_CONTENT,ALARM,CH_FILE) values (CHALLENGE_SEQ.NEXTVAL,'3�� 10Ű�� ����',10,'MON, TUES, WED, THUR, FRI, SAT, SUN','09/18/2020','12/18/2020','- �Ϸ� � �ּ� 1�ð�! ','12:00, 19:00',null);
Insert into CHALLENGE (CH_ID,CH_NAME,NUM,CH_DAY,STARTDATE,ENDDATE,CH_CONTENT,ALARM,CH_FILE) values (CHALLENGE_SEQ.NEXTVAL  ,'�ڵ��� ���ð� ���̱� ������Ʈ',10,'MON, TUES, WED, THUR, FRI, SAT, SUN','03/01/2020','03/01/2021','- �ڵ��� ��� ���� �ð� ���� ','14:00, 22:00',null);
Insert into CHALLENGE (CH_ID,CH_NAME,NUM,CH_DAY,STARTDATE,ENDDATE,CH_CONTENT,ALARM,CH_FILE) values (CHALLENGE_SEQ.NEXTVAL  ,'5MIN ENGLISH TIME',10,'TUES, THUR, SAT, SUN', '04/23/2020','10/23/2020','- �Ϸ� 5�� ���� 3�� �ܿ�� ���� (��Ʈ, ����, ��ȭ ��� ��� ����!)','12:00, 20:00',null);

Insert into PROOF (PRF_ID,CH_ID,M_ID,PRF_DATE,CH_POINT,PRF_FILE) values (PROOF_SEQ.NEXTVAL, CHALLENGE_SEQ.NEXTVAL, 'hansung', '09/09/20', 1500, 'C:\Users\SMT050\Downloads\crowd-1283691.jpg');
Insert into PROOF (PRF_ID,CH_ID,M_ID,PRF_DATE,CH_POINT,PRF_FILE) values (PROOF_SEQ.NEXTVAL, CHALLENGE_SEQ.NEXTVAL, 'minji', '09/10/20', 2000, 'C:\Users\SMT050\Downloads\crowd-1283691.jpg');
Insert into PROOF (PRF_ID,CH_ID,M_ID,PRF_DATE,CH_POINT,PRF_FILE) values (PROOF_SEQ.NEXTVAL, CHALLENGE_SEQ.NEXTVAL, 'hyewon', '08/09/20', 1500, 'C:\Users\SMT050\Downloads\crowd-1283691.jpg');
Insert into PROOF (PRF_ID,CH_ID,M_ID,PRF_DATE,CH_POINT,PRF_FILE) values (PROOF_SEQ.NEXTVAL, CHALLENGE_SEQ.NEXTVAL, 'yejiAn', '10/07/20', 1100, 'C:\Users\SMT050\Downloads\crowd-1283691.jpg');

Insert into REVIEW (R_ID,CH_ID,M_ID,R_DATE,R_POINT,R_FILE) values (REVIEW_SEQ.NEXTVAL,CHALLENGE_SEQ.NEXTVAL, 'hansung', '09/09/20',500,  'C:\Users\SMT050\Downloads\crowd-1283691.jpg');
Insert into REVIEW (R_ID,CH_ID,M_ID,R_DATE,R_POINT,R_FILE) values (REVIEW_SEQ.NEXTVAL,CHALLENGE_SEQ.NEXTVAL, 'minji', '09/10/20',500,  'C:\Users\SMT050\Downloads\crowd-1283691.jpg');
Insert into REVIEW (R_ID,CH_ID,M_ID,R_DATE,R_POINT,R_FILE) values (REVIEW_SEQ.NEXTVAL,CHALLENGE_SEQ.NEXTVAL, 'hyewon', '08/09/20',500,  'C:\Users\SMT050\Downloads\crowd-1283691.jpg');
Insert into REVIEW (R_ID,CH_ID,M_ID,R_DATE,R_POINT,R_FILE) values (REVIEW_SEQ.NEXTVAL,CHALLENGE_SEQ.NEXTVAL, 'yejiAn', '10/07/20',500,  'C:\Users\SMT050\Downloads\crowd-1283691.jpg');

Insert into 
