package gerador;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;

public class Gerenciador {
	public static final String KEY = "GERENCIADOR";
	private Map<String, Recibo> recibos;
	private LinkedList<Recibo> recibosList;
	private Map<String, Usuario> usuarios;
	private LinkedList<Usuario> usuariosList;
	private int contador;
	
public Gerenciador(){
	recibos = new HashMap<String, Recibo>();
	recibosList = new LinkedList<Recibo>();
	usuarios = new HashMap<String, Usuario>();
	usuariosList = new LinkedList<Usuario>();
	contador = 0;
	
}
	public void cadastrarUsuario(Usuario usuario){
		usuarios.put(usuario.getLogin(), usuario);
		usuariosList.add(usuario);
	}
	public void adicionarRecibo(Recibo recibo){
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
	public LinkedList<Usuario> getUsuariosList() {
		return usuariosList;
	}
	public void setUsuariosList(LinkedList<Usuario> usuariosList) {
		this.usuariosList = usuariosList;
	}
	public Map<String, Usuario> getUsuarios() {
		return usuarios;
	}
	public void setUsuarios(Map<String, Usuario> usuarios) {
		this.usuarios = usuarios;
	}
	public boolean existeUsuario(String login) {
		return usuarios.containsKey(login);
	}
	public Usuario getUsuario(String login) {
		return usuarios.get(login);
	}
	public void deletarRecibo(String cod) {
		recibosList.remove(recibos.remove(cod));
	}
	public Recibo getRecibo(String cod) {
		return recibos.get(cod);
	}
	public void editarUsuario(String login, String nnome, String nlogin, String nsenha, String ncpf, String nrg, String nendereco) {
		Usuario usuario = usuarios.get(login);
		removerUsuario(login);
		usuario.setNome(nnome);
		usuario.setCpf(ncpf);
		usuario.setEndereco(nendereco);
		usuario.setLogin(nlogin);
		usuario.setRg(nrg);
		usuario.setSenha(nsenha);
		cadastrarUsuario(usuario);
		
	}
	public void removerUsuario(String login) {
		usuariosList.remove(usuarios.remove(login));
	}	
	
}
