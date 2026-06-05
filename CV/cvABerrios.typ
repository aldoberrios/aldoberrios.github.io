#import "@preview/basic-resume:0.2.9": *
// #import "lib.typ": *

#set page(
  // This adds your global top header right-aligned:
  header: context {
    if counter(page).get().first() > 0 [
      #align(right)[
        #text(size: 8pt, fill: rgb("#7f8c8d"))[Updated: #datetime.today().display("[year]-[month]")]
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

#let name = "Aldo Berríos Castillo"
#let location = "Edinburgh, Scotland, UK"
#let email = "aldoberrios@gmail.com"
#let github = "github.com/aldoberrios"
#let linkedin = "linkedin.com/aldoberrios"
#let personal-site = "aldoberrios.cl"
#let phone = ""

#show: resume.with(
  author: name,
//  location: location,
  email: email,
  github: github,
  linkedin: linkedin,
//  phone: phone,
  personal-site: personal-site,
  accent-color: "#000",
  font: "New Computer Modern",
  paper: "a4",
  author-position: center,
  personal-info-position: center,  
)

// Define a clean, uniform separator component
#let divider = [
  #v(0.2em)
  #line(length: 100%, stroke: 0.5pt + rgb("#dcdde1"))
  #v(-0.2em)
]


/*
* Lines that start with == are formatted into section headings
* You can use the specific formatting functions if needed
* The following formatting functions are listed below
* #edu(dates: "", degree: "", gpa: "", institution: "", location: "", consistent: false)
* #work(company: "", dates: "", location: "", title: "")
* #project(dates: "", name: "", role: "", url: "")
* certificates(name: "", issuer: "", url: "", date: "")
* #extracurriculars(activity: "", dates: "")
* There are also the following generic functions that don't apply any formatting
* #generic-two-by-two(top-left: "", top-right: "", bottom-left: "", bottom-right: "")
* #generic-one-by-two(left: "", right: "")
*/

== Education

#edu(
  institution: "University of Edinburgh",
  location: "Edinburgh, Scotland, UK",
  dates: dates-helper(start-date: "Sep 2023", end-date: "present day"),
  degree: "PhD in Linguistics and English Language",
)
- Recipient of the *Becas Chile* scholarship granted by ANID (Chilean Government).
- Research focused on the historical trajectories of Mapudungun phonology and morphology utilising internal reconstruction techniques.
- *Interests:* 
  Historical linguistics, 
  Mapudungun morphology & phonology, 
  Language Revitalization.

  #divider

#edu(
  institution: "Universidad de Concepción",
  location: "Concepción, Chile",
  dates: dates-helper(start-date: "Mar 2022", end-date: "Jan 2023"),
  degree: "Master in Applied Linguistics",
)
- *Thesis:* _Frecuencia fonemática del mapudungun._ A quantitative study exploring phoneme frequency from a corpus of ~2,900 mono-morphemic lexical units derived from Augusta's Dictionary (1916/2017) to study linguistic change.

  #divider

#edu(
  institution: "Pontificia Universidad Católica de Valparaíso",
  location: "Valparaíso, Chile",
  dates: dates-helper(start-date: "Mar 1997", end-date: "Dec 2002"),
  degree: "English-Spanish Translator",
)


== Work Experience

#work(
  title: "Research Assistant",
  location: "Biobío Region, Chile (Remote)",
  company: "FONDECYT Project 1250684",
  dates: dates-helper(start-date: "Mar 2026", end-date: "present day"),
)
- Process and systemise phonetic speech corpora for a national research project focusing on continuous speech phonological phenomena in Chedungun, the regional Mapudungun variant spoken by the Pewenche people.

  #divider

#work(
  title: "Editorial Assistant",
  location: "Edinburgh, Scotland, UK",
  company: "University of Edinburgh (LEL / PPLS)",
  dates: dates-helper(start-date: "May 2026", end-date: "present day"),
)
- Assist with the editing, typesetting, and production of a book and digital project of traditional Mapudungun texts.

  #divider


#work(
  title: "Course Lecturer & Tutor",
  location: "Edinburgh, Scotland, UK",
  company: "University of Edinburgh",
  dates: dates-helper(start-date: "Jan 2024", end-date: "present day"),
)
- *Course Lecturer* (2025): Taught a module in the course curriculum for _Historical Phonology_ tailored to Honours undergraduate and MSc postgraduate students.
- *Academic Tutor* (2024 -- 2026): Led weekly instructional tutorial groups, evaluated coursework, and mentored students in core linguistic areas:
  - _Linguistics and English Language 2D: Cross-linguistic Variation; Limits and Theories_ (2024, 2026)
  - _Linguistics and English Language 2A: Linguistic Theory and the Structure of English_ (2025)

  #divider
  
#work(
  title: "Lecturer in Mapuche Language and Culture",
  location: "Concepción, Chile",
  company: "Universidad de Concepción",
  dates: dates-helper(start-date: "Mar 2022", end-date: "Dec 2023"),
)
- Taught the core curriculum course _Cultura y Lengua Mapuche_ (Code 940408) within the School of Anthropology, Faculty of Social Sciences.
- Taught _Introducción a la lengua y cultura Mapuche_ (Code 731575) within the Departamento de Castellano, Faculty of Humanities and Art.

  #divider

#work(
  title: "Lexicographic Trainer & Project Consultant",
  location: "Concepción, Chile (Remote)",
  company: "Mapudungun Nemülkawe Project / Fiw-Fiw ñi Dungun",
  dates: dates-helper(start-date: "Sep 2024", end-date: "Oct 2024"),
)
- Designed and delivered lexicographic training workshops for language revitalization practitioners within the Fiw-Fiw ñi Dungun association.
- Coordinated the development of data structures and linguistic criteria for the digital learner's dictionary (_Nemülkawe_).
- Project profile: #link("https://mapudungun.cl")[mapudungun.cl]

//   #divider

// #work(
//   title: "Illustrator for Wikimedia Commons",
//   location: "Remote",
//   company: "Media repository for Wikipedia",
//   dates: dates-helper(start-date: "Jan 2007", end-date: "Dec 2008"),
// )
// - Conceptualised and designed scientific illustrations using Inkscape.
// - Project profile: #link("https://commons.wikimedia.org/wiki/User:Al2")[commons.wikimedia.org/wiki/User:Al2]

== Academic Publications

=== Journal Articles
- Berríos, A. (2026). The history of the [ïm] causatives in Mapudungun: From regular phonology to lexicalisation. _Diachronica, 43(1)_, 1–40. #link("https://doi.org/10.1075/dia.24080.ber")[doi.org/10.1075/dia.24080.ber]
- Berríos, A., & Salamanca, G. (2024). Frecuencia fonemática en mapudungun. _Literatura y Lingüística, 50_, Article 50. #link("https://doi.org/10.29344/0717621X.50.3533")[doi.org/10.29344/0717621X.50.3533]
- Berríos, A., & Salamanca, G. (2024). Efectos morfofonémicos del causativo «-(ü)m» del mapudungun: aspectos sincrónicos y diacrónicos. _Forma y Función, 37(2)_. #link("https://doi.org/10.15446/fyf.v37n2.107627")[doi.org/10.15446/fyf.v37n2.107627]
- Inostroza Araos, M.-J., Quero Álvarez, E., & Berríos Castillo, A. (2021). Perfil de los participantes de internados de mapuzugun de la organización Mapuzuguletuaiñ. _Nueva revista del Pacífico, (74)_, 361-384. #link("https://dx.doi.org/10.4067/S0719-51762021000100361")[doi.org/10.4067/S0719-51762021000100361]

=== Books & Chapters
- Painequeo, J., Salamanca, G., & Berríos, A. (2024). _Pu Mapuche ñi N'emül': Una introducción al estudio de la lengua mapuche_. Ariadna Ediciones.
- Berríos, A., & Inostroza, M.-J. (2025). Experiencia de enseñanza de mapudungun en contexto universitario: Tañi chumken kiñe antü mew. In C. D. Vargas, C. S. Campos, & E. Q. Llancao (Eds.), _La enseñanza de lenguas y culturas originarias: Desafíos y oportunidades para la educación del siglo XXI_ (1st ed., pp. 175–190). Ediciones Universidad de Concepción.
- Berríos, A., Namuncura, A., & Carilaf, V. (Forthcoming). Kimeltuwe witrañpüramtuael mapuzungun: un espacio de enseñanza para levantar el mapuzungun. In M. Malvestitti & A. Olate (Eds.), _La lengua mapuche en Gulumapu y Puelmapu: Avances e intersecciones en los estudios lingüísticos, la enseñanza y los activismos_. Editoriales UFRO y UNRN.

=== Research Archives & Educational Profiles
- Berríos, A. (2026). _Phoneme Frequency in Mapudungun: a report_. Edinburgh Research Archive. #link("https://doi.org/10.7488/era/7112")[doi.org/10.7488/era/7112]
- Berríos, A. (2026). _Mapudungun: A Concise Language Profile_. Edinburgh Research Archive. #link("https://doi.org/10.7488/era/7088")[doi.org/10.7488/era/7088]
- Berríos, A. (2023). _Esbozo Gramatical del Mapudungun_. Fiwfiw ñi Dungun.
- Berríos, A., Urrea, P., Pichún, H., Gutiérrez, C., Llancapan, L., & Guíñez, M. (2023). _Mapudungun: Gramática básica ilustrada_. Fiwfiw ñi Dungun.
- Berríos, A. (2022). _Nhemülkawe: Diccionario Mapuzugun – Castellano_ . Mapuzuguletuaiñ Konse Mew.


== Invited Guest Lectures
- *University of Edinburgh* (Mar 2026): Invited by Dr. Amalia Skilton for the Honours/MSc module _Language Endangerment and Revitalisation_. Presentation: *"The role of people vs. documents in revitalisation: How can revitalisation practitioners use language documentation?"*
- *University of Groningen, NL* (Nov 2023): Invited by Dr. Maria Mazzoli for the course _Minority Languages II_. Presentation: *"N’emülkawe: A learner’s dictionary for Mapudungun"*.
- *University of Edinburgh* (Nov 2023): Invited by Dr. Ben Molineaux for the course _Structure of a Language: Mapudungun_.


== Talks & Presentations

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


== Poster Presentations
- Berríos, A. (2026, January 15). _[kï]-allomorphs in Mapudungun: accounting for [-kïle] and other inflectional affixes_. 23rd Old-World Conference in Phonology (OCP23), Gonville & Caius College, University of Cambridge, UK.
- Berríos, A. (2025, December 2). _Kï-allomorphy in Mapudungun. From ‘stuff’, to affix, to suppletion_. The Seventh Edinburgh Symposium on Historical Phonology (ESHP7), University of Edinburgh, Scotland.
- Berríos, A. (2025, May 29). _K-POP\* Allomorphy: On the status of -k in Mapudungun Morphophonology_. PPLS Research Day 2025, University of Edinburgh. #h(1fr) #text(size: 7pt)[\* k-Phonologically-Oriented Phenomena]
- Berríos, A. (2024, July 4). _Today’s morphology is yesterday’s phonology: An amphichronic study of the alternation of causative -(ï)m in Mapudungun_. 20th ACTL Summer School, University of York, UK.
- Berríos, A. (2024, June 13). _Today’s morphology is yesterday’s phonology_. PPLS Research Day 2024, University of Edinburgh.
- Berríos, A. (2023, November 2). _Phoneme Frequency in Mapudungun_. 78th Language Lunch, University of Edinburgh, UK.


== Leadership & Academic Service
- *Co-Organizer*, _Edinburgh Theoretical Historical Linguistics (ETHL)_: Established a recurring young researcher venue intersectionalizing historical and theoretical frameworks. Spearheaded the *ETHL 2025 Seminar* and the *ETHL 2026 Summer School*.
- *Co-Organizer*, _Willow Reading Group_ (Ex-NILA): Native Indigenous Languages of the Americas.
- *Co-Organizer*, _Swalif_: Linguistics and English Language (LEL) Networking Talks.
- *Committee Board Member*, _Linguistics and English Language Postgraduate Conference_ (30th & 31st Editions, 2024 -- 2025).
- *Committee Board Member*, _Edinburgh Symposium on Historical Phonology (ESHP)_: Technical volunteer and program logistics for the Sixth (2023) and Seventh (2025) symposia.
- *Organizing Assistant*, Ukrainian Week at the University of Edinburgh (April 2024).


== Digital Activism & Community Impact
- *Co-Founder & Linguist*, _Kimeltuwe_ (2015 -- Present): Co-founded the digital artivism and educational project _Kimeltuwe_ ("place of learning") to promote and teach Mapudungun. Managed community engagement for an audience of over 200,000 followers and co-authored pedagogical materials widely used in Chilean and Argentinian schools.
- *Member*, _Fiw-Fiw ñi Dungun_ (2019 -- Present): Organise language immersion camps and language courses within the Biobío region. Developed educational materials, including grammar outlines and introductory textbooks for students.

== Selected Media & Interviews
- Alvarado, G. (2022). Aldo Berríos (Fiestoforo): “Siempre he pensado que el mapuzugun es una lengua de futuro.” _Lenguas Radicales, 1(3)_.
- Carilaf, V., Berríos, A., & Becerra, R. (2017). Del compromiso político-cultural a la acción educativa en internet. In _Mapun Kimün. Relaciones mapunche entre persona, tiempo y espacio_. Editorial Ocholibros, pp. 271-292.


== Built Linguistic Web Tools
- *Wirintukufe*: An open-access shiny web app engineered for precise orthographic conversion of Mapudungun text models.
- *Phonemiser*: An interactive program mapping traditional inputs into systemic International Phonetic Alphabet (IPA) output matrices.
- *Nemülkawe / Mapudungun Nemülkawe*: Contributed core dictionary database engineering and backend design for the digital student interface (available at #link("https://mapudungun.cl")[mapudungun.cl]).

== Professional Memberships
- Sociedad Chilena de Lingüística (*Sochil*)
- Linguistics Association of Great Britain (*LAGB*)
- Philological Society (*Philsoc*)


// == Skills
