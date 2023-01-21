# Pre-renders와 SEO

## Pre-rendering

Next.js는 모든 페이지를 기본적으로 Pre-renders한다.
![스크린샷 2023-01-08 16.50.57.png](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/ae78558e-3d64-4d76-96c7-d377ddea8edc/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA_2023-01-08_16.50.57.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230201%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230201T183209Z&X-Amz-Expires=86400&X-Amz-Signature=cf3b3e4ef7bcf1a39a9069360cf92934242589f27ca0be9a6fd9076c02ad6d55&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22%25E1%2584%2589%25E1%2585%25B3%25E1%2584%258F%25E1%2585%25B3%25E1%2584%2585%25E1%2585%25B5%25E1%2586%25AB%25E1%2584%2589%25E1%2585%25A3%25E1%2586%25BA%25202023-01-08%252016.50.57.png%22&x-id=GetObject)

Pre-render를 할 경우 브라우저에서 js가 로딩되지 않아도 기본 구조 (HTML, CSS)등이 디스플레이로 보이게 된다. 그 후 js가 로딩 되었을 때, hydration 과정을 거쳐 어플리케이션과 사용자가 인터렉션 할 수 있게 한다.

하지만 일반 리액트 프로젝트에서는 js가 로딩 되지 않았을 때 아무것도 화면에 보이지 않는다. js가 로딩 된 후 하이드레이션이 됐을 때 사용자와 인터렉션이 가능한 UI를 디스플레이에 띄우게 된다.

## Pre-rendering과 SEO의 상관관계

CSR만 제공하면 Client 처럼 동작하지 않는 검색엔진의 경우 아무런 데이터도 조회해 갈 수 없다.

즉, js를 해석할 수 없는 엔진은 데이터를 조회할 수 없기에 seo에 취약하다.

하지만 Pre-render를 해두면 html 정보가 제공되어있기 때문에 js를 해석할 수 없는 엔진들도 데이터를 조회할 수 있어 seo에 좋다.

## Next.js의 Pre-rendering 방식

SSG(recommended) & SSR

SSG는 빌드 시 pre-render

SSR은 요청 시 pre-render
