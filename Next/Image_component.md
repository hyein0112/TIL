# `<Image />` 컴포넌트

Next.js에서는 이미지 최적화를 위한 Image 컴포넌트를 제공하고있다.

기존 HTML의 `<img>` 태그를 사용할 경우 일어나는 문제점을 해결할 수 있다.

Image 컴포넌트에서 제공하는 대표적인 기능은 다음의 3가지이다.

- lazy loading
- 이미지 사이즈 최적화
- placeholder 제공

## lazy loading

이미지 로드하는 시점을 필요할 때 까지 지연시키는 기술

html <img> 태그를 사용할 때 `loading=’lazy’` 속성을 추가하면 적용할 수 있지만
Next/Image는 자동으로 lazy loading이 적용된다.

## 이미지 사이즈 최적화

Next/Image를 사용하지 않을 경우 뷰포트 영역에 비해 너무 큰 이미지를 로드할 수 있다.

이 때 디바이스 크기 별로 srcSet을 미리 정해두고, 사용자의 디바이스에 맞는 이미지를 다운로드 할 수 있도록한다.

또한 Next.js는 이미지를 webp와 같은 용량이 작은 포맷으로 이미지를 변환해서 제공한다.

## placeholder

웹 사이트에서 이미지가 로드되기 전 영역의 높이가 0이였다가 로드된 후 영역이 늘어 레이아웃이 흔들리는 현상을 볼 수 있다.

이를 CLS라고 부르는데 Next/Image는 이 CLS 현상을 방지하기 위해 placeholder를 제공한다.

placeholder는 빈 영역 또는 blur 이미지로 적용할 수도 있고, 커스텀하게 설정할 수도 있다.
