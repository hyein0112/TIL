# How to use git?


>  git 명령어

### 사용자, 이메일 설정

```bash
git config --global user.name "User name"
git config --global user.email "User email"
```

### 설정 정보 조회

```bash
git config --global --list

git config user.name //name 조회
git config user.email //email 조회
```

### 저장소 초기화

```bash
git init
```   

### 스테이징 및 커밋
```bash
git add <file> 
git add . //모든 파일 스테이징

git commit -m "commit message"
```

### 변경 사항 확인
```
git diff 
```


### branch list 보기

```bash
git branch //로컬 
git branch -r //원격
git branch -a //전체
```


### branch 생성 및 check out

```bash
git branch <New branch> //새로운 branch 생성
git check out <branch> //check out
git checkout -b <New branch> //새로운 branch 생성 후 이동
git checkout master //master branch로 이동
```


### branch 삭제

```bash
git branch -d <branch>
```


### 저장소 복제

```bash
git clone <URL>
```







