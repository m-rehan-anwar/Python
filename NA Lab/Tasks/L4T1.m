n=input('Input do n ki')
age=input('List do mere ko')
weight=input('List do mere ko')

X=input('jis k liye chahiye')
y_num=0;
y_denum=0;
for i=0:n
    y_num=y_num + (X-age(i+1));
    y_denum=y_denum+(age(i)-age(i+1));
end

Y=y_num/y_denum