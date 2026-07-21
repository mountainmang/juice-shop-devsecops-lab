# Juice Shop DevSecOps Lab

An educational CI/CD and security pipeline using OWASP Juice Shop as an intentionally vulnerable test application.

> [!CAUTION]
> OWASP Juice Shop is deliberately insecure. Deployments must remain ephemeral, isolated, or appropriately access-controlled.

## Pipeline

- Build and automated tests
- SAST with CodeQL
- SCA and container scanning with Trivy
- DAST with OWASP ZAP
- Promotion through dev, test, non-prod, and prod
