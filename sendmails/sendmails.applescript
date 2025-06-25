-- DEFINITIVE UND FUNKTIONIERENDE VERSION MIT CONFIG FILE sendemail.cfg
tell application "Mail"
	activate -- Bringt Mail in den Vordergrund
end tell

-- Pfad des aktuellen Skripts abrufen
set scriptDirectory to POSIX path of (path to me)
set scriptDirectory to do shell script "dirname " & quoted form of scriptDirectory

-- Pfad zur Konfigurationsdatei
set cfgFilePath to POSIX file (scriptDirectory & "/" & "sendmails.cfg") as alias

-- Konfigurationsdatei lesen
set cfgLines to paragraphs of (read cfgFilePath)

-- Variablen aus der Konfiguration laden
set specificEmail to item 1 of cfgLines
set betreff to item 2 of cfgLines
set csvPath to POSIX file (scriptDirectory & "/" & item 3 of cfgLines) as alias
set txtFilePath to POSIX file (scriptDirectory & "/" & item 4 of cfgLines) as alias
set delayTime to item 5 of cfgLines

-- Dateiinhalt der Textdatei lesen
set fileContent to read txtFilePath as «class utf8»

-- CSV-Datei in eine Liste laden
set csvContent to {}
set textContent to paragraphs of (read csvPath)
repeat with currentLine in textContent
	if currentLine is not "" then
		set end of csvContent to currentLine
	end if
end repeat

-- Header ignorieren (erste Zeile)
set csvContent to rest of csvContent

-- Zeilen verarbeiten und Text erstellen
repeat with i from 1 to count of csvContent
	-- Direkter Zugriff auf Zeile
	set AppleScript's text item delimiters to ";"
	set lineItems to text items of (item i of csvContent)
	set AppleScript's text item delimiters to ""
	
	-- Überprüfen, ob lineItems die erwarteten Einträge enthält
	if (count of lineItems) ≥ 8 then
		-- Werte zuweisen
		set IDNumber to item 1 of lineItems
		set FirstName to item 2 of lineItems
		set SecondName to item 3 of lineItems
		set Value1 to item 4 of lineItems
		set Value2 to item 5 of lineItems
		set Title to item 6 of lineItems
		set Email to item 7 of lineItems
		set Value3 to item 8 of lineItems
		
		-- Platzhalter im Text ersetzen
		set erstellterText to fileContent
		set erstellterText to my replaceText(erstellterText, "{IDNumber}", IDNumber)
		set erstellterText to my replaceText(erstellterText, "{FirstName}", FirstName)
		set erstellterText to my replaceText(erstellterText, "{SecondName}", SecondName)
		set erstellterText to my replaceText(erstellterText, "{Value1}", Value1) --p.e. Study
		set erstellterText to my replaceText(erstellterText, "{Value2}", Value2) --p.e. Faculty
		set erstellterText to my replaceText(erstellterText, "{Title}", Title)
		set erstellterText to my replaceText(erstellterText, "{Email}", Email)
		set erstellterText to my replaceText(erstellterText, "{Value3}", Value3)
		
		-- E-Mail senden
		tell application "Mail"
			set neueEmail to make new outgoing message with properties {subject:betreff, visible:true, sender:specificEmail}
			tell neueEmail to make new to recipient at end of to recipients with properties {address:Email}
			set content of neueEmail to erstellterText
			delay delayTime
			send neueEmail
		end tell
	end if
end repeat

-- Funktion zum Ersetzen von Text
on replaceText(thisText, searchText, replaceText)
	set AppleScript's text item delimiters to searchText
	set thisTextItems to text items of thisText
	set AppleScript's text item delimiters to replaceText
	set thisText to thisTextItems as string
	set AppleScript's text item delimiters to {""} -- zurücksetzen
	return thisText
end replaceText


