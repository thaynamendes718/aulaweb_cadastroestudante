@import com.example.cadastroestudantesifpb.Estudante
@import java.util.List

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
    <div class="tabela-responsiva">
        <table>
            <thead>
            <tr>
                <th>ID</th><th>Nome</th><th>E-mail</th><th>Telefone</th>
                <th>Nascimento</th><th>Ingresso</th><th>Turma</th>
                <th>Cidade</th><th>Turno</th><th>Projeto</th><th>Observações</th>
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