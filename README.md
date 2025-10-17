# prodctl

A personal productivity CLI built in Bash.
Automates daily study routines, logs focus sessions, and generates weekly reports.

## Commands
| Command | Description |
|---------|-------------|
| `prodctl start` | Initializes a new study session and creates a log file. |
| `prodctl end` | Closes the session, records duration, and syncs summary. |
| `prodctl mood` | Prompts for daily mood and stores result. |
| `prodctl week` | Aggregates the week’s data into a report. |
| `prodctl month` | Generates monthly summary analytics. |

## Project Structure
```
prodctl/
├── prodctl                   # Main command dispatcher
├── start_day.sh              # Start of day routine
├── end_day.sh                # End of day routine
├── mood_tracker.sh           # Mood tracking functionality
├── weekly_report.sh          # Weekly summary reports
├── monthly_report.sh         # Monthly summary reports
└── lib/                      # Shared library functions
    ├── logging.sh            # Logging utilities
    ├── utils.sh              # Common helper functions
    └── colors.sh             # Terminal color definitions
```

## Concepts Learned
- Bash argument parsing (`$1`, `$2`, `case`)
- Logging and timestamp management
- Modular CLI design
- Error handling and process flow
- Automation and self-tracking

## Usage Example
```
prodctl start
work...
prodctl end
prodctl week
```
