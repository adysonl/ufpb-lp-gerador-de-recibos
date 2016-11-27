package gerador.acoes;

import org.ayty.webee.Acao;
import org.ayty.webee.Requisicao;
import org.ayty.webee.Resposta;
import gerador.Gerenciador;
import gerador.Recibo;

public class GerarRecibo extends Acao {
	protected void executar(Requisicao req, Resposta resp) {
		Gerenciador gerente = (Gerenciador)this.getAplicacao().recuperarObjeto(Gerenciador.KEY);
		String nome = req.getParametro("nome");
		double valor = Double.parseDouble(req.getParametro("valor"));
		String produto = req.getParametro("produto");
		System.out.println(nome + valor + produto);
		Recibo recibo = new Recibo(nome, valor, produto, gerente.getContador());
		gerente.adicionarRecibo(recibo);
		resp.adicionarDado("recibo", recibo);
		resp.abrirPagina("/recibo.jsp");
	}

}
