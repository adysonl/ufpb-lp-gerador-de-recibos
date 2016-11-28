package gerador.acoes;

import org.ayty.webee.Acao;
import org.ayty.webee.Requisicao;
import org.ayty.webee.Resposta;

import gerador.Gerenciador;
import gerador.Usuario;

public class Login extends Acao {	
	protected void executar(Requisicao req, Resposta resp) {
		String login = req.getParametro("login");
		String senha = req.getParametro("senha");

		Gerenciador gerente = (Gerenciador)this.getAplicacao().recuperarObjeto(Gerenciador.KEY);

		if(gerente.existeUsuario(login)){
			Usuario usuario = gerente.getUsuario(login);
			if(senha.equals(usuario.getSenha())){
				resp.adicionarDado("msg", "Logado com sucesso!");
				resp.abrirPagina("/index.jsp");
			}else{
				resp.adicionarDado("msg", "Senha inválida!");
				resp.abrirPagina("/login.jsp");
			}
		}else{
			resp.adicionarDado("msg", "Usuário inexistente!");
			resp.abrirPagina("/login.jsp");
		}
	}

}
