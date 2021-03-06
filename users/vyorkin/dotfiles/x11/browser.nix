{config, pkgs, lib, ...}:

{
    home-manager.users.vyorkin = {
        programs.firefox = {
            enable = true;
            enableIcedTea = true;
        };
        home.file = {
            "wimpulation.json".text = ''
                {
                  "keyMapping": {
                    "suspend": "<C-[>",
                    "normal": {
                      ".": "repeatLastCommand",
                      "ю": "repeatLastCommand",
                      "<C-Z>": "toSuspendMode",
                      "<Esc>": "toNormalMode",
                      "<C-[>": "toNormalMode",
                      "f": "toHintMode",
                      "а": "toHintMode",
                      "F": "toHintFocusMode",
                      "А": "toHintFocusMode",
                      "t": "toHintMediaMode",
                      "е": "toHintMediaMode",
                      "T": "toHintCodeMode",
                      "Е": "toHintCodeMode",
                      "i": "toInsertMode",
                      "ш": "toInsertMode",
                      "I": "toInsertModeOnFirstElement",
                      "Ш": "toInsertModeOnFirstElement",
                      "A": "toInsertModeOnLastElement",
                      "Ф": "toInsertModeOnLastElement",
                      "v": "toVisualMode",
                      "м": "toVisualMode",
                      "V": "compose|selectElement|toVisualMode",
                      "М": "compose|selectElement|toVisualMode",
                      "<C-V>": "toCaretMode",
                      ":": "toConsoleMode",
                      "Ж": "toConsoleMode",
                      "s": "toConsoleMode|open",
                      "ы": "toConsoleMode|open",
                      "r": "toConsoleModeWithURL|open",
                      "к": "toConsoleModeWithURL|open",
                      "S": "toConsoleMode|tabopen",
                      "Ы": "toConsoleMode|tabopen",
                      "R": "toConsoleModeWithURL|tabopen",
                      "К": "toConsoleModeWithURL|tabopen",
                      "b": "toConsoleMode|buffer",
                      "и": "toConsoleMode|buffer",
                      "B": "toConsoleMode|winbuffer",
                      "И": "toConsoleMode|winbuffer",
                      "/": "toSearchMode",
                      ".": "toSearchMode",
                      "?": "toBackwardSearchMode",
                      ",": "toBackwardSearchMode",
                      "g<": "showLastMessage",
                      "пБ": "showLastMessage",
                      "<C-G>": "showPageInfo",
                      "<C-П>": "showPageInfo",
                      "g<C-G>": "showElementInfo",
                      "п<C-П>": "showElementInfo",
                      "o": "smartOpen",
                      "щ": "smartOpen",
                      "O": "smartOpenInTab",
                      "Щ": "smartOpenInTab",
                      "c": "compose|mousedown|mouseup|mouseclick",
                      "с": "compose|mousedown|mouseup|mouseclick",
                      "gf": "openSource",
                      "па": "openSource",
                      "wgf": "openSourceInTab",
                      "цпа": "openSourceInTab",
                      "e": "pressEnter",
                      "у": "pressEnter",
                      "gg": "scrollTop",
                      "пп": "scrollTop",
                      "G": "scrollBottom",
                      "П": "scrollBottom",
                      "M": "scrollVerticalMiddle",
                      "Ь": "scrollVerticalMiddle",
                      "gm": "scrollHorizontalMiddle",
                      "пь": "scrollHorizontalMiddle",
                      "^": "scrollHome",
                      ":": "scrollHome",
                      "$": "scrollEnd",
                      ";": "scrollEnd",
                      "k": "scrollUp",
                      "л": "scrollUp",
                      "j": "scrollDown",
                      "о": "scrollDown",
                      "h": "scrollLeft",
                      "р": "scrollLeft",
                      "l": "scrollRight",
                      "д": "scrollRight",
                      "<C-U>": "moveHalfPageUp",
                      "<C-Г>": "moveHalfPageUp",
                      "<C-D>": "moveHalfPageDown",
                      "<C-В>": "moveHalfPageDown",
                      "<C-B>": "movePageUp",
                      "<C-И>": "movePageUp",
                      "<C-F>": "movePageDown",
                      "<C-А>": "movePageDown",
                      "<C-Y>": "scrollLineUp",
                      "<C-Н>": "scrollLineUp",
                      "<C-E>": "scrollLineDown",
                      "<C-У>": "scrollLineDown",
                      "%": "scrollPercent",
                      "%": "scrollPercent",
                      "zt": "moveTargetAtTop",
                      "яе": "moveTargetAtTop",
                      "zz": "moveTargetAtCenter",
                      "яя": "moveTargetAtCenter",
                      "zb": "moveTargetAtBottom",
                      "яи": "moveTargetAtBottom",
                      "gj": "selectNextOption",
                      "по": "selectNextOption",
                      "gk": "selectPreviousOption",
                      "пл": "selectPreviousOption",
                      "g~": "toggleSelectOption",
                      "пЁ": "toggleSelectOption",
                      "n": "searchNext",
                      "т": "searchNext",
                      "N": "searchPrevious",
                      "Т": "searchPrevious",
                      "*": "searchSelectionForward",
                      "*": "searchSelectionForward",
                      "#": "searchSelectionBackward",
                      "№": "searchSelectionBackward",
                      "}": "findNextPage",
                      "Ъ": "findNextPage",
                      "{": "findPreviousPage",
                      "Х": "findPreviousPage",
                      ";": "focusNext",
                      "ж": "focusNext",
                      ",": "focusPrevious",
                      "б": "focusPrevious",
                      "_": "resetFocus",
                      "_": "resetFocus",
                      "g0": "firstTab",
                      "п0": "firstTab",
                      "g$": "lastTab",
                      "п;": "lastTab",
                      "gt": "nextTab",
                      "пе": "nextTab",
                      "gT": "previousTab",
                      "пЕ": "previousTab",
                      "J": "nextTab",
                      "О": "nextTab",
                      "K": "previousTab",
                      "Л": "previousTab",
                      "<C-^>": "lastActivatedTab",
                      "<C-:>": "lastActivatedTab",
                      "zp": "toggleTabPinning",
                      "яз": "toggleTabPinning",
                      "<": "moveTabToLeft",
                      "Б": "moveTabToLeft",
                      ">": "moveTabToRight",
                      "Ю": "moveTabToRight",
                      "==": "moveTabToNewWindow",
                      "==": "moveTabToNewWindow",
                      "w<": "moveTabToPreviousWindow",
                      "цБ": "moveTabToPreviousWindow",
                      "w>": "moveTabToNextWindow",
                      "цЮ": "moveTabToNextWindow",
                      "u": "undoCloseTab",
                      "г": "undoCloseTab",
                      "dd": "removeCurrentTab",
                      "вв": "removeCurrentTab",
                      "dw": "removeCurrentWindow",
                      "вц": "removeCurrentWindow",
                      "<C-C>": "stopLoad",
                      "<C-С>": "stopLoad",
                      "<C-L>": "reload",
                      "<C-Д>": "reload",
                      "g<C-L>": "reloadSkipCache",
                      "п<C-Д>": "reloadSkipCache",
                      "<C-O>": "back",
                      "<C-Щ>": "back",
                      "<C-I>": "forward",
                      "<C-Ш>": "forward",
                      "<C-A>": "incrementURL",
                      "<C-Ф>": "incrementURL",
                      "<C-X>": "decrementURL",
                      "<C-Ч>": "decrementURL",
                      "gu": "goToParent",
                      "пг": "goToParent",
                      "gU": "goToRoot",
                      "пГ": "goToRoot",
                      "zi": "zoomIn",
                      "яш": "zoomIn",
                      "zo": "zoomOut",
                      "ящ": "zoomOut",
                      "zr": "zoomReset",
                      "як": "zoomReset",
                      "z=": "killHover",
                      "я=": "killHover",
                      "yy": "yankCurrentURL",
                      "нн": "yankCurrentURL",
                      "yh": "yankPageHost",
                      "нр": "yankPageHost",
                      "yt": "yankPageTitle",
                      "не": "yankPageTitle",
                      "yit": "yankInnerHTML",
                      "нше": "yankInnerHTML",
                      "yat": "yankOuterHTML",
                      "нфе": "yankOuterHTML",
                      "ye": "yankInnerText",
                      "ну": "yankInnerText",
                      "yv": "yankSelection",
                      "нм": "yankSelection",
                      "Y": "smartYank",
                      "Н": "smartYank",
                      "ww": "focusNextFrame",
                      "цц": "focusNextFrame",
                      "wh": "focusPreviousFrame",
                      "цр": "focusPreviousFrame",
                      "wl": "focusNextFrame",
                      "цд": "focusNextFrame",
                      "wt": "focusTopFrame",
                      "це": "focusTopFrame",
                      "wH": "snapWindowToLeft",
                      "цР": "snapWindowToLeft",
                      "wL": "snapWindowToRight",
                      "цД": "snapWindowToRight",
                      "wK": "snapWindowToTop",
                      "цЛ": "snapWindowToTop",
                      "wJ": "snapWindowToBottom",
                      "цО": "snapWindowToBottom",
                      "wf": "openSourceInFrame",
                      "ца": "openSourceInFrame",
                      "w<C-I>": "forwardFrame",
                      "ц<C-Ш>": "forwardFrame",
                      "w<C-O>": "backFrame",
                      "ц<C-Щ>": "backFrame",
                      "w<C-C>": "stopLoadFrame",
                      "ц<C-С>": "stopLoadFrame",
                      "w<C-L>": "reloadFrame",
                      "ц<C-Д>": "reloadFrame",
                      "w<C-A>": "incrementFrameURL",
                      "ц<C-Ф>": "incrementFrameURL",
                      "w<C-X>": "decrementFrameURL",
                      "ц<C-Ч>": "decrementFrameURL",
                      "wyy": "yankFrameURL",
                      "цнн": "yankFrameURL",
                      "wyh": "yankFrameHost",
                      "цнр": "yankFrameHost",
                      "wyt": "yankFrameTitle",
                      "цне": "yankFrameTitle",
                      "w<C-G>": "showFrameInfo",
                      "ц<C-П>": "showFrameInfo",
                      "<Space><Space>": "playOrPause",
                      "<Space>j": "volumeDown",
                      "<Space>о": "volumeDown",
                      "<Space>k": "volumeUp",
                      "<Space>л": "volumeUp",
                      "<Space>h": "seekBack",
                      "<Space>р": "seekBack",
                      "<Space>l": "seekForward",
                      "<Space>д": "seekForward",
                      "<Space>+": "speedFaster",
                      "<Space>+": "speedFaster",
                      "<Space>-": "speedSlower",
                      "<Space>-": "speedSlower",
                      "<Space>0": "resetSpeed",
                      "<Space>0": "resetSpeed",
                      "<Space>m": "switchMute",
                      "<Space>ь": "switchMute",
                      "<Space>r": "switchLoop",
                      "<Space>к": "switchLoop",
                      "<Space><C-L>": "reloadVideo",
                      "<Space><C-Д>": "reloadVideo",
                      "<Space><C-G>": "showVideoInfo",
                      "<Space><C-П>": "showVideoInfo",
                      "<Tab>": "ignore",
                      "<S-Tab>": "ignore",
                      "<Enter>": "ignore",
                      "<C-Enter>": "ignore",
                      "<S-Enter>": "ignore",
                      "<A-Enter>": "ignore",
                      "<M-Enter>": "ignore",
                      "<Up>": "ignore",
                      "<Down>": "ignore",
                      "<Left>": "ignore",
                      "<Right>": "ignore",
                      "<PageUp>": "ignore",
                      "<PageDown>": "ignore",
                      "<Home>": "ignore",
                      "<End>": "ignore",
                      "<Ctrl-Right>": "nextTab",
                      "<Ctrl-Left>": "previousTab"
                    },
                    "insert": {
                      "<C-Z>": "toSuspendMode",
                      "<C-Я>": "toSuspendMode",
                      "<C-H>": "deleteCharBackward",
                      "<C-Р>": "deleteCharBackward",
                      "<C-O><C-H>": "deleteWordBackward",
                      "<C-Щ><C-Р>": "deleteWordBackward",
                      "<C-K>": "deleteToEndOfLine",
                      "<C-Л>": "deleteToEndOfLine",
                      "<C-U>": "deleteToBeginningOfLine",
                      "<C-Г>": "deleteToBeginningOfLine",
                      "<C-F>": "charNext",
                      "<C-А>": "charNext",
                      "<C-B>": "charPrevious",
                      "<C-И>": "charPrevious",
                      "<C-A>": "beginLine",
                      "<C-Ф>": "beginLine",
                      "<C-E>": "endLine",
                      "<C-У>": "endLine",
                      "<C-O>j": "nextLine",
                      "<C-Щ>о": "nextLine",
                      "<C-O><C-J>": "nextLine",
                      "<C-Щ><C-О>": "nextLine",
                      "<C-O>k": "previousLine",
                      "<C-Щ>л": "previousLine",
                      "<C-O><C-K>": "previousLine",
                      "<C-Щ><C-Л>": "previousLine",
                      "<C-O>u": "undo",
                      "<C-Щ>г": "undo",
                      "<C-O><C-U>": "undo",
                      "<C-Щ><C-Г>": "undo",
                      "<C-O>y": "yankValue",
                      "<C-Щ>н": "yankValue",
                      "<C-O><C-Y>": "yankValue",
                      "<C-Щ><C-Н>": "yankValue",
                      "<C-O>p": "pasteValue",
                      "<C-Щ>з": "pasteValue",
                      "<C-O><C-P>": "pasteValue",
                      "<C-Щ><C-З>": "pasteValue",
                      "<C-M>": "compose|pressEnter|toNormalMode",
                      "<C-Ь>": "compose|pressEnter|toNormalMode",
                      "<C-X><C-Y>": "scrollLineUp",
                      "<C-Ч><C-Н>": "scrollLineUp",
                      "<C-X><C-E>": "scrollLineDown",
                      "<C-Ч><C-У>": "scrollLineDown",
                      "<C-C>": "toNormalMode",
                      "<C-С>": "toNormalMode",
                      "<C-[>": "toNormalMode",
                      "<C-х>": "toNormalMode",
                      "<Esc>": "toNormalMode",
                      "<Tab>": "focusNextAndChangeMode",
                      "<S-Tab>": "focusPreviousAndChangeMode",
                      "<C-O><Tab>": "toInsertModeOnNextInput",
                      "<C-Щ><Tab>": "toInsertModeOnNextInput",
                      "<C-O><C-I>": "toInsertModeOnNextInput",
                      "<C-Щ><C-Ш>": "toInsertModeOnNextInput",
                      "<C-O><S-Tab>": "toInsertModeOnPreviousInput",
                      "<C-Щ><S-Tab>": "toInsertModeOnPreviousInput"
                    },
                    "visual": {
                      "h": "extendSelection|backward|character",
                      "р": "extendSelection|backward|character",
                      "l": "extendSelection|forward|character",
                      "д": "extendSelection|forward|character",
                      "b": "extendSelection|backward|word",
                      "и": "extendSelection|backward|word",
                      "w": "extendSelection|forward|word",
                      "ц": "extendSelection|forward|word",
                      "k": "extendSelection|backward|line",
                      "л": "extendSelection|backward|line",
                      "j": "extendSelection|forward|line",
                      "о": "extendSelection|forward|line",
                      "(": "extendSelection|backward|sentence",
                      ")": "extendSelection|forward|sentence",
                      "{": "extendSelection|backward|paragraph",
                      "Х": "extendSelection|backward|paragraph",
                      "}": "extendSelection|forward|paragraph",
                      "Ъ": "extendSelection|forward|paragraph",
                      "^": "extendSelection|backward|lineboundary",
                      ":": "extendSelection|backward|lineboundary",
                      "$": "extendSelection|forward|lineboundary",
                      ";": "extendSelection|forward|lineboundary",
                      "gg": "extendSelection|backward|documentboundary",
                      "пп": "extendSelection|backward|documentboundary",
                      "G": "extendSelection|forward|documentboundary",
                      "П": "extendSelection|forward|documentboundary",
                      "B": "extendSelection|backward|block",
                      "И": "extendSelection|backward|block",
                      "W": "extendSelection|forward|block",
                      "Ц": "extendSelection|forward|block",
                      "?": "extendSelection|backward|search",
                      ",": "extendSelection|backward|search",
                      "/": "extendSelection|forward|search",
                      ".": "extendSelection|forward|search",
                      "N": "extendSelection|backward|continueSearch",
                      "Т": "extendSelection|backward|continueSearch",
                      "n": "extendSelection|forward|continueSearch",
                      "т": "extendSelection|forward|continueSearch",
                      "_": "collapseSelectionToStart",
                      "_": "collapseSelectionToStart",
                      "y": "compose|yankSelection|toNormalMode",
                      "н": "compose|yankSelection|toNormalMode",
                      "*": "compose|searchSelectionForward|toNormalMode",
                      "*": "compose|searchSelectionForward|toNormalMode",
                      "#": "compose|searchSelectionBackward|toNormalMode",
                      "№": "compose|searchSelectionBackward|toNormalMode",
                      "d": "deleteSelection",
                      "в": "deleteSelection",
                      "<C-]>": "compose|viewSelectionSource|toNormalMode",
                      "<C-ъ>": "compose|viewSelectionSource|toNormalMode",
                      "o": "reverseSelectionEndpoints",
                      "щ": "reverseSelectionEndpoints",
                      "c": "compose|mousedown|mouseup|mouseclick",
                      "с": "compose|mousedown|mouseup|mouseclick",
                      "g<C-G>": "showElementInfo",
                      "п<C-П>": "showElementInfo",
                      "<C-U>": "moveHalfPageUp",
                      "<C-Г>": "moveHalfPageUp",
                      "<C-D>": "moveHalfPageDown",
                      "<C-В>": "moveHalfPageDown",
                      "<C-B>": "movePageUp",
                      "<C-И>": "movePageUp",
                      "<C-F>": "movePageDown",
                      "<C-А>": "movePageDown",
                      "<C-Y>": "scrollLineUp",
                      "<C-Н>": "scrollLineUp",
                      "<C-E>": "scrollLineDown",
                      "<C-У>": "scrollLineDown",
                      "zt": "moveTargetAtTop",
                      "яе": "moveTargetAtTop",
                      "zz": "moveTargetAtCenter",
                      "яя": "moveTargetAtCenter",
                      "zb": "moveTargetAtBottom",
                      "яи": "moveTargetAtBottom",
                      ":": "toConsoleModeWithSelection",
                      ":": "toConsoleModeWithSelection",
                      "s": "toConsoleModeWithSelection|open",
                      "ы": "toConsoleModeWithSelection|open",
                      "S": "toConsoleModeWithSelection|tabopen",
                      "Ы": "toConsoleModeWithSelection|tabopen",
                      "v": "toVisualMode",
                      "м": "toVisualMode",
                      "<C-V>": "toCaretMode",
                      "<C-М>": "toCaretMode",
                      "<C-[>": "toNormalMode",
                      "<C-х>": "toNormalMode",
                      "<C-C>": "toNormalMode",
                      "<C-С>": "toNormalMode",
                      "<Esc>": "toNormalMode"
                    },
                    "hint": {
                      "<C-L>": "reconstruct",
                      "<C-Д>": "reconstruct",
                      "<Tab>": "nextHint",
                      "<S-Tab>": "previousHint",
                      ";": "nextHint",
                      "ж": "nextHint",
                      ",": "previousHint",
                      "б": "previousHint",
                      "/": "startFilter",
                      ".": "startFilter",
                      "zz": "toggleOverlap",
                      "яя": "toggleOverlap",
                      "zf": "toggleAutoFocus",
                      "яа": "toggleAutoFocus",
                      "zi": "toggleTransparency",
                      "яш": "toggleTransparency",
                      "fi": "invokeCommand|0|focusin",
                      "аш": "invokeCommand|0|focusin",
                      "fI": "invokeCommand|0|compose|setTabIndex|focusin",
                      "аШ": "invokeCommand|0|compose|setTabIndex|focusin",
                      "fo": "invokeCommand|0|focusout",
                      "ащ": "invokeCommand|0|focusout",
                      "fO": "invokeCommand|0|compose|removeTabIndex|focusout",
                      "аЩ": "invokeCommand|0|compose|removeTabIndex|focusout",
                      "i": "invokeCommand|0|compose|mouseoutTo|mouseinTo|fixedFocusin|toInsertModeIfEditable",
                      "ш": "invokeCommand|0|compose|mouseoutTo|mouseinTo|fixedFocusin|toInsertModeIfEditable",
                      "_": "invokeCommand|0|compose|resetFocus|mouseoutFrom|mouseinFrom",
                      "_": "invokeCommand|0|compose|resetFocus|mouseoutFrom|mouseinFrom",
                      "c": "invokeCommand|0|compose|mousedown|mouseup|mouseclick",
                      "с": "invokeCommand|0|compose|mousedown|mouseup|mouseclick",
                      "mc": "invokeCommand|0|mouseclick",
                      "ьс": "invokeCommand|0|mouseclick",
                      "mC": "invokeCommand|2|mouseclick",
                      "ьС": "invokeCommand|2|mouseclick",
                      "m<C-C>": "invokeCommand|1|mouseclick",
                      "ь<C-С>": "invokeCommand|1|mouseclick",
                      "m<M-C>": "invokeCommand|8|mouseclick",
                      "ь<M-С>": "invokeCommand|8|mouseclick",
                      "md": "invokeCommand|0|mousedown",
                      "ьв": "invokeCommand|0|mousedown",
                      "mD": "invokeCommand|2|mousedown",
                      "ьВ": "invokeCommand|2|mousedown",
                      "m<C-D>": "invokeCommand|1|mousedown",
                      "ь<C-В>": "invokeCommand|1|mousedown",
                      "mu": "invokeCommand|0|mouseup",
                      "ьг": "invokeCommand|0|mouseup",
                      "mU": "invokeCommand|2|mouseup",
                      "ьГ": "invokeCommand|2|mouseup",
                      "m<C-U>": "invokeCommand|1|mouseup",
                      "ь<C-Г>": "invokeCommand|1|mouseup",
                      "mi": "invokeCommand|0|mouseinTo",
                      "ьш": "invokeCommand|0|mouseinTo",
                      "mI": "invokeCommand|0|mouseinFrom",
                      "ьШ": "invokeCommand|0|mouseinFrom",
                      "mo": "invokeCommand|0|mouseoutFrom",
                      "ьщ": "invokeCommand|0|mouseoutFrom",
                      "mO": "invokeCommand|0|mouseoutTo",
                      "ьЩ": "invokeCommand|0|mouseoutTo",
                      "mm": "invokeCommand|5|mousemove",
                      "ьь": "invokeCommand|5|mousemove",
                      "e": "invokeCommand|0|pressEnter",
                      "у": "invokeCommand|0|pressEnter",
                      "E": "invokeCommand|2|pressEnter",
                      "У": "invokeCommand|2|pressEnter",
                      "<C-E>": "invokeCommand|1|pressEnter",
                      "<C-У>": "invokeCommand|1|pressEnter",
                      "<M-E>": "invokeCommand|8|pressEnter",
                      "<M-У>": "invokeCommand|8|pressEnter",
                      "o": "invokeCommand|0|smartOpen",
                      "щ": "invokeCommand|0|smartOpen",
                      "O": "invokeCommand|0|smartOpenInTab",
                      "Щ": "invokeCommand|0|smartOpenInTab",
                      "gf": "invokeCommand|0|openSource",
                      "па": "invokeCommand|0|openSource",
                      "wgf": "invokeCommand|0|openSourceInTab",
                      "цпа": "invokeCommand|0|openSourceInTab",
                      "wf": "invokeCommand|0|openSourceInFrame",
                      "ца": "invokeCommand|0|openSourceInFrame",
                      "yy": "invokeCommand|0|yankLink",
                      "нн": "invokeCommand|0|yankLink",
                      "yit": "invokeCommand|0|yankInnerHTML",
                      "нше": "invokeCommand|0|yankInnerHTML",
                      "yat": "invokeCommand|0|yankOuterHTML",
                      "нфе": "invokeCommand|0|yankOuterHTML",
                      "ye": "invokeCommand|0|yankInnerText",
                      "ну": "invokeCommand|0|yankInnerText",
                      "Y": "invokeCommand|0|smartYank",
                      "Н": "invokeCommand|0|smartYank",
                      "s": "invokeCommand|0|downloadLink",
                      "ы": "invokeCommand|0|downloadLink",
                      "g<C-G>": "invokeCommand|0|showElementInfo",
                      "п<C-П>": "invokeCommand|0|showElementInfo",
                      "v": "invokeCommand|0|compose|setCaret|toVisualMode",
                      "м": "invokeCommand|0|compose|setCaret|toVisualMode",
                      "V": "invokeCommand|0|compose|selectElement|toVisualMode",
                      "М": "invokeCommand|0|compose|selectElement|toVisualMode",
                      "<C-V>": "invokeCommand|0|compose|setCaret|toCaretMode",
                      "<C-М>": "invokeCommand|0|compose|setCaret|toCaretMode",
                      "gj": "invokeCommand|0|selectNextOption",
                      "по": "invokeCommand|0|selectNextOption",
                      "gk": "invokeCommand|0|selectPreviousOption",
                      "пл": "invokeCommand|0|selectPreviousOption",
                      "dat": "invokeCommand|0|deleteElement",
                      "вфе": "invokeCommand|0|deleteElement",
                      "dit": "invokeCommand|0|deleteChildElements",
                      "вше": "invokeCommand|0|deleteChildElements",
                      ".": "invokeCommand|0|repeatLastCommand",
                      "ю": "invokeCommand|0|repeatLastCommand",
                      "<C-C>": "invokeCommand|0|toNormalMode",
                      "<C-С>": "invokeCommand|0|toNormalMode",
                      "<C-[>": "invokeCommand|0|toNormalMode",
                      "<C-х>": "invokeCommand|0|toNormalMode",
                      "<Esc>": "invokeCommand|0|toNormalMode"
                    },
                    "console": {
                      "<Enter>": "execute",
                      "<C-M>": "execute",
                      "<C-Ь>": "execute",
                      "<C-H>": "deleteCharBackward",
                      "<C-Р>": "deleteCharBackward",
                      "<C-O><C-H>": "deleteWordBackward",
                      "<C-Щ><C-Р>": "deleteWordBackward",
                      "<C-U>": "deleteToBeginningOfLine",
                      "<C-Г>": "deleteToBeginningOfLine",
                      "<C-K>": "deleteToEndOfLine",
                      "<C-Л>": "deleteToEndOfLine",
                      "<C-A>": "beginLine",
                      "<C-Ф>": "beginLine",
                      "<C-E>": "endLine",
                      "<C-У>": "endLine",
                      "<C-F>": "charNext",
                      "<C-А>": "charNext",
                      "<C-B>": "charPrevious",
                      "<C-И>": "charPrevious",
                      "<C-O>p": "pasteValue",
                      "<C-Щ>з": "pasteValue",
                      "<C-O><C-P>": "pasteValue",
                      "<C-Щ><C-З>": "pasteValue",
                      "<C-X><C-L>": "showHistoryList",
                      "<C-Ч><C-Д>": "showHistoryList",
                      "<C-I>": "getCandidate",
                      "<C-Ш>": "getCandidate",
                      "<Tab>": "selectNextHistoryOrCandidate",
                      "<S-Tab>": "selectPreviousHistoryOrCandidate",
                      "<Down>": "selectNextHistoryOrCandidate",
                      "<Up>": "selectPreviousHistoryOrCandidate",
                      "<C-C>": "closeConsoleMode",
                      "<C-С>": "closeConsoleMode",
                      "<Esc>": "closeConsoleMode",
                      "<C-[>": "closeConsoleMode",
                      "<C-х>": "closeConsoleMode"
                    }
                  },
                  "hintPattern": {
                    "global": {
                      "link": "*[onmousedown], *[onmouseup], *[onmouseover], *[onmouseout], *[onmousemove], *[onclick], *[oncommand], *[role='link'], *[role='button'], *[role='checkbox'], *[role='radio'], *[role='option'], *[role='menuitem'], *[role='menuitemcheckbox'], *[role='menuitemradio'], input:not([type='hidden']):not([disabled]):not([readonly]), *[contenteditable='true'], *[contenteditable=''''], a, button, select, textarea, area, summary, *[tabindex]:not([tabindex='-1'])",
                      "focus": "body *",
                      "media": "img, canvas, video, object, embed",
                      "code": "pre, code, textarea[readonly], h1, h2, h3, h4, h5, h6, p, tr"
                    },
                    "local": {
                      "twitter.com": {
                        "link": [
                          [
                            "div.new-tweets-bar.js-new-tweets-bar",
                            "Link to display new tweets"
                          ],
                          [
                            "div.dismiss.js-action-dismiss",
                            "Dismiss button of recommended users"
                          ],
                          [
                            "h1.Icon.Icon--bird.bird-topbar-etched",
                            "Twitter icon on topbar"
                          ]
                        ]
                      },
                      "ja.wikipedia.org": {
                        "link": [
                          [
                            "div.mw-ui-icon-popups-close",
                            "Button to close page preview configuration"
                          ]
                        ]
                      }
                    }
                  },
                  "searchEngine": {
                    "defaultEngine": "google",
                    "engines": {
                      "google": {
                        "searchUrl": "https://www.google.co.jp/search?q=%s&ie=utf-8&oe=utf-8&hl=ja",
                        "suggest": {
                          "url": "https://suggestqueries.google.com/complete/search?client=firefox&hl=ja&qu=%s",
                          "type": "json",
                          "path": "$[1]",
                          "decode": false
                        }
                      },
                      "twitter": {
                        "searchUrl": "https://twitter.com/search?q=%s"
                      }
                    }
                  },
                  "pagePattern": {
                    "next": "^\\s*((次の?ページへ?|次へ?|(next|newer)(\\s+\\w+)?)(\\s*(›|»|≫|>>?|→))?|»|›|≫|>>?|→)\\s*$",
                    "previous": "^\\s*(((‹|«|≪|<<?|←)\\s*)?(前の?ページへ?|前へ?|(prev(ious)?|older)(\\s+\\w+)?)|‹|«|≪|<<?|←)\\s*$"
                  },
                  "consoleDesign": {
                    "backgroundColor": "rgba(0, 0, 0, 0.6)",
                    "fontColor": "#ffffff",
                    "fontSize": "medium",
                    "informationColor": "#ffff00",
                    "selectedBackgroundColor": "#008080",
                    "selectedFontColor": "#ffffff",
                    "selectedInformationColor": "#ffff00",
                    "borderColor": "#b3b3b3"
                  },
                  "miscellaneous": {
                    "autoFocus": false,
                    "overlapHintLabels": true,
                    "autoKillHover": true,
                    "onlyVisibility": false,
                    "highlightSearch": true,
                    "overwriteErrorPage": false,
                    "activateNewTab": false,
                    "consoleAutocomplete": true
                  }
                }
            '';
            ".config/tridactyl/tridactylrc".text = ''
                " Move this to $XDG_CONFIG_DIR/tridactyl/tridactylrc (that's
                " ~/.config/tridactyl/tridactylrc to mere mortals) or ~/.tridactylrc and
                " install the native messenger (:installnative in Tridactyl). Run :source to
                " get it in the browser, or just restart.

                " NB: If you want "vim-like" behaviour where removing a line from
                " here makes the setting disappear, uncomment the line below.
                "sanitise tridactyllocal tridactylsync

                set storageloc local

                set historyresults 100

                colorscheme dark

                guiset_quiet gui none
                guiset_quiet tabs autohide
                guiset_quiet navbar autohide


                "
                " Binds
                "

                " Comment toggler for Reddit and Hacker News
                bind ;c hint -c [class*="expand"],[class="togg"]

                bind qnt composite js javascript:location.href="org-protocol:///capture?template=nt&url=" + encodeURIComponent(location.href) + "&title=" + encodeURIComponent(document.title) + "&body=" + encodeURIComponent(window.getSelection())
                bind qnc composite js javascript:location.href="org-protocol:///capture?template=nc&url=" + encodeURIComponent(location.href) + "&title=" + encodeURIComponent(document.title) + "&body=" + encodeURIComponent(window.getSelection())
                bind qet composite js javascript:location.href="org-protocol:///capture?template=et&url=" + encodeURIComponent(location.href) + "&title=" + encodeURIComponent(document.title) + "&body=" + encodeURIComponent(window.getSelection())
                bind qec composite js javascript:location.href="org-protocol:///capture?template=ec&url=" + encodeURIComponent(location.href) + "&title=" + encodeURIComponent(document.title) + "&body=" + encodeURIComponent(window.getSelection())
                bind qxt composite js javascript:location.href="org-protocol:///capture?template=xt&url=" + encodeURIComponent(location.href) + "&title=" + encodeURIComponent(document.title) + "&body=" + encodeURIComponent(window.getSelection())
                bind qxc composite js javascript:location.href="org-protocol:///capture?template=xc&url=" + encodeURIComponent(location.href) + "&title=" + encodeURIComponent(document.title) + "&body=" + encodeURIComponent(window.getSelection())
                bind qd composite js javascript:location.href="org-protocol:///capture?template=d&url=" + encodeURIComponent(location.href) + "&title=" + encodeURIComponent(document.title) + "&body=" + encodeURIComponent(window.getSelection())
                bind qjt composite js javascript:location.href="org-protocol:///capture?template=jt&url=" + encodeURIComponent(location.href) + "&title=" + encodeURIComponent(document.title) + "&body=" + encodeURIComponent(window.getSelection())
                bind qjc composite js javascript:location.href="org-protocol:///capture?template=jc&url=" + encodeURIComponent(location.href) + "&title=" + encodeURIComponent(document.title) + "&body=" + encodeURIComponent(window.getSelection())
                bind qjr composite js javascript:location.href="org-protocol:///capture?template=jr&url=" + encodeURIComponent(location.href) + "&title=" + encodeURIComponent(document.title) + "&body=" + encodeURIComponent(window.getSelection())
                bind qm composite js javascript:location.href="org-protocol:///capture?template=m&url=" + encodeURIComponent(location.href) + "&title=" + encodeURIComponent(document.title) + "&body=" + encodeURIComponent(window.getSelection())

                "
                " Misc settings
                "

                " set editorcmd to suckless terminal, or use the defaults on other platforms
                js tri.browserBg.runtime.getPlatformInfo().then(os=>{const editorcmd = os.os=="linux" ? "emacsclient" : "auto"; tri.config.set("editorcmd", editorcmd)})

                " Sane hinting mode
                set hintfiltermode vimperator-reflow
                set hintchars 4327895610
                set hintuppercase false
                set hintnames numeric

                set tabopenpos last

                set yankto both
                set putfrom clipboard

                " Make Tridactyl work on more sites at the expense of some security
                set csp clobber
                fixamo_quiet

                " Make quickmarks for the sane Tridactyl issue view
                quickmark T https://github.com/cmcaine/tridactyl/issues?utf8=%E2%9C%93&q=sort%3Aupdated-desc+
                quickmark t https://github.com/tridactyl/tridactyl

                "
                " URL redirects
                "

                " Map keys between layouts
                keymap ё `
                keymap й q
                keymap ц w
                keymap у e
                keymap к r
                keymap е t
                keymap н y
                keymap г u
                keymap ш i
                keymap щ o
                keymap з p
                keymap х [
                keymap ъ ]
                keymap ф a
                keymap ы s
                keymap в d
                keymap а f
                keymap п g
                keymap р h
                keymap о j
                keymap л k
                keymap д l
                keymap ж ;
                keymap э '
                keymap я z
                keymap ч x
                keymap с c
                keymap м v
                keymap и b
                keymap т n
                keymap ь m
                keymap б ,
                keymap ю .
                keymap Ё ~
                keymap Й Q
                keymap Ц W
                keymap У E
                keymap К R
                keymap Е T
                keymap Н Y
                keymap Г U
                keymap Ш I
                keymap Щ O
                keymap З P
                keymap Х {
                keymap Ъ }
                keymap Ф A
                keymap Ы S
                keymap В D
                keymap А F
                keymap П G
                keymap Р H
                keymap О J
                keymap Л K
                keymap Д L
                keymap Ж :
                keymap Э "
                keymap Я Z
                keymap Ч X
                keymap С C
                keymap М V
                keymap И B
                keymap Т N
                keymap Ь M
                keymap Б <
                keymap Ю >

                keymap <C-х> <C-[>
                keymap пш gi
                keymap пп gg
                keymap нн yy
                keymap нс yc

                keymap . /
            '';
        };
    };
}
