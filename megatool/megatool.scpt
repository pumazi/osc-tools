FasdUAS 1.101.10   ��   ��    k             l     ��  ��    � � Purpose of this program: enqueue PDF, check latest version in legacy editor, or look up query_ptool for a given colid in Textbook-Dev only     � 	 	   P u r p o s e   o f   t h i s   p r o g r a m :   e n q u e u e   P D F ,   c h e c k   l a t e s t   v e r s i o n   i n   l e g a c y   e d i t o r ,   o r   l o o k   u p   q u e r y _ p t o o l   f o r   a   g i v e n   c o l i d   i n   T e x t b o o k - D e v   o n l y   
  
 l     ��  ��      v1.1 - 3/4/16     �      v 1 . 1   -   3 / 4 / 1 6      l     ��  ��      INITIALIZE VARIABLES     �   *   I N I T I A L I Z E   V A R I A B L E S      p         �� �� 0 collectionid collectionID  �� �� 0 	cidlength    �� �� 0 validid validID  �� �� 0 statusbutton    ������ 0 statusid statusID��        l     ����  r         m     ��
�� boovfals  o      ���� 0 validid validID��  ��       !   l    "���� " r     # $ # m    ����  $ o      ���� 0 serverid serverID��  ��   !  % & % l     ��������  ��  ��   &  ' ( ' l     �� ) *��   )  
 FUNCTIONS    * � + +    F U N C T I O N S (  , - , l     �� . /��   .   User input    / � 0 0    U s e r   i n p u t -  1 2 1 i      3 4 3 I      �������� 0 inputcid inputCID��  ��   4 k     M 5 5  6 7 6 r      8 9 8 I    �� : ;
�� .sysodlogaskr        TEXT : m      < < � = = � T e x t b o o k - D e v   M e g a T o o l   ( t h e r e   w i l l   b e   n o   c o n f i r m a t i o n s ! ) :   
 	 
 	 E n t e r   c o l l e c t i o n   I D   a n d   c h o o s e   a c t i o n   b e l o w : ; �� > ?
�� 
dtxt > m     @ @ � A A 0 e i t h e r   c o l 1 2 3 4 5   o r   1 2 3 4 5 ? �� B��
�� 
btns B J    	 C C  D E D m     F F � G G  E n q u e u e   P D F E  H I H m     J J � K K  q u e r y _ p t o o l I  L�� L m     M M � N N : V i e w   l a t e s t   v e r s i o n   i n   e d i t o r��  ��   9 o      ���� 0 	userinput   7  O P O l   ��������  ��  ��   P  Q R Q r     S T S n     U V U 1    ��
�� 
ttxt V o    ���� 0 	userinput   T o      ���� 0 collectionid collectionID R  W X W r     Y Z Y n     [ \ [ 1    ��
�� 
bhit \ o    ���� 0 	userinput   Z o      ���� 0 statusbutton   X  ] ^ ] Z    C _ ` a�� _ =     b c b o    ���� 0 statusbutton   c m     d d � e e  E n q u e u e   P D F ` r   " % f g f m   " #����  g o      ���� 0 statusid statusID a  h i h =   ( + j k j o   ( )���� 0 statusbutton   k m   ) * l l � m m  q u e r y _ p t o o l i  n o n r   . 1 p q p m   . /����  q o      ���� 0 statusid statusID o  r s r =   4 9 t u t o   4 5���� 0 statusbutton   u m   5 8 v v � w w : V i e w   l a t e s t   v e r s i o n   i n   e d i t o r s  x�� x r   < ? y z y m   < =����  z o      ���� 0 statusid statusID��  ��   ^  {�� { r   D M | } | n   D I ~  ~ 1   E I��
�� 
leng  o   D E���� 0 collectionid collectionID } o      ���� 0 	cidlength  ��   2  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �    Error check of user input    � � � � 4   E r r o r   c h e c k   o f   u s e r   i n p u t �  � � � i     � � � I      �������� 0 lengthcheck  ��  ��   � Z      � ��� � � G      � � � =      � � � o     ���� 0 	cidlength   � m    ����  � =    	 � � � o    ���� 0 	cidlength   � m    ����  � r     � � � m    ��
�� boovtrue � o      ���� 0 validid validID��   � r     � � � m    ��
�� boovfals � o      ���� 0 validid validID �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 7 1 Main function, runs if CID is the correct length    � � � � b   M a i n   f u n c t i o n ,   r u n s   i f   C I D   i s   t h e   c o r r e c t   l e n g t h �  � � � i     � � � I      �������� 0 statusaction  ��  ��   � k     { � �  � � � l     �� � ���   �  enqueue    � � � �  e n q u e u e �  � � � Z     y � � ��� � =     � � � o     ���� 0 statusid statusID � m    ����  � k    ' � �  � � � Z    % � ��� � � C    	 � � � o    ���� 0 collectionid collectionID � m     � � � � �  c o l � k     � �  � � � I   �� ���
�� .GURLGURLnull��� ��� TEXT � b     � � � b     � � � m     � � � � � V h t t p : / / l e g a c y - t e x t b o o k - d e v . c n x . o r g / c o n t e n t / � o    ���� 0 collectionid collectionID � m     � � � � �  / l a t e s t / e n q u e u e��   �  � � � l   �� � ���   �  	delay 4    � � � �  	 d e l a y   4 �  ��� � l   �� � ���   � i c	open location "http://legacy-textbook-dev.cnx.org/content/" & collectionID & "/latest/query_ptool"    � � � � � 	 o p e n   l o c a t i o n   " h t t p : / / l e g a c y - t e x t b o o k - d e v . c n x . o r g / c o n t e n t / "   &   c o l l e c t i o n I D   &   " / l a t e s t / q u e r y _ p t o o l "��  ��   � k    % � �  � � � I   #�� ���
�� .GURLGURLnull��� ��� TEXT � b     � � � b     � � � m     � � � � � \ h t t p : / / l e g a c y - t e x t b o o k - d e v . c n x . o r g / c o n t e n t / c o l � o    ���� 0 collectionid collectionID � m     � � � � �  / l a t e s t / e n q u e u e��   �  � � � l  $ $�� � ���   �  delay 4    � � � �  d e l a y   4 �  ��� � l  $ $�� � ���   � k eopen location "http://legacy-textbook-dev.cnx.org/content/col" & collectionID & "/latest/query_ptool"    � � � � � o p e n   l o c a t i o n   " h t t p : / / l e g a c y - t e x t b o o k - d e v . c n x . o r g / c o n t e n t / c o l "   &   c o l l e c t i o n I D   &   " / l a t e s t / q u e r y _ p t o o l "��   �  � � � l  & &��������  ��  ��   �  ��� � l  & &�� � ���   �   query_ptool    � � � �    q u e r y _ p t o o l��   �  � � � =  * - � � � o   * +���� 0 statusid statusID � m   + ,����  �  � � � k   0 M � �  � � � Z   0 K � ��� � � C   0 3 � � � o   0 1���� 0 collectionid collectionID � m   1 2 � � � � �  c o l � I  6 ?�� ���
�� .GURLGURLnull��� ��� TEXT � b   6 ; � � � b   6 9 � � � m   6 7 � � �   V h t t p : / / l e g a c y - t e x t b o o k - d e v . c n x . o r g / c o n t e n t / � o   7 8���� 0 collectionid collectionID � m   9 : � & / l a t e s t / q u e r y _ p t o o l��  ��   � I  B K����
�� .GURLGURLnull��� ��� TEXT b   B G b   B E m   B C �		 \ h t t p : / / l e g a c y - t e x t b o o k - d e v . c n x . o r g / c o n t e n t / c o l o   C D���� 0 collectionid collectionID m   E F

 � & / l a t e s t / q u e r y _ p t o o l��   �  l  L L��������  ��  ��   �� l  L L����     view latest    �    v i e w   l a t e s t��   �  =  P S o   P Q���� 0 statusid statusID m   Q R����  �� Z   V u�� C   V Y o   V W���� 0 collectionid collectionID m   W X �  c o l I  \ e����
�� .GURLGURLnull��� ��� TEXT b   \ a  b   \ _!"! m   \ ]## �$$ V h t t p : / / l e g a c y - t e x t b o o k - d e v . c n x . o r g / c o n t e n t /" o   ] ^���� 0 collectionid collectionID  m   _ `%% �&&  / l a t e s t��  ��   I  h u��'��
�� .GURLGURLnull��� ��� TEXT' b   h q()( b   h m*+* m   h k,, �-- \ h t t p : / / l e g a c y - t e x t b o o k - d e v . c n x . o r g / c o n t e n t / c o l+ o   k l���� 0 collectionid collectionID) m   m p.. �//  / l a t e s t��  ��  ��   � 0�0 l  z z�~�}�|�~  �}  �|  �   � 121 l     �{�z�y�{  �z  �y  2 343 l     �x56�x  5 0 * CALL FUNCTIONS, with error-checking logic   6 �77 T   C A L L   F U N C T I O N S ,   w i t h   e r r o r - c h e c k i n g   l o g i c4 898 l   ;:�w�v: W    ;;<; k    6== >?> I    �u�t�s�u 0 inputcid inputCID�t  �s  ? @A@ I    �r�q�p�r 0 lengthcheck  �q  �p  A B�oB Z    6CD�nEC =   FGF o    �m�m 0 validid validIDG m    �l
�l boovfalsD I  " .�kHI
�k .sysodlogaskr        TEXTH m   " #JJ �KK l C o l l e c t i o n   I D   f o r m a t t e d   i n c o r r e c t l y ,   c l i c k   O K   t o   r e t r yI �jLM
�j 
btnsL J   $ (NN OPO m   $ %QQ �RR  C a n c e lP S�iS m   % &TT �UU  O K�i  M �hV�g
�h 
dfltV m   ) *WW �XX  O K�g  �n  E I   1 6�f�e�d�f 0 statusaction  �e  �d  �o  < =   YZY o    �c�c 0 validid validIDZ m    �b
�b boovtrue�w  �v  9 [�a[ l     �`�_�^�`  �_  �^  �a       �]\]^_`�]  \ �\�[�Z�Y�\ 0 inputcid inputCID�[ 0 lengthcheck  �Z 0 statusaction  
�Y .aevtoappnull  �   � ****] �X 4�W�Vab�U�X 0 inputcid inputCID�W  �V  a �T�T 0 	userinput  b  <�S @�R F J M�Q�P�O�N�M�L d�K l v�J�I
�S 
dtxt
�R 
btns�Q 
�P .sysodlogaskr        TEXT
�O 
ttxt�N 0 collectionid collectionID
�M 
bhit�L 0 statusbutton  �K 0 statusid statusID
�J 
leng�I 0 	cidlength  �U N�������mv� E�O��,E�O��,E�O��  kE�Y ��  lE�Y �a   mE�Y hO�a ,E` ^ �H ��G�Fcd�E�H 0 lengthcheck  �G  �F  c  d �D�C�B�A�@�D 0 	cidlength  �C �B 
�A 
bool�@ 0 validid validID�E �� 
 �� �& eE�Y fE�_ �? ��>�=ef�<�? 0 statusaction  �>  �=  e  f �;�: � � ��9 � � � �
#%,.�; 0 statusid statusID�: 0 collectionid collectionID
�9 .GURLGURLnull��� ��� TEXT�< |�k  &�� ��%�%j OPY ��%�%j OPOPY Q�l  "�� ��%�%j Y ��%�%j OPY +�m  $�� ��%�%j Y a �%a %j Y hOP` �8g�7�6hi�5
�8 .aevtoappnull  �   � ****g k     ;jj  kk   ll 8�4�4  �7  �6  h  i �3�2�1�0J�/QT�.W�-�,�+�3 0 validid validID�2 0 serverid serverID�1 0 inputcid inputCID�0 0 lengthcheck  
�/ 
btns
�. 
dflt�- 
�, .sysodlogaskr        TEXT�+ 0 statusaction  �5 <fE�OkE�O 2h�e *j+ O*j+ O�f  ����lv��� Y *j+ [OY�� ascr  ��ޭ