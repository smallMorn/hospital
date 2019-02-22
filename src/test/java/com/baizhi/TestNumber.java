package com.baizhi;

import java.text.DecimalFormat;

public class TestNumber {
    public static void main(String[] args) {
        System.out.println(division(3, 2));
    }

    public static String division(int a, int b) {
        String result = "";
        float num = (float) a / b;
        DecimalFormat df = new DecimalFormat("0.0");
        result = df.format(num);
        return result;
    }
}
