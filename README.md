# Multi-producer Multi-consumer Queue
This repository contains an implementation of a thread-safe queue in C using pthread library.

## Design
- The queue is implemented using a circular buffer to reduce the overhead of memory allocation/deallocation.
- Mutex locks and condition variables are used to ensure thread-safety and to prevent busy-waiting.
- The queue can store elements of any data type using void pointers.
- The queue allows multiple producers and consumers to access it concurrently.
- Memory is managed dynamically and automatically by the queue.
- The queue operations return a boolean value indicating success or failure.

### Functions
The following functions are available for use with the queue:
```c
// Allocates memory for a new queue of given size and initializes it. Returns a pointer to the new queue.
queue_t *queue_new(int size); 
```

```c
// Deallocates memory for the given queue and sets its pointer to NULL.
void queue_delete(queue_t **q); 
```

```c
// Adds a new element to the end of the queue. Returns true if successful, else false.
bool queue_push(queue_t *q, void *elem); 
```

```c
// Removes the first element from the queue and returns it. Returns true if successful, else false.
bool queue_pop(queue_t *q, void **elem); 
```

### Data Structures
The queue is implemented as a circular buffer of fixed size. Each element in the buffer is a void pointer, which allows the queue to store elements of any data type.

### Modules
The queue is implemented as a standalone module, with no external dependencies beyond the standard C library and the pthread library.

### Vague Requirements
- Memory Management: The queue manages memory dynamically and automatically, freeing any memory allocated during push operations when an element is removed from the queue.
- Thread-Safety: The queue is designed to be thread-safe using mutex locks and condition variables to ensure that concurrent accesses are properly synchronized.
- Generic Data Type: The queue can store elements of any data type using void pointers.