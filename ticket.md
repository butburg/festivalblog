Das sollte in Rails 6 nicht nötigt sein. Da man hier einen config/master.key nutzt. 
Der muss dann verteilt werden, an alle Entwickler, natürlich sicher. Diese Zeilen sollten hier weg.

Schaut dazu bitte diesen Artikel an, der das erklärt.
https://medium.com/cedarcode/rails-5-2-credentials-9b3324851336

config/application.rb

Line 14 - 16
