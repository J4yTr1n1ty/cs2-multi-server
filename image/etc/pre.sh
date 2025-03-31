#!/bin/bash

# PRE HOOK
CSS_VERSION=1.0.314
MATCHZY_VERSION=0.8.8

echo "Installing Metamod"
wget -qO /tmp/metamod.tar.gz https://mms.alliedmods.net/mmsdrop/2.0/mmsource-2.0.0-git1345-linux.tar.gz
tar -xzf /tmp/metamod.tar.gz -C "${STEAMAPPDIR}"/game/csgo/
rm -rf /tmp/metamod.tar.gz

# Edit gameinfo.gi to Search For Metamod
sed -i '/Game_LowViolence.*csgo_lv/ a\            Game    csgo/addons/metamod' "${STEAMAPPDIR}"/game/csgo/gameinfo.gi

echo "Installing CounterStrikeSharp ${CSS_VERSION}"
wget -qO /tmp/CounterStrikeSharp.zip https://github.com/roflmuffin/CounterStrikeSharp/releases/download/"${CSS_VERSION}"/counterstrikesharp-with-runtime-linux-"${CSS_VERSION}".zip
unzip -q /tmp/CounterStrikeSharp.zip -d /tmp/CounterStrikeSharp
cp -r /tmp/CounterStrikeSharp/* "${STEAMAPPDIR}"/game/csgo/.
rm -rf /tmp/CounterStrikeSharp*

echo "Installing MatchZy"
wget -q0 /tmp/matchzy.zip https://github.com/shobhit-pathak/MatchZy/releases/download/"${MATCHZY_VERSION}"/matchzy-"${MATCHZY_VERSION}".zip
unzip -q /tmp/matchzy.zip -d /tmp/MatchZy
cp -r /tmp/MatchZy/* "${STEAMAPPDIR}"/game/csgo/
rm -rf /tmp/MatchZy*

# Downoad custom MatchZy config
wget -qO "${STEAMAPPDIR}"/game/csgo/cfg/MatchZy/config.cfg https://raw.githubusercontent.com/J4yTr1n1ty/cs2-multi-server/refs/heads/main/MatchZy-cfg/config.cfg
