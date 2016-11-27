package gerador;
import org.ayty.webee.Aplicacao;
import org.ayty.webee.ConfigAplicacao;

public class Inicio implements ConfigAplicacao {

	
	public void finalizaAplicacao(Aplicacao app) {
		
	}

	public void iniciaAplicacao(Aplicacao app) {
		Gerenciador gerente = new Gerenciador();		

		app.adicionaObjeto(Gerenciador.KEY, gerente);

	}
}

