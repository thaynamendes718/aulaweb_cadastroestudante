package com.example.cadastroestudantesifpb;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@Controller
public class EstudanteController {
    private final List<Estudante> estudantes = new ArrayList<>();
    private Integer proximoId = 1;

    @GetMapping("/")
    public String inicio(Model model) {
        model.addAttribute("totalEstudantes", estudantes.size());
        return "index";
    }

    @GetMapping("/estudantes/novo")
    public String novo() {
        return "estudantes/formulario";
    }

    @PostMapping("/estudantes")
    public String cadastrar(@ModelAttribute Estudante estudante) {
        estudantes.add(estudante.comId(proximoId++));
        return "redirect:/listar";
    }

    @GetMapping("/listar")
    public String listar(
            @RequestParam(defaultValue = "") String busca,
            Model model) {
        List<Estudante> resultado = new ArrayList<>();
        for (Estudante estudante : estudantes) {
            if (estudante.nome().toLowerCase().contains(busca.toLowerCase())) {
                resultado.add(estudante);
            }
        }
        model.addAttribute("estudantes", resultado);
        model.addAttribute("busca", busca);
        return "estudantes/lista";
    }
    @GetMapping("/estudantes/{id}")
    public String detalhes(@PathVariable long id, Model model) {
        Estudante estudante = buscarPorId(id);
        if (estudante == null) {
            return exibirErro(id, model);
        }
        model.addAttribute("estudante", estudante);
        return "estudantes/detalhes";

    }

    private Estudante buscarPorId(long id) {
        for (Estudante estudante : estudantes) {
            if (estudante.id() == id) {
                return estudante;
            }
        }
        return null;
    }

    private String exibirErro(long id, Model model) {
        model.addAttribute(
                "mensagem","Estudante com identificador " + id + " não encontrado.");
        return "estudantes/erro";
    }
}
