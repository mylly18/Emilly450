package agenda.servlet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import agenda.daos.ContatoDAO;
import agenda.models.Contato;

public class RemoverContatoLogica implements Logica {
	public String executa(HttpServletRequest req, HttpServletResponse res)
			throws Exception {
			long id = Long.parseLong(req.getParameter("id"));
			Contato contato = new Contato();
			contato.setId(id);
			ContatoDAO dao = new ContatoDAO();
			dao.remover(contato);
			System.out.println("Excluindo contato... ");
			return "lista-contatos.jsp";
			}
			}

	


