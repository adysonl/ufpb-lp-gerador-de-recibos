package gerador;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Recibo {
	private Usuario proprietario;
	private String cod = "0";
	private double valor = 0;
	private String nome = "_______________________________________________";
	private String data;
	private String produto = "_________________________________________";

	public Recibo(Usuario proprietario, String nome, double valor, String produto, int contador) {
		this.proprietario = proprietario;
		this.valor = valor;
		this.nome = nome;
		this.data = dataAtual();
		this.cod = Integer.toString(contador + 1);
		this.produto = produto;

	}

	public String getCod() {
		return cod;
	}

	public void setCod(String cod) {
		this.cod = cod;
	}

	public String dataAtual() {
		Date data2 = new Date();
		SimpleDateFormat formatador = new SimpleDateFormat("dd/MM/yyyy");
		return formatador.format(data2);
	}

	public double getValor() {
		return valor;
	}

	public void setValor(double valor) {
		this.valor = valor;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public String getProduto() {
		return produto;
	}

	public void setProduto(String produto) {
		this.produto = produto;
	}

	public Usuario getProprietario() {
		return proprietario;
	}

	public void setProprietario(Usuario proprietario) {
		this.proprietario = proprietario;
	}
}
