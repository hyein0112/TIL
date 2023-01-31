# Shallow Routing

`getServerSideProps`/ `getStaticProps` 등을 다시 실행시키지 않고, 현재 상태 그대로 url만 바꾸는 방법

기존의 `router.push()` 방식은 로컬 state는 유지되지만 data fetching은 일어난다.

하지만 이 때 `shallow`를 옵션으로 설정하게 되면 로컬 state는 유지 하면서 data fetching을 일어나지 않게 할 수 있다.

```jsx
// location.replace()
<button
  onClick={() => {
    alert("edit");
    setClicked(true);
    location.replace("/settings/my/info?status=editing");
  }}
>
  edit (replace)
</button>
```

location.replace() → 로컬 state 유지 안 됨. (리렌더)

```jsx
// router.push()
<button
  onClick={() => {
    alert("edit");
    setClicked(true);
    router.push("/settings/my/info?status=editing");
  }}
>
  edit (push)
</button>
```

router.push() → 로컬 state 유지 됨 / data fetching 일어남

```jsx
// router.push(url, as, { shallow: true })
<button
  onClick={() => {
    alert("edit");
    setClicked(true);
    router.push("/settings/my/info?status=editing", undefined, {
      shallow: true,
    });
  }}
>
  edit (push)
</button>
```

router.push(url, as, { shallow: true }) → 로컬 state 유지 됨 / data fetching 안 일어남
