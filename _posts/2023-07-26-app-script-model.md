---
layout: post
title:  "Usando formulário de contato com Google App Script - GAS"
date:   2023-07-26 19:34:42 -0300
categories: Formulário de contato GAS
---

Usando formulário de contato do Google App Script Modelo de Script HTML...  

---
<section>
<h3>Contato:</h3>
<form>
      <label for="nome">Nome:</label>
      <input class="w3-input" type="text" id="nome" name="nome" required>
      <br>
      <label for="email">Email:</label>
      <input class="w3-input" type="email" id="email" name="email" required>
      <br>
      <label for="email">Data de chegada:</label>
      <input class="w3-input" type="date" id="data-dir" name="data-dir" required>
      <br>
      <label for="email">Qtde. diárias:</label>
      <input class="w3-input" type="number" id="diarias" name="diarias" step="1" required>
      <br>
      <input style="width: 80px;" class="w3-input" type="submit" value="Enviar" onclick="handleFormSubmit(event)">
    </form>
    <script>
      function handleFormSubmit(event) {
        event.preventDefault();
        var nome = document.getElementById("nome").value;
        var email = document.getElementById("email").value;
        var inicioReserva = document.getElementById("data-dir").value;
        var qtde = document.getElementById("diarias").value;
        // Chame abaixo sua função hospedada no GAS
        //google.script.run.onSubmitForm({nome: nome, email: email, checkin: inicioReserva, qtdeDiarias: qtde});
        document.getElementById("nome").value = "";
        document.getElementById("email").value = "";
        document.getElementById("data-dir").value = "";
        document.getElementById("diarias").value = "";
        alert("Formulário enviado com sucesso!");
      }
    </script>
    <br />
    <strong>Nota: O formulário acima é apenas ilustrativo.</strong>
    </section>

---
