<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.net.URLDecoder" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="javax.servlet.http.Cookie" %>
<%@ page import="pacote.UserBean" %>

<%
    try {
        // Recuperar os par�metros do formul�rio
        String nome = request.getParameter("nome");
        String senha = request.getParameter("senha");

        // Cria��o e configura��o do JavaBean
        UserBean user = new UserBean();
        user.setNome(nome);
        user.setSenha(senha);

        // Verificar se o usu�rio j� est� cadastrado
        Map<String, UserBean> usuarios = (Map<String, UserBean>) application.getAttribute("usuarios");
        if (usuarios == null) {
            usuarios = new HashMap<>();
            application.setAttribute("usuarios", usuarios);
        }

        if (usuarios.containsKey(nome)) {
            // Usu�rio j� cadastrado
            response.sendRedirect("index.jsp?erro=" + URLEncoder.encode("Usu�rio j� cadastrado", "UTF-8"));
        } else {
            // Cadastrar o usu�rio
            usuarios.put(nome, user);

            // Configurar o cookie com o nome do usu�rio
            String cookieValue = URLEncoder.encode(nome, "UTF-8");
            Cookie cookie = new Cookie("usuario", cookieValue);
            response.addCookie(cookie);

            // Redirecionar para a p�gina home (index.jsp)
            response.sendRedirect("index.jsp");
        }
    } catch (Exception e) {
        e.printStackTrace();
        response.sendRedirect("index.jsp?erro=" + URLEncoder.encode("Erro durante o cadastro", "UTF-8"));
    }
%>
