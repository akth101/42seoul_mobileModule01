# mobileModule01

mobileModule00에 이어 약간 더 심화된 상태관리에 대한 과제입니다.  
각 과제별 세부사항은 각 폴더 readme에 간략히 정리해두었습니다.  
여기에선 이 과제를 수행하며 알게 된 것들을 총체적으로 정리해 보았습니다.  

## 목차
- [1. logical pixel](#1-logical-pixel)
- [2. Widget Inspector](#2-widget-inspector)

### 1. logical pixel
appBar에 들어가는 여러 위젯들 간 간격을 조정하면서 간격에 들어가는 값이 정확히 뭘 의미하는지 모르고 있다는 점을 알게 되었습니다. 아래의 경우 right 방향으로 16만큼, left 방향으로 6만큼 간격을 준다는 의미인데 미터 단위계를 뜻하는 건지 아니면 픽셀 단위인 건지 픽셀이라면 정확히 어떤 픽셀인지 모르고 있었습니다.
~~~ dart
Padding(
          padding: EdgeInsets.only(right: 16, left: 6),
          child: Icon(Icons.gps_fixed_outlined),
        ),
~~~
간격 조정에 들어가는 값은 logical pixel을 의미합니다. 위 코드의 경우 오른쪽으로 16 logical pixel만큼, 왼쪽으로 6 logical pixel만큼 패딩을 준다는 뜻입니다. logical pixel은 화면의 물리적 크기나 해상도와 상관없이 동일한 크기를 유지하는 값으로 프레임워크가 장치의 해상도를 감지하고, logical pixel을 실제 장치 픽셀로 변환하여 화면에 그려줍니다. 이로 인해 한 번만 사이즈를 지정해주면 다양한 해상도의 기기에서 동일하게 보이도록 할 수 있습니다.


### 2. Widget Inspector
Widget Inspector는 매우 강력한 플러터의 UI 디버깅 툴입니다. logical pixel에 대해 공부하다 보니 Widget Inspector로 logical pixel을 기기 화면상에서 바로 볼 수 있다는 것을 알게 되었습니다. 더하여 이제까지 플러터로 개발을 할 때 Overflow error indicator 때문에 스트레스를 많이 받아서 이 기회에 정확히 공부해볼 필요성을 느껴 정리해보았습니다.


#### Select Widget Mode
<img width="1766" alt="Image" src="https://github.com/user-attachments/assets/7a714cc5-1dcd-448f-9159-d5ed5529dc43" />
최상단 왼쪽 방향의 Select Widget Mode를 클릭하고 Widget tree 내의 Widget을 클릭하면 해당 위젯이 화면상에서 실질적으로 차지하고 있는 영역과 가로 세로 logical pixel값을 보여줍니다.  
<br>
<br>

#### Layout Explorer  
<img width="1763" alt="Image" src="https://github.com/user-attachments/assets/025eb7c3-28e6-477e-b717-2666695ce359" />
Layout Explorer를 클릭하고 보고 싶은 위젯을 누르면 위와 같이 한눈에 현재 해당 위젯의 구성을 알 수 있습니다. 위의 경우에는 Row 위젯으로 묶인 Icon & Text 위젯이 서로 어떻게 위치되어 있는지 보여줍니다. Overflow error indicator가 발생한다면 각 위젯의 flex값을 조절하여 미리 디버깅해 볼 수 있습니다. 물론 Layout Explorer 내에서 flex나 fit값을 변경한다고 하여 바로 코드에 자동으로 반영되는 것은 아니고 개발자가 따로 코드를 고쳐줘야 합니다.  
<br>
<br>

#### 그 외 부가기능
<img width="1261" alt="Image" src="https://github.com/user-attachments/assets/069de9bd-31fc-4933-9acf-b4bd80165de0" />

- Slow animations  
애니메이션을 일부러 느리게(대략 5배) 실행시켜서 세부적인 동작을 관찰할 수 있게 해줍니다.  
- Show guidelines  
위젯의 패딩, 마진 등 레이아웃 가이드라인을 시각적으로 보여줍니다.  
- Show baselines  
텍스트의 베이스라인을 표시해줍니다.  
- Highlight repaints  
화면이 다시 그려지는 영역을 시각적으로 표시해줍니다.  
- Highlight oversized images  
실제 표시 크기보다 훨씬 큰 해상도의 이미지를 하이라이트 해줍니다.  



