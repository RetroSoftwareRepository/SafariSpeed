FasdUAS 1.101.10   ��   ��    k             l     �� ��      SafariSpeed 1.2.1       	  l     �� 
��   
 0 * (C) Copyright 2003-2004 ScifienceStudios.    	     l     �� ��    U O Released under a GPL license.  You should have received a copy of the GPL with         l     �� ��    X R this application.  If you did not, you can download one from http:--www.gnu.org/.         l     ������  ��        l     �� ��    a [ This release is dedicated to my parents, who bought me my first computer and have provided         l     �� ��    f ` me with so much support - both financial and emotional - for all of my projects over the years.         l     ������  ��        i         I     �� ��
�� .coVScliInull��� ��� obj   o      ���� 0 	theobject 	theObject��    k     �      ! " ! l     ������  ��   "  # $ # l     �� %��   % C = Check to see if user requested to remove page loading delay.    $  & ' & l     ������  ��   '  ( ) ( Z     � * + ,�� * =     - . - l     /�� / n      0 1 0 1    ��
�� 
pnam 1 o     ���� 0 	theobject 	theObject��   . m     2 2  	speedMeUp    + k    % 3 3  4 5 4 l   ������  ��   5  6 7 6 l   �� 8��   8 Y S Display a dialog box instructing the user to make sure that Safari is not running.    7  9 : 9 I   �� ; <
�� .panSdlognull��� ��� obj  ; m    	 = = D >Please make sure that Safari is not running before continuing.    < �� >��
�� 
disp > m   
 ����  ��   :  ? @ ? l   ������  ��   @  A B A l   �� C��   C K E "Remove" the page loading delay by setting it to a very small value.    B  D E D I   �� F��
�� .sysoexecTEXT���     TEXT F m     G G L Fdefaults write com.apple.Safari WebKitInitialTimedLayoutDelay 0.000001   ��   E  H I H l   ������  ��   I  J K J l   �� L��   L J D Display a dialog telling the user that the changes were successful.    K  M N M I   #�� O P
�� .panSdlognull��� ��� obj  O m     Q Q 7 1The page loading delay was successfully disabled.    P �� R S
�� 
btns R J     T T  U�� U m     V V  OK   ��   S �� W X
�� 
dflt W m     Y Y  OK    X �� Z��
�� 
disp Z m    ���� ��   N  [ \ [ l  $ $������  ��   \  ] ^ ] l  $ $�� _��   _ O I Check to see if the user requested to re-instate the page loading delay.    ^  `�� ` l  $ $������  ��  ��   ,  a b a =  ( - c d c l  ( + e�� e n   ( + f g f 1   ) +��
�� 
pnam g o   ( )���� 0 	theobject 	theObject��   d m   + , h h  reverseChanges    b  i j i k   0 S k k  l m l l  0 0������  ��   m  n o n l  0 0�� p��   p Y S Display a dialog box instructing the user to make sure that Safari is not running.    o  q r q I  0 7�� s t
�� .panSdlognull��� ��� obj  s m   0 1 u u D >Please make sure that Safari is not running before continuing.    t �� v��
�� 
disp v m   2 3����  ��   r  w x w l  8 8������  ��   x  y z y l  8 8�� {��   { A ; Re-instate the page loading delay's default value of 1.00.    z  | } | I  8 =�� ~��
�� .sysoexecTEXT���     TEXT ~ m   8 9   H Bdefaults write com.apple.Safari WebKitInitialTimedLayoutDelay 1.00   ��   }  � � � l  > >������  ��   �  � � � l  > >�� ���   � J D Display a dialog telling the user that the changes were successful.    �  � � � I  > Q�� � �
�� .panSdlognull��� ��� obj  � m   > A � � : 4The page loading delay was successfully re-instated.    � �� � �
�� 
btns � J   B G � �  ��� � m   B E � �  OK   ��   � �� � �
�� 
dflt � m   H K � �  OK    � �� ���
�� 
disp � m   L M���� ��   �  � � � l  R R�� ���   � D > Check to see if the user requested to disable favorite icons.    �  ��� � l  R R������  ��  ��   j  � � � =  V ] � � � l  V Y ��� � n   V Y � � � 1   W Y��
�� 
pnam � o   V W���� 0 	theobject 	theObject��   � m   Y \ � �  favIcon    �  � � � k   ` � � �  � � � l  ` `������  ��   �  � � � l  ` `�� ���   � C = Warn the user about having Safari running with a dialog box.    �  � � � I  ` i�� � �
�� .panSdlognull��� ��� obj  � m   ` c � � D >Please make sure that Safari is not running before continuing.    � �� ���
�� 
disp � m   d e����  ��   �  � � � l  j j������  ��   �  � � � l  j j�� ���   � \ V Warn the user that the process may take some time to complete depending on the number    �  � � � l  j j�� ���   � . ( of favorite icons stored on the system.    �  � � � I  j }�� � �
�� .panSdlognull��� ��� obj  � m   j m � � � �Please note that this procedure may take some time depending on the number of favorite icons stored on your computer.  Please be patient!    � �� � �
�� 
btns � J   n s � �  ��� � m   n q � �  OK   ��   � �� � �
�� 
dflt � m   t w � �  OK    � �� ���
�� 
disp � m   x y���� ��   �  � � � l  ~ ~������  ��   �  � � � l  ~ ~�� ���   � . ( Delete all icons from the icons folder.    �  � � � I  ~ ��� ���
�� .sysoexecTEXT���     TEXT � m   ~ � � � % rm -r -f ~/Library/Safari/Icons   ��   �  � � � l  � �������  ��   �  � � � l  � ��� ���   � h b Make a symbolic link between ~/Library/Safari/Icons and /dev/null, preventing Safari from storing    �  � � � l  � ��� ���   �   any new icons.    �  � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � m   � � � � , &ln -s /dev/null ~/Library/Safari/Icons   ��   �  � � � l  � �������  ��   �  � � � l  � ��� ���   � J D Display a dialog telling the user that the changes were successful.    �  � � � I  � ��� � �
�� .panSdlognull��� ��� obj  � m   � � � � ; 5Favorite icons were successfully purged and disabled.    � �� � �
�� 
btns � J   � � � �  ��� � m   � � � �  OK   ��   � �� � �
�� 
dflt � m   � � � �  OK    � �� ���
�� 
disp � m   � ����� ��   �  � � � l  � �������  ��   �  � � � l  � ��� ���   � F @ Check to see if the user requested to re-enable favorite icons.    �  ��� � l  � �������  ��  ��   �  � � � =  � � � � � l  � � �� � n   � � � � � 1   � ��~
�~ 
pnam � o   � ��}�} 0 	theobject 	theObject�   � m   � � � �  reverseFavIcon    �  ��| � k   � � � �  � � � l  � ��{�z�{  �z   �  � � � l  � ��y ��y   � C = Warn the user about having Safari running with a dialog box.    �    I  � ��x
�x .panSdlognull��� ��� obj  m   � � D >Please make sure that Safari is not running before continuing.    �w�v
�w 
disp m   � ��u�u  �v    l  � ��t�s�t  �s   	 l  � ��r
�r  
 M G Remove the symbolic link between ~/Library/Safari/Icons and /dev/null.   	  I  � ��q�p
�q .sysoexecTEXT���     TEXT m   � �  rm ~/Library/Safari/Icons   �p    l  � ��o�n�o  �n    l  � ��m�m   C = Create a real directory for the icons to be stored in again.     I  � ��l�k
�l .sysoexecTEXT���     TEXT m   � � " mkdir ~/Library/Safari/Icons   �k    l  � ��j�i�j  �i    l  � ��h�h   J D Display a dialog telling the user that the changes were successful.     I  � ��g 
�g .panSdlognull��� ��� obj  m   � �!! 2 ,Favorite icons were successfully re-enabled.     �f"#
�f 
btns" J   � �$$ %�e% m   � �&&  OK   �e  # �d'(
�d 
dflt' m   � �))  OK   ( �c*�b
�c 
disp* m   � ��a�a �b   +�`+ l  � ��_�^�_  �^  �`  �|  ��   ) ,�], l  � ��\�[�\  �[  �]    -.- l     �Z�Y�Z  �Y  . /0/ i    121 I     �X3�W
�X .appSawFNnull��� ��� obj 3 o      �V�V 0 	theobject 	theObject�W  2 l      �U4�U  4  Add your script here.   0 565 l     �T�S�T  �S  6 787 i    9:9 I     �R;�Q
�R .appSsQALnull��� ��� obj ; o      �P�P 0 	theobject 	theObject�Q  : l      �O<�O  <  Add your script here.   8 =>= l     �N�M�N  �M  > ?@? l     �L�K�L  �K  @ A�JA j    �IB�I 60 asdscriptuniqueidentifier ASDScriptUniqueIdentifierB m    CC  SafariSpeed.applescript   �J       �HDEFGC�H  D �G�F�E�D
�G .coVScliInull��� ��� obj 
�F .appSawFNnull��� ��� obj 
�E .appSsQALnull��� ��� obj �D 60 asdscriptuniqueidentifier ASDScriptUniqueIdentifierE �C �B�AHI�@
�C .coVScliInull��� ��� obj �B 0 	theobject 	theObject�A  H �?�? 0 	theobject 	theObjectI $�> 2 =�=�< G�; Q�: V�9 Y�8 h u  � � � � � � � � � � � � � �!&)
�> 
pnam
�= 
disp
�< .panSdlognull��� ��� obj 
�; .sysoexecTEXT���     TEXT
�: 
btns
�9 
dflt�8 �@ ��,�  "��jl O�j O���kv���k� OPY ���,�  (��jl O�j Oa �a kv�a �k� OPY ���,a   Ha �jl Oa �a kv�a �k� Oa j Oa j Oa �a kv�a �k� OPY ?��,a   4a �jl Oa j Oa  j Oa !�a "kv�a #�k� OPY hOPF �72�6�5JK�4
�7 .appSawFNnull��� ��� obj �6 0 	theobject 	theObject�5  J �3�3 0 	theobject 	theObjectK  �4 hG �2:�1�0LM�/
�2 .appSsQALnull��� ��� obj �1 0 	theobject 	theObject�0  L �.�. 0 	theobject 	theObjectM  �/ h ascr  ��ޭ