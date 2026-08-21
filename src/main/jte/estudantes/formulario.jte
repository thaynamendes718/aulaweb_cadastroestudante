<!doctype html>
<html lang="pt-BR">
<head><meta charset="UTF-8"><title>Novo estudante</title></head>
<body>
    <h1>Novo estudante</h1>
    <form method="post" action="/estudantes/confirmar">
        <label for="nome">Nome</label>
        <input type="text" id="nome" name="nome">
        <label for="email">E-mail</label>
        <input type="email" id="email" name="email">
        <button type="submit">Continuar</button>
    </form>
</body>
</html>
