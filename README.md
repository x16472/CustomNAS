# 自組NAS筆記
-   配備
    *   CPU:Intel® Pentium® E6300
    *   Motherboard:ASUS p5kpl-am epu
    *   Ram:Transcend DDR2 800 2G*2
    *   SSD:Samsung MZ7TE256HMHP-000L7 240G(LENOVO 00FC441)
    *   HDD:Seagatev IronWolf 3.5吋2TB*2
    *   Power:SFX Psu 250W
## 硬體
原先從Hardwolf收來一個整台的二手電腦，內涵p5kpl-am epu主機板和其CPU、400W電源供應器。因為需要將整機小型化，便將主機板搬運至庫存的另一個小型機殼`因為電源故障而沒有電源`的[I-COOLTW 水玲瓏](https://24h.pchome.com.tw/prod/AGAD6Y-A82584775)舊版機殼。<br>

接著到內部零件部分，在不確定主機板是否良好的狀態下。賭一把買了`創見DDR2 800 2G*2`，主機板可以正常使用，看來是賭成功了。接著購買了拆機良品的SSD和HDD，雖然後者都無法使用了，所幸前者物品還算是堪用，後來查了一下發現是lenovo的筆電拆卸下來的OEM SSD。最後實際去店鋪面交購買的`250W PSU`也能夠正常運用。

而兩顆吶撕狼2T也是透過面交購買的，雖然沒有議價空間，但賣家決定將一併購買的`i3-3200`改為免費送。
![硬碟](./photo/IMG_20230526_194224.jpg)
[MHDD測試結果](./photo/MHDD.md)<br>
至於為何是i3-3200呢？因為當初是想組這個平台，但後面買來的二手主機板發生故障，後續送來的是四槽主機板`ASUS P8B75M-M/BM6635/DP_MB`，故無法裝入`水玲瓏機殼`中。而後續CPU也發生了問題，改裝入舊有的`G550`，並將整機改做其他用途。
![內部](./photo/interior.jpg)
![外觀](./photo/exterior.jpg)
## 系統安裝
這部份看起來還算簡單，純文字的命令安裝頁面，與`ArchLinux`的安裝頁面相比算是很簡單了。因為系統資料很小，安裝很快就結束了。後續主要是設定固定IP或是先自動分配，後續可以從路由器管理頁面的`已連接設備`去找到NAS被配發的IP。

開啟瀏覽器，輸入被配發IP，會出現登入頁面。這時需要輸入預設帳號`admin`、預設密碼`openmediavault`，進行相關設定。最後再把密碼改掉、登入IP設為固定，改掉IP會重啟，最終只要記住那個IP就能進行登入。

# 後續升級
-   配備
    *   CPU:Intel® Core™ i3-3220
    *   Motherboard:ASUS P8B75M-M/BM6635/DP_MB
    *   Ram:Kingston DDR3 1333 4G*1
    *   SSD:Samsung MZ7TE256HMHP-000L7 240G(LENOVO 00FC441)
    *   HDD:Seagatev IronWolf 3.5吋2TB*2
    *   Power:Snake Psu 450W
    *   Case:Cooler Master
因前陣子螢幕需求，又順便一併購買`i3-3200`，搭配手邊閒置的機殼，組成一台較大內部空間較為充裕的形式。