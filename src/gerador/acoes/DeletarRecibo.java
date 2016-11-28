package gerador.acoes;

import org.ayty.webee.Acao;
import org.ayty.webee.Requisicao;
import org.ayty.webee.Resposta;

import gerador.Gerenciador;

public class DeletarRecibo extends Acao{
	protected void executar(Requisicao req, Resposta resp) {
		String cod = req.getParametro("cod");
		Gerenciador gerente = (Gerenciador)this.getAplicacao().recuperarObjeto(Gerenciador.KEY);
		gerente.deletarRecibo(cod);
		
		resp.adicionarDado("recibos", gerente.getReciboList());
		resp.abrirPagina("/index.jsp");
	}

}
