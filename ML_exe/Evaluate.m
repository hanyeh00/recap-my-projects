 function EVAL = Evaluate(ACTUAL,PREDICTED)
idx = (ACTUAL()==1);

p = length(ACTUAL(idx));
n = length(ACTUAL(~idx));
N = p+n;

tp = sum(ACTUAL(idx)==PREDICTED(idx));
tn = sum(ACTUAL(~idx)==PREDICTED(~idx));
fp = n-tn;
fn = p-tp;

tp_rate = tp/p;
tn_rate = tn/n;

accuracy = (tp+tn)/N;
sensitivity = tp_rate;
specificity = tn_rate;
precision = tp/(tp+fp); % Detection rate
false_alarm=1-(fn/(tn+fn));
recall = sensitivity;
f1 = 2*((precision*recall)/(precision + recall));
gmean = sqrt(tp_rate*tn_rate);
Hitrate=(1/N)* sum(ACTUAL==PREDICTED);
mcc= (tp .* tn - fp .* fn) ./ sqrt( (tp+fp) .* (tp+fn) .* (tn+fp) .* (tn+fn) );
EVAL = [Hitrate sensitivity specificity f1 mcc];
