#!/bin/bash

# duxt_html Release Script
# Usage: ./release.sh          (auto-bumps patch)
#        ./release.sh 1.1.0    (explicit version)

set -e

cd "$(dirname "$0")"

PACKAGE="duxt_html"

# Read current version from pubspec.yaml
CURRENT=$(grep '^version:' pubspec.yaml | sed 's/version: //')
echo ""
echo "  $PACKAGE"
echo "  Current version: $CURRENT"

if [ -n "$1" ]; then
  VERSION=$1
else
  MAJOR=$(echo "$CURRENT" | cut -d. -f1)
  MINOR=$(echo "$CURRENT" | cut -d. -f2)
  PATCH=$(echo "$CURRENT" | cut -d. -f3)
  PATCH=$((PATCH + 1))
  VERSION="$MAJOR.$MINOR.$PATCH"
fi

echo "  New version:     $VERSION"
echo ""

# Prompt for changelog entry
echo "  What changed?"
read -r -p "  > " CHANGELOG_MSG

if [ -z "$CHANGELOG_MSG" ]; then
  echo ""
  echo "  ✗ Changelog message required. Aborting."
  exit 1
fi

TODAY=$(date +%Y-%m-%d)

# Insert after header block (# Changelog + blank + description + blank + format line + semver line + blank = 7 lines)
{
  head -7 CHANGELOG.md
  echo ""
  echo "## [$VERSION] - $TODAY"
  echo ""
  echo "- $CHANGELOG_MSG"
  tail -n +8 CHANGELOG.md
} > CHANGELOG.tmp && mv CHANGELOG.tmp CHANGELOG.md
echo "  ✓ CHANGELOG.md"

# Update version in pubspec.yaml
sed -i '' "s/^version: .*/version: $VERSION/" pubspec.yaml
echo "  ✓ pubspec.yaml"

echo ""
echo "  Publishing to pub.dev..."
echo ""

dart pub publish --force

# Git commit, tag, push
git add -A
git commit -m "release: v$VERSION — $CHANGELOG_MSG"
git tag "v$VERSION"
git push && git push --tags
echo "  ✓ Tagged v$VERSION"

echo ""
echo "  ✓ Released $PACKAGE v$VERSION"
echo ""
