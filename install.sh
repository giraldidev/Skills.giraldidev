#!/usr/bin/env bash
# Instala as skills deste repositório globalmente em ~/.claude/skills,
# tornando-as disponíveis em QUALQUER projeto do Claude Code.
#
# Uso:
#   ./install.sh            # instala todas as skills
#   ./install.sh nome       # instala apenas uma skill (ex.: ./install.sh ui-ux-pro-max)

set -euo pipefail

# Diretório deste script (raiz do repo)
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC="$ROOT/.claude/skills"
DEST="$HOME/.claude/skills"

if [ ! -d "$SRC" ]; then
  echo "❌ Pasta de skills não encontrada em $SRC"
  exit 1
fi

mkdir -p "$DEST"

install_one() {
  local name="$1"
  if [ ! -d "$SRC/$name" ]; then
    echo "⚠️  Skill '$name' não existe em $SRC — pulando."
    return
  fi
  rm -rf "$DEST/$name"
  cp -r "$SRC/$name" "$DEST/$name"
  echo "✅ Instalada: $name"
}

if [ "$#" -ge 1 ]; then
  install_one "$1"
else
  for dir in "$SRC"/*/; do
    install_one "$(basename "$dir")"
  done
fi

echo ""
echo "🎉 Pronto! Skills instaladas em: $DEST"
echo "   Abra qualquer projeto com o Claude Code e digite / para vê-las."
