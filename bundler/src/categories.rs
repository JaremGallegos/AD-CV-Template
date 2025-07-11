pub fn validate_category(category: &str) -> anyhow::Result<()> {
    match category {
        "cv" => {}
        "cv-ATM-Harvard" => {}
        "cv-ATM-Business" => {}
        _ => anyhow::bail!("Categoria Desconocida")
    }

    Ok(())
}

