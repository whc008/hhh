wfpara.wf = [-16, 2.5 , 0.25, 0];      % ��岨�Σ��ţ�����T��ms����pregateR��deadT��ms��
wfpara.align = 'valley';        

nStd=4.5;
[b,a]=butter(6, 4500/(fs/2), 'low');
y=filter(b,a,nonliner);
figure(1)
plot(y)
figure(2)
plot(nonliner)
wfpara.wf(1)= mean(y) + std(y)*nStd;