<DIV STYLE="display:inline-block;white-space:pre;background-color:#FAFAFA;font-family:'Consolas',monospace;font-size:10pt;padding:4px;"><BR><SPAN STYLE="color:#383A42;background-color:#FAFAFA;">degats256bi:<BR>  0 </SPAN><SPAN STYLE="color:#FF00FF;background-color:#FAFAFA;">■ </SPAN><SPAN STYLE="color:#383A42;background-color:#FAFAFA;">FF00FF      0 </SPAN><SPAN STYLE="color:#FF00FF;background-color:#FAFAFA;">■ </SPAN><SPAN STYLE="color:#383A42;background-color:#FAFAFA;">FF00FF      0 </SPAN><SPAN STYLE="color:#FF00FF;background-color:#FAFAFA;">■ </SPAN><SPAN STYLE="color:#383A42;background-color:#FAFAFA;">FF00FF<BR>  1 </SPAN><SPAN STYLE="color:#000000;background-color:#FAFAFA;">■ </SPAN><SPAN STYLE="color:#383A42;background-color:#FAFAFA;">000000     33 </SPAN><SPAN STYLE="color:#AF0000;background-color:#FAFAFA;">■ </SPAN><SPAN STYLE="color:#383A42;background-color:#FAFAFA;">C60000     62 </SPAN><SPAN STYLE="color:#000000;background-color:#FAFAFA;">■ </SPAN><SPAN STYLE="color:#383A42;background-color:#FAFAFA;">311000<BR>  2 </SPAN><SPAN STYLE="color:#FFFFFF;background-color:#FAFAFA;">■ </SPAN><SPAN STYLE="color:#383A42;background-color:#FAFAFA;">FFFFFF     34 </SPAN><SPAN STYLE="color:#FF0000;background-color:#FAFAFA;">■ </SPAN><SPAN STYLE="color:#383A42;background-color:#FAFAFA;">FF3131    214 </SPAN><SPAN STYLE="color:#FFAFAF;background-color:#FAFAFA;">■ </SPAN><SPAN STYLE="color:#383A42;background-color:#FAFAFA;">FFBDAD<BR>  3 </SPAN><SPAN STYLE="color:#FF0000;background-color:#FAFAFA;">■ </SPAN><SPAN STYLE="color:#383A42;background-color:#FAFAFA;">FF0000      3 </SPAN><SPAN STYLE="color:#FF0000;background-color:#FAFAFA;">■ </SPAN></DIV>

![pigeon](/_images/pigeon2.png)

  
  ```dart
int adresseNouveauSprite = 0x7b89c0;
octetsRomModif.setAll(adresseNouveauSprite, octetsModifFinal);
```

  
| Adressse     | Valeur       | Animation        |
| ------------ | ------------ | ---------------- |
| **086ad220** | **0850c1dc** | **Goku Stance**  |
| 086ad224     | 0850cf74     | Goku Walk        |
| 086ad228     | 0850dd14     | Goku Run         |
| 086ad22c     | 0850e7dc     | Goku Shoot       |
| 086ad230     | 0850f68c     | Goku Hit1        |
| 086ad234     | 085104e8     | Goku Hit2        |
| 086ad238     | 0851131c     | Goku Hit3        |
| 086ad23c     | 085116a0     | Goku Defence     |
| 086ad240     | 08511a98     | Goku pre-Rest    |
| **086ad244** | **08512564** | **Goku Got Hit** |
| 086ad248     | 08512cd8     | Goku Rest        |
| 086ad250     | 085133b4     | Goku Unknown     |
| 086ad254     | 08513668     | Goku Pickup      |
| 086ad258     | 085140a4     | Goku Takeoff     |
| 086ad25c     | 085149c8     | Goku Flying      |
| 086ad260     | 0851506c     | Goku Unknown     |
| 086ad264     | 08515534     | Goku Dead        |
| 086ad268     | 08515f5c     | Goku Kamehameha  |
| 086ad26c     | 085166ac     | Goku Teleport    |
| 086ad274     | 0851754c     | Goku Fusion      |
