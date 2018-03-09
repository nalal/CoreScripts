Menus["default crafting origin"] = {
    text = "What would you like to craft?\n\
        White pillow - 1 per 2 folded cloth\
        Hammock pillow - 25 per 1 bolt of cloth\
        Guarskin drum - 1 per 3 guar hides",
    buttons = {
        { caption = "White pillow",
            destinations = {
                menuHelper.destinations.setDefault("lack of materials"),
                menuHelper.destinations.setConditional("default crafting pillow white",
                {
                    menuHelper.conditions.requireItem("misc_de_foldedcloth00", 2)
                })
            }
        },
        { caption = "Hammock pillow",
            destinations = {
                menuHelper.destinations.setDefault("lack of materials"),
                menuHelper.destinations.setConditional("default crafting pillow hammock",
                {
                    menuHelper.conditions.requireItem({"misc_clothbolt_01", "misc_clothbolt_02", "misc_clothbolt_03"}, 1)
                })
            }
        },
        { caption = "Guarskin drum",
            destinations = {
                menuHelper.destinations.setDefault("lack of materials"),
                menuHelper.destinations.setConditional("default crafting drum guarskin",
                {
                    menuHelper.conditions.requireItem("ingred_guar_hide_01", 3)
                })
            }
        },
        { caption = "Exit", destinations = nil }
    }
}
Menus["default crafting pillow white"] = {
    text = "How many would you like to craft?",
    buttons = {
        { caption = "1",
            destinations = {
                menuHelper.destinations.setDefault("lack of materials"),
                menuHelper.destinations.setConditional("reward generic singular",
                {
                    menuHelper.conditions.requireItem("misc_de_foldedcloth00", 2)
                },
                {
                    menuHelper.effects.removeItem("misc_de_foldedcloth00", 2),
                    menuHelper.effects.giveItem("misc_uni_pillow_01", 1)
                })
            }
        },
        { caption = "5",
            destinations = {
                menuHelper.destinations.setDefault("lack of materials"),
                menuHelper.destinations.setConditional("reward generic plural",
                {
                    menuHelper.conditions.requireItem("misc_de_foldedcloth00", 10)
                },
                {
                    menuHelper.effects.removeItem("misc_de_foldedcloth00", 10),
                    menuHelper.effects.giveItem("misc_uni_pillow_01", 5)
                })
            }
        },
        { caption = "Back", destinations = { menuHelper.destinations.setDefault("default crafting origin") } },
        { caption = "Exit", destinations = nil }
    }
}
Menus["default crafting pillow hammock"] = {
    text = "How many would you like to craft?",
    buttons = {
        { caption = "25",
            destinations = {
                menuHelper.destinations.setDefault("lack of materials"),
                menuHelper.destinations.setConditional("reward generic plural",
                {
                    menuHelper.conditions.requireItem({"misc_clothbolt_01", "misc_clothbolt_02", "misc_clothbolt_03"}, 1)

                },
                {
                    menuHelper.effects.removeItem({"misc_clothbolt_01", "misc_clothbolt_02", "misc_clothbolt_03"}, 1),
                    menuHelper.effects.giveItem("Misc_Uni_Pillow_02", 25)
                })
            }
        },
        { caption = "100",
            destinations = {
                menuHelper.destinations.setDefault("lack of materials"),
                menuHelper.destinations.setConditional("reward generic plural",
                {
                    menuHelper.conditions.requireItem({"misc_clothbolt_01", "misc_clothbolt_02", "misc_clothbolt_03"}, 4)
                },
                {
                    menuHelper.effects.removeItem({"misc_clothbolt_01", "misc_clothbolt_02", "misc_clothbolt_03"}, 4),
                    menuHelper.effects.giveItem("Misc_Uni_Pillow_02", 100)
                })
            }
        },
        { caption = "Back", destinations = { menuHelper.destinations.setDefault("default crafting origin") } },
        { caption = "Exit", destinations = nil }
    }
}
Menus["default crafting drum guarskin"] = {
    text = "How many would you like to craft?",
    buttons = {
        { caption = "1",
            destinations = {
                menuHelper.destinations.setDefault("lack of materials"),
                menuHelper.destinations.setConditional("reward generic singular",
                {
                    menuHelper.conditions.requireItem("ingred_guar_hide_01", 3)
                },
                {
                    menuHelper.effects.removeItem("ingred_guar_hide_01", 3),
                    menuHelper.effects.giveItem("misc_de_drum_02", 1)
                })
            }
        },
        { caption = "5",
            destinations = {
                menuHelper.destinations.setDefault("lack of materials"),
                menuHelper.destinations.setConditional("reward generic plural",
                {
                    menuHelper.conditions.requireItem("ingred_guar_hide_01", 15)
                },
                {
                    menuHelper.effects.removeItem("ingred_guar_hide_01", 15),
                    menuHelper.effects.giveItem("misc_de_drum_02", 5)
                })
            }
        },
        { caption = "Back", destinations = { menuHelper.destinations.setDefault("default crafting origin") } },
        { caption = "Exit", destinations = nil }
    }
}
Menus["lack of materials"] = {
    text = "You lack the materials required.",
    buttons = {
        { caption = "Back", destinations = { menuHelper.destinations.setFromCustomVariable("previousCustomMenu") } },
        { caption = "Ok", destinations = nil }
    }
}
Menus["reward generic singular"] = {
    text = "Congratulations! The item is now yours",
    buttons = {
        { caption = "Craft more", destinations = { menuHelper.destinations.setFromCustomVariable("previousCustomMenu") } },
        { caption = "Exit", destinations = nil }
    }
}
Menus["reward generic plural"] = {
    text = "Congratulations! The items are now yours",
    buttons = {
        { caption = "Craft more", destinations = { menuHelper.destinations.setFromCustomVariable("previousCustomMenu") } },
        { caption = "Exit", destinations = nil }
    }
}