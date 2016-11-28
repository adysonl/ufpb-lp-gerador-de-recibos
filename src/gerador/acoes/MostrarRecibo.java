package gerador.acoes;

import org.ayty.webee.Acao;
import org.ayty.webee.Requisicao;
import org.ayty.webee.Resposta;
import gerador.Gerenciador;
import gerador.Recibo;

public class MostrarRecibo extends Acao {
	protected void executar(Requisicao req, Resposta resp) {
		Gerenciador gerente = (Gerenciador) this.getAplicacao().recuperarObjeto(Gerenciador.KEY);
		String cod = req.getParametro("cod");
		Recibo recibo = gerente.getRecibo(cod);
		resp.adicionarDado("recibo", recibo);
		resp.abrirPagina("/recibo.jsp");

	}

}
