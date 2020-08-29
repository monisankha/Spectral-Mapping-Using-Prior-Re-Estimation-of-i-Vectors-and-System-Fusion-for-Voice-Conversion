clear;clc;
Male={'BDL','RMS'};
Female={'SLT','CLB'};
a=importdata('proposed_tmod2_simple_new_objective_list.text');
j1=0;j2=0;j3=0;j4=0;j5=0;j6=0;j7=0;j8=0;
for i=1:length(a)
    x=a{i}(84:86);
    y=load(a{i});
    if strcmp(x,'mcd')==1
        source=a{i}(88:90);
        target=a{i}(92:94);
        if (strcmp(source,Male{1}) || strcmp(source,Male{2})) && (strcmp(target,Male{1}) || strcmp(target,Male{2}))==1
            j1=j1+1;
            mcd_maletomale(j1)=y.mcd_gmm;
        elseif (strcmp(source,Male{1}) || strcmp(source,Male{2})) && (strcmp(target,Female{1}) || strcmp(target,Female{2}))==1
            j2=j2+1;
            mcd_maletofemale(j2)=y.mcd_gmm;
        elseif (strcmp(source,Female{1}) || strcmp(source,Female{2})) && (strcmp(target,Male{1}) || strcmp(target,Male{2}))==1
            j3=j3+1;
            mcd_femaletomale(j3)=y.mcd_gmm;
        elseif (strcmp(source,Female{1}) || strcmp(source,Female{2})) && (strcmp(target,Female{1}) || strcmp(target,Female{2}))==1
            j4=j4+1;
            mcd_femaletofemale(j4)=y.mcd_gmm;
        end
    else
        source=a{i}(89:91);
        target=a{i}(93:95);
        if (strcmp(source,Male{1}) || strcmp(source,Male{2})) && (strcmp(target,Male{1}) || strcmp(target,Male{2}))==1
            j5=j5+1;
            pesq_maletomale(j5)=y.pesq_gmm;
        elseif (strcmp(source,Male{1}) || strcmp(source,Male{2})) && (strcmp(target,Female{1}) || strcmp(target,Female{2}))==1
            j6=j6+1;
            pesq_maletofemale(j6)=y.pesq_gmm;
        elseif (strcmp(source,Female{1}) || strcmp(source,Female{2})) && (strcmp(target,Male{1}) || strcmp(target,Male{2}))==1
            j7=j7+1;
            pesq_femaletomale(j7)=y.pesq_gmm;
        elseif (strcmp(source,Female{1}) || strcmp(source,Female{2})) && (strcmp(target,Female{1}) || strcmp(target,Female{2}))==1
            j8=j8+1;
            pesq_femaletofemale(j8)=y.pesq_gmm;
        end
    end
end

mean_mcd_maletomale=mean(mcd_maletomale); 
mean_mcd_maletofemale=mean(mcd_maletofemale);  
mean_mcd_femaletomale=mean(mcd_femaletomale);  
mean_mcd_femaletofemale=mean(mcd_femaletofemale);  
mean_pesq_maletomale=mean(pesq_maletomale);  
mean_pesq_maletofemale=mean(pesq_maletofemale);  
mean_pesq_femaletomale=mean(pesq_femaletomale);  
mean_pesq_femaletofemale=mean(pesq_femaletofemale);  
