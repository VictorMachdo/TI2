const url = "http://localhost:8080/denuncia/2";

function show(denuncias){
    let tab = `<thead>
            <th scope="col">ID</th>
            <th scope="col">Situação</th>
            <th scope="col">Nome</th>
            <th scope="col">E-mail</th>
            <th scope="col">Denúncia</th>
            <th scope="col">Resposta</th>
            <th scope="col">Ações</th>
        </thead>`;

    for (const denuncia of denuncias) {
        tab +=`
            <tr>
                <td scope="row">${denuncia.id}</td>
                <td>${denuncia.situacao}</td>
                <td>${denuncia.nomeDenunciante}</td>
                <td>${denuncia.email}</td>
                <td>${denuncia.tipo_denuncia}</td>
                <td>${denuncia.resposta}</td>
            </tr>
        `;
    }

    document.getElementById("denuncias").innerHTML= tab;
}



async function getAPI(url){
    const response = await fetch(url, { method: "GET"});

    if (response.ok) {
        let data = await response.json();
        console.log(data);

        if (Array.isArray(data)) {
            show(data);
        } else if (typeof data === 'object' && data !== null) {

            show([data]);
        } else {
            console.error("A resposta da API não é uma array ou objeto válido:", data);
        }
    } else {
        console.error("Erro ao obter dados da API");
    }
}


getAPI(url);

async function enviarDenuncia() {
    const nome = document.getElementById('nome').value;
    const email = document.getElementById('email').value;
    const tipoDenuncia = document.getElementById('tipo-denuncia').value;
    const descricao = document.getElementById('descricao').value;

    const denuncia = {
        nomeDenunciante: nome,
        email: email,
        tipoDenuncia: tipoDenuncia,
        descricao: descricao
    };

    try {
        const response = await fetch("http://localhost:8080/denuncia", {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify(denuncia),
        });

        if (response.ok) {
            console.log('Denúncia enviada com sucesso!');

        } else {
            console.error('Erro ao enviar a denúncia:', response.statusText);
        }
    } catch (error) {
        console.error('Erro durante a requisição:', error);
    }
}




