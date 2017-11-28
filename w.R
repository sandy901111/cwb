get_weather=function(FILE,LABEL) {
  title=c("�[���ɶ�","��������","��������",
          "�����̰�����","�����̰������ɶ�","�����̧C����",
          "�����̧C�����ɶ�","���","�̰����","�̰���Ůɶ�",
          "�̧C���","�̧C��Ůɶ�","�S�I�ū�","�۹�ë�",
          "�̤p�۹�ë�","�̤p�۹�ë׮ɶ�","���t","���V",
          "�̤j�}��","�̤j�}�����V","�̤j�}�����t�ɶ�",
          "�����q","�����ɼ�","�[��10�����̤j�����q",
          "�[��10�����̤j�����_�l�ɶ�","�@�p�ɳ̤j�����q",
          "�@�p�ɳ̤j�����q�_�l�ɶ�","��Ӯɼ�","��Ӳv",
          "���ѪŤ�g�q","�ਣ��","A���]�o�q")
  x=read.csv(FILE,skip=1,header=F)
  names(x) = title; y=x[,c(1,2,8,9,11,14)];
  y['label']=LABEL; return (y) ;
}
jul = get_weather('201707.csv', '201707')
aug = get_weather('201708.csv', '201708')
sep = get_weather('201709.csv', '201709')
par(mar=c(5,4,4,2)+1)
boxplot(sep[,c(3,4,5)],ylab="���" ,xlab="201709", las=1)
boxplot(aug[,c(3,4,5)],ylab="���" ,xlab="201708", las=1)
plot(jul$��������,type="b", pch=16, col="black",las=1,xlab="���" ,
     ylab="�j����",,main="2017/07", axes=TRUE)
