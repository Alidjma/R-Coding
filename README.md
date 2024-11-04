# R-Coding
Kodlabbar inom programmeringsspråk R i kursen "Introduktion till R - 2ST064" från Umeås universitet.

## För Inlämningsuppgift 1 - "Analysis of Car and Music Data using R"

### Beskrivning
Den här uppgiften handlar om att analysera två dataset i R: `mtcars`-datasetet för fordonsdata och ett musikdataset från Spotify med information om olika artister. Målet är att utföra datahantering, beräkna specifika statistiska mått samt skapa filtrerade urval baserade på olika kriterier.

### Huvudmoment:
1. **Analys av fordonsdata**:
   - Beräkna den genomsnittliga miles per gallon (mpg) för alla bilar.
   - Identifiera bilar med mpg över och under genomsnittet.
   - Filtrera bilar baserat på land (t.ex. USA och Japan) och beräkna mpg per cylinder för dessa grupper.

2. **#Analys av musikdata**:
   - Skapa en spellista med specifika artister (Rihanna, Michael Jackson, Elvis Presley och Eminem).
   - Filtrera låtar med högre dansvänlighet än medianvärdet och förfina ytterligare till endast Rihannas låtar.
   - Korrigera dansvänligheten för Michael Jacksons låtar och verifiera summan av dansvänligheten efter korrigering.

## För Inlämningsuppgift 2 - "Geometric Calculations in R"

### Beskrivning
Den här uppgiften fokuserar på att implementera geometriska funktioner i R. Uppgiften innehåller funktioner för att beräkna avstånd och kontrollera om punkter ligger på samma linje. Dessa funktioner är användbara för grundläggande geometriska beräkningar och matrishantering.

### Huvudfunktioner:
1. **Root Sum of Squares**: Beräknar kvadratroten av summan av kvadrater för två värden, användbart i avståndsberäkningar.
2. **Distance Calculation**: Beräknar det euklidiska avståndet mellan två punkter i ett 2D-plan.
3. **Distance Matrix**: Skapar en matris med avstånd mellan rader i två dataframes, vilket är användbart för att jämföra flera punkter.
4. **Collinearity Check**: Kontrollerar om tre punkter ligger på en rak linje.
5. **Alternative Collinearity Check**: Använder `mapply` för att effektivt kontrollera om tre punkter är kollineära.

