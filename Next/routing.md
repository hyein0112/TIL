# Routing

Next.js 의 Router는 file-system 기반이다.

## 정적 라우팅

기존 React 프로젝트에서 react-router-dom으로 라우팅하는 과정 없이 pages 폴더 안에 지정된 파일 명으로 라우팅한다.

ex) <br>
pages/index.js → example:3000/ <br>
pages/test → example:3000/test

## 동적 라우팅

파일 명을 `대괄호[]`로 감싸면 해당 페이지는 동적으로 경로가 지정되는 페이지가 된다.

ex) <br>
pages/category/[slug].js → example:3000/category/_ <br>
pages/[username]/info.js → example:3000/_/info

`[...slug]`와 같이 `...`을 붙여 파일명을 정하게 되면 뒤에 오는 모든 것을 동적으로 라우팅한다.

ex) <br> pages/cart/[…date].js → example:3000/cart/_ /_ /…
