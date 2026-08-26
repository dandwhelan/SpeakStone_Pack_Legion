local addonName = ...

-- QuestReaderAddon_RegisterSoundPack is defined at the top of
-- the base addon's QuestReaderAddon.lua. If this pack loads
-- first, that global does not exist yet -- queue instead, and
-- the base addon drains the queue itself once it loads.
if QuestReaderAddon_RegisterSoundPack then
    QuestReaderAddon_RegisterSoundPack(addonName, QuestReaderSoundLengths_Pack_Legion)
else
    QuestReaderPendingSoundPacks = QuestReaderPendingSoundPacks or {}
    table.insert(QuestReaderPendingSoundPacks,
        { name = addonName, index = QuestReaderSoundLengths_Pack_Legion })
end
