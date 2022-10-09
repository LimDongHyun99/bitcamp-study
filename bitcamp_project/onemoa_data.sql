-- 데이터베이스 생성
-- create database onemoa character set utf8 collate utf8_general_ci;
-- create database test1 character set utf8 collate utf8_general_ci;
-- 사용자 생성 후 데이터베이스에 권한 설정
-- create user 'study'@'localhost' identified by '1111';
-- grant all on onemoa.* to 'study'@'localhost';

-- csv 파일 업로드
-- load data local infile '/Users/bebeco/bitcamp-project/DB/파일명.csv' into table [DB명].[테이블명]] fields terminated by ',';

-- UPDATE [테이블] SET [열] = '변경할값' WHERE [조건] 
-- update job set name='직장인' where jno=2;

-- 테이블 넣는 순서
-- 직업번호 > 회원
-- 재능판매카테고리 > 재능판매 > 재능판매 첨부파일 > 주문내역 > 관심사

-- 직업번호 테이블
insert into job (jno, name) values (1, '프리랜서');
insert into job (jno, name) values (2, '직장인');
insert into job (jno, name) values (3, '소상공인');
insert into job (jno, name) values (4, '스타트업 창업자');
insert into job (jno, name) values (5, '대학(원)생');
insert into job (jno, name) values (6, '취업준비생');

-- 회원 테이블
insert into member (mno, email, pwd, nick, name, tel, cdt, pstno, base_addr, detail_addr, jno, bank, acount, profil, token, status) values (1, 'user1@test.com', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '판매자닉네임
', '판매자', '01011112222', '2022-10-07', '06134', '서울특별시 강남구 역삼동 819-3', '삼오빌딩 5-9층', 1, '국민은행', '111111-11-111111', '프로필사진파일경로', '이메일토큰', 1);
insert into member (mno, email, pwd, nick, name, tel, cdt, pstno, base_addr, detail_addr, jno, bank, acount, profil, token, status) values (2, 'user2@test.com', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '회원닉네임', '홍길동', '01022222222', '2022-10-07', '06134', '서울특별시 강남구 역삼동 819-3', '삼오빌딩 5-9층', 2, null, null, '프로필사진파일경로', '이메일토큰', 1);
insert into member (mno, email, pwd, nick, name, tel, cdt, pstno, base_addr, detail_addr, jno, bank, acount, profil, token, status) values (3, 'user3@test.com', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '회원닉네임', '홍길동', '01033332222', '2022-10-07', '06134', '서울특별시 강남구 역삼동 819-3', '삼오빌딩 5-9층', 3, null, null, '프로필사진파일경로', '이메일토큰', 1);
insert into member (mno, email, pwd, nick, name, tel, cdt, pstno, base_addr, detail_addr, jno, bank, acount, profil, token, status) values (4, 'user4@test.com', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '회원닉네임', '홍길동', '01044442222', '2022-10-07', '06134', '서울특별시 강남구 역삼동 819-3', '삼오빌딩 5-9층', 4, null, null, '프로필사진파일경로', '이메일토큰', 1);
insert into member (mno, email, pwd, nick, name, tel, cdt, pstno, base_addr, detail_addr, jno, bank, acount, profil, token, status) values (5, 'user5@test.com', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '회원닉네임', '홍길동', '01055552222', '2022-10-07', '06134', '서울특별시 강남구 역삼동 819-3', '삼오빌딩 5-9층', 5, null, null, '프로필사진파일경로', '이메일토큰', 1);
insert into member (mno, email, pwd, nick, name, tel, cdt, pstno, base_addr, detail_addr, jno, bank, acount, profil, token, status) values (6, 'user6@test.com', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '회원닉네임', '홍길동', '01066662222', '2022-10-07', '06134', '서울특별시 강남구 역삼동 819-3', '삼오빌딩 5-9층', 6, null, null, '프로필사진파일경로', '이메일토큰', 1);


-- 재능판매카테고리 테이블
insert into product_category (pcno, pctier, pcname, pcparent) values ('010000', 1, '디자인', '010000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('020000', 1, 'IT·프로그래밍', '020000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('030000', 1, '영상·사진·음향', '030000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('040000', 1, '마케팅', '040000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('050000', 1, '번역·통역', '050000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('060000', 1, '문서·글쓰기', '060000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('070000', 1, '비즈니스컨설팅', '070000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('080000', 1, '주문제작', '080000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('010100', 2, '로고·브랜딩', '010000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('010200', 2, '상세·이벤트 페이지', '010000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('010300', 2, '명함·인쇄·홍보물', '010000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('010400', 2, 'PPT·인포그래픽', '010000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('010500', 2, '웹·모바일 디자인', '010000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('010600', 2, '패키지 디자인', '010000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('010700', 2, '일러스트·캐리커쳐', '010000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('010800', 2, '웹툰·캐릭터·이모티콘', '010000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('010900', 2, '블로그·SNS·썸네일', '010000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('011000', 2, '포토샵·파일변환', '010000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('011100', 2, '제품·3D프린팅', '010000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('011200', 2, '공간디자인', '010000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('011300', 2, '북·앨범디자인', '010000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('011400', 2, '캘리그라피·폰트', '010000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('011500', 2, '메타버스·NFT아트', '010000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('011600', 2, 'VR·AR·게임', '010000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('011700', 2, '의류디자인', '010000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('011800', 2, '간판·시공', '010000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('011900', 2, '템플릿', '010000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('020100', 2, '모바일 앱', '020000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('020200', 2, '웹', '020000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('020300', 2, '프로그램', '020000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('020400', 2, '쇼핑몰·커머스', '020000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('020500', 2, '워드프레스', '020000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('020600', 2, '데이터', '020000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('020700', 2, '기획', '020000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('020800', 2, '게임·AR·VR', '020000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('020900', 2, '메타버스', '020000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('021000', 2, '블록체인', '020000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('021100', 2, '임베디드 HW·SW', '020000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('021200', 2, '서버·호스팅', '020000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('021300', 2, '데이터베이스', '020000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('021400', 2, '보안', '020000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('021500', 2, '챗봇', '020000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('021600', 2, 'QA·테스트', '020000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('021700', 2, '기술지원', '020000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('030100', 2, '영상촬영·편집', '030000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('030200', 2, '인터뷰 영상', '030000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('030300', 2, '교육 영상', '030000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('030400', 2, '이벤트 영상', '030000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('030500', 2, '유튜브 제작', '030000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('030600', 2, '온라인 생중계', '030000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('030700', 2, '드론 촬영', '030000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('030800', 2, '애니메이션', '030000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('030900', 2, '인포·모션그래픽', '030000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('031000', 2, '3D·VR', '030000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('031100', 2, '인트로·로고', '030000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('031200', 2, '영상 자막', '030000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('031300', 2, '영상 템플릿', '030000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('031400', 2, '사진촬영', '030000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('031500', 2, '사진·영상 보정', '030000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('031600', 2, '성우', '030000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('031700', 2, '음악·사운드', '030000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('031800', 2, '모델·MC·공연', '030000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('031900', 2, '스튜디오 렌탈', '030000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('032000', 2, '헤어메이크업', '030000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('032100', 2, '콘티·스토리보드', '030000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('040100', 2, '블로그 마케팅', '040000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('040200', 2, '카페 마케팅', '040000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('040300', 2, 'SNS 마케팅', '040000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('040400', 2, '쇼핑몰·스토어', '040000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('040500', 2, '체험단·기자단 대행', '040000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('040600', 2, '웹 트래픽', '040000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('040700', 2, '언론홍보', '040000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('040800', 2, '종합광고대행', '040000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('041000', 2, '지도등록·홍보', '040000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('041100', 2, '앱마케팅', '040000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('041200', 2, '라이브커머스', '040000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('041300', 2, '개인 인플루언서', '040000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('041400', 2, '키워드·배너광고', '040000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('041500', 2, '포털질문·답변', '040000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('041600', 2, '마케팅 컨설팅', '040000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('041700', 2, '영상 마케팅', '040000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('041800', 2, '오프라인광고', '040000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('041900', 2, '해외마케팅', '040000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('042000', 2, '브랜드마케팅', '040000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('050100', 2, '산업별 전문번역', '050000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('050200', 2, '일반 번역', '050000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('050300', 2, '통역', '050000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('050400', 2, '영상번역', '050000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('050500', 2, '감수', '050000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('050600', 2, '번역공증대행', '050000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('060100', 2, '기업명·네이밍', '060000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('060200', 2, '제품 카피라이팅', '060000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('060300', 2, '광고 카피라이팅', '060000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('060400', 2, 'SNS 카피라이팅', '060000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('060500', 2, 'Email 카피라이팅', '060000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('060600', 2, 'UX 라이팅', '060000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('060700', 2, '블로그 원고', '060000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('060800', 2, '웹사이트·SEO', '060000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('060900', 2, '보도자료·기사·칼럼', '060000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('061000', 2, '산업별 전문 글작성', '060000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('061100', 2, '타이핑(영상)', '060000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('061200', 2, '타이핑(문서)', '060000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('061300', 2, '책·전자책 출판', '060000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('061400', 2, '시나리오·대본', '060000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('061500', 2, '논문', '060000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('061600', 2, '교정·교열 첨삭', '060000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('061700', 2, '잡포털 이력서 교정', '060000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('061800', 2, '맞춤양식', '060000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('070100', 2, '사업계획서·투자제안서', '070000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('070200', 2, '퍼스널 브랜딩', '070000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('070300', 2, '유튜브 컨설팅', '070000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('070400', 2, '창업 컨설팅', '070000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('070500', 2, '쇼핑몰·스토어 창업', '070000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('070600', 2, '크라우드펀딩', '070000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('070700', 2, '해외사업 컨설팅', '070000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('070800', 2, '리서치·설문조사', '070000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('070900', 2, 'HR 컨설팅', '070000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('071000', 2, '업무지원·CS', '070000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('010101', 3, '로고디자인', '010100');
insert into product_category (pcno, pctier, pcname, pcparent) values ('010102', 3, '브랜딩', '010100');
insert into product_category (pcno, pctier, pcname, pcparent) values ('010202', 3, '기획·촬영·디자인', '010200');
insert into product_category (pcno, pctier, pcname, pcparent) values ('010203', 3, '번역·디자인', '010200');
insert into product_category (pcno, pctier, pcname, pcparent) values ('010204', 3, '배너·gif 이미지', '010200');
insert into product_category (pcno, pctier, pcname, pcparent) values ('010301', 3, '명함디자인', '010300');
insert into product_category (pcno, pctier, pcname, pcparent) values ('010302', 3, '전단·포스터·인쇄물', '010300');
insert into product_category (pcno, pctier, pcname, pcparent) values ('010303', 3, '현수막·X배너', '010300');
insert into product_category (pcno, pctier, pcname, pcparent) values ('010304', 3, '메뉴판', '010300');
insert into product_category (pcno, pctier, pcname, pcparent) values ('010305', 3, '홍보물 인쇄·출력', '010300');
insert into product_category (pcno, pctier, pcname, pcparent) values ('010306', 3, '스티커·봉투·초대장', '010300');
insert into product_category (pcno, pctier, pcname, pcparent) values ('010307', 3, '바코드·QR코드', '010300');
insert into product_category (pcno, pctier, pcname, pcparent) values ('010401', 3, 'PPT', '010400');
insert into product_category (pcno, pctier, pcname, pcparent) values ('010402', 3, '인포그래픽', '010400');
insert into product_category (pcno, pctier, pcname, pcparent) values ('010501', 3, 'UI·UX디자인', '010500');
insert into product_category (pcno, pctier, pcname, pcparent) values ('010502', 3, '아이콘·버튼', '010500');
insert into product_category (pcno, pctier, pcname, pcparent) values ('010503', 3, '기획·스토리보드', '010500');
insert into product_category (pcno, pctier, pcname, pcparent) values ('010504', 3, '템플릿형 홈페이지', '010500');
insert into product_category (pcno, pctier, pcname, pcparent) values ('010701', 3, '개인용 일러스트', '010700');
insert into product_category (pcno, pctier, pcname, pcparent) values ('010702', 3, '상업용 일러스트', '010700');
insert into product_category (pcno, pctier, pcname, pcparent) values ('010703', 3, '메디컬 일러스트', '010700');
insert into product_category (pcno, pctier, pcname, pcparent) values ('010704', 3, '캐리커쳐', '010700');
insert into product_category (pcno, pctier, pcname, pcparent) values ('010801', 3, '웹툰·콘티', '010800');
insert into product_category (pcno, pctier, pcname, pcparent) values ('010802', 3, '2D 캐릭터', '010800');
insert into product_category (pcno, pctier, pcname, pcparent) values ('010803', 3, '3D 캐릭터·그래픽', '010800');
insert into product_category (pcno, pctier, pcname, pcparent) values ('010804', 3, '이모티콘', '010800');
insert into product_category (pcno, pctier, pcname, pcparent) values ('010901', 3, '블로그·카페', '010900');
insert into product_category (pcno, pctier, pcname, pcparent) values ('010902', 3, 'SNS·썸네일', '010900');
insert into product_category (pcno, pctier, pcname, pcparent) values ('011001', 3, '보정·누끼·합성', '011000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('011002', 3, '파일변환', '011000');
insert into product_category (pcno, pctier, pcname, pcparent) values ('011101', 3, '제품 설계·디자인', '011100');
insert into product_category (pcno, pctier, pcname, pcparent) values ('011102', 3, '3D프린팅·후가공', '011100');
insert into product_category (pcno, pctier, pcname, pcparent) values ('011201', 3, 'CAD도면', '011200');
insert into product_category (pcno, pctier, pcname, pcparent) values ('011202', 3, '3D도면·모델링', '011200');
insert into product_category (pcno, pctier, pcname, pcparent) values ('011203', 3, '인테리어 설계·시공', '011200');
insert into product_category (pcno, pctier, pcname, pcparent) values ('011204', 3, '전시·무대 디자인', '011200');
insert into product_category (pcno, pctier, pcname, pcparent) values ('011301', 3, '북커버·내지', '011300');
insert into product_category (pcno, pctier, pcname, pcparent) values ('011302', 3, '앨범커버', '011300');
insert into product_category (pcno, pctier, pcname, pcparent) values ('011401', 3, '캘리그라피', '011400');
insert into product_category (pcno, pctier, pcname, pcparent) values ('011402', 3, '폰트', '011400');
insert into product_category (pcno, pctier, pcname, pcparent) values ('011403', 3, '사인·직인', '011400');
insert into product_category (pcno, pctier, pcname, pcparent) values ('011601', 3, '게임용원화', '011600');
insert into product_category (pcno, pctier, pcname, pcparent) values ('011602', 3, '게임용 3D소스', '011600');
insert into product_category (pcno, pctier, pcname, pcparent) values ('011603', 3, 'VR·AR', '011600');
insert into product_category (pcno, pctier, pcname, pcparent) values ('011604', 3, '게임 UI·UX', '011600');
insert into product_category (pcno, pctier, pcname, pcparent) values ('011701', 3, '패션 그래픽 디자인', '011700');
insert into product_category (pcno, pctier, pcname, pcparent) values ('011702', 3, '작업지시서·도식화', '011700');
insert into product_category (pcno, pctier, pcname, pcparent) values ('011703', 3, '패턴·샘플제작', '011700');
insert into product_category (pcno, pctier, pcname, pcparent) values ('020101', 3, '네이티브앱', '020100');
insert into product_category (pcno, pctier, pcname, pcparent) values ('020102', 3, '하이브리드앱·웹앱', '020100');
insert into product_category (pcno, pctier, pcname, pcparent) values ('020103', 3, '앱 개선·버그수정', '020100');
insert into product_category (pcno, pctier, pcname, pcparent) values ('020201', 3, '웹사이트 제작', '020200');
insert into product_category (pcno, pctier, pcname, pcparent) values ('020202', 3, '웹사이트 제작(CMS)', '020200');
insert into product_category (pcno, pctier, pcname, pcparent) values ('020203', 3, '웹사이트 개선·버그수정', '020200');
insert into product_category (pcno, pctier, pcname, pcparent) values ('020204', 3, '프론트엔드·퍼블리싱', '020200');
insert into product_category (pcno, pctier, pcname, pcparent) values ('020205', 3, '랜딩페이지', '020200');
insert into product_category (pcno, pctier, pcname, pcparent) values ('020206', 3, '검색최적화·SEO', '020200');
insert into product_category (pcno, pctier, pcname, pcparent) values ('020207', 3, '애널리틱스', '020200');
insert into product_category (pcno, pctier, pcname, pcparent) values ('020301', 3, '일반 프로그램', '020300');
insert into product_category (pcno, pctier, pcname, pcparent) values ('020302', 3, 'VBA·매크로', '020300');
insert into product_category (pcno, pctier, pcname, pcparent) values ('020303', 3, '프로그램 개선·버그수정', '020300');
insert into product_category (pcno, pctier, pcname, pcparent) values ('020401', 3, '쇼핑몰 웹사이트 제작', '020400');
insert into product_category (pcno, pctier, pcname, pcparent) values ('020402', 3, '쇼핑몰 웹사이트 제작(CMS)', '020400');
insert into product_category (pcno, pctier, pcname, pcparent) values ('020403', 3, '쇼핑몰 웹사이트 개선·버그수정', '020400');
insert into product_category (pcno, pctier, pcname, pcparent) values ('020501', 3, '워드프레스 웹사이트 제작', '020500');
insert into product_category (pcno, pctier, pcname, pcparent) values ('020502', 3, '워드프레스 웹사이트 개선·버그수정', '020500');
insert into product_category (pcno, pctier, pcname, pcparent) values ('020503', 3, '설치·설정', '020500');
insert into product_category (pcno, pctier, pcname, pcparent) values ('020504', 3, '복제·마이그레이션', '020500');
insert into product_category (pcno, pctier, pcname, pcparent) values ('020601', 3, '구매·구축', '020600');
insert into product_category (pcno, pctier, pcname, pcparent) values ('020602', 3, '전처리', '020600');
insert into product_category (pcno, pctier, pcname, pcparent) values ('020603', 3, '라벨링', '020600');
insert into product_category (pcno, pctier, pcname, pcparent) values ('020604', 3, '마이닝·크롤링', '020600');
insert into product_category (pcno, pctier, pcname, pcparent) values ('020605', 3, '분석', '020600');
insert into product_category (pcno, pctier, pcname, pcparent) values ('020606', 3, '시각화', '020600');
insert into product_category (pcno, pctier, pcname, pcparent) values ('020607', 3, '인공지능·머신러닝', '020600');
insert into product_category (pcno, pctier, pcname, pcparent) values ('020801', 3, '2D·3D', '020800');
insert into product_category (pcno, pctier, pcname, pcparent) values ('020802', 3, 'AR·VR', '020800');
insert into product_category (pcno, pctier, pcname, pcparent) values ('031501', 3, '사진 보정', '031500');
insert into product_category (pcno, pctier, pcname, pcparent) values ('031502', 3, '영상 보정', '031500');
insert into product_category (pcno, pctier, pcname, pcparent) values ('031601', 3, '남성 성우', '031600');
insert into product_category (pcno, pctier, pcname, pcparent) values ('031602', 3, '여성 성우', '031600');
insert into product_category (pcno, pctier, pcname, pcparent) values ('031603', 3, '외국어 성우', '031600');
insert into product_category (pcno, pctier, pcname, pcparent) values ('031801', 3, '모델', '031800');
insert into product_category (pcno, pctier, pcname, pcparent) values ('031802', 3, 'MC', '031800');
insert into product_category (pcno, pctier, pcname, pcparent) values ('031803', 3, '공연', '031800');



-- 재능판매 테이블
insert into product (pno, pcno, mno, title, cont, price, vcnt, cdt, thumbnail, thumbnailpath) values (1, '010100', 1, '로고제작 공모전 488회우승 로고디자인 CI BI 드림', ' 로고 디자인 공모전 488회 우승 국내 로고 제작 경력 최다 디자이너가 직접 진행 상담은 무료입니다.:)', 1000000, 1000, '2022-10-06', '썸네일파일이름.png', '3b0f725d-8c53-4cae-9eec-58e64a50316c
');
insert into product (pno, pcno, mno, title, cont, price, vcnt, cdt, thumbnail, thumbnailpath) values (2, '010101', 1, '미술,디자인,작가가 모여 감각적인 로고 제작해드립니다.', '안녕하세요:)
디자인, 미술, 포토그래퍼가 모인 로고회사입니다.
다양한 분야에서 다양한 시선으로 고객님을 이해하며 소통하는 로고고입니다.
브랜드의 첫인상인 로고 끝까지 책임지고 만들어드리겠습니다.', 220000, 1000, '2022-10-06', '썸네일파일이름.png', 'b1fe7835-1fcd-40d6-b495-450e5cac3f21');
insert into product (pno, pcno, mno, title, cont, price, vcnt, cdt, thumbnail, thumbnailpath) values (3, '010200', 1, '고객의 마음을 사로잡는 상세페이지를 제작해 드립니다.
', '-배너 / 이벤트페이지 / 쇼핑몰상세페이지
-썸네일/자사물 상세페이지
-쇼핑몰 상세페이지
-오픈마켓 상세페이지

무엇이든 디자인하고 책임지고 작업해드리겠습니다.!!', 275000, 1000, '2022-10-06', '썸네일파일이름.png', '5f769e8c-378c-4044-9da4-108c0ce9a360');
insert into product (pno, pcno, mno, title, cont, price, vcnt, cdt, thumbnail, thumbnailpath) values (4, '010101', 1, '"2년 연속 크몽 어워즈 대상" 실력을 보여 드립니다.
', '2020크몽 어워즈 대상 수상!
2020~2021년 기준, 크몽 디자인 카테고리 압도적 1위!

압도적인 만족도와 리뷰를 살펴보세요.', 300000, 1000, '2022-10-06', '썸네일파일이름.png', 'efc680ad-1f3f-47aa-a9fe-a84fcc740a2f');
insert into product (pno, pcno, mno, title, cont, price, vcnt, cdt, thumbnail, thumbnailpath) values (5, '010101', 1, '"디자인어워드 수상"검증된 디자이너가 로고디자인 제작해 드립니다.
', '안녕하세요 Brand03입니다.
직접 의뢰자님의 브랜드를 분석, 컨설팅하여 원하시는 컨셉에 맞게 고퀄리티 로고를 제작해드립니다. 디자이너 브랜드, 인테리어 전문 회사, 기업, 카페 브랜딩 등 다양한 경험으로 만족스러운 결과물, 합리적인 가격을 약속드리겠습니다.

감각적인 로고(BI, CI) 디자인으로 의뢰자님의 시작을 함께 하겠습니다

포트폴리오를 확인해 주세요 :D', 210000, 1000, '2022-10-06', '썸네일파일이름.png', '50462bb8-e3bf-44d3-a404-00a89667c20a');
insert into product (pno, pcno, mno, title, cont, price, vcnt, cdt, thumbnail, thumbnailpath) values (6, '010101', 1, '"로고마스터"가 당신과 브랜드의 가치에 한끗을 더하다
', '브랜드(BRAND)는 당신의 비즈니스에 있어서 가장 중요하고 강력한 투자입니다.

지난 10년간 국민은행, SH공사, 현대건설, 한국미니스톱, 기상청 등을 대상으로 다양한 디자인 프로젝트를 진행하였습니다', 79000, 1000, '2022-10-06', '썸네일파일이름.png', 'd829d0b0-4d68-4eec-a050-daa4982f2baf');
insert into product (pno, pcno, mno, title, cont, price, vcnt, cdt, thumbnail, thumbnailpath) values (7, '010101', 1, '컬러리스트산업기사,한양대출신디자이너가제작해 드립니다.
', '한양여대 도자기공예과 졸업
한양대 산업디자인 졸업
컬러리스트 산업기사 자격증 취득
오랜경력의 디자인업체 근무
현재 포토샵,일러스트의 디자인관련 교육중', 175000, 2000, '2022-10-08', '썸네일파일이름.png', '7355f53e-b89d-4847-b64f-08d9d1edfd95
');
insert into product (pno, pcno, mno, title, cont, price, vcnt, cdt, thumbnail, thumbnailpath) values (8, '010101', 1, '로고디자인 단 하루 24시간내 로고제작 해드립니다
', '로고 전문 디자인 밴페로디자인 입니다.

', 130000, 2000, '2022-10-08', '썸네일파일이름.png', '7355f53e-b89d-4847-b64f-08d9d1edfd95');


-- 재능 판매 첨부파일 테이블
insert into product_file (pfno, fname, fpath, pno) values (1, '재능판매첨부파일.png', 'cbb47e3b-07d5-46aa-80b2-45d3f4c53036', 1);
insert into product_file (pfno, fname, fpath, pno) values (2, '재능판매첨부파일.png', 'eab71390-c6f7-4383-8be2-ced30b6c7ea1', 1);
insert into product_file (pfno, fname, fpath, pno) values (3, '재능판매첨부파일.png', 'e37e15ec-2fb6-4e13-ad8c-f98eaa7a7ea8', 2);
insert into product_file (pfno, fname, fpath, pno) values (4, '재능판매첨부파일.png', '16908671-4490-4615-9b4d-ca689f69c437', 2);
insert into product_file (pfno, fname, fpath, pno) values (5, '재능판매첨부파일.png', 'f5569e6b-59c4-48cd-a689-adc32abb2135', 3);
insert into product_file (pfno, fname, fpath, pno) values (6, '재능판매첨부파일.png', '2ac6da8e-30e2-4505-b12a-dde40d23764a', 3);
insert into product_file (pfno, fname, fpath, pno) values (7, '재능판매첨부파일.png', 'e96d3524-226f-4fab-a1fe-223cfeb43aa3', 4);
insert into product_file (pfno, fname, fpath, pno) values (8, '재능판매첨부파일.png', '08ddc509-79a9-4752-a10c-c63a8e63f9f7', 4);
insert into product_file (pfno, fname, fpath, pno) values (9, '재능판매첨부파일.png', '61ca9cda-6b8f-4319-9c7b-f3c4f65cc2b6', 5);
insert into product_file (pfno, fname, fpath, pno) values (10, '재능판매첨부파일.png', '855e19f8-9ee0-47ea-803d-85770991d0e1', 5);
insert into product_file (pfno, fname, fpath, pno) values (11, '재능판매첨부파일.png', 'a410954e-4ffb-4cbb-9602-91c23b74c0e1', 6);
insert into product_file (pfno, fname, fpath, pno) values (12, '재능판매첨부파일.png', '933a30f5-46f0-49b5-bb08-0e3b257b1a66', 6);

-- 주문내역 테이블
insert into product_order (pono, mno, pno, cdt, payment, paycdt, status) values (1, 2, 1, '2022-10-07', '카카오페이', '2022-10-07', '진행중');
insert into product_order (pono, mno, pno, cdt, payment, paycdt, status) values (2, 2, 2, '2022-10-07', '카카오페이', '2022-10-07', '발송중');
insert into product_order (pono, mno, pno, cdt, payment, paycdt, status) values (3, 2, 3, '2022-10-07', '카카오페이', '2022-10-07', '완료');
insert into product_order (pono, mno, pno, cdt, payment, paycdt, status) values (4, 3, 1, '2022-10-07', '카카오페이', '2022-10-08', '진행중');
insert into product_order (pono, mno, pno, cdt, payment, paycdt, status) values (5, 3, 2, '2022-10-07', '카카오페이', '2022-10-08', '발송중');
insert into product_order (pono, mno, pno, cdt, payment, paycdt, status) values (6, 3, 3, '2022-10-07', '카카오페이', '2022-10-08', '완료');

-- 관심사 테이블
insert into interest (mno, pcno) values (2, '010000');
insert into interest (mno, pcno) values (2, '020000');
insert into interest (mno, pcno) values (2, '030000');
insert into interest (mno, pcno) values (3, '040000');
insert into interest (mno, pcno) values (3, '050000');
insert into interest (mno, pcno) values (3, '060000');

