@import com.example.cadastroestudantesifpb.Estudante
@param Estudante estudante
<article class="cartao-estudante">
    <h2>${estudante.nome()}</h2>
    <p><strong>E-mail:</strong> ${estudante.email()}</p>
    <p><strong>Turma:</strong> ${estudante.turma()}</p>
    <p><strong>Turno:</strong> ${estudante.turno()}</p>
</article>