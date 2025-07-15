package com.example.employees.service;

public class MultiThreading extends Thread{

    private String threadName;
    static int position =0;

    public MultiThreading(String threadName){
this.threadName=threadName;
    }

    @Override
    public void run() {

        for(int i=1;i<=100;i++){

            System.out.println(this.threadName + " "+ i);

            if(i==50){
                System.out.println(this.threadName + " reached the checkpoint");
            }

            if(i==100){
                position++;
                System.out.println(this.threadName + " reached"+ position);
            }

            try {
                Thread.sleep(500); // pause 0.5 sec to clearly see switching
            } catch (InterruptedException e) {
                System.out.println( this.threadName + " interrupted.");
            }
        }
    }

}
