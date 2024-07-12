package br.com.azpthiago.forumhub.domain.topico;

import jakarta.validation.constraints.NotBlank;

public record DadosCadastroTopico(
        @NotBlank(message = "{titulo.obrigatorio}")
        String titulo,
        @NotBlank(message = "{mensagem.obrigatorio}")
        String mensagem,
        @NotBlank(message = "{autor.obrigatorio}")
        String autor,
        @NotBlank(message = "{curso.obrigatorio}")
        String curso) {
}

