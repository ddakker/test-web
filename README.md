# 기초 맛보기

## IDE 셋팅
* java 8이나 11 설치
* https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.56/bin/apache-tomcat-9.0.56.zip
* https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/2021-12/R/eclipse-jee-2021-12-R-win32-x86_64.zip&mirror_id=1273

## 설정
* eclpise.ini
	* 하단에 추가 ```-Dfile.encoding=UTF-8```




## 프로젝트 셋팅
* File 메뉴 -> New -> Dynamic Web Project
	* Project Name: test-web
	* Dynamic Web Module version: 3.1
	* Finish

* src/main/webapp 마우스 오른쪽 New -> Jsp File
	* index.jsp 생성

## Tomcat 셋팅
* Window 메뉴 -> Show View -> Serversr 선택
	* new server 클릭
	* Apache -> Tomcat 9 선택
	* Tomcat HOME 디렉토리 선택
	* JRE -> Installed JREs... Add.. -> Standard VM
		* JDK 8 HOME 디렉토리 선택
		* 추가된 JDK 체크 박스 체크
	* RRE: 추가된 JDK 선택
	* Next
		* test-web ---> 오른쪽(Configured)으로 Add
	* Finish
	* 마우스 오른쪽 start
	* 브라우저
		* http://localhost:8080/test-web/index.jsp