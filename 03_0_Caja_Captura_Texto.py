import flet as ft

def main(page: ft.Page):
    page.title = "App Azul Pastel"

    page.window_width = 350
    page.window_height = 450

    page.bgcolor = "#DFF6FF"

    page.horizontal_alignment = ft.CrossAxisAlignment.CENTER
    page.vertical_alignment = ft.MainAxisAlignment.CENTER

    titulo = ft.Text(
        "💙 Bienvenido a tu app",
        size=24,
        weight="bold",
        color="#3A6EA5"
    )

    subtitulo = ft.Text(
        "Escribe un mensaje y presiona el botón",
        size=14,
        color="#5B8FB9"
    )

    mensaje = ft.Text(
        "Tu mensaje aparecerá aquí ✨",
        size=18,
        color="#4A6FA5"
    )

    caja_texto = ft.TextField(
        label="Escribe algo...",
        width=250,
        border_color="#8EC5FC",
        focused_border_color="#5DADE2",
        bgcolor="#F4FBFF",
        color="#3A6EA5",
        label_style=ft.TextStyle(color="#5B8FB9")
    )

    def cambiar_texto(e):
        mensaje.value = f"💬 Tú escribiste: {caja_texto.value}"
        mensaje.color = "#256D85"
        page.update()

    boton1 = ft.ElevatedButton(
        text="Mostrar mensaje",
        on_click=cambiar_texto,
        bgcolor="#8EC5FC",
        color="white",
        width=200,
        height=45
    )

    page.add(
        ft.Column(
            controls=[
                titulo,
                subtitulo,
                mensaje,
                caja_texto,
                boton1
            ],
            horizontal_alignment=ft.CrossAxisAlignment.CENTER,
            spacing=20
        )
    )

ft.app(target=main)
