package gerador;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;

public class Gerenciador {
	public static final String KEY = "GERENCIADOR";
	private Map<String, Recibo> recibos;
	private LinkedList<Recibo> recibosList;
	private int contador;
	
public Gerenciador(){
	recibos = new HashMap<String, Recibo>();
	recibosList = new LinkedList<Recibo>();
	contador = 0;
	
}
	public void adicionarRecibo(Recibo recibo){
		System.out.println(recibo.getCod());

		recibos.put(recibo.getCod(), recibo);
		recibosList.add(recibo);
		contador+=1;
	}
	public Map<String, Recibo> getRecibos() {
		return recibos;
	}
	public void setRecibos(Map<String, Recibo> recibos) {
		this.recibos = recibos;
	}
	public LinkedList<Recibo> getReciboList() {
		return recibosList;
	}
	public void setReciboList(LinkedList<Recibo> reciboList) {
		this.recibosList = reciboList;
	}
	public int getContador() {
		return contador;
	}
	public void setContador(int contador) {
		this.contador = contador;
	}	
	
}
