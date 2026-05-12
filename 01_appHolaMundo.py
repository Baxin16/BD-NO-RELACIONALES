# Nombre del alumno: Kevin Baxin
# Mi primera App Hola Mundo

import flet as ft

def main(page: ft.Page):

    page.title = "Mi primera app Flet"

    page.bgcolor = "#FFE5E5"

    mensaje = ft.Text(
        "❤️ Bienvenido a tu primera app en Flet ❤️",
        color="#C94C4C",
        size=30,
        weight=ft.FontWeight.BOLD
    )

    subtitulo = ft.Text(
        "Programando con una paleta rojo pastel ✨",
        color="#D96C6C",
        size=18
    )

    page.add(
        mensaje,
        subtitulo
    )

ft.app(target=main)
