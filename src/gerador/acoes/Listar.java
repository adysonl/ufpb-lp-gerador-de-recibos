package gerador.acoes;

import java.util.LinkedList;

import org.ayty.webee.Acao;
import org.ayty.webee.Requisicao;
import org.ayty.webee.Resposta;
import gerador.Gerenciador;
import gerador.Recibo;


public class Listar extends Acao {

	protected void executar(Requisicao req, Resposta resp) {
		Gerenciador gerente = (Gerenciador)this.getAplicacao().recuperarObjeto(Gerenciador.KEY);
		LinkedList<Recibo> recibos = gerente.getReciboList();
		resp.adicionarDado("recibos", recibos);
		resp.abrirPagina("/recibos.jsp");
	}

}
