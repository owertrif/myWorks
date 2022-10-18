clear;
stack_push = 100:1:109;
global Stack_size
Stack_size=10;
[stackInfo] = stack_Khripkov('Push',stack_push(1));
[stackInfo] = stack_Khripkov('Pop');
disp(stackInfo)

[stackInfo] = stack_Khripkov('Push',stack_push(5));
[stackInfo] = stack_Khripkov('Peek');
disp(stackInfo)
[stackInfo] = stack_Khripkov('Pop');

[stackInfo] = stack_Khripkov('Push',stack_push(10));
[stackInfo] = stack_Khripkov('Peek');
disp(stackInfo)
[stackInfo] = stack_Khripkov('Pop');
[stackInfo] = stack_Khripkov('IsFull');
disp(stackInfo)
[stackInfo] = stack_Khripkov('IsEmpty');
disp(stackInfo)

for i=1:Stack_size
    [stackInfo] = stack_Khripkov('Push',stack_push(i));
end
[stackInfo] = stack_Khripkov('Push',stack_push(1));

[stackInfo] = stack_Khripkov('Pop');
[stackInfo] = stack_Khripkov('Push',23);
[stackInfo] = stack_Khripkov('IsFull');
disp(stackInfo)

for i=1:Stack_size
    [stackInfo] = stack_Khripkov('Pop');
end
