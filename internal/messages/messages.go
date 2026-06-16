package messages

import (
	"fmt"
	"os"
	"strings"
)

type Locale string

const (
	English Locale = "en"
	German  Locale = "de"
)

var catalog = map[Locale]map[string]string{
	English: {
		"usageHeader":             "Usage: %s [options] <operation>\n\n",
		"operationsHeader":        "Operations:\n",
		"cleanDescription":        "  clean   - Convert binary SQLite database to SQL dump (reads from stdin, writes to stdout; filtered to be byte-for-byte identical)\n",
		"smudgeDescription":       "  smudge  - Convert SQL dump to binary SQLite database (reads from stdin, writes to stdout)\n",
		"diffDescription":         "  diff    - Stream SQL dump from binary SQLite database (reads from file, writes to stdout; no filtering)\n\n",
		"optionsHeader":           "Options:\n",
		"examplesHeader":          "\nExamples:\n",
		"schemaExamplesHeader":    "\nSchema/Data Separation Examples:\n",
		"version":                 "gitsqlite version %s\n",
		"gitCommit":               "Git commit: %s\n",
		"gitBranch":               "Git branch: %s\n",
		"buildTime":               "Build time: %s\n",
		"executableLocation":      "Executable location: %s\n",
		"errorExecutableLocation": "Error getting executable path: %v\n",
		"checkingSQLite":          "Checking SQLite availability...\n",
		"sqliteCheckError":        "ERROR: %v\n",
		"sqliteHelp":              "Please ensure SQLite is installed or provide the correct path using -sqlite flag\n",
		"sqliteFound":             "SQLite found at: %s\n",
		"sqliteVersion":           "SQLite version: %s\n",
		"errorNoOperation":        "Error: No operation specified\n\n",
		"errorUnknownOperation":   "Error: Unknown operation '%s'\n",
		"supportedOperations":     "Supported operations: clean, smudge, diff\n",
		"useHelp":                 "Use -help for more information\n",
		"errorSmudge":             "Error running SQLite command for smudge operation: %v\n",
		"errorClean":              "Error running SQLite command for clean operation: %v\n",
		"diffUsage":               "Usage: %s diff <database.db>\n",
		"errorDiff":               "Error running SQLite command for diff operation: %v\n",
		"errorSQLiteBinary":       "Error: SQLite executable '%s' not found in PATH or does not exist\n",
		"flagShowVersion":         "Show version information",
		"flagEnableLog":           "Enable logging to file in current directory",
		"flagLogDir":              "Log to specified directory instead of current directory",
		"flagSQLite":              "Path to SQLite executable",
		"flagHelp":                "Show help information",
		"flagFloatPrecision":      "Number of digits after decimal point for float normalization in INSERT statements",
		"flagDataOnly":            "For clean/diff: output only data (INSERT statements), no schema",
		"flagSchema":              "Use .gitsqliteschema for schema/data separation (works with all operations)",
		"flagSchemaFile":          "Use specified file for schema/data separation (works with all operations)",
		"flagVerifyHash":          "Enforce hash verification on smudge (fails if hash is invalid/missing; without this flag, validation status is logged only)",
	},
	German: {
		"usageHeader":             "Verwendung: %s [Optionen] <Operation>\n\n",
		"operationsHeader":        "Operationen:\n",
		"cleanDescription":        "  clean   - Konvertiert eine binäre SQLite-Datenbank in einen SQL-Dump (liest von stdin, schreibt nach stdout; gefiltert für bytegenaue Identität)\n",
		"smudgeDescription":       "  smudge  - Konvertiert einen SQL-Dump in eine binäre SQLite-Datenbank (liest von stdin, schreibt nach stdout)\n",
		"diffDescription":         "  diff    - Gibt einen SQL-Dump aus einer binären SQLite-Datenbank aus (liest aus Datei, schreibt nach stdout; ohne Filterung)\n\n",
		"optionsHeader":           "Optionen:\n",
		"examplesHeader":          "\nBeispiele:\n",
		"schemaExamplesHeader":    "\nBeispiele für Schema-/Datentrennung:\n",
		"version":                 "gitsqlite Version %s\n",
		"gitCommit":               "Git-Commit: %s\n",
		"gitBranch":               "Git-Branch: %s\n",
		"buildTime":               "Build-Zeit: %s\n",
		"executableLocation":      "Speicherort der ausführbaren Datei: %s\n",
		"errorExecutableLocation": "Fehler beim Ermitteln des Speicherorts der ausführbaren Datei: %v\n",
		"checkingSQLite":          "Prüfe SQLite-Verfügbarkeit...\n",
		"sqliteCheckError":        "FEHLER: %v\n",
		"sqliteHelp":              "Bitte stellen Sie sicher, dass SQLite installiert ist, oder geben Sie mit dem Flag -sqlite den korrekten Pfad an\n",
		"sqliteFound":             "SQLite gefunden unter: %s\n",
		"sqliteVersion":           "SQLite-Version: %s\n",
		"errorNoOperation":        "Fehler: Keine Operation angegeben\n\n",
		"errorUnknownOperation":   "Fehler: Unbekannte Operation '%s'\n",
		"supportedOperations":     "Unterstützte Operationen: clean, smudge, diff\n",
		"useHelp":                 "Verwenden Sie -help für weitere Informationen\n",
		"errorSmudge":             "Fehler beim Ausführen des SQLite-Befehls für die smudge-Operation: %v\n",
		"errorClean":              "Fehler beim Ausführen des SQLite-Befehls für die clean-Operation: %v\n",
		"diffUsage":               "Verwendung: %s diff <database.db>\n",
		"errorDiff":               "Fehler beim Ausführen des SQLite-Befehls für die diff-Operation: %v\n",
		"errorSQLiteBinary":       "Fehler: SQLite-Programm '%s' wurde im PATH nicht gefunden oder existiert nicht\n",
		"flagShowVersion":         "Versionsinformationen anzeigen",
		"flagEnableLog":           "Logging in eine Datei im aktuellen Verzeichnis aktivieren",
		"flagLogDir":              "In das angegebene Verzeichnis statt in das aktuelle Verzeichnis loggen",
		"flagSQLite":              "Pfad zum SQLite-Programm",
		"flagHelp":                "Hilfe anzeigen",
		"flagFloatPrecision":      "Anzahl der Nachkommastellen für die Float-Normalisierung in INSERT-Anweisungen",
		"flagDataOnly":            "Für clean/diff: nur Daten ausgeben (INSERT-Anweisungen), kein Schema",
		"flagSchema":              ".gitsqliteschema für die Schema-/Datentrennung verwenden (funktioniert mit allen Operationen)",
		"flagSchemaFile":          "Angegebene Datei für die Schema-/Datentrennung verwenden (funktioniert mit allen Operationen)",
		"flagVerifyHash":          "Hash-Prüfung bei smudge erzwingen (schlägt fehl, wenn der Hash ungültig/fehlt; ohne dieses Flag wird nur der Prüfstatus geloggt)",
	},
}

func Current() Locale {
	for _, value := range []string{
		os.Getenv("LC_ALL"),
		os.Getenv("LC_MESSAGES"),
		os.Getenv("LANG"),
		os.Getenv("LANGUAGE"),
	} {
		if locale := localeFromValue(value); locale == German {
			return German
		}
		if value != "" {
			return English
		}
	}

	return English
}

func Text(key string, args ...any) string {
	locale := Current()
	if pattern, ok := catalog[locale][key]; ok {
		return fmt.Sprintf(pattern, args...)
	}
	if pattern, ok := catalog[English][key]; ok {
		return fmt.Sprintf(pattern, args...)
	}

	return key
}

func localeFromValue(value string) Locale {
	value = strings.TrimSpace(value)
	if value == "" {
		return English
	}

	if separator := strings.Index(value, ":"); separator >= 0 {
		value = value[:separator]
	}

	value = strings.ToLower(strings.ReplaceAll(value, "_", "-"))
	if value == "de" || strings.HasPrefix(value, "de-") {
		return German
	}

	return English
}
