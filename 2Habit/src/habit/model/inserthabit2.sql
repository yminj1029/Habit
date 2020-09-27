/** test data **/

INSERT INTO MEMBER2 (M_ID,PW,NAME,NICKNAME,TEL,GENDER,JOB,EMAIL,POINT,HABIT) values ('hansung','1234','���Ѽ�','��ĳ��','010-1122-3344','��','ū��','hansung@naver.com','500',null);
INSERT INTO MEMBER2 (M_ID,PW,NAME,NICKNAME,TEL,GENDER,JOB,EMAIL,POINT,HABIT) values ('minji','1234','������','������','010-5566-7788','��','������','minji@naver.com','1000',null);
INSERT INTO MEMBER2 (M_ID,PW,NAME,NICKNAME,TEL,GENDER,JOB,EMAIL,POINT,HABIT) values ('hyewon','1234','������','�������ν�','010-9900-1122','��','�ڻ��','hyewon@naver.com','500',null);
INSERT INTO MEMBER2 (M_ID,PW,NAME,NICKNAME,TEL,GENDER,JOB,EMAIL,POINT,HABIT) values ('yejiAn','1234','�ȿ���','��������','010-3344-5566','��','�л�','yeji@naver.com','100',null);
INSERT INTO MEMBER2 (M_ID,PW,NAME,NICKNAME,TEL,GENDER,JOB,EMAIL,POINT,HABIT) values ('seyeon','1234','������','nameChanger','010-7788-9900','��','�����','seyeon@naver.com','0',null);

INSERT INTO MY_HABIT (H_ID,M_ID,H_NAME,H_DAY,H_STARTDATE,H_ENDDATE,H_ALARM) 
values (MY_HABIT_SEQ.NEXTVAL ,'hansung','�����ñ�','MON','2020-09-01','2020-09-30',TO_DATE('19:00:00','HH24:MI:SS'));
INSERT INTO MY_HABIT (H_ID,M_ID,H_NAME,H_DAY,H_STARTDATE,H_ENDDATE,H_ALARM) 
values (MY_HABIT_SEQ.NEXTVAL,'hansung','�ڵ��� �ð� ���̱�','TUES','2020-09-08',null,TO_DATE('19:00:00','HH24:MI:SS'));
INSERT INTO MY_HABIT (H_ID,M_ID,H_NAME,H_DAY,H_STARTDATE,H_ENDDATE,H_ALARM) 
values (MY_HABIT_SEQ.NEXTVAL,'minji','���� �Ͼ��','THUR','2020-07-08',null,TO_DATE('19:00:00','HH24:MI:SS'));
INSERT INTO MY_HABIT (H_ID,M_ID,H_NAME,H_DAY,H_STARTDATE,H_ENDDATE,H_ALARM) 
values (MY_HABIT_SEQ.NEXTVAL,'hyewon','��Ģ���� �Ļ�','WED','2020-09-06',null,TO_DATE('19:00:00','HH24:MI:SS'));

INSERT INTO CHALLENGE (CH_ID,M_ID,CH_NAME,NUM,CH_DAY,CH_STARTDATE,CH_ENDDATE,CH_CONTENT,ALARM,CH_FILE) 
values (CHALLENGE_SEQ.NEXTVAL,'hansung','3�� 10Ű�� ����',10,'MON, TUES, WED, THUR, FRI, SAT, SUN','2020-09-18','2020-12-18','- �Ϸ� � �ּ� 1�ð�! ',TO_DATE('12:00:00','HH24:MI:SS'),null);
INSERT INTO CHALLENGE (CH_ID,M_ID,CH_NAME,NUM,CH_DAY,CH_STARTDATE,CH_ENDDATE,CH_CONTENT,ALARM,CH_FILE) 
values (CHALLENGE_SEQ.NEXTVAL  ,'minji','�ڵ��� ���ð� ���̱� ������Ʈ',10,'MON, TUES, WED, THUR, FRI, SAT, SUN','2020-03-01','2021-03-01','- �ڵ��� ��� ���� �ð� ���� ',TO_DATE('14:00:00','HH24:MI:SS'),null);
INSERT INTO CHALLENGE (CH_ID,M_ID,CH_NAME,NUM,CH_DAY,CH_STARTDATE,CH_ENDDATE,CH_CONTENT,ALARM,CH_FILE) values (CHALLENGE_SEQ.NEXTVAL  ,'hyewon','5MIN ENGLISH TIME',10,'TUES, THUR, SAT, SUN', '2020-04-23','2020-10-23','- �Ϸ� 5�� ���� 3�� �ܿ�� ���� (��Ʈ, ����, ��ȭ ��� ��� ����!)',TO_DATE('12:00:00','HH24:MI:SS'),null);

INSERT INTO PROOF (PRF_ID,CH_ID,M_ID,PRF_DATE,CH_POINT,PRF_FILE) values (PROOF_SEQ.NEXTVAL, 1, 'hansung', '2020-09-09', 1500, null);
INSERT INTO PROOF (PRF_ID,CH_ID,M_ID,PRF_DATE,CH_POINT,PRF_FILE) values (PROOF_SEQ.NEXTVAL, 2, 'minji', '2020-09-10', 2000, null);
INSERT INTO PROOF (PRF_ID,CH_ID,M_ID,PRF_DATE,CH_POINT,PRF_FILE) values (PROOF_SEQ.NEXTVAL, 3, 'hyewon', '2020-08-09', 1500, null);

INSERT INTO REVIEW (R_ID,CH_ID,M_ID,R_TITLE,R_CONTENT,R_DATE,R_POINT,R_FILE) values (REVIEW_SEQ.NEXTVAL,1, 'hansung', '�ϵ�ĳ���ѽ�Ǭ��','��ģ���� �����޴�..��','2020-09-09',500,  null);
INSERT INTO REVIEW (R_ID,CH_ID,M_ID,R_TITLE,R_CONTENT,R_DATE,R_POINT,R_FILE) values (REVIEW_SEQ.NEXTVAL,2, 'minji', 'ù�޼�!!�̤�','�� ��¥ ó������ �޼��ߴ�','2020-09-10',500,  null);
INSERT INTO REVIEW (R_ID,CH_ID,M_ID,R_TITLE,R_CONTENT,R_DATE,R_POINT,R_FILE) values (REVIEW_SEQ.NEXTVAL,3, 'hyewon', '�ѹ����޼�!!!��ȣ','�� ��¥ �޼��������� ���� ������������..','2020-08-09',500,  null);

INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 1, 'hansung', '2020-09-01', '�޼�', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 1, 'hansung', '2020-09-03', '�޼�', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 1, 'hansung', '2020-09-05', '�޼�', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 1, 'hansung', '2020-09-07', '�޼�', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 1, 'hansung', '2020-09-09', '�޼�', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 1, 'hansung', '2020-09-11', '�޼�', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 1, 'hansung', '2020-09-13', '�޼�', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 1, 'hansung', '2020-09-15', '�޼�', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 1, 'hansung', '2020-09-17', '�޼�', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 1, 'hansung', '2020-09-19', '�޼�', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 1, 'hansung', '2020-09-21', '�޼�', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 1, 'hansung', '2020-09-24', '�޼�', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 1, 'hansung', '2020-09-27', '�޼�', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 1, 'hansung', '2020-09-28', '�޼�', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 1, 'hansung', '2020-09-29', '�޼�', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-01', '�޼�', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-02', '�޼�', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-03', '�޼�', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-04', '�޼�', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-05', '�޼�', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-06', '�޼�', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-07', '�޼�', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-08', '�޼�', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-09', '�޼�', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-10', '�޼�', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-11', '�޼�', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-12', '�޼�', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-13', '�޼�', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-15', '�޼�', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-16', '�޼�', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-18', '�޼�', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-19', '�޼�', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-20', '�޼�', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-21', '�޼�', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-22', '�޼�', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-23', '�޼�', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-25', '�޼�', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-27', '�޼�', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-28', '�޼�', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-29', '�޼�', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-30', '�޼�', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 3, 'minji', '2020-09-08', '�޼�', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 4, 'hyewon', '2020-10-07', '�޼�', 500);

INSERT INTO CHALLENGE_MEMBERS (CHM_ID, CH_ID, M_ID, PRF_ID) values (CHALLENGE_MEMBERS_SEQ.NEXTVAL, 1, 'hansung', 1);
INSERT INTO CHALLENGE_MEMBERS (CHM_ID, CH_ID, M_ID, PRF_ID) values (CHALLENGE_MEMBERS_SEQ.NEXTVAL, 2, 'minji', 2);
INSERT INTO CHALLENGE_MEMBERS (CHM_ID, CH_ID, M_ID, PRF_ID) values (CHALLENGE_MEMBERS_SEQ.NEXTVAL, 3, 'hyewon', 3);

INSERT INTO CHALLENGE_RESULT (CH_ID, CHM_ID, PRF_ID, CHR_DATE, CHR_RESULT) values (1, 1, 1, '2020-09-09', '�޼�');
INSERT INTO CHALLENGE_RESULT (CH_ID, CHM_ID, PRF_ID, CHR_DATE, CHR_RESULT) values (2, 2, 2, '2020-09-10', '�޼�');
INSERT INTO CHALLENGE_RESULT (CH_ID, CHM_ID, PRF_ID, CHR_DATE, CHR_RESULT) values (3, 3, 3, '2020-08-09', '�޼�');


INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (1, '����Ʈ�� ���� ��� �ð�', 'https://www.youtube.com/watch?v=9xERv4sOiiw');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (2, '����Ʈ�� �ߵ����� Ȯ���ϰ� ����� 9���� ��� �� �Ҹ�TV', 'https://www.youtube.com/watch?v=5MttmD4xw0w');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (3, '����Ʈ�� �ǰ��ϰ� ����ϱ� [�ǰ��÷���]', 'https://www.youtube.com/watch?v=M6C1dZRC4nM');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (4, '�θ�� Ŭ�� �� ���̸� �ڳ� ���Ȱ�� ������ �����Ǵ� ���ù����� �� / ���꽺����', 'https://www.youtube.com/watch?v=-G407MemCe8');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (5, '�Ẹ�� �ȴ�. ���� ���� ���� TOP5 | �Խô���', 'https://www.youtube.com/watch?v=bGnPYbn-TaM');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (6, '10����� �Ⱦ��ϴ� ����1���� �غ��ҽ��ϴ�! �̰� �ʹ� ���ߴ�... - ���� (The Worst App for Teenagers)', 'https://www.youtube.com/watch?v=s_GdYhaxi60');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (7, '�̰� �ʹ��Ѱ� �Ƴ�? �θ���� �� ���������� ���� �ȵǴ� ���� (�ڳ� ����Ʈ�� ���� ��)', 'https://www.youtube.com/watch?v=9m5vymBO_D0');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (8, '����Ⱓ�� �� �� �ϴ� �� | ����Ƽ��', 'https://www.youtube.com/watch?v=SggsbAXnRmM');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (9, '1�оȿ� �޴������Ⱓ ����� �� �߰����ŷ��� �ʼ����� �� ������.', 'https://www.youtube.com/watch?v=c1EQRDYYdQc');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (10, '[����G] ''������'' ���ӽð� ������?', 'https://www.youtube.com/watch?v=5t7LblGJ4AI');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (11, '���ϴ� �޴������� ����� � ������ �Ϸ翡 �󸶳� ����ұ�? ���� �޴��� �ߵ�?? ���� �޴��� ��볻�� �Ϻ� �����߰�', 'https://www.youtube.com/watch?v=fadItIofr-Y');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (12, '[��ŷ]�ʼ���û! ����Ʈ�� ������ ����� �� TOP8_[�̽��ڷ�]', 'https://www.youtube.com/watch?v=vkX3AzDha7U');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (13, '���� 35���̳� ó�԰� 4����뿡 �������/ 10���� ������ �� �󸶳� ��ҳ�/ ���￡�� 10�⵿�� 6�� ����� �̻��� �̾߱�', 'https://www.youtube.com/watch?v=GB4S-3MBlY8');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (14, '�޴��� ����� ������ ������. �Ⱑ���� Ȱ�� ����!! /���� �ܸ��⸦ Ȱ���ϴ� �ְ��� �����', 'https://www.youtube.com/watch?v=WLtpNGj2qFg');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (15, '������ Z ���� 2 �� ������ ����� ����ϼ���. Ŀ�� ȭ�鿡�� �� ��� ��� �ɼ� �ѳ��µ��� �� ������ ȭ�� ���鼭 ������ ���� �ذ���', 'https://www.youtube.com/watch?v=XTsFxTE-yHo');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (16, '����Ʈ���� �������� ���ϴ� ��ſ���', 'https://www.youtube.com/watch?v=mgEEkmwf_GM');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (17, '�ʵ��л� ����Ʈ�� �ߵ� �ɰ��������� ġ�� ���� / YTN ���̾�', 'https://www.youtube.com/watch?v=mRd96NSGe1I');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (18, '[���氳�� 2.0] �������ƿ�~ ����! ���� �ϰ� �� �޴��� ��� | ���ѹα� �����', 'https://www.youtube.com/watch?v=jVj-FQXL4vM');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (19, '1���� ���� ����Ʈ���� �ָ��ߴ�..�׷��� ���� ���� �����!!', 'https://www.youtube.com/watch?v=PrX35efsuO4');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (20, '[������] ������ �𸣴� ������ ����', 'https://www.youtube.com/watch?v=7zW91h5g-FY');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (21, 'û�ҳ� 7�� �� 1�� ����Ʈ�� ���ߵ���', 'https://www.youtube.com/watch?v=tBWuk91Gxio');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (22, 'KBS ����9 - �� ���� ����Ʈ�� �ߵ� �̷��� ���´�', 'https://www.youtube.com/watch?v=irGkIeZKgHw');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (23, '���� ������ �е��� ����Ʈ����Ȯ �޶��� ���� ���� / JTBC ������', 'https://www.youtube.com/watch?v=6zot9QTrICk');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (24, '��ũ �տ� ��� ����!!! ���� �޴��� ��� ��.zip - ��޺� �� Ǯ�� ��ũ�� 1�� | ���ѹα� �����', 'https://www.youtube.com/watch?v=trN1Yn4Mj3g');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (25, '1�ð����� �Ĵٺ��� �ڵ��� �ִ� �Ｚ~! ����ϴ�~^^', 'https://www.youtube.com/watch?v=upRSu_mJbXI');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (26, '��Ʃ�� �ߵ��ڰ� �˷��ִ� ��Ʃ�� �ߵ� ġ��� ? | ��Ʃ�� ������ ���', 'https://www.youtube.com/watch?v=cu2-1y8lz4Q');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (27, '[���Ҹ�] �ʵ��л� ����Ʈ�� ��� ��������? ������ ���� ������ ����ұ�?', 'https://www.youtube.com/watch?v=QnlGzWIlMoc');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (28, '�ƹ��� ������ �ڵ��� �̿��', 'https://www.youtube.com/watch?v=98JXmirVawU');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (29, '����Ʈ�� �����ϸ� ��ũ�Ⱑ �پ���?! ���̰� �ִ� �θ��� �� �����ϴ� ����!', 'https://www.youtube.com/watch?v=03-wCKI5YYU');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (30, '[�������ͺ�] ����� �ڳ� ����Ʈ�� ��붧���� �߻��ϴ� ������ ���̷���?', 'https://www.youtube.com/watch?v=4lL8DZKlYHc');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (31, '[EBS�θ�] ����Ʈ���� �ߵ� �� ���� ������ ��Ȱ ��Ģ�� ���ض�', 'https://www.youtube.com/watch?v=VqaH0Ml3A-0');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (32, '���� ����� | �ڵ��� ���ð� ���̱�', 'https://www.youtube.com/watch?v=-KmJ-RGWd_M');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (33, '����Ʈ���� �λ��� ����� | ������ �̴ϸָ���', 'https://www.youtube.com/watch?v=Bo2JJlEv3cA');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (34, '[��������] ?����Ʈ�� ������� ���ΰ�? ������ ����Ʈ�� �������! /����Ʈ�� �ߵ� ���� ���!', 'https://www.youtube.com/watch?v=HKYCESVMyL8');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (35, '����Ʈ���� �ߵ��� �� �๰ �ߵ����� ���� ����ϴ�? / YTN ���̾�', 'https://www.youtube.com/watch?v=Y-ka6TG1zXY');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (36, '? �ڵ��� �Ұ� & ������ �� ��õ Introduce cellphone ?�� ����', 'https://www.youtube.com/watch?v=iPr9H6QfClg');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (37, '[EBS �����б�]  ����Ʈ�� ��� �ð��� �����ְ� ������ �ð����� ����ϰ� �ϸ� ����?  / EBS ���̺���ũ �θ�', 'https://www.youtube.com/watch?v=pxCkxBfsIZE');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (38, '���ο��� ���븦 ��..?? �޴���ȭ ��� ������� ���ε� ���� ��� ���ʴϱ�', 'https://www.youtube.com/watch?v=8xvkh-UXAlE');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (39, '������ �̿��Ͽ� ����Ʈ�� ��� �ð� ���̱� | �ð�����', 'https://www.youtube.com/watch?v=H36fF-9wwMg');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (40, '2015.12.24 �ʵ��л� ����Ʈ�� ���� ����� �ϳ�?', 'https://www.youtube.com/watch?v=SQy7q28ivEg');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (41, '�����] ����Ʈ�� �ߵ� ����! : ���� �� �ڵ��� ��� ���̴� ��� 4����', 'https://www.youtube.com/watch?v=jk6o_HA3HOQ');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (42, '����Ʈ�� ����� ����Ģ 6���� ����ϼ��� �����̿��� 5', 'https://www.youtube.com/watch?v=5VoxXBF-_ew');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (43, '�б� ���� ������Ʈ ''�޴��� ���ð��� ������''�� ������ �� ����', 'https://www.youtube.com/watch?v=vl0Z-ZTGvoU');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (44, '[�ʺ��� Ż��� 4��] ����Ʈ�� �̵�� �ߵ� �����ϱ�', 'https://www.youtube.com/watch?v=JrHJ8l_DmB8');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (45, 'ū�ϳ����ϴ�.. ���� ���� �ڵ��� ��� ����? �ǳ� �ڵ����� �ϴ� ��Ÿ�� �Ǿ! �ᱹ... �Ф� �������� ���� ���� �޴��� �󸶳� ����Ͻó���? ��Ŭ����TV', 'https://www.youtube.com/watch?v=3ae8FaKWG88');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (46, 'û�ҳ� ����Ʈ�� ������� ���� ���! �ٰ��ڷ� ����! 5�и��� ������ �б� ����!', 'https://www.youtube.com/watch?v=hCaOYNFKug8');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (47, '����Ʈ�� ������� ���� �Ұ�', 'https://www.youtube.com/watch?v=OhFoGjpO9_A');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (48, '[YTN ���̾�] ������ ����Ʈ�� ��� û�ҳ� ��� ���� / YTN ���̾�', 'https://www.youtube.com/watch?v=_IN3pwa76Ss');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (49, '[5�� �ǰ� ����] ����Ʈ�� ���� 15�� �� ���̰� �㸮�������� / KBS����(News)', 'https://www.youtube.com/watch?v=0JQDxgAEIQ8');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (50, '7�� ���� �ڵ��� ���� ��ƺ��ٸ�?������� ��ȸ����', 'https://www.youtube.com/watch?v=22krx1xq9ZA');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (51, '�� �޴���ȭ ��� 100�� ������ ���������� / KBS����(News)', 'https://www.youtube.com/watch?v=1SUPrdFSTUA');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (52, '�鿪�� ����߸��� �߸��� ����Ʈ�� ������ 6����  smartphone may harm your immune power', 'https://www.youtube.com/watch?v=eJR37rf5qXI');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (53, '��� ���� App ���̵�', 'https://www.youtube.com/watch?v=xz3nhIrGIZo');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (54, '[�ǰ�] �ڵ��� ���! �ð� �� ��� ���ǻ���', 'https://www.youtube.com/watch?v=b1KS5FmxJVg');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (55, '�츮 ���� ���߷� ���̴� ��� 5����(�� ��õ�� ������!)', 'https://www.youtube.com/watch?v=nyXDRNYzEQ4');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (56, 'û�ҳ� ����Ʈ�� �ߵ� �̷��� �ذ��ϼ���! / YTN ���̾�', 'https://www.youtube.com/watch?v=5ObzjgqP690');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (57, '�޴��� ��� ������ �л� �α�ħ���̴�! [�����Ծ�]', 'https://www.youtube.com/watch?v=XH5sp4VWJXc');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (58, '[�ܵ�] �� �ϳ��� ''��������''������Ʈ�� ���ܾ� ��������', 'https://www.youtube.com/watch?v=n44pKy5oNdo');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (59, '������ �ڵ��� ��� �� �߻��� �հ��� ������ ��ó�����? Smart phone and finger arthritis', 'https://www.youtube.com/watch?v=HweddHgoCMY');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (60, '����Ʈ�� �ߵ� �����ϴ� ��� / YTN ���̾�', 'https://www.youtube.com/watch?v=BOd70vozybU');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (61, '����Ʈ�� �� �˾ƾ� �� ��� ���� ����', 'https://www.youtube.com/watch?v=DApxj_8w1-Y');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (62, '�޴��� ��� ������ ������� ������ �ش�! [�ݴ��Ծ�]', 'https://www.youtube.com/watch?v=QJezZgEo1zQ');


COMMIT


