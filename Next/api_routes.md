# API Routes

## API란?

Application Programming Interface

컴퓨터나 컴퓨터 프로그램 사이의 연결

고객이 DB에 접근하기 위해 FE는 BE와 연결되어야하고, 이때 API를 활용한다.

BE가 제공해주는 API를 통해 DB의 내용을 활용할 수 있다.

## Next.js가 제공하는 API Routes

pages/api/\*

## API Middlewares

내장 Middleware의 기능

req.cookies / req.query …

req / res 관련 다양한 기능들은 Middleware 활용 ex) CORS

## Response

- res.status(code)
- res.json(body): serializable object
- res.redirect(code, url)
- res.send(body): string / object / Buffer
