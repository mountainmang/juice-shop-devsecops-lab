# Juice Shop DevSecOps Lab

An educational CI/CD and security pipeline using OWASP Juice Shop as an intentionally vulnerable test application.

> [!CAUTION]
> OWASP Juice Shop is deliberately insecure. Lab deployments must remain ephemeral, isolated, and bound to localhost unless protected by appropriate access controls.

## Planned pipeline

- Build and automated tests
- SAST with CodeQL
- SCA and container scanning with Trivy
- DAST with OWASP ZAP
- Staging and production GitHub Environments
- Approval-gated promotion of the same container image

Pipeline implementation will be added incrementally so each stage and security control can be observed independently.

## Current stage: build and smoke test

The first workflow builds a lab image from the pinned OWASP Juice Shop `v20.0.0` release, binds it only to `127.0.0.1`, verifies that the application responds, and destroys the container after the job.

Run the same image locally with:

```bash
docker build --tag juice-shop-lab .
docker run --rm --publish 127.0.0.1:3000:3000 juice-shop-lab
```

Then open <http://127.0.0.1:3000>. Never expose this deliberately vulnerable application directly to the public internet.
