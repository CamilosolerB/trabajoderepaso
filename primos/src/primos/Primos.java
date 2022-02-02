/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package primos;

import javax.swing.JOptionPane;
import java.util.ArrayList;

public class Primos {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        float NumeroInicial =Float.parseFloat(JOptionPane.showInputDialog("Indique el numero desde donde inicia"));
        float NumeroFinal = Float.parseFloat(JOptionPane.showInputDialog("¿Hasta que numero va?"));
        ArrayList<Integer> resultado = new ArrayList<Integer>();
        for(float i = NumeroInicial; i<=NumeroFinal; i++){
            if(i==2 || i==3 || i==5){
                resultado.add((int)i);
            }
            else if(i%2!=0 && i%3!=0 && i%5!=0){
                resultado.add((int)i);
            }
        }
            System.out.println(resultado + "Son numeros primos");
    }
    
}
