package com.example.demo.exception;

public class EmptyDbException extends RuntimeException{

    public EmptyDbException(String message) {
        super(message);
    }

    public EmptyDbException(Throwable cause) {
        super(cause);
    }
}
