package messages

import "testing"

func TestCurrentDefaultsToEnglish(t *testing.T) {
	t.Setenv("LC_ALL", "")
	t.Setenv("LC_MESSAGES", "")
	t.Setenv("LANG", "")
	t.Setenv("LANGUAGE", "")

	if got := Current(); got != English {
		t.Fatalf("Current() = %q, want %q", got, English)
	}
}

func TestCurrentDetectsGerman(t *testing.T) {
	t.Setenv("LC_ALL", "")
	t.Setenv("LC_MESSAGES", "")
	t.Setenv("LANG", "de_DE.UTF-8")
	t.Setenv("LANGUAGE", "")

	if got := Current(); got != German {
		t.Fatalf("Current() = %q, want %q", got, German)
	}
}

func TestCurrentHonorsLocalePrecedence(t *testing.T) {
	t.Setenv("LC_ALL", "en_US.UTF-8")
	t.Setenv("LC_MESSAGES", "")
	t.Setenv("LANG", "de_DE.UTF-8")
	t.Setenv("LANGUAGE", "de:en")

	if got := Current(); got != English {
		t.Fatalf("Current() = %q, want %q", got, English)
	}
}

func TestTextReturnsGermanMessage(t *testing.T) {
	t.Setenv("LC_ALL", "")
	t.Setenv("LC_MESSAGES", "")
	t.Setenv("LANG", "")
	t.Setenv("LANGUAGE", "de:en")

	got := Text("usageHeader", "gitsqlite")
	want := "Verwendung: gitsqlite [Optionen] <Operation>\n\n"
	if got != want {
		t.Fatalf("Text() = %q, want %q", got, want)
	}
}

func TestTextDefaultsToEnglish(t *testing.T) {
	t.Setenv("LC_ALL", "")
	t.Setenv("LC_MESSAGES", "")
	t.Setenv("LANG", "")
	t.Setenv("LANGUAGE", "")

	got := Text("usageHeader", "gitsqlite")
	want := "Usage: gitsqlite [options] <operation>\n\n"
	if got != want {
		t.Fatalf("Text() = %q, want %q", got, want)
	}
}

func TestTextFallsBackToEnglishCatalog(t *testing.T) {
	t.Setenv("LC_ALL", "")
	t.Setenv("LC_MESSAGES", "")
	t.Setenv("LANG", "de_DE.UTF-8")
	t.Setenv("LANGUAGE", "")

	catalog[English]["englishOnlyTestKey"] = "English only %s"
	defer delete(catalog[English], "englishOnlyTestKey")

	got := Text("englishOnlyTestKey", "message")
	want := "English only message"
	if got != want {
		t.Fatalf("Text() = %q, want %q", got, want)
	}
}

func TestTextReturnsKeyWhenMissingEverywhere(t *testing.T) {
	t.Setenv("LC_ALL", "")
	t.Setenv("LC_MESSAGES", "")
	t.Setenv("LANG", "de_DE.UTF-8")
	t.Setenv("LANGUAGE", "")

	got := Text("missingMessageKey")
	want := "missingMessageKey"
	if got != want {
		t.Fatalf("Text() = %q, want %q", got, want)
	}
}
