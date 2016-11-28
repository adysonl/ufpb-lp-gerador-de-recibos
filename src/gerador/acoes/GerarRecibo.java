package gerador.acoes;

import org.ayty.webee.Acao;
import org.ayty.webee.Requisicao;
import org.ayty.webee.Resposta;
import gerador.Gerenciador;
import gerador.Recibo;
import gerador.Usuario;

public class GerarRecibo extends Acao {
	protected void executar(Requisicao req, Resposta resp) {
		Gerenciador gerente = (Gerenciador)this.getAplicacao().recuperarObjeto(Gerenciador.KEY);
		String loginProprietario = req.getParametro("login");
		Usuario proprietario = gerente.getUsuario(loginProprietario);
		String nome = req.getParametro("nome");
		double valor = Double.parseDouble(req.getParametro("valor"));
		String produto = req.getParametro("produto");
		Recibo recibo = new Recibo(proprietario, nome, valor, produto, gerente.getContador());
		gerente.adicionarRecibo(recibo);
		resp.adicionarDado("recibo", recibo);
		resp.abrirPagina("/recibo.jsp");
	}

}
