package com.example.cadastroestudantesifpb;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class EstudanteController {

    @GetMapping("/")
    public String inicio(Model model) {
        model.addAttribute("totalEstudantes", 0);
        return "index";
    }
    @GetMapping("/estudantes/novo")
    public String novo() {
        return "estudantes/formulario";
    }

    @PostMapping("/estudantes/confirmar")
    public String confirmar(
           @ModelAttribute Estudante estudante,
           Model model) {
        model.addAttribute("estudante", estudante);
        return "estudantes/confirmacao";
    }
}

