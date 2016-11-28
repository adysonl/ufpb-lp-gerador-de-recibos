package gerador.acoes;

import org.ayty.webee.Acao;
import org.ayty.webee.Requisicao;
import org.ayty.webee.Resposta;

import gerador.Gerenciador;


public class EditarUsuario extends Acao{

	protected void executar(Requisicao req, Resposta resp) {
		String login = req.getParametro("login");
		String nlogin = req.getParametro("nlogin");
		String nnome = req.getParametro("nnome");
		String ncpf = req.getParametro("ncpf");
		String nrg = req.getParametro("nrg");
		String nendereco = req.getParametro("nendereco");
		String nsenha = req.getParametro("nsenha");
		Gerenciador gerente = (Gerenciador)this.getAplicacao().recuperarObjeto(Gerenciador.KEY);
		
		gerente.editarUsuario(login, nnome, nlogin, nsenha, ncpf, nrg, nendereco);
		
		resp.adicionarDado("usuarios", gerente.getUsuariosList());
		resp.adicionarDado("msg", "Editado com sucesso!");
		resp.abrirPagina("/index.jsp");
		
	}

}
