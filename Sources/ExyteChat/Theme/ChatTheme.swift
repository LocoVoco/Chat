//
//  ChatTheme.swift
//  
//
//  Created by Alisa Mylnikova on 31.01.2023.
//

import SwiftUI

struct ChatThemeKey: EnvironmentKey {
    static var defaultValue: ChatTheme = ChatTheme()
}

extension EnvironmentValues {
    var chatTheme: ChatTheme {
        get { self[ChatThemeKey.self] }
        set { self[ChatThemeKey.self] = newValue }
    }
}

public extension View {
    func chatTheme(_ theme: ChatTheme) -> some View {
        self.environment(\.chatTheme, theme)
    }

    func chatTheme(colors: ChatTheme.Colors = .init(),
                   images: ChatTheme.Images = .init()) -> some View {
        self.environment(\.chatTheme, ChatTheme(colors: colors, images: images))
    }
}

public struct ChatTheme {
    public let colors: ChatTheme.Colors
    public let images: ChatTheme.Images

    public init(colors: ChatTheme.Colors = .init(),
                images: ChatTheme.Images = .init()) {
        self.colors = colors
        self.images = images
    }

    public struct Colors {
        public var mainBG: Color
        public var mainTint: Color
        public var mainText: Color
        public var mainCaptionText: Color

        public var messageMyBG: Color
        public var messageMyText: Color
        public var messageMyTimeText: Color

        public var messageFriendBG: Color
        public var messageFriendText: Color
        public var messageFriendTimeText: Color

        public var inputBG: Color
        public var inputText: Color
        public var inputPlaceholderText: Color

        public var menuBG: Color
        public var menuText: Color
        public var menuTextDelete: Color

        public var statusError: Color
        public var statusGray: Color

        public var sendButtonBackground: Color
        public var recordDot: Color

        public init(
            mainBG: Color = Color("mainBG", bundle: .current),
            mainTint: Color = Color("inputPlaceholderText", bundle: .current),
            mainText: Color = Color("mainText", bundle: .current),
            mainCaptionText: Color = Color("mainCaptionText", bundle: .current),
            messageMyBG: Color = Color("messageMyBG", bundle: .current),
            messageMyText: Color = Color.white,
            messageMyTimeText: Color = Color("messageMyTimeText", bundle: .current),
            messageFriendBG: Color = Color("messageFriendBG", bundle: .current),
            messageFriendText: Color = Color("mainText", bundle: .current),
            messageFriendTimeText: Color = Color("messageFriendTimeText", bundle: .current),
            inputBG: Color = Color("inputBG", bundle: .current),
            inputText: Color = Color("mainText", bundle: .current),
            inputPlaceholderText: Color = Color("inputPlaceholderText", bundle: .current),
            menuBG: Color = Color("menuBG", bundle: .current),
            menuText: Color = Color("menuText", bundle: .current),
            menuTextDelete: Color = Color("menuTextDelete", bundle: .current),
            statusError: Color = Color("statusError", bundle: .current),
            statusGray: Color = Color("statusGray", bundle: .current),
            sendButtonBackground: Color = Color("messageMyBG", bundle: .current),
            recordDot: Color = Color("menuTextDelete", bundle: .current)
        ) {
            self.mainBG = mainBG
            self.mainTint = mainTint
            self.mainText = mainText
            self.mainCaptionText = mainCaptionText
            self.messageMyBG = messageMyBG
            self.messageMyText = messageMyText
            self.messageMyTimeText = messageMyTimeText
            self.messageFriendBG = messageFriendBG
            self.messageFriendText = messageFriendText
            self.messageFriendTimeText = messageFriendTimeText
            self.inputBG = inputBG
            self.inputText = inputText
            self.inputPlaceholderText = inputPlaceholderText
            self.menuBG = menuBG
            self.menuText = menuText
            self.menuTextDelete = menuTextDelete
            self.statusError = statusError
            self.statusGray = statusGray
            self.sendButtonBackground = sendButtonBackground
            self.recordDot = recordDot
        }
    }

    public struct Images {

        public struct AttachMenu {
            public var camera: Image
            public var contact: Image
            public var document: Image
            public var location: Image
            public var photo: Image
            public var pickDocument: Image
            public var pickLocation: Image
            public var pickPhoto: Image
        }

        public struct InputView {
            public var add: Image
            public var arrowSend: Image
            public var attach: Image
            public var attachCamera: Image
            public var microphone: Image
        }

        public struct FullscreenMedia {
            public var play: Image
            public var pause: Image
            public var mute: Image
            public var unmute: Image
        }

        public struct MediaPicker {
            public var chevronDown: Image
            public var chevronRight: Image
            public var cross: Image
        }

        public struct Message {
            public var attachedDocument: Image
            public var checkmarks: Image
            public var error: Image
            public var muteVideo: Image
            public var pauseAudio: Image
            public var pauseVideo: Image
            public var playAudio: Image
            public var playVideo: Image
            public var sending: Image
        }

        public struct MessageMenu {
            public var delete: Image
            public var edit: Image
            public var reply: Image
            public var forward: Image
            public var retry: Image
            public var copy: Image
            public var save: Image
            public var select: Image
        }

        public struct RecordAudio {
            public var cancelRecord: Image
            public var deleteRecord: Image
            public var lockRecord: Image
            public var pauseRecord: Image
            public var playRecord: Image
            public var sendRecord: Image
            public var stopRecord: Image
        }

        public struct Reply {
            public var cancelReply: Image
            public var replyToMessage: Image
        }

        public var backButton: Image
        public var scrollToBottom: Image

        public var attachMenu: AttachMenu
        public var inputView: InputView
        public var fullscreenMedia: FullscreenMedia
        public var mediaPicker: MediaPicker
        public var message: Message
        public var messageMenu: MessageMenu
        public var recordAudio: RecordAudio
        public var reply: Reply

        public init(
            camera: Image? = nil,
            contact: Image? = nil,
            document: Image? = nil,
            location: Image? = nil,
            photo: Image? = nil,
            pickDocument: Image? = nil,
            pickLocation: Image? = nil,
            pickPhoto: Image? = nil,
            add: Image? = nil,
            arrowSend: Image? = nil,
            attach: Image? = nil,
            attachCamera: Image? = nil,
            microphone: Image? = nil,
            fullscreenPlay: Image? = nil,
            fullscreenPause: Image? = nil,
            fullscreenMute: Image? = nil,
            fullscreenUnmute: Image? = nil,
            chevronDown: Image? = nil,
            chevronRight: Image? = nil,
            cross: Image? = nil,
            attachedDocument: Image? = nil,
            checkmarks: Image? = nil,
            error: Image? = nil,
            muteVideo: Image? = nil,
            pauseAudio: Image? = nil,
            pauseVideo: Image? = nil,
            playAudio: Image? = nil,
            playVideo: Image? = nil,
            sending: Image? = nil,
            delete: Image? = nil,
            edit: Image? = nil,
            forward: Image? = nil,
            retry: Image? = nil,
            save: Image? = nil,
            select: Image? = nil,
            cancelRecord: Image? = nil,
            deleteRecord: Image? = nil,
            lockRecord: Image? = nil,
            pauseRecord: Image? = nil,
            playRecord: Image? = nil,
            sendRecord: Image? = nil,
            stopRecord: Image? = nil,
            cancelReply: Image? = nil,
            replyToMessage: Image? = nil,
            backButton: Image? = nil,
            scrollToBottom: Image? = nil
        ) {
            self.backButton = backButton ?? Image("backArrow", bundle: .current)
            self.scrollToBottom = scrollToBottom ?? Image("scrollToBottom", bundle: .current)

            self.attachMenu = AttachMenu(
                camera: camera ?? Image("camera", bundle: .current),
                contact: contact ?? Image("contact", bundle: .current),
                document: document ?? Image("document", bundle: .current),
                location: location ?? Image("location", bundle: .current),
                photo: photo ?? Image("photo", bundle: .current),
                pickDocument: pickDocument ?? Image("pickDocument", bundle: .current),
                pickLocation: pickLocation ?? Image("pickLocation", bundle: .current),
                pickPhoto: pickPhoto ?? Image("pickPhoto", bundle: .current)
            )

            self.inputView = InputView(
                add: add ?? Image("add", bundle: .current),
                arrowSend: arrowSend ?? Image("arrowSend", bundle: .current),
                attach: attach ?? Image("attach", bundle: .current),
                attachCamera: attachCamera ?? Image("attachCamera", bundle: .current),
                microphone: microphone ?? Image("microphone", bundle: .current)
            )

            self.fullscreenMedia = FullscreenMedia(
                play: fullscreenPlay ?? Image(systemName: "play.fill"),
                pause: fullscreenPause ?? Image(systemName: "pause.fill"),
                mute: fullscreenMute ?? Image(systemName: "speaker.slash.fill"),
                unmute: fullscreenUnmute ?? Image(systemName: "speaker.fill")
            )

            self.mediaPicker = MediaPicker(
                chevronDown: chevronDown ?? Image("chevronDown", bundle: .current),
                chevronRight: chevronRight ?? Image("chevronRight", bundle: .current),
                cross: cross ?? Image("cross", bundle: .current)
            )

            self.message = Message(
                attachedDocument: attachedDocument ?? Image("attachedDocument", bundle: .current),
                checkmarks: checkmarks ?? Image("checkmarks", bundle: .current),
                error: error ?? Image("error", bundle: .current),
                muteVideo: muteVideo ?? Image("muteVideo", bundle: .current),
                pauseAudio: pauseAudio ?? Image("pauseAudio", bundle: .current),
                pauseVideo: pauseVideo ?? Image(systemName: "pause.circle.fill"),
                playAudio: playAudio ?? Image("playAudio", bundle: .current),
                playVideo: playVideo ?? Image(systemName: "play.circle.fill"),
                sending: sending ?? Image("sending", bundle: .current)
            )

            self.messageMenu = MessageMenu(
                delete: delete ?? Image("delete", bundle: .current),
                edit: edit ?? Image("edit", bundle: .current),
                reply: reply ?? Image("reply", bundle: .current),
                forward: forward ?? Image("forward", bundle: .current),
                retry: retry ?? Image("retry", bundle: .current),
                copy: copy ?? Image(systemName: "dov.on.doc"),
                save: save ?? Image("save", bundle: .current),
                select: select ?? Image("select", bundle: .current)
            )

            self.recordAudio = RecordAudio(
                cancelRecord: cancelRecord ?? Image("cancelRecord", bundle: .current),
                deleteRecord: deleteRecord ?? Image("deleteRecord", bundle: .current),
                lockRecord: lockRecord ?? Image("lockRecord", bundle: .current),
                pauseRecord: pauseRecord ?? Image("pauseRecord", bundle: .current),
                playRecord: playRecord ?? Image("playRecord", bundle: .current),
                sendRecord: sendRecord ?? Image("sendRecord", bundle: .current),
                stopRecord: stopRecord ?? Image("stopRecord", bundle: .current)
            )

            self.reply = Reply(
                cancelReply: cancelReply ?? Image("cancelReply", bundle: .current),
                replyToMessage: replyToMessage ?? Image("replyToMessage", bundle: .current)
            )
        }
    }
}

// MARK: Accent Color Theme, with default backgrounds

extension View {
    /// Creates and applies a `ChatTheme` to your `ChatView` based around the provided `accentColor`
    /// - Parameters:
    ///   - color: The main accent color of your `ChatView`
    public func chatTheme(accentColor: Color) -> some View {
        return self
            .chatTheme(ChatTheme(accentColor: accentColor))
    }
}

extension ChatTheme {
    internal init(accentColor: Color) {
        self.init(
            colors: .init(
                mainTint: accentColor,
                messageMyBG: accentColor,
                messageMyTimeText: Color.white.opacity(0.5),
                sendButtonBackground: accentColor
            ), images: .init(
                cross: Image(systemName: "xmark"),
                pauseRecord: Image(systemName: "pause.fill"),
                playRecord: Image(systemName: "play.fill"),
                cancelReply: Image(systemName: "x.circle"),
                replyToMessage: Image(systemName: "arrow.uturn.left"),
                scrollToBottom: Image(systemName: "chevron.down")
            )
        )
    }
}


// MARK: iOS 18+ Auto Themes Based on Accent Color

extension View {
    /// Creates and applies a `ChatTheme` to your `ChatView` based around the provided `color`
    /// - Parameters:
    ///   - color: The main color of your `ChatView`
    ///   - background: The background color / style of your `ChatView`. The default is to mix the provided `color` with the systems default backgrounds.
    ///   - improveContrast: Attempts to improve message contrast by nudging the `color` towards a more neutral luminance value (lightening / darkening) and altering mix ratios throughout the theme (defaults to `true`)
    ///
    /// - Note: If you're using a custom color and you want the exact color to come through, try disabling `improveContrast` but be sure the text is still legible.
    /// - Note: By default, this method mixes your theme `color` into the `ChatView`'s default background, if you don't want this behavior, you can set `background` to one of `.systemDefault`, or `.static(Color)`.
    @available(iOS 18.0, *)
    public func chatTheme(color ac: Color, background: ThemedBackgroundStyle = .mixedWithAccentColor(), improveContrast: Bool = true) -> some View {
        let accentColor:Color
        if improveContrast {
            let luminance = ac.luminance
            let mixinColor = luminance > 0.7 ? Color.black : Color.white
            let mixinAmount = abs(luminance - 0.5) * 0.4
            accentColor = improveContrast ? ac.mix(with: mixinColor, by: mixinAmount) : ac
        } else {
            accentColor = ac
        }
        return modifier(ThemedChatView(accentColor: accentColor, background: background, improveContrast: improveContrast))
    }
}

extension Color {
    var luminance:Double {
        var r:CGFloat = 0
        var g:CGFloat = 0
        var b:CGFloat = 0
        var a:CGFloat = 0
        UIColor(self).getRed(&r, green: &g, blue: &b, alpha: &a)
        /// https://en.wikipedia.org/wiki/Relative_luminance
        let luminance = 0.2126 * r + 0.7152 * g + 0.0722 * b
        return luminance
    }
}

extension ChatTheme {
    @available(iOS 18.0, *)
    internal init(accentColor: Color, background: ThemedBackgroundStyle = .mixedWithAccentColor(), improveContrast:Bool) {
        let backgroundColor:Color = background.getBackgroundColor(withAccent: accentColor, improveContrast: improveContrast)
        let friendMessageColor:Color = background.getFriendMessageColor(improveContrast: improveContrast)
        self.init(
            colors: .init(
                mainBG: backgroundColor,
                mainTint: accentColor,
                messageMyBG: accentColor,
                messageMyText: Color.white,
                messageMyTimeText: Color.white.opacity(0.5),
                messageFriendBG: friendMessageColor,
                inputBG: friendMessageColor,
                menuBG: backgroundColor,
                sendButtonBackground: accentColor
            ), images: .init(
                cross: Image(systemName: "xmark"),
                pauseRecord: Image(systemName: "pause.fill"),
                playRecord: Image(systemName: "play.fill"),
                cancelReply: Image(systemName: "x.circle"),
                replyToMessage: Image(systemName: "arrow.uturn.left"),
                scrollToBottom: Image(systemName: "chevron.down")
            )
        )
    }
}

@available(iOS 18.0, *)
public enum ThemedBackgroundStyle {
    /// The default system background color
    case systemDefault
    /// A static background color across both light and dark mode
    case `static`(Color)
    /// The default system background tinted with the accent color (defaults to a value of 0.2)
    case mixedWithAccentColor(byAmount:Double = 0.2)
    
    fileprivate func getBackgroundColor(withAccent accentColor:Color, improveContrast:Bool) -> Color {
        switch self {
        case .systemDefault:
            return Color(UIColor.systemBackground)
        case .static(let color):
            return color
        case .mixedWithAccentColor(let amount):
            return Color(UIColor.systemBackground)
                .mix(with: Color(UIColor.secondarySystemBackground), by: improveContrast ? 0.85 : 0.0)
                .mix(with: accentColor, by: amount)
        }
    }
    
    fileprivate func getFriendMessageColor(improveContrast:Bool) -> Color {
        switch self {
        case .systemDefault:
            return Color(UIColor.secondarySystemBackground)
        case .static:
            return Color(UIColor.secondarySystemBackground)
        case .mixedWithAccentColor:
            if improveContrast {
                return Color(UIColor.systemBackground).opacity(0.8)
            } else {
                return Color(UIColor.secondarySystemBackground).opacity(0.8)
            }
        }
    }
}

@available(iOS 18.0, *)
internal struct ThemedChatView: ViewModifier {
    var accentColor:Color
    var background:ThemedBackgroundStyle
    var improveContrast:Bool
    
    func body(content: Content) -> some View {
        let backgroundColor = background.getBackgroundColor(withAccent: accentColor, improveContrast: improveContrast)
        return content
            .chatTheme(ChatTheme(accentColor: accentColor, background: background, improveContrast: improveContrast))
            .mediaPickerTheme(
                .init(
                    main: .init(
                        text: .primary,
                        albumSelectionBackground: backgroundColor,
                        fullscreenPhotoBackground: backgroundColor,
                        cameraBackground: backgroundColor,
                        cameraSelectionBackground: backgroundColor
                    ),
                    selection: .init(
                        selectedTint: accentColor,
                        fullscreenTint: accentColor
                    )
                )
            )
    }
}
