#set page(
    paper: "a4",
  margin: (x: 2cm, y: 2.5cm),
  // This adds your global top header right-aligned:
  header: context {
    if counter(page).get().first() > 0 [
      #align(right)[
        #text(size: 8pt, fill: rgb("#7f8c8d"))[Updated in #datetime.today().display("[month repr:long] [year]")]
      ]
    ]
  },
  
  // Your existing footer rule:
  footer: context {
    let i = counter(page).get().first()
    let n = counter(page).final().first()
    align(center)[#text(size: 9pt, fill: rgb("#7f8c8d"))[Page #i of #n]]
  }
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
    #text(fill: light-gray)[#box(baseline: 20%) https://aldoberrios.cl] \
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
#let cv-entry(date, role, institution, details: none) = {
  let col-width = if date.len() > 7 { 85pt } else { 50pt }
  
  grid(
    columns: (col-width, 1fr),
    row-gutter: 1.5em,
    text(size: .9em, fill: rgb("#333333"))[#date],
    block[
      *#role*, #text(style: "italic", fill: dark-blue)[#institution]
      #if details != none [ #details ]
    ]
  )
  v(0.8em)
}


// Set the alignment, bullet style, and a healthy spacing between entries
#set list(marker: ([•],), body-indent: 1em, indent: 1em, spacing: 1.5em)

// Slightly increase the line height within each publication block for readability
#show list: set par(leading: 0.7em)
// --- EDUCATION SECTION ---

#cv-section("Education")

#cv-entry(
  "09.2023–present",
  "PhD in Linguistics",
  "University of Edinburgh (Edinburgh, Scotland, UK)",
  details: [
    Recipient of the *Becas Chile* scholarship granted by ANID (Chilean Government). Research focused on the historical trajectories of Mapudungun phonology and morphology utilising internal reconstruction techniques and the written record available for this language isolate. #v(.5em)
    *Interests:* Historical linguistics, Mapudungun morphology & phonology, Language Revitalization.
  ]
)

#cv-entry(
  "03.2022–01.2023",
  "MA in Linguistics",
  "Universidad de Concepción (Concepción, Chile)",
  details: [ \
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

#cv-section("Academic Publications")


- *Berríos, A.* (2026). The history of the [ïm] causatives in Mapudungun: From regular phonology to lexicalisation. _Diachronica_, 43(1), 1–40. #link("https://doi.org/10.1075/dia.24080.ber")[https://doi.org/10.1075/dia.24080.ber]
- *Berríos, A.*, & Salamanca, G. (2024). Frecuencia fonemática en mapudungun. _Literatura y Lingüística_, 50, 3533. #link("https://doi.org/10.29344/0717621X.50.3533")[https://doi.org/10.29344/0717621X.50.3533]
- *Berríos, A.*, & Salamanca, G. (2024). Efectos morfofonémicos del causativo «-(ü)m» del mapudungun: aspectos sincrónicos y diacrónicos. _Forma y Función_, 37(2). #link("https://doi.org/10.15446/fyf.v37n2.107627")[https://doi.org/10.15446/fyf.v37n2.107627]
- Inostroza Araos, M.-J., Quero Álvarez, E., & *Berríos, A.* (2021). Perfil de los participantes de internados de mapuzugun de la organización Mapuzuguletuaiñ. _Nueva revista del Pacífico_, (74), 361–384. #link("https://doi.org/10.4067/S0719-51762021000100361")[https://doi.org/10.4067/S0719-51762021000100361]


#cv-section("Books & Chapters")

- Painequeo, J., Salamanca, G., & *Berríos, A*. (2024). _Pu Mapuche ñi N'emül': Una introducción al estudio de la lengua mapuche_. Ariadna Ediciones.
- *Berríos, A.*, & Inostroza, M.-J. (2025). Experiencia de enseñanza de mapudungun en contexto universitario: Tañi chumken kiñe antü mew. In C. D. Vargas, C. S. Campos, & E. Q. Llancao (Eds.), _La enseñanza de lenguas y culturas originarias: Desafíos y oportunidades para la educación del siglo XXI_ (1st ed., pp. 175–190). Ediciones Universidad de Concepción.
- *Berríos, A*, Namuncura, A., & Carilaf, V. (Forthcoming). Kimeltuwe witrañpüramtuael mapuzungun: un espacio de enseñanza para levantar el mapuzungun. In M. Malvestitti & A. Olate (Eds.), _La lengua mapuche en Gulumapu y Puelmapu: Avances e intersecciones en los estudios lingüísticos, la enseñanza y los activismos_. Editoriales UFRO y UNRN.




#cv-section("Other resources and educational materials")
- Berríos, A. (2026). _Phoneme Frequency in Mapudungun: a report_. Edinburgh Research Archive. #link("https://doi.org/10.7488/era/7112")[doi.org/10.7488/era/7112]
- Berríos, A. (2026). _Mapudungun: A Concise Language Profile_. Edinburgh Research Archive. #link("https://doi.org/10.7488/era/7088")[doi.org/10.7488/era/7088]
- Berríos, A. (2023). _Esbozo Gramatical del Mapudungun_. Fiwfiw ñi Dungun.
- Berríos, A., Urrea, P., Pichún, H., Gutiérrez, C., Llancapan, L., & Guíñez, M. (2023). _Mapudungun: Gramática básica ilustrada_. Fiwfiw ñi Dungun.
- Berríos, A. (2022). _Nhemülkawe: Diccionario Mapuzugun – Castellano_. Mapuzuguletuaiñ Konse Mew.


#cv-section("Invited Guest Lectures")


#cv-entry(
  "03.2026",
  "The role of people vs. documents in revitalisation: How can revitalisation practitioners use language documentation?",
  "University of Edinburgh",
  details: [ Invited by Dr. Amalia Skilton for the Honours/MSc module _Language Endangerment and Revitalisation_.
  ]
)
#cv-entry(
  "11.2023",
  "N’emülkawe: A learner’s dictionary for Mapudungun",
  "University of Groningen, NL",
  details: [Invited by Dr. Maria Mazzoli for the course _Minority Languages II_.
  ]
)

#cv-entry(
  "11.2023", "Revitalisation of Mapudungun",
  "University of Edinburgh",
  details: [Invited by Dr. Ben Molineaux for the course _Structure of a Language: Mapudungun_.
  ]
)





#cv-section("Talks & Presentations")

- Berríos, A. (2026, June 23). _Theoretical Historical Linguistics & Minoritised Languages_. Talk at the Edinburgh Theoretical Historical Linguistics Summer School 2026 (ETHL).
- Berríos, A. (2026, June 18). _Kɨ-allomorphy in Mapudungun: Morphology between the lexicon and phonology_. Talk at the Phonomorphology at the Interface Workshop, during the 22nd International Morphology Meeting (18-19 June 2026). Budapest, Hungary. 
- Berríos, A. (2026, June 3). _Decolonising Linguistics: Communities and Practice_. Panel Discussion with Dr. Christian Ilbury and Dr. Amalia Skilton, 31st Linguistics and English Language Postgraduate Conference, University of Edinburgh, UK.
- Berríos, A. (2026, February 27). _Phonologically conditioned allomorphy in Mapudungun: A missed generalisation or a historical accident?_. Talk at the Phonetics and Phonology Research Group (P-workshop), University of Edinburgh, UK.
- Molineaux, B., & Berríos, A. (2025, October 15). _A grapho-phonological history of the ‘sixth vowel’ in Mapudungun: Epenthesis, stress and rule inversion_. Angus McIntosh Centre for Historical Linguistics Catchup Sessions.
- Berríos, A. (2025, September 12). _Alomorfía de -küle, y otros sufijos flexivos, en mapudungun_. Talk at ABRALIN & SOCHIL: vozes que aproximam saberes.
- Berríos, A. (2025, August 19). _Origin, trajectory and deactivation of a phonological process: tracing the root-consonant alternation in Mapudungun_. Talk at ICHL27, Santiago, Chile.
- Molineaux, B., & Berríos, A. (2025, August 19). _A grapho-phonological history of the 'sixth vowel' in Mapudungun: Epenthesis, stress and rule inversion_. Talk at ICHL27, Santiago, Chile.
- Berríos, A. (2025, July 2). _Book Launch: Pu Mapuche ñi N’emül’_. Invited Presentation at Universidad de La Frontera, Temuco, Chile.
- Berríos, A. (2025, June 5). _K-Allomorphy in Mapudungun: the case of stative -(kï)le_. Talk at the LEL Postgraduate Conference 2025, University of Edinburgh.
- Berríos, A. (2025, February 7). _Today’s irregular morphology is yesterday’s regular phonology: [...] the complex verbal morphology of Mapudungun_. Talk for 22nd Old-World Conference in Phonology, University of Amsterdam.
- Berríos, A. (2024, December 5). _La morfología del presente es la fonología del pasado_. Talk for the "Jornadas de estudios lingüísticos internacionales SOCHIL-SAEL 2024".
- Berríos, A. (2024, October 10). _Tañi chumken kiñe antü mew: Una experiencia pedagógica en contexto universitario_. VII Coloquio sobre Enseñanza y Aprendizaje de la lengua mapuche, Universidad de la Frontera.
- Berríos, A. (2024, August 28). _From regular phonology to irregular morphology: An amphichronic study of the alternation of causative -(ï)m in Mapudungun_. Talk at the 2024 Annual Meeting of the LAGB, Newcastle University.
- Berríos, A. (2024, June 4). _From regular phonology to irregular morphology_. Talk at the 30th LEL Postgraduate Conference, University of Edinburgh.
- Berríos, A. (2024, April 29). _Mapudungun: Sociolinguistics, Research and Revitalisation_. Micro-conference: Researching and Revitalising Minoritised Isolates, University of Edinburgh.
- Berríos, A. (2024, April 25-26). _From regular phonology to irregular morphology_. Talk at the 11th Manchester Forum in Linguistics (MFiL 2024), University of Manchester.
- Berríos, A. (2024, February 6). _The history of the -(ï)m causative in Mapudungun_. AMC Catchup Sessions.
- Berríos, A. (2023, May). _Frecuencia fonemática del mapudungun_. XXIII Congreso Internacional de la Sociedad Chilena de Lingüística, Santiago, Chile.
- Berríos, A. (2022). _Frecuencia fonemática del mapudungun_. 8vas Jornadas Nacionales de Fonética Humberto Valdivieso, Universidad de Concepción.
- Berríos, A. (2021). _Características acústicas de la reducción del grupo /ej/_. I Congreso Nacional de Estudiantes de Postgrado en Lingüística, Chile.
- Berríos, A. (2021). _Diversidad Lingüística en Wallmapu_. Tercera Jornada de Pedagogía Media en Inglés.
- Berríos, A. (2021). _Diccionario de mapuzugun en linea www.azümchefe.cl_. II Jornada de Revitalización lingüística.
- Carilaf, V., & Berríos, A. (2019). _Kimeltuwe, Materiales de mapudungun_. Toolkits for Sociolinguistic Revitalization, Santiago, Chile.


#cv-section("Poster Presentations")
- Berríos, A. (2026, January 15). _[kï]-allomorphs in Mapudungun: accounting for [-kïle] and other inflectional affixes_. 23rd Old-World Conference in Phonology (OCP23), Gonville & Caius College, University of Cambridge, UK.
- Berríos, A. (2025, December 2). _Kï-allomorphy in Mapudungun. From ‘stuff’, to affix, to suppletion_. The Seventh Edinburgh Symposium on Historical Phonology (ESHP7), University of Edinburgh, Scotland.
- Berríos, A. (2025, May 29). _K-POP\* Allomorphy: On the status of -k in Mapudungun Morphophonology_. PPLS Research Day 2025, University of Edinburgh. 
#h(1fr) #text(size: 7pt)[\* k-Phonologically-Oriented Phenomena]
- Berríos, A. (2024, July 4). _Today’s morphology is yesterday’s phonology: An amphichronic study of the alternation of causative -(ï)m in Mapudungun_. 20th ACTL Summer School, University of York, UK.
- Berríos, A. (2024, June 13). _Today’s morphology is yesterday’s phonology_. PPLS Research Day 2024, University of Edinburgh.
- Berríos, A. (2023, November 2). _Phoneme Frequency in Mapudungun_. 78th Language Lunch, University of Edinburgh, UK.


#cv-section("Academic Service and Community Building")


#cv-entry(
  "2025–present",
  "Co-Organiser",
  "Edinburgh Theoretical Historical Linguistics (ETHL)",
  details: [Co-founder of a researcher venue that explores and investigates the intersection between historical and theoretical linguistics. Organised *ETHL 2025 Seminar* and *ETHL 2026 Summer School*.]
)

#cv-entry(
  "2025–present",
  "Co-Organiser",
  "Willow Reading Group (Ex-NILA)",
  details: [Native Indigenous Languages of the Americas.]
)

#cv-entry(
  "February 2025",
  "Co-Organiser",
  "Swalif",
  details: [Linguistics and English Language (LEL) Networking Talks.]
)

#cv-entry(
  "2024–2025",
  "Committee Board Member",
  "Linguistics and English Language Postgraduate Conference",
  details: [Served on the committee for the 30th & 31st Editions.]
)

#cv-entry(
  "2023–2025",
  "Committee Member",
  "Edinburgh Symposium on Historical Phonology (ESHP)",
  details: [Technical volunteer and program logistics for the Sixth (2023) and Seventh (2025) symposia.]
)

#cv-entry(
  "June 2024",
  "Organizing Assistant",
  "Ukrainian Week at the University of Edinburgh",
  details: none
)

#cv-section("Digital Activism & Community Impact")


#cv-entry(
  "2015 -- Present",
  "Co-Founder & language activist",
  "Kimeltuwe",
  details: [Co-founded the digital artivism and educational project _Kimeltuwe_ ("place of learning") to promote and teach Mapudungun. Managed community engagement for an audience of over 200,000 followers and co-authored pedagogical materials widely used in Chilean and Argentinian schools.]
)

#cv-entry(
  "2019 -- Present",
  "Member",
  "Fiw-Fiw ñi Dungun",
  details: [Organised courses and language immersion camps within the Biobío region. Developed educational materials, including grammar outlines and introductory textbooks for students.]
)


#cv-section("Selected Media & Interviews")
- Alvarado, G. (2022). Aldo Berríos (Fiestoforo): “Siempre he pensado que el mapuzugun es una lengua de futuro.” _Lenguas Radicales, 1(3)_.
- Carilaf, V., Berríos, A., & Becerra, R. (2017). Del compromiso político-cultural a la acción educativa en internet. In _Mapun Kimün. Relaciones mapunche entre persona, tiempo y espacio_. Editorial Ocholibros, pp. 271-292.


#cv-section("Built Linguistic Web Tools")
- *Wirintukufe*: An open-access Shiny web app engineered for precise orthographic conversion of Mapudungun text models. #link("https://aldoberrios.shinyapps.io/Wirintukufe/")[aldoberrios.shinyapps.io/Wirintukufe/]
- *Phonemiser*: An interactive program mapping traditional inputs into systemic International Phonetic Alphabet (IPA) output matrices. #link("https://aldoberrios.shinyapps.io/phonemizer/")[aldoberrios.shinyapps.io/phonemizer/]
- *Mapudungun Nemülkawe*: Online Mapudungun dictionary. A grass-root innitiative to create a dictionary database for students, with examples and playable audio to model pronunciation (available at #link("https://mapudungun.cl")[mapudungun.cl]).

#cv-section("Professional Memberships")
- Sociedad Chilena de Lingüística (*Sochil*)
- Linguistics Association of Great Britain (*LAGB*)
- Philological Society (*Philsoc*)

