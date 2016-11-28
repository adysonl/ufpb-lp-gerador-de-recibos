package gerador.acoes;

import java.util.LinkedList;
import org.ayty.webee.Acao;
import org.ayty.webee.Requisicao;
import org.ayty.webee.Resposta;
import gerador.Gerenciador;
import gerador.Usuario;

public class Usuarios extends Acao {
	protected void executar(Requisicao req, Resposta resp) {
		Gerenciador gerente = (Gerenciador)this.getAplicacao().recuperarObjeto(Gerenciador.KEY);
		LinkedList<Usuario> usuarios = gerente.getUsuariosList();
		resp.adicionarDado("usuarios", usuarios);
		resp.abrirPagina("/usuarios.jsp");
	}

}
