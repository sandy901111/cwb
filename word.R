install.packages('wordcloud2')
#library(wordcloud2)
require('wordcloud2')
x=rev(c('中華跨境電商', '展盟工程', '巨匠雲科技', '惠康百貨', '淳康國際', '締盟',
        '良福保全', '華碩電腦', '鴻齡國際', '大地國際', '有田世紀', '關貿網路', '昇恆昌',
        '程高資訊', '三商家購', '巨匠電腦', '良興', '全聯實業', '神腦國際', '凌網科技'))
y=rev(c(1,1,1,1,1,1,1,1,1,2,2,2,3,3,4,4,4,6,6,8))
z=data.frame(x,y)
wordcloud2(z, size = 1,shape = 'circle')
wordcloud2(demoFreq, size = 1,shape = 'square')
