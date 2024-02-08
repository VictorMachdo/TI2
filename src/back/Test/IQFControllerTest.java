package com.lucasangelo.todosimple.Test;

import org.springframework.beans.factory.annotation.Autowired;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;

@WebMvcTest(IqfController.class) // Substitua "IQFController" pelo nome do seu controlador
@AutoConfigureMockMvc

public class IQFControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @Test
    public void testEnviarDados() throws Exception {
        String jsonPayload = "{ \"cnpj\": \"12345678901234\", \"quality\": 5, \"delivery\": 7, \"cost\": 8, \"complaint\": true }";

        mockMvc.perform(MockMvcRequestBuilders.post("/seu-endpoint") // Substitua "seu-endpoint" pelo endpoint real do seu controlador
                .contentType(MediaType.APPLICATION_JSON)
                .content(jsonPayload))
                .andExpect(MockMvcResultMatchers.status().isCreated());
    }


}