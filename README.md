# LEDBoard

LED 전광판 





### DEMO

---

![ezgif com-gif-maker (1)](https://user-images.githubusercontent.com/51107183/147537525-c7da55aa-acbb-4680-8c07-c33c3f4c92b2.gif)



## 배운내용 

### 화면전환 방법

- ViewController 의 View 위에 다른 View를 가져와 바꿔치기 
- View Controller에서 다른 View Controller를 호출하여 전환하기 
- Navigation Controller 를 사용하여 화면 전환하기 
- 화면 전환용 객체 세그웨이(Segueway)를 사용하여 화면전환하기



### ViewController Life Cycle

<img width="525" alt="스크린샷 2021-12-28 오후 3 57 34" src="https://user-images.githubusercontent.com/51107183/147537756-e4b3ceb5-7250-4650-b479-819f9d333943.png">



- **Appearing**	

  뷰가 화면에 나타나는 중

- **Appeard**

  뷰가 화면에 나타나는게 완료 된 상태 

- **Disappearing**

  뷰가 화면에서 사라지는 중

- **Disappeared **

  뷰가 화면에서 사라진 상태



#### ViewDidLoad()

- 뷰 컨트롤러의 모든 뷰들이 메모리에 로드되었을 때 호출 
- 메모리에 처음 로드될 때 한 번만 호출
- 보통 딱 한번 호출될 행위들을 이 메소드에 정의 
- 뷰와 관련된 추가적인 초기화 작업, 네트워크 호출



#### viewWillAppear()

- 뷰가 뷰 계층에 추가되고, 화면에 보이기 직전에 매 번 호출 
- 다른 뷰로 이동했다가 돌아오면 재호출
- 뷰와 관련된 추가적인 초기화 작업



#### viewDidAppear()

- 뷰 컨트롤러의 뷰가 뷰 계층에 추가된 후 호출 
- 뷰를 나타낼 때 필요한 추가 작업
- 애니메이션을 시작하는 작업



#### viewWillDisappear()

- 뷰 컨트롤러의 뷰가 뷰 계층에서 사라지기 전에 호출 
- 뷰가 생성된 뒤 작업한 내용을 되돌리는 작업
- 최정적으로 데이터를 저장하는 작업



#### viewDidDisappear()

- 뷰 컨트롤러의 뷰가 뷰 계층에서 사라진 뒤에 호출 
- 뷰가 사라지는 것과 관련된 추가 작업



### 화면간 데이터 전달하기 

- 코드로 구현된 화면 전환 방법에서 데이터 전달하기
- 세그웨이로 구현된 화면 전환 방법에서 데이터 전달하기
- Delegate 패턴을 이용하여 이전 화면으로 데이터 전달하기 









