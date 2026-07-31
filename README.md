# Advance DevOps — Puppet Reference Book and Course Companion

This repository contains the source syllabus and a professional reference-book manuscript prepared for the course titled "DEVOPS ADVANCE CONFIGURATION MANAGEMENT".

## Project Purpose

The repository is designed to provide:

- a preserved copy of the original syllabus PDF,
- a structured textbook-style manuscript for Puppet basics and advanced Puppet topics,
- supporting reference content for Nagios, Terraform, and Ansible, and
- a reproducible PDF export pathway for publication or classroom distribution.

## Repository Contents

- `advanced_devops_syllabus.pdf` — source syllabus document
- `Puppet_Reference_Book.md` — concise draft manuscript
- `Puppet_Reference_Book_Complete.md` — full polished textbook-style reference manuscript
- `scripts/export-book-to-pdf.ps1` — local PDF-export script
- `.github/workflows/export-book-pdf.yml` — GitHub Actions workflow to produce a PDF artifact automatically

## Curriculum Alignment

The content in this repository follows the course units and practical outcomes associated with:

- Puppet Basics
- Advanced Puppet
- Nagios Monitoring
- Infrastructure as Code with Terraform
- Introduction to Ansible
- Advanced Ansible

## Intended Audience

This manuscript is intended for:

- B.Tech / B.E. / M.Tech / MCA students
- Linux administrators and DevOps engineers
- RHCE and certification aspirants
- enterprise infrastructure automation learners
- interview and viva preparation practice

## Local Export Workflow

To generate a PDF locally from the polished manuscript, run the script below from the repository root:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\export-book-to-pdf.ps1
```

## GitHub Actions PDF Export

A workflow is included in `.github/workflows/export-book-pdf.yml` so that a PDF artifact can be built automatically in GitHub Actions.

## Notes

The text in the manuscript is organized as a university textbook resource with formal chapter numbering, detailed section hierarchy, revision notes, interview questions, and MCQ-style assessment material.

## License

The repository content is provided as an academic study and reference manuscript for educational use.
