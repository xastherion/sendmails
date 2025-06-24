#!/usr/local/bin/python3
import tkinter as tk
from tkinter import filedialog, messagebox
import subprocess
import os

# Pfad zur Konfigurationsdatei
cfg_file = "sendmails.cfg"

# Werte aus der Konfigurationsdatei lesen
def read_config():
    with open(cfg_file, "r") as file:
        lines = file.readlines()
        absender = lines[0].strip().strip('"')
        betreff = lines[1].strip()
        kontaktlistenpfad = lines[2].strip()
        emailinhaltpfad = lines[3].strip()
        verzogerung = lines[4].strip() if len(lines) > 4 else "0"
    return absender, betreff, kontaktlistenpfad, emailinhaltpfad, verzogerung

# Werte in die Konfigurationsdatei speichern
def save_config(absender, betreff, kontaktlistenpfad, emailinhaltpfad, verzogerung):
    with open(cfg_file, "w") as file:
        file.write(f"{absender}\n")
        file.write(f"{betreff}\n")
        file.write(f"{kontaktlistenpfad}\n")
        file.write(f"{emailinhaltpfad}\n")
        file.write(f"{verzogerung}\n")

# Funktion zum Starten des AppleScripts
def execute_applescript():
    try:
        subprocess.run(["osascript", "sendmails.scpt"], check=True)
        messagebox.showinfo("Erfolg", "Die E-Mails wurden erfolgreich gesendet!")
    except subprocess.CalledProcessError:
        messagebox.showerror("Fehler", "Sendmails konnte nicht ausgeführt werden.")

# Funktion, die den "Ja/Nein"-Dialog auslöst, aber das Hauptfenster nicht schließt
def send():
    result = messagebox.askyesno("Sendmails", "Möchten Sie jetzt die Serien-Emails mit Apple-Mail senden?")
    if result:
        execute_applescript()

# GUI erstellen
def create_gui():
    absender, betreff, kontaktlistenpfad, emailinhaltpfad, verzogerung = read_config()

    global root
    root = tk.Tk()
    root.title("Sendmails - Program zu senden E-Mails in Serien")

    # Leere Zeilen und Abschnitte
    tk.Label(root, text="").grid(row=0, column=0, padx=10, pady=5)
    tk.Label(root, text="1. Anpassen:", font=("Arial", 12, "bold")).grid(row=1, column=0, columnspan=2, sticky="w", padx=10, pady=5)

    # Absender
    tk.Label(root, text="Absender:").grid(row=2, column=0, sticky="e", padx=10, pady=5)
    absender_entry = tk.Entry(root, width=50)
    absender_entry.grid(row=2, column=1, padx=10, pady=5)
    absender_entry.insert(0, absender)

    # Betreff
    tk.Label(root, text="Betreff:").grid(row=3, column=0, sticky="e", padx=10, pady=5)
    betreff_entry = tk.Entry(root, width=50)
    betreff_entry.grid(row=3, column=1, padx=10, pady=5)
    betreff_entry.insert(0, betreff)

    # Verzögerung
    tk.Label(root, text="Verzögerung (in Sek.):").grid(row=4, column=0, sticky="e", padx=10, pady=5)
    verzogerung_entry = tk.Entry(root, width=10)
    verzogerung_entry.grid(row=4, column=1, padx=10, pady=5, sticky="w")
    verzogerung_entry.insert(0, verzogerung)

    # Leere Zeile und Separator
    tk.Label(root, text="").grid(row=5, column=0, padx=10, pady=2)
    separator = tk.Canvas(root, height=2, bd=0, relief="sunken", bg="black")
    separator.grid(row=6, column=0, columnspan=2, sticky="ew", padx=10, pady=5)

    # Dateiauswahl Abschnitt
    tk.Label(root, text="2. Dateien auswählen:", font=("Arial", 12, "bold")).grid(row=7, column=0, columnspan=2, sticky="w", padx=10, pady=5)

    # Kontaktlistenpfad
    tk.Label(root, text="Kontaktliste:").grid(row=8, column=0, sticky="e", padx=10, pady=5)
    kontaktlistenpfad_entry = tk.Entry(root, width=50)
    kontaktlistenpfad_entry.grid(row=8, column=1, padx=10, pady=5)
    kontaktlistenpfad_entry.insert(0, kontaktlistenpfad)

    # Emailinhaltpfad
    tk.Label(root, text="E-Mail-Text:").grid(row=9, column=0, sticky="e", padx=10, pady=5)
    emailinhaltpfad_entry = tk.Entry(root, width=50)
    emailinhaltpfad_entry.grid(row=9, column=1, padx=10, pady=5)
    emailinhaltpfad_entry.insert(0, emailinhaltpfad)

    # Buttons für Datei wählen
    def choose_file(entry_field):
        filepath = filedialog.askopenfilename()
        if filepath:
            filename = os.path.basename(filepath)
            entry_field.delete(0, tk.END)
            entry_field.insert(0, filename)

    tk.Button(root, text="Wählen", command=lambda: choose_file(kontaktlistenpfad_entry)).grid(row=8, column=2, padx=10, pady=5)
    tk.Button(root, text="Wählen", command=lambda: choose_file(emailinhaltpfad_entry)).grid(row=9, column=2, padx=10, pady=5)

    # Buttons (Speichern, Senden, Beenden, Info)
    button_frame = tk.Frame(root)
    button_frame.grid(row=10, column=0, columnspan=3, pady=10)

    tk.Button(button_frame, text="3. Speichern", command=lambda: save_config(
        absender_entry.get(),
        betreff_entry.get(),
        kontaktlistenpfad_entry.get(),
        emailinhaltpfad_entry.get(),
        verzogerung_entry.get()
    )).grid(row=0, column=0, padx=10, pady=5)

    tk.Button(button_frame, text="4. Senden", command=send).grid(row=0, column=1, padx=10, pady=5)

    tk.Button(button_frame, text="Beenden", command=root.quit).grid(row=0, column=2, padx=10, pady=5)

    # Info-Button ganz rechts
    def show_info():
        messagebox.showinfo("Info", "Sendmails - Xastherion 2024 - GPLv3")

    info_button = tk.Button(button_frame, text="(i)", command=show_info, width=1, height=1, font=("Arial", 8))
    info_button.grid(row=0, column=3, padx=10, pady=5)

    root.mainloop()

# GUI aufrufen
create_gui()

