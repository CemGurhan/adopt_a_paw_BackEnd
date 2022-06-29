package com.example.demo.exception;

public class EmptyDBException extends RuntimeException{

    public EmptyDBException(String message) {
        super(message);
    }

    public EmptyDBException(Throwable cause) {
        super(cause);
    }
}
