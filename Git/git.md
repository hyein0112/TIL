# How to use git?


>  git 명령어

### 사용자, 이메일 설정

```
git config --global user.name "User name"
git config --global user.email "User email"
```

### 설정 정보 조회

```
git config --global --list

git config user.name //name 조회
git config user.email //email 조회
```

### 저장소 초기화

```
git init
```   

### 스테이징 및 커밋
```
git add <file> 
git add . //모든 파일 스테이징

git commit -m "commit message"
```

### 변경 사항 확인
```
git diff 
```

### 저장소 복제

```
git clone <URL>
```


### branch list 보기

```
git branch //로컬 
git branch -r //원격
git branch -a //전체
```


### branch 생성 및 check out

```
git branch <New branch> //새로운 branch 생성
git check out <branch> //check out
git checkout -b <New branch> //새로운 branch 생성 후 이동
git checkout master //master branch로 이동
```


### branch 삭제

```
git branch -d <branch>
```

[Reference](https://velog.io/@delilah/GitHub-Git-%EB%AA%85%EB%A0%B9%EC%96%B4-%EB%AA%A8%EC%9D%8C)









