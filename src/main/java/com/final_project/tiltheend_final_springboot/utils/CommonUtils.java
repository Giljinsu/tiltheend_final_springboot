package com.final_project.tiltheend_final_springboot.utils;

import java.util.UUID;

public class CommonUtils {
    public String makeUuid() {
        UUID uuid = UUID.randomUUID();
        return uuid.toString();
    }
}
