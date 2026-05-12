import flet as ft

def main(page: ft.Page):

    page.title = "App Morado Pastel"

    page.window_width = 350
    page.window_height = 400

    page.bgcolor = "#F3E8FF"

    page.horizontal_alignment = ft.CrossAxisAlignment.CENTER
    page.vertical_alignment = ft.MainAxisAlignment.CENTER

    titulo = ft.Text(
        "💜 Bienvenido",
        size=24,
        weight="bold",
        color="#7E57C2"
    )

    mensaje = ft.Text(
        "Presiona el botón para cambiar el mensaje ✨",
        size=16,
        color="#9575CD"
    )

    def cambiar_texto(e):
        mensaje.value = "🌸 El mensaje cambió correctamente"
        mensaje.color = "#6A1B9A"
        page.update()

    boton1 = ft.ElevatedButton(
        "Cambiar mensaje",
        on_click=cambiar_texto,
        bgcolor="#CE93D8",
        color="white",
        width=220,
        height=45
    )

    page.add(
        ft.Column(
            controls=[
                titulo,
                mensaje,
                boton1
            ],
            horizontal_alignment=ft.CrossAxisAlignment.CENTER,
            spacing=25
        )
    )

ft.app(target=main, view=ft.AppView.FLET_APP)
