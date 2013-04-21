<%@ Language="VBscript" %>
<html>
<head>
<title>Submitted data</title>
</head>

<body>
<%
'declare the variables that will receive the values 
Dim Satellite, Target, Wavelength, DayFrom, MonthFrom, YearFrom, DayTill, MonthTill, YearTill
'receive the values sent from the form and assign them to variables
'note that request.form("name") will receive the value entered 
'into the textfield called name
sa=Request.Form("Satellite")
bc=Request.Form("Target") 
s=Request.Form("Wavelength") 
de=Request.Form("DayFrom") 
m=Request.Form("MonthFrom") 
ae=Request.Form("YearFrom" 

<script>

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.BufferedReader;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.StringTokenizer;
import java.util.Vector;

import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;





public class space extends JFrame{
	
	private JButton boton, boton2,boton3,boton4;
	private JLabel texto;
	private JCheckBox a;
	Vector w;
	private JComboBox box, box2,dia,mes,año;
	
	public space(){
			w=new Vector();
			this.setTitle("Satelites");
			this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		    this.setBounds(200, 200, 170, 300);
		  
		    this.setResizable(false);
		    String[] c={"Todos","XMM-Newton","Swift","Suzaku","Spitzer","RXTE","NuSTAR","INTEGRAL","Herschel","Fermi","Chandra","AGILE","HST"};
		    box=new JComboBox(c);
		    String[] x={"Rayos X","Rayos gama", "Ultravioleta","Infrarrojo","Visible"};
		    String[] dias={"01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31"};
		    String[] meses={"01","02","03","04","05","06","07","08","09","10","11","12"};
		    String[] años={"2000","2001","2002","2003","2004","2005","2006","2007","2008","2009","2010","2011","2012","2013"};
		    box2=new JComboBox(x);
		    dia=new JComboBox(dias);
		    mes=new JComboBox(meses);
		    año=new JComboBox(años);
		    boton=new JButton("Print");
		    boton2=new JButton("Observacion");
		    boton3=new JButton("Tipo de camara");
		    boton4=new JButton("Fecha");
		    texto=new JLabel("Satellite:");
		    
		    this.setVisible(true);
		    JPanel a=new JPanel();
		   
		    a.add(texto);
		    a.add(box);
		    a.add(boton2);
		    a.add(box2);
		    a.add(boton3);
		    
		    a.add(dia);
		    a.add(mes);
		    a.add(año);
		    a.add(boton4);
		    a.add(boton);
		    
		    boton2.addActionListener(new ActionListener(){
		    	public void actionPerformed(ActionEvent e){
		    		
		    		String bc = JOptionPane.showInputDialog("Observacion");
		    		String s=box.getSelectedItem().toString();
		    		//System.out.println(s);
		    		archivos(s,b);
		    		//System.exit(0);
		    		
		    	}
		    });
		    
		    boton3.addActionListener(new ActionListener(){
		    	public void actionPerformed(ActionEvent e){
		    		String s=box2.getSelectedItem().toString();
		    		if (s.equals("Rayos X")){
		    			
		    			archivos("XMM-Newton");
		    			
		    			archivos("Swift");
		    			
		    			archivos("Suzaku");
		    			
		    			archivos("RXTE");
		    			
		    			archivos("NuSTAR");
		    			
		    			archivos("INTEGRAL");
		    			
		    			archivos("Chandra");
		    			
		    			archivos("AGILE");
		    			
		    		}
		    		if (s.equals("Rayos gama")){
		    			archivos("Swift");
		    			archivos("Suzaku");
		    			archivos("INTEGRAL");
		    			archivos("Fermi");
		    			archivos("AGILE");
		    		}
		    		if (s.equals("Ultravioleta")){
		    			archivos("Swift");
		    			archivos("HST");
		    		}
		    		if (s.equals("Infrarrojo")){
		    			archivos("Spitzer");
		    			archivos("Herschel");
		    		}
		    		if (s.equals("Visible")){
		    			archivos("Swift");
		    			archivos("INTEGRAL");
		    			archivos("HST");
		    			
		    		}
		    		//System.out.println(s);
		    		//archivos(s);
		    		//System.exit(0);
		    		jotos();
		    		
		    	}
		    });
		    
		    boton.addActionListener(new ActionListener(){
		    	public void actionPerformed(ActionEvent e){
		    		String sa=box.getSelectedItem().toString();
		    		System.out.println(sa);
		    		archivos(sa);
		    		//System.exit(0);
		    		jotos();
		    	}
		    });
		    
		    
		    boton4.addActionListener(new ActionListener(){
		    	public void actionPerformed(ActionEvent e){
		    		String de=dia.getSelectedItem().toString();
		    		String a=año.getSelectedItem().toString();
		    		String m=mes.getSelectedItem().toString();
		    		//System.out.println(de+" " +m+" "+ae);
		    		archivos(d,m,a);
		    		//System.exit(0);
		    		
		    	}
		    });
		    
		    
		    this.add(a);
		    
	}
	
	public void jotos(){
		try {
			PrintWriter escritor=new PrintWriter(new FileWriter("final.txt"));
			for(int i=0; i<w.size();i++){
				escritor.println(w.elementAt(i));
			}
			escritor.close();
			
		} catch (IOException e) {
			System.out.println(e);
		}
		w=new Vector();
	}
	public void archivos(String b){
		

		String[] rutas={"AGILE.csv",
				"Chandra",
				"Fermi.csv",
				"INTEGRAL.csv",
				"Newton.csv",
				"NuStar.csv",
				"Chandra.txt",
				"RXTE.txt"};
		for (int j = 0; j < rutas.length; j++) {
			
		
		try {
			BufferedReader lector=new BufferedReader(new FileReader(rutas[j]));
			String linea;
			StringTokenizer st;
			String satelite;
			String observacion;
			String inicio;
			String fin;
			String ra;
			String dec;
			String nada;
			
			while((linea=lector.readLine())!=null){
				st=new StringTokenizer(linea,",");
				nada=st.nextToken();
				satelite=st.nextToken();
				observacion=st.nextToken();
				inicio=st.nextToken();
				fin=st.nextToken();
				ra=st.nextToken();
				dec=st.nextToken();
				nada=st.nextToken();
				//System.out.printf("%s %s,%.2f\n", nombre,apellido,horas*pagoXHr);
				if (b.equals(satelite)){
					System.out.println(satelite+" "+observacion+" "+inicio+" "+fin+" "+ra+" "+dec);
					//cochinada.println(satelite+" "+observacion+" "+inicio+" "+fin+" "+ra+" "+dec);
					w.addElement(satelite+" "+observacion+" "+inicio+" "+fin+" "+ra+" "+dec);
				}
				if (b.equals("Todos")){
					System.out.println(satelite+" "+observacion+" "+inicio+" "+fin+" "+ra+" "+dec);
					w.addElement(satelite+" "+observacion+" "+inicio+" "+fin+" "+ra+" "+dec);
					//cochinada.println(satelite+" "+observacion+" "+inicio+" "+fin+" "+ra+" "+dec);
				}
			}
			
			lector.close();
			
			
			
		} catch (FileNotFoundException e) {
			System.out.println(e);
		} catch (IOException e) {
			System.out.println(e);
		}

		}
		
		
		
	}
	//--------------------------------------------------------------------------------------------------------
	
public void archivos(String dia,String mes,String año){
		

		String[] rutas={"AGILE.csv",
				"Chandra",
				"Fermi.csv",
				"INTEGRAL.csv",
				"Newton.csv",
				"NuStar.csv",
				"Chandra.txt",
				"RXTE.txt"};
		for (int j = 0; j < rutas.length; j++) {
			try
			{
				BufferedReader lector = new BufferedReader(new FileReader(rutas[j]));
				BufferedWriter escritor = new BufferedWriter(new FileWriter("gato.txt"));
				String linea;
				while((linea=lector.readLine())!=null){
					int contador = 0;
					for (int i = 0; i < linea.length(); i++){
						if(linea.charAt(i)==','){
							contador++;
						}
					}

					if(contador == 7){
						escritor.write(linea);				
						escritor.newLine();
					}
					else if(contador == 8){
						String tem2 = "";
						int con = 0;
						for (int i = 0; i < linea.length(); i++){
							if(linea.charAt(i)==','){
								con++;							
							}
							else{
							}
							
							if(linea.charAt(i)==',' && con == 3){
								tem2 = tem2+ '+';
							}
							else{
								tem2 = tem2+linea.charAt(i);
							}
						}
						escritor.write(tem2);				
						escritor.newLine();
					}
				}	
				lector.close();
				escritor.close();
			}
			catch(IOException e)
			{
				e.printStackTrace();
			}
			try
			{
				BufferedReader lector2 = new BufferedReader(new FileReader("gato.txt"));
				String linea2;
				StringTokenizer st;
				String satelite;
				String observacion;
				String inicio;
				String fin;
				String ra;
				String dec;
				String nada;
				StringTokenizer as;
				StringTokenizer ad;
				String inicial;
				String ano;
				String horas;
				PrintWriter cochinada=new PrintWriter(new FileWriter("final.txt"));
				int z = 1;
				while((linea2=lector2.readLine())!=null)
				{
					st=new StringTokenizer(linea2,",");
					nada=st.nextToken();
					satelite=st.nextToken();
					observacion=st.nextToken();
					inicio=st.nextToken();
					fin=st.nextToken();
					ra=st.nextToken();
					dec=st.nextToken();
					nada=st.nextToken();
					if(inicio.length() == 14)
					{
						//System.out.println(z+"= Caso 14: "+inicio.length());
						z++;
						
						if(inicio.substring(0,2).equals(mes)){
							
							if(inicio.substring(3,5).equals(dia)){
						
								if(inicio.substring(6,8).equals(año.substring(2,4))){
									System.out.println(satelite+" "+observacion+" "+inicio+" "+fin+" "+ra+" "+dec);
									cochinada.println(satelite+" "+observacion+" "+inicio+" "+fin+" "+ra+" "+dec);
								}
							}
						}
						//System.out.println(satelite+" "+observacion+" "+inicio+" "+fin+" "+ra+" "+dec);
					}
					else if(inicio.length() == 12)
					{
						//System.out.println(z+"= Caso 12: "+inicio.length());
						z++;
						
						if(inicio.substring(0,1).equals(mes.substring(1,2))){
							
							
							if(inicio.substring(2,4).equals(dia)){
								
								if(inicio.substring(5,7).equals(año.substring(2,4))){
									System.out.println(satelite+" "+observacion+" "+inicio+" "+fin+" "+ra+" "+dec);
									cochinada.println(satelite+" "+observacion+" "+inicio+" "+fin+" "+ra+" "+dec);
								}
							}
						}
					}
					else if((inicio.length() == 13) && (inicio.charAt(2) == '/'))
					{
						//System.out.println(z+"= Caso 13.5: "+inicio.length());
						z++;
						
						if(inicio.substring(0,1).equals(mes.substring(1,2))){
							
							
							if(inicio.substring(2,4).equals(dia)){
								
								if(inicio.substring(5,7).equals(año.substring(2,4))){
									System.out.println(satelite+" "+observacion+" "+inicio+" "+fin+" "+ra+" "+dec);
									cochinada.println(satelite+" "+observacion+" "+inicio+" "+fin+" "+ra+" "+dec);
								}
							}
						}
					}
					else if(inicio.length() == 13)
					{
						//System.out.println(z+"= Caso 13: "+inicio.length());
						z++;
						if(inicio.substring(0,1).equals(mes.substring(1,2))){
							
							
							if(inicio.substring(2,4).equals(dia)){
								
								if(inicio.substring(5,7).equals(año.substring(2,4))){
									System.out.println(satelite+" "+observacion+" "+inicio+" "+fin+" "+ra+" "+dec);
									cochinada.println(satelite+" "+observacion+" "+inicio+" "+fin+" "+ra+" "+dec);
								}
							}
						}
					}
					else
					{
						//System.out.println(z+"= Caso 25: "+inicio.length());
						z++;
						if(inicio.substring(0,2).equals(mes)){
							
							if(inicio.substring(3,5).equals(dia)){
								
								if(inicio.substring(6,10).equals(año)){
									System.out.println(satelite+" "+observacion+" "+inicio+" "+fin+" "+ra+" "+dec);
									cochinada.println(satelite+" "+observacion+" "+inicio+" "+fin+" "+ra+" "+dec);
								}
							}
						}
					}		
				}
				lector2.close();
				cochinada.close();
			}
			catch(IOException e)
			{
				System.out.println(e);
			}
		
		}
		
		
		
	}
	//-------------------------------------------------------------------------------------------------------------
	
public void archivos(String b, String o){
		

		String[] rutas={"AGILE.csv",
				"Chandra",
				"Fermi.csv",
				"INTEGRAL.csv",
				"Newton.csv",
				"NuStar.csv",
				"Chandra.txt",
				"RXTE.txt"};
		for (int j = 0; j < rutas.length; j++) {
			
		
		try {
			BufferedReader lector=new BufferedReader(new FileReader(rutas[j]));
			String linea;
			StringTokenizer st;
			String satelite;
			String observacion;
			String inicio;
			String fin;
			String ra;
			String dec;
			String nada;
		

			PrintWriter cochinada=new PrintWriter(new FileWriter("final.txt"));
			while((linea=lector.readLine())!=null){
				st=new StringTokenizer(linea,",");
				nada=st.nextToken();
				satelite=st.nextToken();
				observacion=st.nextToken();
				inicio=st.nextToken();
				fin=st.nextToken();
				ra=st.nextToken();
				dec=st.nextToken();
				nada=st.nextToken();
				//System.out.printf("%s %s,%.2f\n", nombre,apellido,horas*pagoXHr);
				if (satelite.equals(b)){
					if(o.equals(observacion)){
						System.out.println(satelite+" "+observacion+" "+inicio+" "+fin+" "+ra+" "+dec);
						cochinada.println(satelite+" "+observacion+" "+inicio+" "+fin+" "+ra+" "+dec);
					}
				}
				if (b.equals("Todos")){
					if(observacion.equals(o)){
						System.out.println(satelite+" "+observacion+" "+inicio+" "+fin+" "+ra+" "+dec);
						cochinada.println(satelite+" "+observacion+" "+inicio+" "+fin+" "+ra+" "+dec);
					}
				}
			}
			lector.close();
			cochinada.close();
			
			
		} catch (FileNotFoundException e) {
			System.out.println(e);
		} catch (IOException e) {
			System.out.println(e);
		}

		}
		
		
		
	}
	
	
	public static void main(String[] args) {
		space q=new space();
	}
	
	

		
}




 </script>
 script language="javascript">
    window.location.href = "Results.html"
</script>

</body>
</html>