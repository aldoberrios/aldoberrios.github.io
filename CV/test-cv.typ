#set page(
  paper: "a4",
  margin: (x: 2cm, y: 2.5cm),
)

// Font setup - using a clean serif font similar to the image
#set text(
  font: "New Computer Modern",
  size: 11pt,
  fill: rgb("#111111"),
)

// Define custom colors based on the image
#let academic-blue = rgb("#000")
#let dark-blue = rgb("#000")
#let light-gray = rgb("#000")

// --- HEADER SECTION ---
#grid(
  columns: (1fr, 1fr),
  align: (left, right),
  [
    // Name and Phonetic spelling
    #text(size: 24pt, weight: "regular")[Aldo Berríos Castillo] \
    #v(-2mm)
    #text(size: 14pt, fill: light-gray, font: "Linux Libertine")[
      \/ˌal.d̪o.be.ˈri.os kas.ˈt̪i.ʝo\/
    ]
  ],
  [
    // Contact Info Block
    #set text(size: 10.5pt, style: "italic", fill: light-gray)
//    School of Philosophy, Psychology and Language Sciences \
    University of Edinburgh \
    #text(fill: light-gray)[#box(baseline: 20%) aldo.berrios\@gmail.com] \
    #text(fill: light-gray)[#box(baseline: 20%) aldo.berrios.cl] \
    #text(style: "normal")[June 2026]
  ]
)

#v(2em)

// --- SECTION FUNCTION ---
// Creates the distinct thick blue bar next to the section title
#let cv-section(title) = {
  v(1.5em)
  grid(
    columns: (500pt, 1fr),
    gutter: 12pt,
    align: (left, horizon),
    text(size: 16pt, fill: academic-blue, font: "Linux Libertine", title)
  )
  v(0.5em)
}

// --- ENTRY FUNCTION ---
// Formats the dates and the CV content into a clean alignment
#let cv-entry(date, role, institution, details: none) = {
  grid(
    columns: (85pt, 1fr),
    row-gutter: 1em,
    text(fill: rgb("#333333"))[#date],
    block[
      *#role*, #text(style: "italic", fill: dark-blue)[#institution]
      #if details != none [ #details ]
    ]
  )
  v(0.8em)
}


// --- EDUCATION SECTION ---

#cv-section("Education")

#cv-entry(
  "09.2023–present",
  "PhD in Linguistics",
  "University of Edinburgh (Edinburgh, Scotland, UK)",
  details: [
    Recipient of the *Becas Chile* scholarship granted by ANID (Chilean Government). Research focused on the historical trajectories of Mapudungun phonology and morphology utilising internal reconstruction techniques and the written record available for this language isolate. \
    *Interests:* Historical linguistics, Mapudungun morphology & phonology, Language Revitalization.
  ]
)

#cv-entry(
  "03.2022–01.2023",
  "Master's degree in Linguistics",
  "Universidad de Concepción (Concepción, Chile)",
  details: [
    *Thesis:* _Frecuencia fonemática del mapudungun._ A quantitative study exploring phoneme frequency from a corpus of ~2,900 mono-morphemic lexical units derived from Augusta's Dictionary (1916/2017) to study linguistic change.
  ]
)

// #cv-entry(
//   "03.1997–11.2002",
//   "English-Spanish Translator",
//   "Pontificia Universidad Católica de Valparaíso (Valparaíso, Chile)"
// )


// --- WORK EXPERIENCE SECTION ---

#cv-section("Work Experience")

#cv-entry(
  "03.2026–present",
  "Research Assistant",
  "FONDECYT Project 1250684 (Biobío Region, Chile / Remote).",
   details: [Process and systemise phonetic speech corpora for a national research project focusing on continuous speech phonological phenomena in Chedungun, the regional Mapudungun variant spoken by the Pewenche people.]
)

#cv-entry(
  "05.2026–present",
  "Editorial Assistant",
  "University of Edinburgh (LEL / PPLS) (Edinburgh, Scotland, UK)",
  details: [Assist with the editing, typesetting, and production of a book and digital project of traditional Mapudungun texts.]
)

#cv-entry(
  "01.2024–present",
  "Course Lecturer & Tutor",
  "University of Edinburgh (Edinburgh, Scotland, UK)",
  details: [
    *Course Lecturer* (2025): Taught a module in the course _Historical Phonology_, for Honours undergraduate and MSc postgraduate students. \
    *Academic Tutor* (2024–2026): Led weekly instructional tutorial groups, and mentored students in core linguistic areas:
    - _Linguistics and English Language 2D: Cross-linguistic Variation; Limits and Theories_ (2024, 2026)
    - _Linguistics and English Language 2A: Linguistic Theory and the Structure of English_ (2025)
  ]
)

#cv-entry(
  "09.2024–10.2024",
  "Lexicographic Trainer & Project Consultant",
  "Mapudungun Nemülkawe Project / Fiw-Fiw ñi Dungun (Concepción, Chile / Remote)",
  details: [
    Designed and delivered lexicographic training workshops for language revitalization practitioners for the Fiw-Fiw ñi Dungun association. Coordinated and developed data structures and linguistic criteria for a digital learner's dictionary (_Nemülkawe_).    Project profile: #link("https://mapudungun.cl")[mapudungun.cl]
  ]
)

#cv-entry(
  "03.2022–12.2023",
  "Lecturer in Mapuche Language and Culture",
  "Universidad de Concepción (Concepción, Chile)",
  details: [
    Developed and taught the core curriculum course _Cultura y Lengua Mapuche_ \[Mapuche language and culture\] (Code 940408) within the School of Anthropology, Faculty of Social Sciences. \
    Developed and taught _Introducción a la lengua y cultura Mapuche_ \[Introduction to Mapuche language and culture\] (Code 731575) within the Departamento de Castellano, Faculty of Humanities and Art.
  ]
)