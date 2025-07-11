#import "../@utils/dates-helper.typ": dates-helper
#import "../@components/resume.typ": *
#import "../@components/education.typ": *
#import "../@components/projects.typ": *
#import "../@components/work-experience.typ": *
#import "../@components/certificates.typ": *

#let harvard-ats-cv-spanish(schema) = {
  show: resume.with(
    author: schema.information.author,
    location: schema.information.location,
    linkedin: schema.information.linkedin,
    phone: schema.information.phone,
    email: schema.information.email
  )
  [#schema.resume]

  heading(level: 2, "EDUCACIÓN")
  for education in schema.education {
    education-section(
      institution: education.institution,
      location: education.location,
      dates: dates-helper(start-date: education.dates.start-date, end-date: education.dates.end-date),
      degree: education.degree,
      content: [
        *Honor*: #education.content.honor \
        *Promedio Ponderado Acumulado (PPA)*: #education.content.PPA/20, Cuadro de Honor #education.content.cuadro-honor \
        *Habilidades Desarrolladas*: #education.content.habilidades
      ]
    )
  }

  heading(level: 2,"CERTIFICACIONES")
  for certificate in schema.certifications {
    list(spacing: 10pt,
      certificates(
        name: certificate.name,
        issuer: certificate.issuer,
        url: certificate.url,
        date: dates-helper(start-date: certificate.dates.start-date, end-date: certificate.dates.end-date),
        skills: certificate.skills
      )
    )
  }

  heading(level: 2, "PROYECTOS")
  for project in schema.projects {
    projects-section(
      name: project.name,
      role: project.role,
      dates: dates-helper(start-date: project.dates.start-date, end-date: project.dates.end-date),
      url: project.url,
      content: [
        #for content in project.content {
          list.item(text(content))
        }
      ]
    )
  }

  heading(level: 2, "HABILIDADES")
  [
    - *Lenguajes de Programación*: #schema.skills.lenguaje-programacion
    - *Tecnologías*: #schema.skills.tecnologias
    - *Idiomas*: #schema.skills.idiomas
  ]
}


#harvard-ats-cv-spanish(json("../@schemas/prueba.json"))