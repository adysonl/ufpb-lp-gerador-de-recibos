package gerador.acoes;

import org.ayty.webee.Acao;
import org.ayty.webee.Requisicao;
import org.ayty.webee.Resposta;

import gerador.Gerenciador;

public class DeletarUsuario extends Acao{

	protected void executar(Requisicao req, Resposta resp) {
		String login = req.getParametro("login");
		Gerenciador gerente = (Gerenciador)this.getAplicacao().recuperarObjeto(Gerenciador.KEY);
		gerente.removerUsuario(login);
		
		resp.adicionarDado("usuarios", gerente.getUsuariosList());
		resp.abrirPagina("/index.jsp");
		
	}

}
