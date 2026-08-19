# Linux CRM Automation - IT Operations Project

## 📌 Overview

This project is part of my IT Operations Internship portfolio. It demonstrates automated system monitoring, log management, and reporting for a Customer Relationship Management (CRM) system in a Linux environment.

The automation suite provides real-time monitoring, log analysis, alert generation, and maintenance capabilities to ensure the CRM system remains operational and performant.

---

## 🎯 Purpose

The primary objectives of this project are:

- **Automated Monitoring**: Continuously monitor CRM system logs for critical events
- **Proactive Alerting**: Detect and flag errors and warnings in real-time
- **Log Management**: Implement log rotation and archiving to prevent disk space issues
- **Reporting**: Generate comprehensive reports for operational analysis
- **Maintenance Automation**: Streamline routine maintenance tasks

---

## 🛠️ Technologies Used

| Technology | Purpose |
|------------|---------|
| **Bash/Shell Scripting** | Core automation scripts |
| **Git Bash** | Development and execution environment |
| **Linux/Unix Commands** | Log manipulation and system monitoring |
| **Cron/System Scheduler** | Scheduled automation (optional) |
| **Git/GitHub** | Version control and collaboration |

---

## 📁 Project Structure

```
Linux-CRM-Automation/
│
├── scripts/                          # All automation scripts
│   ├── log_generator.sh              # Generates sample CRM logs
│   ├── monitor_logs.sh               # Real-time log monitoring
│   ├── generate_report.sh            # Creates detailed reports
│   ├── rotate_logs.sh                # Log rotation and archiving
│   └── run_maintenance.sh            # Runs all scripts sequentially
│
├── logs/                             # Log storage
│   ├── system.log                    # Main system log file
│   └── backup/                       # Archived log files
│
└── reports/                          # Generated reports
    ├── system_report.txt             # Basic monitoring report
    └── detailed_report.txt           # Comprehensive analysis report
```

---

## 📋 Scripts Description

### 1. `log_generator.sh`
**Purpose**: Simulates CRM system activity by generating sample log entries.

**Functionality**:
- Creates realistic CRM log entries (INFO, WARNING, ERROR)
- Simulates customer transactions, logins, and system events
- Generates timestamped entries for monitoring

**Usage**:
```bash
./log_generator.sh
```

**Sample Output**:
```
[INFO] 2026-08-19 10:54:15 - Customer login successful.
[WARNING] 2026-08-19 10:54:20 - Database response time is high.
[ERROR] 2026-08-19 10:54:25 - Failed to connect to CRM database.
```

---

### 2. `monitor_logs.sh`
**Purpose**: Monitors CRM logs in real-time and generates reports.

**Functionality**:
- Scans logs for ERROR and WARNING patterns
- Creates summary reports with statistics
- Identifies critical events requiring attention
- Generates `system_report.txt`

**Usage**:
```bash
./monitor_logs.sh
```

---

### 3. `generate_report.sh`
**Purpose**: Creates detailed operational reports.

**Functionality**:
- Analyzes log patterns and trends
- Generates comprehensive statistics
- Produces `detailed_report.txt`
- Identifies recurring issues

**Usage**:
```bash
./generate_report.sh
```

---

### 4. `rotate_logs.sh`
**Purpose**: Manages log file size and archiving.

**Functionality**:
- Creates timestamped backups of logs
- Trims log files to prevent excessive growth
- Archives old logs to `logs/backup/` directory

**Usage**:
```bash
./rotate_logs.sh
```

---

### 5. `run_maintenance.sh`
**Purpose**: Executes all automation tasks sequentially.

**Functionality**:
- Runs all scripts in the correct order
- Performs complete maintenance cycle
- Generates all reports
- Manages log rotation

**Usage**:
```bash
./run_maintenance.sh
```

---

## 🚀 Getting Started

### Prerequisites

- Git Bash or Linux terminal
- Bash shell environment
- Basic Linux command knowledge

### Installation

1. **Clone the repository**:
```bash
git clone https://github.com/sidramujtaba/IT-Operations-Internship-Projects.git
```

2. **Navigate to the project**:
```bash
cd IT-Operations-Internship-Projects/Linux-CRM-Automation/
```

3. **Make scripts executable**:
```bash
cd scripts/
chmod +x *.sh
```

4. **Fix line endings (if using Windows)**:
```bash
sed -i 's/\r$//' *.sh
```

---

## 📊 Running the Automation

### Run a Single Script
```bash
./log_generator.sh
```

### Run All Scripts
```bash
./run_maintenance.sh
```

### Check Results
```bash
# View logs
cat ../logs/system.log

# View reports
cat ../reports/system_report.txt
cat ../reports/detailed_report.txt

# Check backups
ls -la ../logs/backup/
```

---

## 📈 Output Files

| File | Description |
|------|-------------|
| `logs/system.log` | Live system log entries |
| `logs/backup/*.log` | Archived historical logs |
| `reports/system_report.txt` | Basic monitoring report |
| `reports/detailed_report.txt` | Comprehensive analysis |

---

## 🔄 Automation Scheduling (Optional)

To automate these scripts, add to crontab:

```bash
# Run maintenance every hour
0 * * * * /path/to/scripts/run_maintenance.sh

# Rotate logs daily at 2 AM
0 2 * * * /path/to/scripts/rotate_logs.sh
```

---

## 🧪 Testing & Validation

### Verify Scripts are Working

```bash
# Run generator
./log_generator.sh

# Check if logs were created
ls -la ../logs/

# Run monitor
./monitor_logs.sh

# Check if report was created
ls -la ../reports/
```

### Expected Output
- ✅ `system.log` created/updated
- ✅ `system_report.txt` generated
- ✅ No errors displayed in terminal
- ✅ Scripts exit cleanly

---

## 🐛 Troubleshooting

### Issue: "Permission denied"
```bash
chmod +x *.sh
```

### Issue: Scripts not running
```bash
bash script_name.sh
```

### Issue: Line ending errors (^M)
```bash
sed -i 's/\r$//' *.sh
```

### Issue: "No such file or directory"
Make sure you're in the correct directory:
```bash
pwd  # Should be .../Linux-CRM-Automation/scripts/
```

---

## 📝 Log Format

All logs follow this standard format:
```
[TYPE] TIMESTAMP - MESSAGE
```

**Types**:
- `[INFO]` - Informational events
- `[WARNING]` - Potential issues
- `[ERROR]` - Critical failures

---

## 🎓 Learning Outcomes

Through this project, I developed skills in:

- **Shell Scripting**: Bash scripting for system automation
- **Log Management**: Monitoring and rotating application logs
- **Reporting**: Generating actionable reports from system data
- **IT Operations**: Real-world system administration tasks
- **Version Control**: Using Git for project management

---

## 🔮 Future Enhancements

- [ ] Email alerts for critical errors
- [ ] Dashboard with Grafana or similar
- [ ] Database integration
- [ ] Multi-server monitoring
- [ ] Slack/Teams notifications
- [ ] Performance metrics collection

---

## 🤝 Contributing

This is an internship project for portfolio purposes. Suggestions and feedback are welcome.

---

## 📧 Contact

- **Name**: Sidra Mujtaba
- **GitHub**: [sidramujtaba](https://github.com/sidramujtaba)
- **Project URL**: [IT-Operations-Internship-Projects](https://github.com/sidramujtaba/IT-Operations-Internship-Projects)

---

---

> *"Automation is the key to operational excellence."*
