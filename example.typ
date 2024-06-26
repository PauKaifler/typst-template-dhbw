#import "template.typ": template
#import "@preview/glossarium:0.4.1": make-glossary, print-glossary, gls, glspl

#set document(
  title: "Development of an LLM-Based Pet Entertainment System",
  author: "Max Mustermann",
)
#set text(lang: "en")

#show: make-glossary
#show: template.with(
  article-kind: "Bachelorarbeit",
  author: (
    matriculation-number: "1208964",
    major: "Informatik",
    course-code: "TIX20",
  ),
  company: (
    name: "Example Corporation",
    city: "91719 Heidenheim",
    logo: image("company-logo.png"),
    supervisor: "Erika Mustermann",
  ),
  dhbw: (
    location: "Ravensburg",
    reviewer: "Dr. Egon Mustermann",
  ),
  signature: (
    location: "Heidenheim",
    date: datetime.today(),
  ),
  deadline: datetime(day: 25, month: 9, year: 2023),
  handling-period: "12 Wochen",
  restriction-note: true,
  abstract: [
    In this thesis, I present the design and implementation of a novel system to occupy pets' time.
    Using an integrated automatic speech recognition model, the animals' sounds are converted into a text format.
    Said text is then read by a pretrained large language model, which will then generate a response.
    Finally, the answer is synthesized and played back using a common loudspeaker.

    While my hamster and goldfish did not try to communicate with the system, my Chihuahua made heavy use of it.
    As such, the contributions of this thesis can greatly increase the enjoyment of animals staying at home.
  ],
  acronyms: print-glossary((
    (key: "asr", short: "ASR", long: "automatic speech recognition"),
    (key: "llm", short: "LLM", long: "large language model"),
  )),
)

#bibliography("refs.bib", style: "ieee")
