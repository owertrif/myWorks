function [queue_info] = queue_Khripkov(action,value)

persistent Queue_index struct_queue

global Queue_size

if isempty(Queue_index)
    Queue_index = 0;
end

switch action
    case 'Enqueue'
        
        if isempty(struct_queue)  
        struct_queue = 0;
        end
        
        if  (Queue_index < Queue_size)       
            Queue_index=Queue_index+1;     
            struct_queue(Queue_index)=value; 
        queue_info=1;                                     
    
        else
        queue_info=0;                 
        disp('Error,Queue is full')  
        end
    case 'Dequeue'
        queue_info = struct_queue(1);
        struct_queue(1) = [];
        Queue_index = Queue_index - 1;
    case 'Top'
        queue_info = struct_queue(Queue_index);
    case 'IsEmpty'
        if isempty(struct_queue)
            queue_info = 1;
        else
            queue_info = 0;
        end
    case 'IsFull'
        if  Queue_index == Queue_size
        queue_info=1;   
        else
        queue_info=0;   
        end
end