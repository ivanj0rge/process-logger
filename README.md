# DevOps Process Logger

A Bash-based logging project with a CI validation pipeline using GitHub Actions.

---

# 📌 Project Overview

This project demonstrates:

- Bash scripting
- Linux process management
- CI pipeline automation
- Artifact generation
- Validation and fail-fast logic
- GitHub Actions workflows

The repository evolved from a simple logging script into a small DevOps-oriented CI project.

---

# ⚙️ What the Logger Does

The logger script:

- prints startup messages
- writes timestamps to a log file
- runs continuously in a loop
- waits a configurable interval between entries

Example output:

```text
2026-05-09 14:32:01
2026-05-09 14:32:06
2026-05-09 14:32:11
```

---

# 🧱 Project Structure

```text
process-logger/
├── .github/
│   └── workflows/
│       └── logger.yml
├── validate.sh
├── process_logger.sh
├── log.txt
└── README.md
```

---

# 🚀 CI Pipeline Features

The GitHub Actions pipeline:

1. Checks out repository code
2. Creates a log file
3. Executes validation script
4. Validates:
   - file existence
   - file not empty
   - expected content
5. Uploads validated artifacts

---

# ✅ Validation Logic

The pipeline uses fail-fast validation.

If:
- the log file is missing
- the file is empty
- the expected message is incorrect

then:

```text
The pipeline fails immediately
```

This prevents invalid outputs from being stored as artifacts.

---

# 📦 Artifact Generation

Validated logs are uploaded as GitHub Actions artifacts for later inspection and debugging.

---

# 🖥️ How to Run the Logger

Make executable:

```bash
chmod +x process_logger.sh
```

Run normally:

```bash
./process_logger.sh
```

Run in background:

```bash
nohup ./process_logger.sh &
```

Monitor logs:

```bash
tail -f log.txt
```

---

# 🛑 How to Stop It

Find process:

```bash
ps aux | grep process_logger
```

Kill process:

```bash
kill <PID>
```

---

# 🧠 Skills Demonstrated

- Bash scripting
- Linux permissions
- Process management
- CI/CD fundamentals
- GitHub Actions
- Validation pipelines
- Fail-fast logic
- Artifact handling
- Environment variables

---

# 🔮 Future Improvements

Planned upgrades:

- command-line arguments
- dynamic log file names
- Docker containerization
- automated testing
- multi-stage CI pipelines
- cloud deployment experiments
