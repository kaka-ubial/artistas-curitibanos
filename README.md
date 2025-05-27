# 🎨 Artistas Curitibanos

![Xcode](https://img.shields.io/badge/Xcode-15.0+-blue?logo=xcode)
![iOS](https://img.shields.io/badge/iOS-15.0+-lightgrey?logo=apple)
![Swift](https://img.shields.io/badge/Swift-5.0-orange?logo=swift)
![License](https://img.shields.io/badge/license-MIT-green)

> Aplicativo iOS que mostra a arte produzida por artistas curitibanos, exibindo uma galeria de obras com informações sobre as artes.

---

## 👩‍💻 Desenvolvedoras

| Karen Ubial P.   | 
| Helena Carvalho  | 

---

## 🎥 Vídeo de Apresentação

[📺 Clique aqui para assistir à apresentação do projeto no YouTube](https://youtu.be/NixZIjyx2QE)

---

## 📱 Funcionalidades

✅ Exibição de uma galeria de obras de arte usando **LazyVGrid** com layout responsivo  
✅ Visualização de detalhes das obras (imagem, título, artista, ano, estilo e descrição)  
✅ Navegação fluida entre a galeria e as telas de detalhes usando **NavigationLink**  


## 🏛️ Estrutura de Dados

```swift
struct ObraDeArte {
    let titulo: String
    let artista: String
    let ano: Int
    let estilo: String
    let imagemNome: String
    let descricao: String
}
