# Event handlers

Every file in this folder should first call `_/revoke_advancement` with the name of the advancement.

Filenames should match the events in [`advancement@dputils:event`](/data/dputils/advancement/event) and [`tags/function@dputils:event`](/data/dputils/tags/function/event)

## Callbacks
The advancements mentioned above should call a function in [`./callback`](/data/dputils/function/event/callback), which should consist of running the relevant tag. The tag calls the function in this folder that is responsible for removing the advancement.

## Advancements
Advancements to trigger events should be located in [`advancement@dputils:event`](/data/dputils/advancement/event). In the case Minecraft does not have the right advancement criteria (i.e. on_death), it can be triggered from the [`function@dputils:main`](/data/dputils/function/main) folder.
