@import com.example.cadastroestudantesifpb.Estudante
@import java.util.List

@param String busca
@param List<Estudante> estudantes
<!doctype html>
<html lang="pt-BR">
<head>
    <link rel="stylesheet" href="/css/tabela.css">
    <meta charset="UTF-8">
    <title>Estudantes</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<main class="conteudo">
    <h1>Estudantes</h1>

    <form class="busca" method="get" action="/listar">
        <label for="busca">Buscar por nome</label>
        <input type="search" id="busca" name="busca" value="${busca}">
        <button type="submit">Buscar</button>
    </form>
    <div class="tabela-responsiva">
        <table>
            <thead>
            <tr>
                <th>ID</th><th>Nome</th><th>E-mail</th><th>Telefone</th>
                <th>Nascimento</th><th>Ingresso</th><th>Turma</th>
                <th>Cidade</th><th>Turno</th><th>Projeto</th><th>Observações</th><th>Ações</th>
            </tr>
            </thead>
            <tbody>
            @for (Estudante estudante : estudantes)
                <tr>
                    <td>${estudante.id()}</td>
                    <td>${estudante.nome()}</td>
                    <td>${estudante.email()}</td>
                    <td>${estudante.telefone()}</td>
                    <td>${estudante.dataNascimento().toString()}</td>
                    <td>${estudante.anoIngresso()}</td>
                    <td>${estudante.turma()}</td>
                    <td>${estudante.cidade()}</td>
                    <td>${estudante.turno()}</td>
                    <td>${estudante.participaProjeto() ? "Sim" : "Não"}</td>
                    <td>${estudante.observacoes()}</td>
                    <td>
                        <a href="/estudantes/${estudante.id()}">Ver</a>
                    </td>
                </tr>
            @else
                <tr><td colspan="11">Nenhum estudante cadastrado.</td></tr>
            @endfor
            </tbody>
        </table>
    </div>
</main>
</body>
</html>