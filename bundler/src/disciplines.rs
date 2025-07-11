pub fn validate_discipline(discipline: &str) -> anyhow::Result<()> {
    match discipline {
        "analitica" => {}
        "redes" => {}
        "programacion" => {}
        "mainframe" => {}
        _ => anyhow::bail!("Disciplina Desconocida")
    }

    Ok(())
}