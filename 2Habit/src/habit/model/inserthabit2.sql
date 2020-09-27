/** test data **/

INSERT INTO MEMBER2 (M_ID,PW,NAME,NICKNAME,TEL,GENDER,JOB,EMAIL,POINT,HABIT) values ('hansung','1234','박한성','원캐슬','010-1122-3344','여','큰언뉘','hansung@naver.com','500',null);
INSERT INTO MEMBER2 (M_ID,PW,NAME,NICKNAME,TEL,GENDER,JOB,EMAIL,POINT,HABIT) values ('minji','1234','윤민지','윤지씨','010-5566-7788','여','선생님','minji@naver.com','1000',null);
INSERT INTO MEMBER2 (M_ID,PW,NAME,NICKNAME,TEL,GENDER,JOB,EMAIL,POINT,HABIT) values ('hyewon','1234','정혜원','저세상인싸','010-9900-1122','여','박사님','hyewon@naver.com','500',null);
INSERT INTO MEMBER2 (M_ID,PW,NAME,NICKNAME,TEL,GENDER,JOB,EMAIL,POINT,HABIT) values ('yejiAn','1234','안예지','예둥지둥','010-3344-5566','여','학생','yeji@naver.com','100',null);
INSERT INTO MEMBER2 (M_ID,PW,NAME,NICKNAME,TEL,GENDER,JOB,EMAIL,POINT,HABIT) values ('seyeon','1234','정세연','nameChanger','010-7788-9900','여','총장님','seyeon@naver.com','0',null);

INSERT INTO MY_HABIT (H_ID,M_ID,H_NAME,H_DAY,H_STARTDATE,H_ENDDATE,H_ALARM) 
values (MY_HABIT_SEQ.NEXTVAL ,'hansung','물마시기','MON','2020-09-01','2020-09-30',TO_DATE('19:00:00','HH24:MI:SS'));
INSERT INTO MY_HABIT (H_ID,M_ID,H_NAME,H_DAY,H_STARTDATE,H_ENDDATE,H_ALARM) 
values (MY_HABIT_SEQ.NEXTVAL,'hansung','핸드폰 시간 줄이기','TUES','2020-09-08',null,TO_DATE('19:00:00','HH24:MI:SS'));
INSERT INTO MY_HABIT (H_ID,M_ID,H_NAME,H_DAY,H_STARTDATE,H_ENDDATE,H_ALARM) 
values (MY_HABIT_SEQ.NEXTVAL,'minji','일찍 일어나기','THUR','2020-07-08',null,TO_DATE('19:00:00','HH24:MI:SS'));
INSERT INTO MY_HABIT (H_ID,M_ID,H_NAME,H_DAY,H_STARTDATE,H_ENDDATE,H_ALARM) 
values (MY_HABIT_SEQ.NEXTVAL,'hyewon','규칙적인 식사','WED','2020-09-06',null,TO_DATE('19:00:00','HH24:MI:SS'));

INSERT INTO CHALLENGE (CH_ID,M_ID,CH_NAME,NUM,CH_DAY,CH_STARTDATE,CH_ENDDATE,CH_CONTENT,ALARM,CH_FILE) 
values (CHALLENGE_SEQ.NEXTVAL,'hansung','3달 10키로 감량',10,'MON, TUES, WED, THUR, FRI, SAT, SUN','2020-09-18','2020-12-18','- 하루 운동 최소 1시간! ',TO_DATE('12:00:00','HH24:MI:SS'),null);
INSERT INTO CHALLENGE (CH_ID,M_ID,CH_NAME,NUM,CH_DAY,CH_STARTDATE,CH_ENDDATE,CH_CONTENT,ALARM,CH_FILE) 
values (CHALLENGE_SEQ.NEXTVAL  ,'minji','핸드폰 사용시간 줄이기 프로젝트',10,'MON, TUES, WED, THUR, FRI, SAT, SUN','2020-03-01','2021-03-01','- 핸드폰 사용 금지 시간 설정 ',TO_DATE('14:00:00','HH24:MI:SS'),null);
INSERT INTO CHALLENGE (CH_ID,M_ID,CH_NAME,NUM,CH_DAY,CH_STARTDATE,CH_ENDDATE,CH_CONTENT,ALARM,CH_FILE) values (CHALLENGE_SEQ.NEXTVAL  ,'hyewon','5MIN ENGLISH TIME',10,'TUES, THUR, SAT, SUN', '2020-04-23','2020-10-23','- 하루 5분 영어 3줄 외우기 인증 (노트, 녹음, 만화 등등 모두 가능!)',TO_DATE('12:00:00','HH24:MI:SS'),null);

INSERT INTO PROOF (PRF_ID,CH_ID,M_ID,PRF_DATE,CH_POINT,PRF_FILE) values (PROOF_SEQ.NEXTVAL, 1, 'hansung', '2020-09-09', 1500, null);
INSERT INTO PROOF (PRF_ID,CH_ID,M_ID,PRF_DATE,CH_POINT,PRF_FILE) values (PROOF_SEQ.NEXTVAL, 2, 'minji', '2020-09-10', 2000, null);
INSERT INTO PROOF (PRF_ID,CH_ID,M_ID,PRF_DATE,CH_POINT,PRF_FILE) values (PROOF_SEQ.NEXTVAL, 3, 'hyewon', '2020-08-09', 1500, null);

INSERT INTO REVIEW (R_ID,CH_ID,M_ID,R_TITLE,R_CONTENT,R_DATE,R_POINT,R_FILE) values (REVIEW_SEQ.NEXTVAL,1, 'hansung', '하드캐리한썰푼다','미친듯이 집중햇다..ㅠ','2020-09-09',500,  null);
INSERT INTO REVIEW (R_ID,CH_ID,M_ID,R_TITLE,R_CONTENT,R_DATE,R_POINT,R_FILE) values (REVIEW_SEQ.NEXTVAL,2, 'minji', '첫달성!!ㅜㅜ','와 진짜 처음으로 달성했다','2020-09-10',500,  null);
INSERT INTO REVIEW (R_ID,CH_ID,M_ID,R_TITLE,R_CONTENT,R_DATE,R_POINT,R_FILE) values (REVIEW_SEQ.NEXTVAL,3, 'hyewon', '한번더달성!!!야호','아 진짜 달성했을때의 희열을 잊을수가없다..','2020-08-09',500,  null);

INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 1, 'hansung', '2020-09-01', '달성', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 1, 'hansung', '2020-09-03', '달성', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 1, 'hansung', '2020-09-05', '달성', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 1, 'hansung', '2020-09-07', '달성', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 1, 'hansung', '2020-09-09', '달성', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 1, 'hansung', '2020-09-11', '달성', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 1, 'hansung', '2020-09-13', '달성', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 1, 'hansung', '2020-09-15', '달성', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 1, 'hansung', '2020-09-17', '달성', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 1, 'hansung', '2020-09-19', '달성', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 1, 'hansung', '2020-09-21', '달성', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 1, 'hansung', '2020-09-24', '달성', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 1, 'hansung', '2020-09-27', '달성', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 1, 'hansung', '2020-09-28', '달성', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 1, 'hansung', '2020-09-29', '달성', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-01', '달성', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-02', '달성', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-03', '달성', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-04', '달성', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-05', '달성', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-06', '달성', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-07', '달성', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-08', '달성', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-09', '달성', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-10', '달성', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-11', '달성', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-12', '달성', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-13', '달성', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-15', '달성', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-16', '달성', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-18', '달성', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-19', '달성', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-20', '달성', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-21', '달성', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-22', '달성', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-23', '달성', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-25', '달성', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-27', '달성', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-28', '달성', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-29', '달성', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 2, 'hansung', '2020-08-30', '달성', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 3, 'minji', '2020-09-08', '달성', 500);
INSERT INTO MY_RESULT (MR_ID, H_ID, M_ID, MR_DATE, MR_RESULT, MR_POINT) values (MY_RESULT_SEQ.NEXTVAL, 4, 'hyewon', '2020-10-07', '달성', 500);

INSERT INTO CHALLENGE_MEMBERS (CHM_ID, CH_ID, M_ID, PRF_ID) values (CHALLENGE_MEMBERS_SEQ.NEXTVAL, 1, 'hansung', 1);
INSERT INTO CHALLENGE_MEMBERS (CHM_ID, CH_ID, M_ID, PRF_ID) values (CHALLENGE_MEMBERS_SEQ.NEXTVAL, 2, 'minji', 2);
INSERT INTO CHALLENGE_MEMBERS (CHM_ID, CH_ID, M_ID, PRF_ID) values (CHALLENGE_MEMBERS_SEQ.NEXTVAL, 3, 'hyewon', 3);

INSERT INTO CHALLENGE_RESULT (CH_ID, CHM_ID, PRF_ID, CHR_DATE, CHR_RESULT) values (1, 1, 1, '2020-09-09', '달성');
INSERT INTO CHALLENGE_RESULT (CH_ID, CHM_ID, PRF_ID, CHR_DATE, CHR_RESULT) values (2, 2, 2, '2020-09-10', '달성');
INSERT INTO CHALLENGE_RESULT (CH_ID, CHM_ID, PRF_ID, CHR_DATE, CHR_RESULT) values (3, 3, 3, '2020-08-09', '달성');


INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (1, '스마트폰 적정 사용 시간', 'https://www.youtube.com/watch?v=9xERv4sOiiw');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (2, '스마트폰 중독에서 확실하게 벗어나는 9가지 방법 ｜ 소린TV', 'https://www.youtube.com/watch?v=5MttmD4xw0w');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (3, '스마트폰 건강하게 사용하기 [건강플러스]', 'https://www.youtube.com/watch?v=M6C1dZRC4nM');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (4, '부모님 클릭 한 번이면 자녀 사생활이 완전히 통제되는 무시무시한 앱 / 스브스뉴스', 'https://www.youtube.com/watch?v=-G407MemCe8');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (5, '써보면 안다. 개꿀 공부 어플 TOP5 | 입시덕후', 'https://www.youtube.com/watch?v=bGnPYbn-TaM');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (6, '10대들이 싫어하는 어플1위를 해보았습니다! 이건 너무 심했다... - 허팝 (The Worst App for Teenagers)', 'https://www.youtube.com/watch?v=s_GdYhaxi60');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (7, '이건 너무한거 아냐? 부모님이 꼭 봐야하지만 보면 안되는 어플 (자녀 스마트폰 관리 앱)', 'https://www.youtube.com/watch?v=9m5vymBO_D0');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (8, '시험기간에 폰 안 하는 법 | 연고티비', 'https://www.youtube.com/watch?v=SggsbAXnRmM');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (9, '1분안에 휴대폰사용기간 사용방법 및 중고폰거래시 필수사항 꼭 보세요.', 'https://www.youtube.com/watch?v=c1EQRDYYdQc');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (10, '[뉴스G] ''적당한'' 게임시간 기준은?', 'https://www.youtube.com/watch?v=5t7LblGJ4AI');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (11, '간니는 휴대폰으로 어떤게임 어떤 어플을 하루에 얼마나 사용할까? 설마 휴대폰 중독?? 간니 휴대폰 사용내역 완벽 밀착중계', 'https://www.youtube.com/watch?v=fadItIofr-Y');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (12, '[랭킹]필수시청! 스마트폰 때문에 생기는 병 TOP8_[이슈텔러]', 'https://www.youtube.com/watch?v=vkX3AzDha7U');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (13, '내가 35살이나 처먹고 4평원룸에 사는이유/ 10년차 직장인 돈 얼마나 모았나/ 서울에서 10년동안 6번 자취방 이사한 이야기', 'https://www.youtube.com/watch?v=GB4S-3MBlY8');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (14, '휴대폰 공기계 썩히지 마세요. 기가막힌 활용 꿀팁!! /남는 단말기를 활용하는 최고의 방법들', 'https://www.youtube.com/watch?v=WLtpNGj2qFg');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (15, '갤럭시 Z 폴드 2 이 어플은 지우고 사용하세요. 커버 화면에서 앱 계속 사용 옵션 켜놨는데도 폰 접으면 화면 잠기면서 꺼지는 문제 해결방법', 'https://www.youtube.com/watch?v=XTsFxTE-yHo');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (16, '스마트폰을 내려놓지 못하는 당신에게', 'https://www.youtube.com/watch?v=mgEEkmwf_GM');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (17, '초등학생 스마트폰 중독 심각…맞춤형 치료 지원 / YTN 사이언스', 'https://www.youtube.com/watch?v=mRd96NSGe1I');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (18, '[국방개혁 2.0] 걱정말아요~ 군대! 병사 일과 후 휴대폰 사용 | 대한민국 국방부', 'https://www.youtube.com/watch?v=jVj-FQXL4vM');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (19, '1주일 동안 스마트폰을 멀리했다..그러자 놀라운 일이 생겼다!!', 'https://www.youtube.com/watch?v=PrX35efsuO4');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (20, '[쓸없팁] 은근히 모르는 갤럭시 꿀팁', 'https://www.youtube.com/watch?v=7zW91h5g-FY');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (21, '청소년 7명 중 1명 스마트폰 ‘중독’', 'https://www.youtube.com/watch?v=tBWuk91Gxio');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (22, 'KBS 뉴스9 - 내 아이 스마트폰 중독 이렇게 막는다', 'https://www.youtube.com/watch?v=irGkIeZKgHw');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (23, '월급 오르고 패딩에 스마트폰…확 달라진 요즘 군대 / JTBC 뉴스룸', 'https://www.youtube.com/watch?v=6zot9QTrICk');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (24, '토크 앞에 계급 없다!!! 병사 휴대폰 사용 썰.zip - 계급별 속 풀이 토크쇼 1편 | 대한민국 국방부', 'https://www.youtube.com/watch?v=trN1Yn4Mj3g');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (25, '1시간동안 쳐다보면 핸드폰 주는 삼성~! 대단하다~^^', 'https://www.youtube.com/watch?v=upRSu_mJbXI');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (26, '유튜브 중독자가 알려주는 유튜브 중독 치료법 ? | 유튜브 숨겨진 기능', 'https://www.youtube.com/watch?v=cu2-1y8lz4Q');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (27, '[쓴소리] 초등학생 스마트폰 고민 많으시죠? 디지털 영상 어디까지 허용할까?', 'https://www.youtube.com/watch?v=QnlGzWIlMoc');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (28, '아무도 몰랐던 핸드폰 이용법', 'https://www.youtube.com/watch?v=98JXmirVawU');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (29, '스마트폰 오래하면 뇌크기가 줄어든다?! 아이가 있는 부모라면 꼭 봐야하는 영상!', 'https://www.youtube.com/watch?v=03-wCKI5YYU');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (30, '[공감인터뷰] 사춘기 자녀 스마트폰 사용때문에 발생하는 갈등을 줄이려면?', 'https://www.youtube.com/watch?v=4lL8DZKlYHc');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (31, '[EBS부모] 스마트폰에 중독 된 아이 가족의 생활 규칙을 정해라', 'https://www.youtube.com/watch?v=VqaH0Ml3A-0');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (32, '뉴스 만들기 | 핸드폰 사용시간 줄이기', 'https://www.youtube.com/watch?v=-KmJ-RGWd_M');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (33, '스마트폰은 인생의 낭비다 | 디지털 미니멀리즘', 'https://www.youtube.com/watch?v=Bo2JJlEv3cA');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (34, '[쏘이톡톡] ?스마트폰 수험생의 적인가? 쏘이의 스마트폰 관리방법! /스마트폰 중독 방지 방법!', 'https://www.youtube.com/watch?v=HKYCESVMyL8');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (35, '스마트폰에 중독된 뇌 약물 중독자의 뇌와 비슷하다? / YTN 사이언스', 'https://www.youtube.com/watch?v=Y-ka6TG1zXY');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (36, '? 핸드폰 소개 & 유용한 앱 추천 Introduce cellphone ?ㅣ 릴서', 'https://www.youtube.com/watch?v=iPr9H6QfClg');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (37, '[EBS 육아학교]  스마트폰 사용 시간을 정해주고 정해진 시간에만 사용하게 하면 어떨까요?  / EBS 라이브토크 부모', 'https://www.youtube.com/watch?v=pxCkxBfsIZE');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (38, '군인에게 빨대를 꽂..?? 휴대전화 줬다 뺏으라는 상인들 과연 어떻게 보십니까', 'https://www.youtube.com/watch?v=8xvkh-UXAlE');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (39, '어플을 이용하여 스마트폰 사용 시간 줄이기 | 시간부자', 'https://www.youtube.com/watch?v=H36fF-9wwMg');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (40, '2015.12.24 초등학생 스마트폰 언제 사줘야 하나?', 'https://www.youtube.com/watch?v=SQy7q28ivEg');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (41, '배금주] 스마트폰 중독 꿀팁! : 공부 중 핸드폰 사용 줄이는 방법 4가지', 'https://www.youtube.com/watch?v=jk6o_HA3HOQ');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (42, '스마트폰 사춘기 사용규칙 6가지 약속하세요 박유미원장 5', 'https://www.youtube.com/watch?v=5VoxXBF-_ew');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (43, '학교 국어 프로잭트 ''휴대폰 사용시간을 줄이자''를 주제로 한 영상', 'https://www.youtube.com/watch?v=vl0Z-ZTGvoU');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (44, '[초보맘 탈출기 4편] 스마트폰 미디어 중독 예방하기', 'https://www.youtube.com/watch?v=JrHJ8l_DmB8');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (45, '큰일났습니다.. 방학 동안 핸드폰 사용 금지? 맨날 핸드폰만 하던 비타민 피어스! 결국... ㅠㅠ 여러분은 방학 동안 휴대폰 얼마나 사용하시나요? ｜클레버TV', 'https://www.youtube.com/watch?v=3ae8FaKWG88');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (46, '청소년 스마트폰 사용제한 찬반 토론! 근거자료 포함! 5분만에 끝내는 학교 숙제!', 'https://www.youtube.com/watch?v=hCaOYNFKug8');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (47, '스마트폰 사용제한 어플 소개', 'https://www.youtube.com/watch?v=OhFoGjpO9_A');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (48, '[YTN 사이언스] 과도한 스마트폰 사용 청소년 사시 유발 / YTN 사이언스', 'https://www.youtube.com/watch?v=_IN3pwa76Ss');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (49, '[5분 건강 톡톡] 스마트폰 몰입 15분 목 꺾이고 허리통증까지 / KBS뉴스(News)', 'https://www.youtube.com/watch?v=0JQDxgAEIQ8');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (50, '7일 동안 핸드폰 없이 살아본다면?│오백녀 사회실험', 'https://www.youtube.com/watch?v=22krx1xq9ZA');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (51, '군 휴대전화 허용 100일 “좋긴 좋은데…” / KBS뉴스(News)', 'https://www.youtube.com/watch?v=1SUPrdFSTUA');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (52, '면역력 떨어뜨리는 잘못된 스마트폰 사용습관 6가지  smartphone may harm your immune power', 'https://www.youtube.com/watch?v=eJR37rf5qXI');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (53, '등린이 등산용 App 가이드', 'https://www.youtube.com/watch?v=xz3nhIrGIZo');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (54, '[의경] 핸드폰 사용! 시간 및 사용 주의사항', 'https://www.youtube.com/watch?v=b1KS5FmxJVg');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (55, '우리 아이 집중력 높이는 방법 5가지(꼭 실천해 보세요!)', 'https://www.youtube.com/watch?v=nyXDRNYzEQ4');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (56, '청소년 스마트폰 중독 이렇게 해결하세요! / YTN 사이언스', 'https://www.youtube.com/watch?v=5ObzjgqP690');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (57, '휴대폰 사용 금지는 학생 인권침해이다! [찬성입안]', 'https://www.youtube.com/watch?v=XH5sp4VWJXc');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (58, '[단독] 앱 하나면 ''무장해제''…스마트폰 차단앱 무용지물', 'https://www.youtube.com/watch?v=n44pKy5oNdo');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (59, '과도한 핸드폰 사용 후 발생한 손가락 관절염 대처방법은? Smart phone and finger arthritis', 'https://www.youtube.com/watch?v=HweddHgoCMY');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (60, '스마트폰 중독 예방하는 방법 / YTN 사이언스', 'https://www.youtube.com/watch?v=BOd70vozybU');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (61, '스마트폰 꼭 알아야 할 기능 사용법 배우기', 'https://www.youtube.com/watch?v=DApxj_8w1-Y');

INSERT INTO CRAWLING (Y_ID, Y_TITLE, URL) 
VALUES (62, '휴대폰 사용 금지는 성적향상에 도움을 준다! [반대입안]', 'https://www.youtube.com/watch?v=QJezZgEo1zQ');


COMMIT


