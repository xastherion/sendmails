FasdUAS 1.101.10   ��   ��    k             l     ��  ��    K E DEFINITIVE UND FUNKTIONIERENDE VERSION MIT CONFIG FILE sendemail.cfg     � 	 	 �   D E F I N I T I V E   U N D   F U N K T I O N I E R E N D E   V E R S I O N   M I T   C O N F I G   F I L E   s e n d e m a i l . c f g   
  
 l    
 ����  O     
    l   	     I   	������
�� .miscactvnull��� ��� null��  ��    %  Bringt Mail in den Vordergrund     �   >   B r i n g t   M a i l   i n   d e n   V o r d e r g r u n d  m       z                                                                                  emal  alis      SYSTEM                     �<�*BD ����Mail.app                                                       �����<�*        ����  
 cu             Applications  /:System:Applications:Mail.app/     M a i l . a p p    S Y S T E M  System/Applications/Mail.app  / ��  ��  ��        l     ��������  ��  ��        l     ��  ��    ) # Pfad des aktuellen Skripts abrufen     �   F   P f a d   d e s   a k t u e l l e n   S k r i p t s   a b r u f e n      l    ����  r        n       !   1    ��
�� 
psxp ! l    "���� " I   �� #��
�� .earsffdralis        afdr #  f    ��  ��  ��    o      ���� "0 scriptdirectory scriptDirectory��  ��     $ % $ l     &���� & r      ' ( ' I   �� )��
�� .sysoexecTEXT���     TEXT ) b     * + * m     , , � - -  d i r n a m e   + n     . / . 1    ��
�� 
strq / o    ���� "0 scriptdirectory scriptDirectory��   ( o      ���� "0 scriptdirectory scriptDirectory��  ��   %  0 1 0 l     ��������  ��  ��   1  2 3 2 l     �� 4 5��   4 #  Pfad zur Konfigurationsdatei    5 � 6 6 :   P f a d   z u r   K o n f i g u r a t i o n s d a t e i 3  7 8 7 l  ! - 9���� 9 r   ! - : ; : c   ! + < = < 4   ! )�� >
�� 
psxf > l  # ( ?���� ? b   # ( @ A @ b   # & B C B o   # $���� "0 scriptdirectory scriptDirectory C m   $ % D D � E E  / A m   & ' F F � G G  s e n d m a i l s . c f g��  ��   = m   ) *��
�� 
alis ; o      ���� 0 cfgfilepath cfgFilePath��  ��   8  H I H l     ��������  ��  ��   I  J K J l     �� L M��   L    Konfigurationsdatei lesen    M � N N 4   K o n f i g u r a t i o n s d a t e i   l e s e n K  O P O l  . 7 Q���� Q r   . 7 R S R n   . 5 T U T 2  3 5��
�� 
cpar U l  . 3 V���� V I  . 3�� W��
�� .rdwrread****        **** W o   . /���� 0 cfgfilepath cfgFilePath��  ��  ��   S o      ���� 0 cfglines cfgLines��  ��   P  X Y X l     ��������  ��  ��   Y  Z [ Z l     �� \ ]��   \ , & Variablen aus der Konfiguration laden    ] � ^ ^ L   V a r i a b l e n   a u s   d e r   K o n f i g u r a t i o n   l a d e n [  _ ` _ l  8 B a���� a r   8 B b c b n   8 > d e d 4   9 >�� f
�� 
cobj f m   < =����  e o   8 9���� 0 cfglines cfgLines c o      ���� 0 specificemail specificEmail��  ��   `  g h g l  C M i���� i r   C M j k j n   C I l m l 4   D I�� n
�� 
cobj n m   G H����  m o   C D���� 0 cfglines cfgLines k o      ���� 0 betreff  ��  ��   h  o p o l  N c q���� q r   N c r s r c   N _ t u t 4   N ]�� v
�� 
psxf v l  P \ w���� w b   P \ x y x b   P U z { z o   P Q���� "0 scriptdirectory scriptDirectory { m   Q T | | � } }  / y n   U [ ~  ~ 4   V [�� �
�� 
cobj � m   Y Z����   o   U V���� 0 cfglines cfgLines��  ��   u m   ] ^��
�� 
alis s o      ���� 0 csvpath csvPath��  ��   p  � � � l  d { ����� � r   d { � � � c   d w � � � 4   d u�� �
�� 
psxf � l  f t ����� � b   f t � � � b   f k � � � o   f g���� "0 scriptdirectory scriptDirectory � m   g j � � � � �  / � n   k s � � � 4   l s�� �
�� 
cobj � m   o r����  � o   k l���� 0 cfglines cfgLines��  ��   � m   u v��
�� 
alis � o      ���� 0 txtfilepath txtFilePath��  ��   �  � � � l  | � ����� � r   | � � � � n   | � � � � 4   } ��� �
�� 
cobj � m   � �����  � o   | }���� 0 cfglines cfgLines � o      ���� 0 	delaytime 	delayTime��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � &   Dateiinhalt der Textdatei lesen    � � � � @   D a t e i i n h a l t   d e r   T e x t d a t e i   l e s e n �  � � � l  � � ����� � r   � � � � � I  � ��� � �
�� .rdwrread****        **** � o   � ����� 0 txtfilepath txtFilePath � �� ���
�� 
as   � m   � ���
�� 
utf8��   � o      ���� 0 filecontent fileContent��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � $  CSV-Datei in eine Liste laden    � � � � <   C S V - D a t e i   i n   e i n e   L i s t e   l a d e n �  � � � l  � � ����� � r   � � � � � J   � �����   � o      ���� 0 
csvcontent 
csvContent��  ��   �  � � � l  � � ����� � r   � � � � � n   � � � � � 2  � ���
�� 
cpar � l  � � ����� � I  � ��� ���
�� .rdwrread****        **** � o   � ����� 0 csvpath csvPath��  ��  ��   � o      ���� 0 textcontent textContent��  ��   �  � � � l  � � ����� � X   � � ��� � � Z   � � � ���� � >  � � � � � o   � ��~�~ 0 currentline currentLine � m   � � � � � � �   � r   � � � � � o   � ��}�} 0 currentline currentLine � n       � � �  ;   � � � o   � ��|�| 0 
csvcontent 
csvContent��  �  �� 0 currentline currentLine � o   � ��{�{ 0 textcontent textContent��  ��   �  � � � l     �z�y�x�z  �y  �x   �  � � � l     �w � ��w   � &   Header ignorieren (erste Zeile)    � � � � @   H e a d e r   i g n o r i e r e n   ( e r s t e   Z e i l e ) �  � � � l  � � ��v�u � r   � � � � � n   � � � � � 1   � ��t
�t 
rest � o   � ��s�s 0 
csvcontent 
csvContent � o      �r�r 0 
csvcontent 
csvContent�v  �u   �  � � � l     �q�p�o�q  �p  �o   �  � � � l     �n � ��n   � , & Zeilen verarbeiten und Text erstellen    � � � � L   Z e i l e n   v e r a r b e i t e n   u n d   T e x t   e r s t e l l e n �  � � � l  �� ��m�l � Y   �� ��k � ��j � k   �� � �  � � � l  � ��i � ��i   � !  Direkter Zugriff auf Zeile    � � � � 6   D i r e k t e r   Z u g r i f f   a u f   Z e i l e �  � � � r   � � � � m   � � � � � � �  ; � n      � � � 1   �h
�h 
txdl � 1   � �g
�g 
ascr �  � � � r   � � � n   � � � 2 �f
�f 
citm � l  ��e�d � n   � � � 4  	�c 
�c 
cobj  o  �b�b 0 i   � o  	�a�a 0 
csvcontent 
csvContent�e  �d   � o      �`�` 0 	lineitems 	lineItems �  r  " m   �   n      1  !�_
�_ 
txdl 1  �^
�^ 
ascr 	
	 l ##�]�\�[�]  �\  �[  
  l ##�Z�Z   ? 9 �berpr�fen, ob lineItems die erwarteten Eintr�ge enth�lt    � r   � b e r p r � f e n ,   o b   l i n e I t e m s   d i e   e r w a r t e t e n   E i n t r � g e   e n t h � l t �Y Z  #��X�W @  #. l #*�V�U I #*�T�S
�T .corecnte****       **** o  #&�R�R 0 	lineitems 	lineItems�S  �V  �U   m  *-�Q�Q  k  1�  l 11�P�P     Werte zuweisen    �    W e r t e   z u w e i s e n  r  1=  n  19!"! 4  49�O#
�O 
cobj# m  78�N�N " o  14�M�M 0 	lineitems 	lineItems  o      �L�L 0 idnumber IDNumber $%$ r  >J&'& n  >F()( 4  AF�K*
�K 
cobj* m  DE�J�J ) o  >A�I�I 0 	lineitems 	lineItems' o      �H�H 0 	firstname 	FirstName% +,+ r  KW-.- n  KS/0/ 4  NS�G1
�G 
cobj1 m  QR�F�F 0 o  KN�E�E 0 	lineitems 	lineItems. o      �D�D 0 
secondname 
SecondName, 232 r  Xf454 n  Xb676 4  [b�C8
�C 
cobj8 m  ^a�B�B 7 o  X[�A�A 0 	lineitems 	lineItems5 o      �@�@ 0 value1 Value13 9:9 r  gu;<; n  gq=>= 4  jq�??
�? 
cobj? m  mp�>�> > o  gj�=�= 0 	lineitems 	lineItems< o      �<�< 0 value2 Value2: @A@ r  v�BCB n  v�DED 4  y��;F
�; 
cobjF m  |�:�: E o  vy�9�9 0 	lineitems 	lineItemsC o      �8�8 0 title TitleA GHG r  ��IJI n  ��KLK 4  ���7M
�7 
cobjM m  ���6�6 L o  ���5�5 0 	lineitems 	lineItemsJ o      �4�4 0 email EmailH NON r  ��PQP n  ��RSR 4  ���3T
�3 
cobjT m  ���2�2 S o  ���1�1 0 	lineitems 	lineItemsQ o      �0�0 0 value3 Value3O UVU l ���/�.�-�/  �.  �-  V WXW l ���,YZ�,  Y #  Platzhalter im Text ersetzen   Z �[[ :   P l a t z h a l t e r   i m   T e x t   e r s e t z e nX \]\ r  ��^_^ o  ���+�+ 0 filecontent fileContent_ o      �*�*  0 erstelltertext erstellterText] `a` r  ��bcb n ��ded I  ���)f�(�) 0 replacetext replaceTextf ghg o  ���'�'  0 erstelltertext erstellterTexth iji m  ��kk �ll  { I D N u m b e r }j m�&m o  ���%�% 0 idnumber IDNumber�&  �(  e  f  ��c o      �$�$  0 erstelltertext erstellterTexta non r  ��pqp n ��rsr I  ���#t�"�# 0 replacetext replaceTextt uvu o  ���!�!  0 erstelltertext erstellterTextv wxw m  ��yy �zz  { F i r s t N a m e }x {� { o  ���� 0 	firstname 	FirstName�   �"  s  f  ��q o      ��  0 erstelltertext erstellterTexto |}| r  ��~~ n ����� I  ������ 0 replacetext replaceText� ��� o  ����  0 erstelltertext erstellterText� ��� m  ���� ���  { S e c o n d N a m e }� ��� o  ���� 0 
secondname 
SecondName�  �  �  f  �� o      ��  0 erstelltertext erstellterText} ��� l ������ r  ����� n ����� I  ������ 0 replacetext replaceText� ��� o  ����  0 erstelltertext erstellterText� ��� m  ���� ���  { V a l u e 1 }� ��� o  ���� 0 value1 Value1�  �  �  f  ��� o      ��  0 erstelltertext erstellterText�  
p.e. Study   � ���  p . e .   S t u d y� ��� l �	���� r  �	��� n ���� I  ����� 0 replacetext replaceText� ��� o  ����  0 erstelltertext erstellterText� ��� m  ���� ���  { V a l u e 2 }� ��� o  ��� 0 value2 Value2�  �  �  f  ��� o      ��  0 erstelltertext erstellterText�  p.e. Faculty   � ���  p . e .   F a c u l t y� ��� r  
��� n 
��� I  ���
� 0 replacetext replaceText� ��� o  �	�	  0 erstelltertext erstellterText� ��� m  �� ���  { T i t l e }� ��� o  �� 0 title Title�  �
  �  f  
� o      ��  0 erstelltertext erstellterText� ��� r  /��� n +��� I  +���� 0 replacetext replaceText� ��� o  !��  0 erstelltertext erstellterText� ��� m  !$�� ���  { E m a i l }� ��� o  $'�� 0 email Email�  �  �  f  � o      � �   0 erstelltertext erstellterText� ��� r  0B��� n 0>��� I  1>������� 0 replacetext replaceText� ��� o  14����  0 erstelltertext erstellterText� ��� m  47�� ���  { V a l u e 3 }� ���� o  7:���� 0 value3 Value3��  ��  �  f  01� o      ����  0 erstelltertext erstellterText� ��� l CC��������  ��  ��  � ��� l CC������  �   E-Mail senden   � ���    E - M a i l   s e n d e n� ���� O  C���� k  G��� ��� r  Go��� I Gk�����
�� .corecrel****      � null��  � ����
�� 
kocl� m  KN��
�� 
bcke� �����
�� 
prdt� K  Qe�� ����
�� 
subj� o  TW���� 0 betreff  � ����
�� 
pvis� m  Z[��
�� boovtrue� �����
�� 
sndr� o  ^a���� 0 specificemail specificEmail��  ��  � o      ���� 0 	neueemail 	neueEmail� ��� O p���� I v������
�� .corecrel****      � null��  � ����
�� 
kocl� m  z}��
�� 
trcp� ����
�� 
insh� n  �����  ;  ��� 2 ����
�� 
trcp� �����
�� 
prdt� K  ���� �����
�� 
radd� o  ������ 0 email Email��  ��  � o  ps���� 0 	neueemail 	neueEmail� � � r  �� o  ������  0 erstelltertext erstellterText n       1  ����
�� 
ctnt o  ������ 0 	neueemail 	neueEmail   I ������
�� .sysodelanull��� ��� nmbr o  ������ 0 	delaytime 	delayTime��   �� I ����	��
�� .emsgsendnull���     bcke	 o  ������ 0 	neueemail 	neueEmail��  ��  � m  CD

z                                                                                  emal  alis      SYSTEM                     �<�*BD ����Mail.app                                                       �����<�*        ����  
 cu             Applications  /:System:Applications:Mail.app/     M a i l . a p p    S Y S T E M  System/Applications/Mail.app  / ��  ��  �X  �W  �Y  �k 0 i   � m   � �����  � I  � �����
�� .corecnte****       **** o   � ����� 0 
csvcontent 
csvContent��  �j  �m  �l   �  l     ��������  ��  ��    l     ����   %  Funktion zum Ersetzen von Text    � >   F u n k t i o n   z u m   E r s e t z e n   v o n   T e x t  i      I      ������ 0 replacetext replaceText  o      ���� 0 thistext thisText  o      ���� 0 
searchtext 
searchText �� o      ���� 0 replacetext replaceText��  ��   k     "  r      !  o     ���� 0 
searchtext 
searchText! n     "#" 1    ��
�� 
txdl# 1    ��
�� 
ascr $%$ r    &'& n    	()( 2   	��
�� 
citm) o    ���� 0 thistext thisText' o      ���� 0 thistextitems thisTextItems% *+* r    ,-, o    ���� 0 replacetext replaceText- n     ./. 1    ��
�� 
txdl/ 1    ��
�� 
ascr+ 010 r    232 c    454 o    ���� 0 thistextitems thisTextItems5 m    ��
�� 
TEXT3 o      ���� 0 thistext thisText1 676 l   89:8 r    ;<; J    == >��> m    ?? �@@  ��  < n     ABA 1    ��
�� 
txdlB 1    ��
�� 
ascr9   zur�cksetzen   : �CC    z u r � c k s e t z e n7 D��D L     "EE o     !���� 0 thistext thisText��   FGF l     ��������  ��  ��  G HIH l     ��������  ��  ��  I J��J l     ��������  ��  ��  ��       ��KLM��  K ������ 0 replacetext replaceText
�� .aevtoappnull  �   � ****L ������NO���� 0 replacetext replaceText�� ��P�� P  �������� 0 thistext thisText�� 0 
searchtext 
searchText�� 0 replacetext replaceText��  N ���������� 0 thistext thisText�� 0 
searchtext 
searchText�� 0 replacetext replaceText�� 0 thistextitems thisTextItemsO ��������?
�� 
ascr
�� 
txdl
�� 
citm
�� 
TEXT�� #���,FO��-E�O���,FO��&E�O�kv��,FO�M ��Q����RS��
�� .aevtoappnull  �   � ****Q k    �TT  
UU  VV  $WW  7XX  OYY  _ZZ  g[[  o\\  �]]  �^^  �__  �``  �aa  �bb  �cc  �����  ��  ��  R ������ 0 currentline currentLine�� 0 i  S K �������� ,������ D F��������������� |�~ ��}�|�{�z�y�x�w�v�u�t�s ��r ��q�p�o�n�m�l�k�j�i�h�g�f�e�d�c�bk�ay�������`�_�^�]�\�[�Z�Y�X�W�V�U�T
�� .miscactvnull��� ��� null
�� .earsffdralis        afdr
�� 
psxp�� "0 scriptdirectory scriptDirectory
�� 
strq
�� .sysoexecTEXT���     TEXT
�� 
psxf
�� 
alis�� 0 cfgfilepath cfgFilePath
�� .rdwrread****        ****
�� 
cpar�� 0 cfglines cfgLines
�� 
cobj�� 0 specificemail specificEmail� 0 betreff  �~ 0 csvpath csvPath�} �| 0 txtfilepath txtFilePath�{ �z 0 	delaytime 	delayTime
�y 
as  
�x 
utf8�w 0 filecontent fileContent�v 0 
csvcontent 
csvContent�u 0 textcontent textContent
�t 
kocl
�s .corecnte****       ****
�r 
rest
�q 
ascr
�p 
txdl
�o 
citm�n 0 	lineitems 	lineItems�m �l 0 idnumber IDNumber�k 0 	firstname 	FirstName�j 0 
secondname 
SecondName�i 0 value1 Value1�h 0 value2 Value2�g �f 0 title Title�e �d 0 email Email�c 0 value3 Value3�b  0 erstelltertext erstellterText�a 0 replacetext replaceText
�` 
bcke
�_ 
prdt
�^ 
subj
�] 
pvis
�\ 
sndr
�[ .corecrel****      � null�Z 0 	neueemail 	neueEmail
�Y 
trcp
�X 
insh
�W 
radd
�V 
ctnt
�U .sysodelanull��� ��� nmbr
�T .emsgsendnull���     bcke���� *j UO)j �,E�O���,%j E�O*���%�%/�&E�O�j �-E�O�a k/E` O�a l/E` O*��a %�a m/%/�&E` O*��a %�a a /%/�&E` O�a a /E` O_ a a l E` OjvE` O_ j �-E` O ,_ [a a l  kh  �a ! �_ 6FY h[OY��O_ a ",E` O�k_ j  kh a #_ $a %,FO_ a �/a &-E` 'Oa (_ $a %,FO_ 'j  a )�_ 'a k/E` *O_ 'a l/E` +O_ 'a m/E` ,O_ 'a a /E` -O_ 'a a /E` .O_ 'a a //E` 0O_ 'a a 1/E` 2O_ 'a a )/E` 3O_ E` 4O)_ 4a 5_ *m+ 6E` 4O)_ 4a 7_ +m+ 6E` 4O)_ 4a 8_ ,m+ 6E` 4O)_ 4a 9_ -m+ 6E` 4O)_ 4a :_ .m+ 6E` 4O)_ 4a ;_ 0m+ 6E` 4O)_ 4a <_ 2m+ 6E` 4O)_ 4a =_ 3m+ 6E` 4O� o*a a >a ?a @_ a Aea B_ a /a  CE` DO_ D #*a a Ea F*a E-6a ?a G_ 2la / CUO_ 4_ Da H,FO_ j IO_ Dj JUY h[OY�; ascr  ��ޭ