# 💪🏻 헬스장 웹 페이지 만들기!(팀 프로젝트)  
헬스장 소개 및 예약, 스케줄 관리, 쪽지기능, 게시판 기능을 포함한 웹 페이지 입니다.  
[우리동네 올림픽으로 이동!](http://우리동네올림픽.kro.kr/)
#### 👩🏻‍💻담당 업무👩🏻‍💻
- 게시판 CRUD 작업의 전반적인 F/E 업무 수행 (페이지 디자인(HTML5, CSS), JSP, Controller)  
- 일부 B/E 기능 구현(DAO, Service, Mapper)  
- 회원 간 쪽지기능 F/E 업무 수행
#### 📚기술스택📚
<img src="https://img.shields.io/badge/HTML5-E34F26?style=flat&logo=HTML5&logoColor=white"/> <img src="https://img.shields.io/badge/CSS3-1572B6?style=flat&logo=CSS3&logoColor=white"/> <img src="https://img.shields.io/badge/JavaScript-F7Df1E?style=flat&logo=JavaScript&logoColor=white"/> <img src="https://img.shields.io/badge/jQuery-0769AD?style=flat&logo=jQuery&logoColor=white"/>  
<img src="https://img.shields.io/badge/Spring-6DB33F?style=flat&logo=Spring&logoColor=white"/> <img src="https://img.shields.io/badge/Visual Studio Code-007ACC?style=flat&logo=Visual Studio Code&logoColor=white"/> <img src="https://img.shields.io/badge/GitHub-181717?style=flat&logo=GitHub&logoColor=white"/>  
<img src="https://img.shields.io/badge/Tomcat-F8DC75?style=flat&logo=Apache Tomcat&logoColor=white"/> <img src="https://img.shields.io/badge/Discord-5865F2?style=flat&logo=Discord&logoColor=white"/> <img src="https://img.shields.io/badge/MySQL-4479A1?style=flat&logo=MySQL&logoColor=white"/>  


## 주제 선정 이유  
- 코로나 시국으로 운동에 대한 관심 증가하면서 회원간 쪽지 기능과 운동 커뮤니티를 활성화 시키자!
- 집에서 편리하게 GX룸을 예약 할 수 있게 하자!  

## 주요 기능
- 각종 커뮤니티 게시판 
- 원하는 날짜에 GX룸 예약기능 개발  
- 회원 간 쪽지 기능 구현 

## USECASE
- 회원  
    - 회원가입, 각종 커뮤니티 게시판 글쓰기 및 댓글을 등록, 수정, 삭제 할 수 있다.  
    - 원하는 날짜에 GX룸 스케줄을 조회, 예약, 취소, 조회 할 수 있다.  
    - 회원 정보 수정 및 탈퇴 할 수 있고 내가 쓴 글, 댓글을 조회 할 수 있다.  
- 관리자
    - 공지사항 게시판 글쓰기 등록, 삭제 할 수 있다.
    - GX룸 스케줄을 등록, 삭제 및 관리 할 수 있다.
    
## 일정
<img width="900" alt="skd" src="https://user-images.githubusercontent.com/121228651/221449297-9107b630-abc3-4e47-9271-b35ad5ace1a3.png">

## ERD
<img width="900" alt="erd" src="https://user-images.githubusercontent.com/121228651/221449013-479e5879-e151-41ef-a268-70a6ba631cb2.png">  

## 플로우 차트
<img width="900" alt="flowchart" src="https://user-images.githubusercontent.com/121228651/221450076-95eaff7d-9988-4a1d-9192-aca25668ebb5.png">

---
## 화면 설계

### 홈 화면
<img width="900" alt="main" src="https://user-images.githubusercontent.com/121228651/221135181-9af88ad2-8380-4b52-8bd5-3defa0a9b094.png">  

- 헤더,푸터는 공통으로 모든 페이지 적용했고,중앙 좌측 (공지사항,자유게시판,운동지식공유) 게시판을 탭 형태로 나눴습니다. 
- 중앙 우측에는 G.X룸 예약할 수 있는 버튼, 이용권을 구매할 수 있는 버튼이며, 버튼을 누를경우 페이지 이동이 됩니다.
- 아래쪽에 이미지들은 G.X의 운동종류 이미지로 Swiper.js를 사용하였습니다.
---
 
  
### 공지사항 게시판 화면  
<img width="900" alt="notice" src="https://user-images.githubusercontent.com/121228651/221140250-45aef855-fc5b-402e-a885-a4efbbad430d.png">   

- 한 페이지 당 10개의 게시물을 출력하고, 한번에 보여지는 페이지의 갯수는 5개입니다.
- 5개 이상의 페이지가 생성되면 [이전], [다음] 으로 이동할 수 있습니다.
  
### 쪽지함 화면
<img width="900" alt="message" src="https://user-images.githubusercontent.com/121228651/221402881-ce72134c-3145-46c9-9004-4116468017f5.png">  
  
### 예약하기 화면
<img width="900" alt="reserve" src="https://user-images.githubusercontent.com/121228651/221403232-1698dfba-0119-4d37-a767-19ec1103ce95.png">  
  
### 마이페이지 화면
<img width="900" alt="mypage" src="https://user-images.githubusercontent.com/121228651/221403425-0bd6651e-0b56-44b5-8614-d8aecb9a5628.png">
