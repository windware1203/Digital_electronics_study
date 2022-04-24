![](https://i.imgur.com/S3HWjUq.png)

${\rm\bf{Digital\hspace{4mm}electronics\hspace{4mm}study}}$
===

###### tags: `digital`、`experiment`

## :pushpin: Topic
### ==$21$點、$\rm{BlackJack}$==

## :construction_worker: Team
* **[name= 張呈顥、武田奈々] [u10916024]** 
* **[name= 郭子筠] [u10916028]**
* **[name=黃楷媛] [u10916032]**
* **[name=簡劭宸] [u10916041]**
* **[name=楊皓翔] [u10916035]**
* **[name=侯正成] [u10916039]**
* **[name=范圃綱] [u10916031]**
## :bookmark_tabs: Documentaion standard
### Truth table
| $a_\color{red}{i}$    |    $a_3$ |   $a_2$ |    $a_1$ |    $a_0$ |
| --------------------- |:--------:|:-------:|:--------:|:--------:|
|   $2^\color{red}{i}$  |   $8$    |   $4$   |   $2$    |   $1$    |


## :clipboard: The minutes
### :small_blue_diamond: 4_24 (Sun.)
- 討論主題
    1. [ ] 骰子 ==0==
    2. [ ] 自行輸入 ==1==
    3. [x] 21點 ==6==

- 摘要 
    - 規則簡介
    - 分數、分級
- 製作目的 
    - 動機
        - 喜歡玩$21$點 __[name=簡劭宸]
        - 訓練邏輯思考
- 方法探討 
    - 點數計算
        - $A$: $1$
        - $J、Q、K$: $10$
    - 分級（獲勝分數）
        - Switch 控制
        - $0$ 分 = 你輸了
        - 初始分數: $5$
        - 初階:star:
            - 贏了: ==$10$==
        - 中階:star::star:
            - 贏了:==$20$==
        - 高階:star::star::star:
            - 贏了:==$30$==
    - 分數投注
        - 不可以超過目前持有的 :moneybag:
    - 過五關
        - 紀錄發牌張數
- 提出方法與步驟 
    - 依照規則->流程圖
    - [$\rm{documentation}$](https://mermaid-js.github.io/mermaid/#/flowchart)

```mermaid
flowchart TB;
classDef startClass fill:#f2a7c8;
classDef startClass stroke:#f2a7c8;

Start([start]):::startClass-->shuffle洗牌-->initP-->chooseLv{choose Level}
    chooseLv--Lv.1-->one-->deal
    chooseLv--Lv.2-->two-->deal
    chooseLv--Lv.3-->three-->deal
    deal-->raise-->checkPt
    checkPt-- not enough -->raise
    checkPt-- enough -->playerDecision
    playerDecision-->hit-->|keep going?| playerDecision
    playerDecision-->stand
    
    initP[initial point: 5]
    raise[raise加注]
    deal[deal發牌]
    one[10 point WIN]
    two[20 point WIN]
    three[30 point WIN]
    checkPt{check player's point}
    hit[take another card]
    stand[take no more cards]
    playerDecision[player decision]
```

- 預期成果 
    - 流程
        - 發牌
        - 加注
            - 判斷持有金額
        - 是否加牌
            - 莊家小於$11$須加牌至超過
        - 決戰
            - 對未有爆牌的玩家，比點數大小，大者勝，可得賠金（根據加注金額）
            - 如莊家爆牌、未有爆牌的玩家便可得賠金
- 企劃書草稿截止日:==$4/26 \hspace{2mm} _{A.M.} \hspace{0.5mm} 00:00$==
## :ballot_box_with_check: TODO
- [x] find the topic
- [ ] write the proposal
    - **統一整合與規劃** [name=張呈顥]
        - **一、 摘要** [name=楊皓翔]
        - **二、 製作目的** [name=郭子筠]
        - **三、 方法探討** [name=簡劭宸]
        - **四、 提出方法及步驟** [name=侯正成]、[name=范圃綱]
        - **五、 預期成果** [name=黃楷媛]

<br><br><br><br><br><br>
<center style="margin-top=100px">
<img width=25% src="https://i.imgur.com/77lgjvD.png">
</center>