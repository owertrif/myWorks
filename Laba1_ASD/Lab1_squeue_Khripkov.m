clear;
stack_push = 100:1:109;
global Queue_size
Queue_size=10;

[queue_info] = queue_Khripkov('Enqueue',stack_push(1));
[queue_info] = queue_Khripkov('Dequeue');
disp(queue_info)
[queue_info] = queue_Khripkov('Enqueue',stack_push(5));
[queue_info] = queue_Khripkov('Top');
disp(queue_info)
[queue_info] = queue_Khripkov('Enqueue',stack_push(10));
[queue_info] = queue_Khripkov('IsEmpty');
disp(queue_info)
[queue_info] = queue_Khripkov('IsFull');
disp(queue_info)
[queue_info] = queue_Khripkov('Dequeue');
[queue_info] = queue_Khripkov('Dequeue');
[queue_info] = queue_Khripkov('IsEmpty');
disp(queue_info)
[queue_info] = queue_Khripkov('IsFull');
disp(queue_info)

for i=1:Queue_size
    [queue_info] = queue_Khripkov('Enqueue',stack_push(i));
end
[queue_info] = queue_Khripkov('Enqueue',stack_push(1));

[queue_info] = queue_Khripkov('Dequeue');
[queue_info] = queue_Khripkov('Enqueue',23);
[queue_info] = queue_Khripkov('Top');
disp(queue_info)
[queue_info] = queue_Khripkov('IsFull');
disp(queue_info)

for i=1:Queue_size
    [queue_info] = queue_Khripkov('Dequeue');
end