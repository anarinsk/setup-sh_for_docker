# setup-sh_for_docker
docker를 위한 sh 파일 모음 

## When 

- Docker를 통해 작업하다보면 이미지를 새로 올리거나 할 때 필요한 세팅을 빠르게 설정하고 싶을 때가 있다. 
- 매번 찾기 보다 sh로 한번에 필요한 인스톨을 마치는 것이 편할 때가 있다. 

## Beware of `^M`

윈도우에서 `sh` 파일을 만들 때 줄바꿈 표시가 들어가는 경우가 있다. 에디터 등에는 안보인다. 

1. notepad에서 볼 것 
2. Ununtu 내에서 nano 등으로 열어서 지울 것 
3. 스크립트를 쓸 것 [LINK](https://blog.gaerae.com/2016/02/remove-m-character-from-log-files.html)

## Parts Made 

- `prepare_ubuntu.sh`: apt update 및 저장소 변경 
- `install_nanum.sh`: 나눔 한글 폰트 설치 [Jupyter 한글 활용](https://anarinsk.github.io/lostineconomics-v2-1/docker/data-science/2020/09/24/install-hangul-in-docker.html)

## Mixed Styles

- 부분으로 쪼개져 있는 `.sh` 파일들을 결합해서 쓴다. 

```shell
#!/bin/bash

# Prepare ubuntu 
./prepare_ubuntu.sh 

# Install nanum kor font 
./install_nanum.sh 

# Install streamlit and other packages 
pip install -U panel
pip install openpyxl
pip install --upgrade protobuf

# Boot-up streamlit 
cd panel
echo "Ready to work with Panel!"
```

