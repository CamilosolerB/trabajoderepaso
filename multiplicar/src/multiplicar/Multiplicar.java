/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package multiplicar;

import javax.swing.JOptionPane;

public class Multiplicar {

    public static void main(String[] args) {
        int TablaInicial, TablaFinal, NumeroInicial, NumeroFinal;
        TablaInicial = Integer.parseInt(JOptionPane.showInputDialog("Indique desde que tabla desea ver"));
        TablaFinal = Integer.parseInt(JOptionPane.showInputDialog("Indique en que numero termina"));
        NumeroInicial = Integer.parseInt(JOptionPane.showInputDialog("¿Desde que numero comienza?"));
        NumeroFinal = Integer.parseInt(JOptionPane.showInputDialog("Hasta que numero desea ver"));
    
    for(int i = TablaInicial; i<= TablaFinal; i++){
    for(int ta = NumeroInicial; ta<=NumeroFinal; ta++){
        int resultado = i * ta;
        System.out.println( i + " * " + ta +" = "+ resultado );
    }
}
    }
    
}
