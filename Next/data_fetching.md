# Next.js의 Data Fetching

### Next의 데이터 패칭 방법으로는 SSR, CSR, SSG, ISR 네가지가 있다.

## SSR(Server Side Render)

서버가 데이터를 가져와 화면을 그린다.

페이지가 로드되기 전 특별한 함수가 먼저 실행된 뒤 잠깐의 딜레이 후 페이지 렌더링

SSR을 담담하는 함수 → getServerSideProps

함수 명은 반드시 getServerSideProps. 다른 함수명은 안됨

```tsx
export async function getServerSideProps() {
  console.log("server");
}
```

함수 내에서 콘솔 로그를 찍어보면 클라이언트 측에서 찍히는게 아닌 서버 측에서 찍힌다.

## CSR(Client Side Render)

요청 시 클라이언트가 데이터를 가져와 화면을 그린다. ( SSR과 반대 )

페이지가 렌더링 된 후 데이터를 가져옴.

CSR은 React에서 기본적으로 useEffect를 사용해 데이터를 가져오는 평범한 방법이다.

## SSG(Static-Site Generation)

데이터를 미리 가져와 정적인 사이트를 그려둔다

프로젝트 빌드 시 정적인 페이지를 만들어 놓음.

SSG를 담당하는 함수 → getStaticProps (with getStaticPaths)

## ISR(Incremenral Static Regeneration)

특정 주기로 정적인 사이트를 가져와 그려둔다.

ISR을 담당하는 함수 → getStaticProps (with revalidate)
