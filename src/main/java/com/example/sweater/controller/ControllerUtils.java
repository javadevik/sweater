package com.example.sweater.controller;

import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;

import java.util.Map;
import java.util.stream.Collectors;

public class ControllerUtils {

    public static Map<String, String> getErrors(BindingResult bindingResult){
        Map<String, String> errors = bindingResult.getFieldErrors().stream().collect(Collectors.toMap(
                f -> f.getField() + "Error", FieldError::getDefaultMessage));
        return errors;
    }
}
