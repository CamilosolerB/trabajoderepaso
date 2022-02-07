
import java.util.Scanner;

public class PromedioSalario{
	public static void main(String[] args){

		Scanner sca = new Scanner(System.in);		
		System.out.println("Bienvenido al ejercicio de hoy");
		System.out.println("1.  Ejercico 1 (promedio salarios)	2.Ejercicio 2 (promedio edad)");
		int seleccion = sca.nextInt();
		switch(seleccion){
			case 1:
				float valorfinal=0;
				System.out.println("Promediacion del grupo de empleados");
				System.out.println("indique a cuantos trabajadores va a promediar su sueldo");
				float persona = sca.nextFloat();
				for(int i = 0;i < persona; i++){
					
					float indicador = i + 1;
					System.out.println("indique el salario del empleado "+ (int)indicador);
					float valor = sca.nextFloat();
					float itinerador = valor / persona;
					valorfinal = itinerador+valorfinal;
				}
				System.out.println("El promedio final es de : "+valorfinal);
			break;
			case 2:
				int menores=0,mayores=0;
				System.out.println("Bienvenido al segundo ejercicio de java");
				System.out.println("En este ejercicio usted podra definir quien es menor de edad o mayor de edad");
				for(int i=0;i< 10; i++){
					int joven = i +1;
					System.out.println("Indique la edad del personaje "+joven);
					int edad = sca.nextInt();
					if(edad<18){
						menores++;
					}
					else{
						mayores++;
					}
				}
				System.out.println("Hay "+menores+" menores de edad y "+mayores+" mayores de edad");
			break;
		}
	}

}