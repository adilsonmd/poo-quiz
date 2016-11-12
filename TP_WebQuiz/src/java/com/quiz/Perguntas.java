/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.quiz;

import java.util.ArrayList;

/**
 *
 * @author Beto
 */

public class Perguntas {
    
    private static double resAnterior = 0.0;
    private static double resAtual = 0.0;
    private static int contador =0;
    private static ArrayList<Questions> teste;
    
     public static double validaTeste(String[] resposta) {
        int corrects = 0;
        for (int i = 0; i < teste.size(); i++) {
            Questions q = teste.get(i);
            if (q.getResposta().equals(resposta[i])) {
                corrects++;
            }
        }
        double grade = 100.0 * (double) corrects / (double) teste.size();
        contador++;
        resAtual += grade;
        resAnterior = grade;

        return grade;
    }

    public static ArrayList<Questions> getTeste() {
        if (teste == null) {
            teste = new ArrayList<>();
            Questions q1 = new Questions("Pergunta1", "1", new String[]{"1","2","3"});
           // Questions q1 = new Questions("Pergunta1", "respota", new String[]{"alternativas"});
            Questions q2 = new Questions("P2", "2", new String[]{"1","2","3"});
            Questions q3 = new Questions("P3", "3", new String[]{"1","2","3"});
            Questions q4 = new Questions("P4", "4", new String[]{"4","5","6"});
            Questions q5 = new Questions("P5", "5", new String[]{"4","5","6"});
            Questions q6 = new Questions("P6", "6", new String[]{"4","5","6"});
            Questions q7 = new Questions("P7", "7", new String[]{"7","8","9"});
            Questions q8 = new Questions("P8", "8", new String[]{"7","8","9"});
            Questions q9 = new Questions("P9", "9", new String[]{"7","8","9"});
            Questions q10 = new Questions("P10", "10", new String[]{"10","11","12"});
            
            teste.add(q1);
            teste.add(q2);
            teste.add(q3);
            teste.add(q4);
            teste.add(q5);
            teste.add(q6);
            teste.add(q7);
            teste.add(q8);
            teste.add(q9);
            teste.add(q10);
        }

        return teste;
    }

    public static double getResAnterior() {
        return resAnterior;
    }

    public static void setResAnterior(double resAnterior) {
        Perguntas.resAnterior = resAnterior;
    }

    public static double getResAtual() {
        return resAtual;
    }

    public static void setResAtual(double resAtual) {
        Perguntas.resAtual = resAtual;
    }

    public static int getContador() {
        return contador;
    }

    public static void setContador(int contador) {
        Perguntas.contador = contador;
    }

 
    }
