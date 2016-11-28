package gerador.acoes;

import org.ayty.webee.Acao;
import org.ayty.webee.Requisicao;
import org.ayty.webee.Resposta;
import gerador.Gerenciador;
import gerador.Usuario;

public class CadastrarUsuario extends Acao{

	protected void executar(Requisicao req, Resposta resp) {
		String nome = req.getParametro("nome");
		String login = req.getParametro("login");
		String senha = req.getParametro("senha");
		String cpf = req.getParametro("cpf");
		String rg = req.getParametro("rg");
		String endereco = req.getParametro("endereco");
		
		
		Usuario usuario = new Usuario(nome, cpf, rg, endereco, login, senha);
		Gerenciador gerente = (Gerenciador)this.getAplicacao().recuperarObjeto(Gerenciador.KEY);
		
		gerente.cadastrarUsuario(usuario);
		resp.adicionarDado("msg", "Cadastrado com sucesso!");
			resp.abrirPagina("/formRecibo.jsp");
	}

}
