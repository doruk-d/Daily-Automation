# Daily-Automation

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
prodctl/
├── prodctl # main dispatcher
├── start_day.sh
├── end_day.sh
├── mood_tracker.sh
├── weekly_report.sh
├── monthly_report.sh
└── lib/
      ├── logging.sh
      ├── utils.sh
      └── colors.sh

## Concepts Learned
- Bash argument parsing (`$1`, `$2`, `case`)
- Logging and timestamp management
- Modular CLI design
- Error handling and process flow
- Automation and self-tracking

## Usage Example
prodctl start
# work...
prodctl end
prodctl week
