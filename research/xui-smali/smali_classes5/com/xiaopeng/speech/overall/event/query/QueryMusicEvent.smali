.class public Lcom/xiaopeng/speech/overall/event/query/QueryMusicEvent;
.super Ljava/lang/Object;
.source "QueryMusicEvent.java"


# static fields
.field public static final GET_INFO_ALBUM:Ljava/lang/String; = "music.info.query.album"

.field public static final GET_INFO_ARTIST:Ljava/lang/String; = "music.info.query.artist"

.field public static final GET_INFO_QUERY:Ljava/lang/String; = "music.info.query"

.field public static final GET_INFO_TITLE:Ljava/lang/String; = "music.info.query.title"

.field public static final GET_MUSIC_PLAYTYPE:Ljava/lang/String; = "music.playtype"

.field public static final IS_BT_CONNECTED:Ljava/lang/String; = "music.is.bt.connected"

.field public static final IS_CAN_COLLECTED:Ljava/lang/String; = "music.is.can.collected"

.field public static final IS_COLLECT_EMPTY:Ljava/lang/String; = "music.is.collect.empty"

.field public static final IS_HAS_BLUETOOTH_MUSICLIST:Ljava/lang/String; = "music.has.bluetooth.musiclist"

.field public static final IS_HISTORY_EMPTY:Ljava/lang/String; = "music.is.history.empty"

.field public static final IS_KUGOU_AUTHED:Ljava/lang/String; = "music.is.kugou.authed"

.field public static final IS_PLAYING:Ljava/lang/String; = "music.is.playing"

.field public static final IS_PLAY_SIMILAR:Ljava/lang/String; = "music.is.play.similar"

.field public static final MUSIC_GET_USB_STATE:Ljava/lang/String; = "music.get.usb.state"

.field public static final QUERYS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 165
    const-string v0, "music.info.query"

    const-string v1, "music.info.query.title"

    const-string v2, "music.info.query.artist"

    const-string v3, "music.info.query.album"

    const-string v4, "music.playtype"

    const-string v5, "music.is.playing"

    const-string v6, "music.has.bluetooth.musiclist"

    const-string v7, "music.is.history.empty"

    const-string v8, "music.is.collect.empty"

    const-string v9, "music.is.can.collected"

    const-string v10, "music.is.play.similar"

    const-string v11, "music.is.bt.connected"

    const-string v12, "music.is.kugou.authed"

    const-string v13, "music.get.usb.state"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/speech/overall/event/query/QueryMusicEvent;->QUERYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
