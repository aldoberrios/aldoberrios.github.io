#set page(
  paper: "a4",
  margin: (x: 2cm, y: 2cm),
  header: context {
    if counter(page).get().first() > 0 [
      #align(right)[
        #text(size: 8pt, fill: rgb("#7f8c8d"))[Actualizado en #datetime.today().display("[month repr:long] [year]")]
      ]
    ]
  },
  
  footer: context {
    let i = counter(page).get().first()
    let n = counter(page).final().first()
    align(center)[#text(size: 9pt, fill: rgb("#7f8c8d"))[Página #i of #n]]
  }
)

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
  #set text(size: 1em, fill: black)
  #grid(
    columns: 1fr,
    row-gutter: .8em,
    [University of Edinburgh],
    link("mailto:aldo.berrios@gmail.com")[aldo.berrios\@gmail.com],
    link("https://aldoberrios.cl")[aldoberrios.cl],
    link("https://linkedin.com/in/aldoberrios")[\@linkedin],
    link("https://github.com/aldoberrios")[\@github],
  )

  ]
)

#v(.5em)

// --- SECTION FUNCTION ---
// Creates the distinct thick blue bar next to the section title
#let cv-section(title) = {
  v(1em)
  grid(
    columns: (500pt, 1fr),
    gutter: 12pt,
    align: (left, horizon),
    text(size: 16pt, fill: academic-blue, font: "Linux Libertine", title)
  )
  v(0em)
}

// --- ENTRY FUNCTION ---
#let cv-entry(date, role, institution, details: none) = {
  let col-width = if date.len() > 7 { 90pt } else { 50pt }
  
  grid(
    columns: (col-width, 1fr),
    row-gutter: 1.5em,
    text(size: .9em, fill: rgb("#333333"))[#date],
    block[
      *#role*, #text(style: "italic", fill: dark-blue)[#institution]
      #if details != none [ #details ]
    ]
  )
  v(0.5em)
}


// Set the alignment, bullet style, and a healthy spacing between entries
#set list(marker: ([•],), body-indent: 1em, indent: 1em, spacing: 1.5em)

// Slightly increase the line height within each publication block for readability
#show list: set par(leading: 0.7em)
// --- EDUCATION SECTION ---

#cv-section("Formación académica")

#cv-entry(
  "09.2023–present",
  "Doctorado (C) en Lingüística",
  "University of Edinburgh (Edinburgh, Scotland, UK)",
  details: [
    Beneficiario de la beca *Becas Chile*, otorgada por la ANID (Gobierno de Chile). Investigación centrada en las trayectorias históricas de la fonología y la morfología del mapudungun, mediante técnicas de reconstrucción interna y el registro escrito disponible para esta lengua aislada. \
    *Líneas de interés:* lingüística histórica, morfología y fonología del mapudungun, revitalización lingüística.
  ]
)

#cv-entry(
  "03.2021–01.2023",
  "Magíster en Lingüística",
  "Universidad de Concepción (Concepción, Chile)",
  details: [ \
    *Tesis:* _Frecuencia fonemática del mapudungun._ Estudio cuantitativo de la frecuencia de los fonemas del mapudungun a partir de un corpus de aproximadamente 2.900 unidades léxicas monomorfémicas extraídas del _Diccionario_ de Augusta (1916/2017), con el propósito de estudiar el cambio lingüístico.
  ]
)

// #cv-entry(
//   "03.1997–11.2002",
//   "English-Spanish Translator",
//   "Pontificia Universidad Católica de Valparaíso (Valparaíso, Chile)"
// )


#cv-section("Publicaciones académicas")

// Configure the term list for crisp academic bibliography hanging-indents
#set terms(hanging-indent: 1.5em, spacing: 1.2em)
#show terms.item: it => block(width: 100%)[
  #it.term #it.description
]

/ *Berríos, A.* (2026).: The history of the [ɨm] causatives in Mapudungun: From regular phonology to lexicalisation. [La historia de los causativos [ɨm] en Mapudungun: de la fonología regular a la lexicalización]. _Diachronica_, 43(1), 1–40. #text(fill: rgb("#7f8c8d"), size: 0.9em)[#link("https://doi.org/10.1075/dia.24080.ber")[[DOI]]]

/ *Berríos, A.*, & Salamanca, G. (2024).: Frecuencia fonemática en mapudungun. _Literatura y Lingüística_, 50, 277–306. #text(fill: rgb("#7f8c8d"), size: 0.9em)[#link("https://doi.org/10.29344/0717621X.50.3533")[[DOI]]]

/ *Berríos, A.*, & Salamanca, G. (2024).: Efectos morfofonémicos del causativo «-(ü)m» del mapudungun: aspectos sincrónicos y diacrónicos. _Forma y Función_, 37(2). #text(fill: rgb("#7f8c8d"), size: 0.9em)[#link("https://doi.org/10.15446/fyf.v37n2.107627")[[DOI]]]

/ Inostroza Araos, M.-J., Quero Álvarez, E., & *Berríos, A.* (2021).: Perfil de los participantes de internados de mapuzugun de la organización Mapuzuguletuaiñ. _Nueva revista del Pacífico_, (74), 361–384. #text(fill: rgb("#7f8c8d"), size: 0.9em)[#link("https://doi.org/10.4067/S0719-51762021000100361")[[DOI]]]


// --- WORK EXPERIENCE SECTION ---

#cv-section("Experiencia profesional")

#cv-entry(
  "03.2026–actualidad",
  "Asistente de investigación",
  "FONDECYT Project 1250684 (Biobío Region, Chile / Remote).",
   details: [Procesamiento y sistematización de corpus fonéticos de habla para un proyecto nacional de investigación centrado en fenómenos fonológicos del habla continua en chedungun, variedad regional del mapudungun hablada por el pueblo pewenche.]
)

#cv-entry(
  "05.2026–actualidad",
  "Asistente editorial",
  "University of Edinburgh (LEL / PPLS) (Edinburgh, Scotland, UK)",
  details: [Apoyo en la edición, composición tipográfica y producción de un libro y un proyecto digital de textos tradicionales en mapudungun.]
)

#cv-entry(
  "01.2024–actualidad",
  "Docente",
  "University of Edinburgh (Edinburgh, Scotland, UK)",
  details: [ \
    *Docente de asignatura* (2025): impartió un módulo del curso _Historical Phonology_, dirigido a estudiantes de pregrado de Honours y de posgrado del programa MSc. \
    *Tutor académico* (2024–2026): dirigió sesiones tutoriales semanales y orientó a estudiantes en áreas fundamentales de la lingüística:
    - _Linguistics and English Language 2D: Cross-linguistic Variation; Limits and Theories_ (2024, 2026)
    - _Linguistics and English Language 2A: Linguistic Theory and the Structure of English_ (2025)
  ]
)

#cv-entry(
  "09.2024–10.2024",
  "Capacitador lexicográfico y asesor de proyecto",
  "Proyecto Mapudungun Nemülkawe / Fiw-Fiw ñi Dungun (Concepción, Chile / Remote)",
  details: [
    Diseñó e impartió talleres de formación en lexicografía dirigidos a agentes de revitalización lingüística de la asociación Fiw-Fiw ñi Dungun. Coordinó y desarrolló estructuras de datos y criterios lingüísticos para un diccionario digital de aprendizaje (_Nemülkawe_).    Perfil del proyecto: #link("https://mapudungun.cl")[mapudungun.cl]
  ]
)

#cv-entry(
  "03.2022–08.2023",
  "Docente de lengua y cultura mapuche",
  "Universidad de Concepción (Concepción, Chile)",
  details: [
    Diseñó e impartió la asignatura del plan de formación fundamental _Cultura y Lengua Mapuche_ (código 940408), en la Escuela de Antropología de la Facultad de Ciencias Sociales. \
    Diseñó e impartió la asignatura _Introducción a la lengua y cultura Mapuche_ (código 731575), en el Departamento de Castellano de la Facultad de Humanidades y Arte.
  ]
)

#cv-section("Libros y capítulos de libro")

// This matches the exact style and spacing of your Publicaciones académicas
#set terms(hanging-indent: 1.5em, spacing: 1.2em)
#show terms.item: it => block(width: 100%)[
  #it.term #it.description
]

/ Painequeo, J., Salamanca, G., & *Berríos, A.* (2024).: _Pu Mapuche ñi N'emül': Una introducción al estudio de la lengua mapuche_. Ariadna Ediciones.

/ *Berríos, A.*, & Inostroza, M.-J. (2025).: Experiencia de enseñanza de mapudungun en contexto universitario: Tañi chumken kiñe antü mew. In C. D. Vargas, C. S. Campos, & E. Q. Llancao (Eds.), _La enseñanza de lenguas y culturas originarias: Desafíos y oportunidades para la educación del siglo XXI_ (1st ed., pp. 175–190). Ediciones Universidad de Concepción.

/ *Berríos, A.*, Namuncura, A., & Carilaf, V. (De próxima publicación).: Kimeltuwe witrañpüramtuael mapuzungun: un espacio de enseñanza para levantar el mapuzungun. In M. Malvestitti & A. Olate (Eds.), _La lengua mapuche en Gulumapu y Puelmapu: Avances e intersecciones en los estudios lingüísticos, la enseñanza y los activismos_. Editoriales UFRO y UNRN.



#cv-section("Otros recursos y materiales educativos")

#set terms(hanging-indent: 1.5em, spacing: 1.2em)
#show terms.item: it => block(width: 100%)[
  #it.term #it.description
]

/ *Berríos, A.* (2026).: _Phoneme Frequency in Mapudungun: a report_. Edinburgh Research Archive. #text(fill: rgb("#7f8c8d"), size: 0.9em)[#link("https://doi.org/10.7488/era/7112")[[DOI]]]

/ *Berríos, A.* (2026).: _Mapudungun: A Concise Language Profile_. Edinburgh Research Archive. #text(fill: rgb("#7f8c8d"), size: 0.9em)[#link("https://doi.org/10.7488/era/7088")[[DOI]]]

/ *Berríos, A.* (2023).: _Esbozo Gramatical del Mapudungun_. Fiwfiw ñi Dungun.

/ *Berríos, A.*, Urrea, P., Pichún, H., Gutiérrez, C., Llancapan, L., & Guíñez, M. (2023).: _Mapudungun: Gramática básica ilustrada_. Fiwfiw ñi Dungun.

/ *Berríos, A.* (2022).: _Nhemülkawe: Diccionario Mapuzugun – Castellano_. Mapuzuguletuaiñ Konse Mew.

#cv-section("Conferencias y clases magistrales por invitación")


#cv-entry(
  "03.2026",
  "The role of people vs. documents in revitalisation: How can revitalisation
practitioners use language documentation? [El rol de las personas frente a los documentos en la revitalización: ¿cómo pueden los agentes de revitalización aprovechar la documentación lingüística?]",
  "University of Edinburgh",
  details: [ Invitado por la Dra. Amalia Skilton para el módulo de pregrado _Honours_ y posgrado _MSc_ _Language Endangerment and Revitalisation_.
  ]
)
#cv-entry(
  "11.2023",
  "N’emülkawe: diccionario de aprendizaje del mapudungun",
  "University of Groningen, NL",
  details: [Invitado por la Dra. Maria Mazzoli para el curso _Minority Languages II_.
  ]
)

#cv-entry(
  "11.2023", "Revitalización del mapudungun",
  "University of Edinburgh",
  details: [Invitado por el Dr. Ben Molineaux para el curso _Structure of a Language: Mapudungun_.
  ]
)



#cv-section("Ponencias y presentaciones")

#set terms(hanging-indent: 1.5em, spacing: 1.2em)
#show terms.item: it => block(width: 100%)[
  #it.term #it.description
]


/ *Berríos, A.*, Honeybone, P. & Molineaux, B. (2026, Sept 09):_Phonotactic change: the emergence of a coda constraint in Mapudungun_. Ponencia presentada en _Special interest panel: What is/are phonotactics?_, Linguistics Association of Great Britain (LAGB) Annual Conference 2026.

/ Molineaux, B., *Berríos, A.*, Engels, J. & Domínguez, V. (2026, Sept 08-10).:_Mapudungun: LAGB Language Tutorial_. Tutorial lingüístico en el LAGB Annual Conference 2026.

/ *Berríos, A.* (2026, June 23).: _Theoretical Historical Linguistics & Minoritised Languages_. Ponencia presentada en Edinburgh Theoretical Historical Linguistics Summer School 2026 (ETHL).

/ *Berríos, A.* (2026, June 18).: _Kɨ-allomorphy in Mapudungun: Morphology between the lexicon and phonology_. Ponencia presentada en Phonomorphology at the Interface Workshop, durante la 22nd International Morphology Meeting (18-19 June 2026). Budapest, Hungría. 

/ *Berríos, A.* (2026, June 3).: _Decolonising Linguistics: Communities and Practice_. Mesa de conversación junto a los Dr. Christian Ilbury y Dra. Amalia Skilton, para la 31st Linguistics and English Language Postgraduate Conference, University of Edinburgh, Reino Unido.

/ *Berríos, A.* (2026, February 27).: _Phonologically conditioned allomorphy in Mapudungun: A missed generalisation or a historical accident?_. Ponencia presentada en Phonetics and Phonology Research Group (P-workshop), University of Edinburgh, Reino Unido.

/ Molineaux, B., & *Berríos, A.* (2025, October 15).: _A grapho-phonological history of the ‘sixth vowel’ in Mapudungun: Epenthesis, stress and rule inversion_. Charla para el Angus McIntosh Centre for Historical Linguistics Catchup Sessions.

/ *Berríos, A.* (2025, September 12).: _Alomorfía de -küle, y otros sufijos flexivos, en mapudungun_. Ponencia presentada en ABRALIN & SOCHIL: vozes que aproximam saberes.

/ *Berríos, A.* (2025, August 19).: _Origin, trajectory and deactivation of a phonological process: tracing the root-consonant alternation in Mapudungun_. Ponencia presentada en ICHL27, Santiago, Chile.

/ Molineaux, B., & *Berríos, A.* (2025, August 19).: _A grapho-phonological history of the 'sixth vowel' in Mapudungun: Epenthesis, stress and rule inversion_. Ponencia presentada en ICHL27, Santiago, Chile.

/ *Berríos, A.* (2025, July 2).: _Lanzamiento de la Publicacíon: Pu Mapuche ñi N’emül’_. Presentación en la Universidad de La Frontera, Temuco, Chile.

/ *Berríos, A.* (2025, June 5).: _K-Allomorphy in Mapudungun: the case of stative -(kï)le_. Ponencia presentada en LEL Postgraduate Conference 2025, University of Edinburgh.

/ *Berríos, A.* (2025, February 7).: _Today’s irregular morphology is yesterday’s regular phonology: [...] the complex verbal morphology of Mapudungun_. Ponencia presentada en 22nd Old-World Conference in Phonology, University of Amsterdam.

 / *Berríos, A.* (2024, December 5).: _La morfología del presente es la fonología del pasado_. Ponencia presentada en the "Jornadas de estudios lingüísticos internacionales SOCHIL-SAEL 2024".

 / *Berríos, A.* (2024, October 10).: _Tañi chumken kiñe antü mew: Una experiencia pedagógica en contexto universitario_. VII Coloquio sobre Enseñanza y Aprendizaje de la lengua mapuche, Universidad de la Frontera.

 / *Berríos, A.* (2024, August 28).: _From regular phonology to irregular morphology: An amphichronic study of the alternation of causative -(ï)m in Mapudungun_. Ponencia presentada en 2024 Annual Meeting of the LAGB, Newcastle University.

 / *Berríos, A.* (2024, June 4).: _From regular phonology to irregular morphology_. Ponencia presentada en 30th LEL Postgraduate Conference, University of Edinburgh.

 / *Berríos, A.* (2024, April 29).: _Mapudungun: Sociolinguistics, Research and Revitalisation_. Micro-conference: Researching and Revitalising Minoritised Isolates, University of Edinburgh.

 / *Berríos, A.* (2024, April 25-26).: _From regular phonology to irregular morphology_. Ponencia presentada en 11th Manchester Forum in Linguistics (MFiL 2024), University of Manchester.

// / *Berríos, A.* (2024, February 6).: _La historia de -(ï)m causative in Mapudungun_. AMC Catchup Sessions.

// / *Berríos, A.* (2023, May).: _Frecuencia fonemática del mapudungun_. XXIII Congreso Internacional de la Sociedad Chilena de Lingüística, Santiago, Chile.
// / *Berríos, A.* (2022).: _Frecuencia fonemática del mapudungun_. 8vas Jornadas Nacionales de Fonética Humberto Valdivieso, Universidad de Concepción.
// / *Berríos, A.* (2021).: _Características acústicas de la reducción del grupo /ej/_. I Congreso Nacional de Estudiantes de Postgrado en Lingüística, Chile.
// / *Berríos, A.* (2021).: _Diversidad Lingüística en Wallmapu_. Tercera Jornada de Pedagogía Media en Inglés.
// / *Berríos, A.* (2021).: _Diccionario de mapuzugun en linea www.azümchefe.cl_. II Jornada de Revitalización lingüística.
// / Carilaf, V., & *Berríos, A.* (2019).: _Kimeltuwe, Materiales de mapudungun_. Toolkits for Sociolinguistic Revitalization, Santiago, Chile.

#cv-section("Presentaciones de póster académico")

#set terms(hanging-indent: 1.5em, spacing: 1.2em)
#show terms.item: it => block(width: 100%)[
  #it.term #it.description
]

/ *Berríos, A.* (2026, January 15).: _[kï]-allomorphs in Mapudungun: accounting for [-kïle] and other inflectional affixes_. 23rd Old-World Conference in Phonology (OCP23), Gonville & Caius College, University of Cambridge, UK.

/ *Berríos, A.* (2025, December 2).: _Kï-allomorphy in Mapudungun. From ‘stuff’, to affix, to suppletion_. The Seventh Edinburgh Symposium on Historical Phonology (ESHP7), University of Edinburgh, Scotland.

/ *Berríos, A.* (2025, May 29).: _K-POP\* Allomorphy: On the status of -k in Mapudungun Morphophonology_. PPLS Research Day 2025, University of Edinburgh. 
#h(1fr) #text(size: 7pt)[\* k-Phonologically-Oriented Phenomena]

/ *Berríos, A.* (2024, July 4).: _Today’s morphology is yesterday’s phonology: An amphichronic study of the alternation of causative -(ï)m in Mapudungun_. 20th ACTL Summer School, University of York, UK.

/ *Berríos, A.* (2024, June 13).: _Today’s morphology is yesterday’s phonology_. PPLS Research Day 2024, University of Edinburgh.

/ *Berríos, A.* (2023, November 2).: _Phoneme Frequency in Mapudungun_. 78th Language Lunch, University of Edinburgh, UK.


#cv-section("Actividades de extensión y apoyo a la comunidad académica")


#cv-entry(
  "2025–present",
  "Coorganizador",
  "Edinburgh Theoretical Historical Linguistics (ETHL)",
  details: [Co fundador de un espacio de encuentro e investigación dedicado a explorar las intersecciones entre la lingüística histórica y la lingüística teórica. Organizó el *ETHL 2025 Seminar* y la *ETHL 2026 Summer School*.]
)

#cv-entry(
  "2025–present",
  "Coorganizador",
  "Willow Reading Group (Ex-NILA)",
  details: [Coordinador y organizador del grupo de lectura Willow (ex Nila), sobre Lenguas indígenas originarias de América.]
)

#cv-entry(
  "February 2025",
  "Coorganizador",
  "Swalif",
  details: [Encuentros de conversación y vinculación de Linguistics and English Language (LEL).]
)

#cv-entry(
  "2024–2025",
  "Integrante del comité organizador",
  "Linguistics and English Language Postgraduate Conference",
  details: [Integró el comité organizador de las ediciones 30.ª y 31.ª.]
)

#cv-entry(
  "2023–2025",
  "Integrante del comité",
  "Edinburgh Symposium on Historical Phonology (ESHP)",
  details: [Voluntario en labores técnicas y de coordinación logística del programa de los encuentros sexto (2023) y séptimo (2025).]
)


// cv-entry(
//   "June 2024",
//   "Organizing Assistant",
//   "Ukrainian Week at the University of Edinburgh",
//   details: none
// )


#cv-section("Activismo digital e impacto comunitario")


#cv-entry(
  "2015 -- Present",
  "Cofundador y activista lingüístico",
  "Kimeltuwe",
  details: [Co fundó el proyecto de artivismo digital y educación _Kimeltuwe_ («lugar de aprendizaje»), dedicado a la promoción y enseñanza del mapudungun. Gestionó la vinculación con una comunidad de más de 200.000 seguidores y fue coautor de materiales pedagógicos ampliamente utilizados en establecimientos educacionales de Chile y Argentina.]
)

#cv-entry(
  "2019 -- Present",
  "Integrante",
  "Fiw-Fiw ñi Dungun",
  details: [Organizó cursos y campamentos de inmersión lingüística en la Región del Biobío. Desarrolló materiales educativos, entre ellos esbozos gramaticales y manuales introductorios para estudiantes.]
)


#cv-section("Prensa y entrevistas seleccionadas")
- Alvarado, G. (2022). *Aldo Berríos* (Fiestoforo): “Siempre he pensado que el mapuzugun es una lengua de futuro.” _Lenguas Radicales, 1(3)_.
- Carilaf, V., *Berríos, A.*, & Becerra, R. (2017). Del compromiso político-cultural a la acción educativa en internet. In _Mapun Kimün. Relaciones mapunche entre persona, tiempo y espacio_. Editorial Ocholibros, pp. 271-292.


// #cv-section("Built Linguistic Web Tools")
// - *Wirintukufe*: An open-access Shiny web app engineered for precise orthographic conversion of Mapudungun text models. #link("https://aldoberrios.shinyapps.io/Wirintukufe/")[aldoberrios.shinyapps.io/Wirintukufe/]
// - *Phonemiser*: An interactive program mapping traditional inputs into systemic International Phonetic Alphabet (IPA) output matrices. #link("https://aldoberrios.shinyapps.io/phonemizer/")[aldoberrios.shinyapps.io/phonemizer/]
// - *Mapudungun Nemülkawe*: Online Mapudungun dictionary. A grass-root innitiative to create a dictionary database for students, with examples and playable audio to model pronunciation (available at #link("https://mapudungun.cl")[mapudungun.cl]).

#cv-section("Afiliaciones profesionales")
- Sociedad Chilena de Lingüística (*Sochil*)
- Linguistics Association of Great Britain (*LAGB*)
- Philological Society (*Philsoc*)

Epu awkiñ che dungun DISTÜRIFUSIYON ALTERNANTE KAM VARIYASIYON LIFÜREMU mülele, 

Si hay dos sonidos en DA o VL, entonces cualquier contexto que tenga un sonido en estudio el otro sonido también tiene el mismo contexto. y tienen los mismos contextos (vecino). Las dos palabras son similares (se pueden confundir una con otra), que están en par mínimo, pero no entregan significados distintos, entonces los sonidos bajo estudio integran un solo fonema.

fey chem karukatu ñi niyen kiñe awkiñ chilhkatupeyel kangelu awkiñ ka chilhkatupeyeyel fey ka femuechi karukatu pu awkiñ che dungun niyey, keñawüngekey reke ti epu n´emül´ par minimu mülelu, welu wülnole kake pin engu, fey may ta ti epu awkiñ chilhkatupeyeel koneltuleyngu kiñe fonemamu müten.