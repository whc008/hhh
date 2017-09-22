gate = 0.000000000000000000000000001;
lengthT= wfpara.wf(2);
pregateR = wfpara.wf(3);
deadT = wfpara.wf(4);

lengthN = round(fs*lengthT/1000);
segN = round(lengthN/5);
pregateN = round(lengthN*pregateR);
posgateN = lengthN-pregateN-1;
deadN = round(deadT*fs/1000);

tscale = (1:lengthN)/fs*1000;
ls = length(y);
midvalue = mean(y);



       
            align = 'peak';
      
        
        data = y.^2;
        energy2 = [y(1), y(1:end-1)].*[y(2:end), y(end)];
        data = data - energy2;
        clear energy2;
       

        
        
        
ind = 1;
index = [];
waveforms = [];
endpos = ls-2*lengthN-1;
ti = lengthN;




        ti = pregateN+1;
  
        while ti < endpos
            edp = ti+segN-1;
            [pvalue, ppos] = max(data(ti:edp));
            while (ppos == segN) & (edp < endpos)
                ti = edp-1;
                edp = ti+segN-1;
                [pvalue, ppos] = max(data(ti:edp));
            end
            if (pvalue >= gate & ppos ~= 1)
                ppos = ti+ppos-1;
                if data(ppos-pregateN) < pvalue & data(ppos+posgateN) < pvalue
                    index(ind) = ppos;
                    ind = ind+1;
                end
                ti = ppos+posgateN+1+deadN;
            else
                ti = edp+1;
            end
        end
        
        
        
         waveforms = zeros(length(index),lengthN);
    for ti = 1:length(index);
        pos = index(ti);
        waveforms(ti,:) = data1((pos-pregateN):(pos+posgateN));
    end
    
    plot(waveforms')