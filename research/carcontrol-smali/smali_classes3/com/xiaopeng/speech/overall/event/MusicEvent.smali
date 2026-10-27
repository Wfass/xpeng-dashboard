.class public Lcom/xiaopeng/speech/overall/event/MusicEvent;
.super Ljava/lang/Object;
.source "MusicEvent.java"


# static fields
.field public static final AUDIO_BOOK_PLAY:Ljava/lang/String; = "command://music.audiobook.play"

.field public static final AUDIO_BOOK_SUBSCRIBE:Ljava/lang/String; = "command://music.audiobook.subscribe"

.field public static final CANCEL_COLLECT:Ljava/lang/String; = "command://music.control.collect.cancel"

.field public static final CANCEL_PLAY_SIMILAR:Ljava/lang/String; = "command://music.control.sim.cancel"

.field public static final CONTROL_COLLECT:Ljava/lang/String; = "command://music.control.collect"

.field public static final EVENTS:[Ljava/lang/String;

.field public static final MUSIC_BACKWARD:Ljava/lang/String; = "command://music.backward"

.field public static final MUSIC_DAILYREC_PLAY:Ljava/lang/String; = "command://music.dailyrec.play"

.field public static final MUSIC_FORWARD:Ljava/lang/String; = "command://music.forward"

.field public static final MUSIC_LIST_PLAY:Ljava/lang/String; = "command://music.list.play"

.field public static final MUSIC_NEWS_PLAY:Ljava/lang/String; = "command://music.news.play"

.field public static final MUSIC_SETTIME:Ljava/lang/String; = "command://music.settime"

.field public static final MUSIC_SPEED_DOWN:Ljava/lang/String; = "command://music.speed.down"

.field public static final MUSIC_SPEED_SET:Ljava/lang/String; = "command://music.speed.set"

.field public static final MUSIC_SPEED_UP:Ljava/lang/String; = "command://music.speed.up"

.field public static final NEXT:Ljava/lang/String; = "command://music.control.next"

.field public static final PAUSE:Ljava/lang/String; = "command://music.control.pause"

.field public static final PLAY:Ljava/lang/String; = "command://music.control.play"

.field public static final PLAY_BLUETOOTH:Ljava/lang/String; = "command://music.control.bluetooth.play.random"

.field public static final PLAY_COLLECT:Ljava/lang/String; = "command://music.control.collect.play"

.field public static final PLAY_HISTORY_LIST:Ljava/lang/String; = "command://music.control.playlist.history.play"

.field public static final PLAY_LOOP_ALL:Ljava/lang/String; = "command://music.control.loop.all"

.field public static final PLAY_LOOP_RANDOM:Ljava/lang/String; = "command://music.control.random"

.field public static final PLAY_LOOP_SINGLE:Ljava/lang/String; = "command://music.control.loop.single"

.field public static final PLAY_MODE_SUPPORT:Ljava/lang/String; = "native://music.playmode.support"

.field public static final PLAY_SIMILAR:Ljava/lang/String; = "command://music.control.sim"

.field public static final PLAY_USB:Ljava/lang/String; = "command://music.control.play.usb"

.field public static final PREV:Ljava/lang/String; = "command://music.control.prev"

.field public static final RESUME:Ljava/lang/String; = "command://music.control.resume"

.field public static final SEARCH:Ljava/lang/String; = "native://music.search"

.field public static final SOUND_EFFECT_LIVE:Ljava/lang/String; = "command://music.soundeffect.live"

.field public static final SOUND_EFFECT_STEREO:Ljava/lang/String; = "command://music.soundeffect.stereo"

.field public static final SOUND_EFFECT_SUPERBASS:Ljava/lang/String; = "command://music.soundeffect.superbass"

.field public static final SOUND_EFFECT_VOCAL:Ljava/lang/String; = "command://music.soundeffect.vocal"

.field public static final STOP:Ljava/lang/String; = "command://music.control.stop"

.field public static final TWELVE_NOVEL_PLAY:Ljava/lang/String; = "command://music.1212.novel.play"


# direct methods
.method static constructor <clinit>()V
    .locals 35

    const-string v0, "command://music.control.play"

    const-string v1, "command://music.control.bluetooth.play.random"

    const-string v2, "command://music.control.loop.single"

    const-string v3, "command://music.control.loop.all"

    const-string v4, "command://music.control.random"

    const-string v5, "native://music.search"

    const-string v6, "command://music.control.pause"

    const-string v7, "command://music.control.resume"

    const-string v8, "command://music.control.prev"

    const-string v9, "command://music.control.next"

    const-string v10, "command://music.control.stop"

    const-string v11, "native://music.playmode.support"

    const-string v12, "command://music.audiobook.play"

    const-string v13, "command://music.list.play"

    const-string v14, "command://music.1212.novel.play"

    const-string v15, "command://music.control.collect"

    const-string v16, "command://music.audiobook.subscribe"

    const-string v17, "command://music.soundeffect.stereo"

    const-string v18, "command://music.soundeffect.live"

    const-string v19, "command://music.soundeffect.vocal"

    const-string v20, "command://music.soundeffect.superbass"

    const-string v21, "command://music.control.collect.cancel"

    const-string v22, "command://music.control.collect.play"

    const-string v23, "command://music.control.sim"

    const-string v24, "command://music.control.sim.cancel"

    const-string v25, "command://music.control.playlist.history.play"

    const-string v26, "command://music.forward"

    const-string v27, "command://music.backward"

    const-string v28, "command://music.settime"

    const-string v29, "command://music.speed.up"

    const-string v30, "command://music.speed.down"

    const-string v31, "command://music.speed.set"

    const-string v32, "command://music.news.play"

    const-string v33, "command://music.dailyrec.play"

    const-string v34, "command://music.control.play.usb"

    .line 227
    filled-new-array/range {v0 .. v34}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/speech/overall/event/MusicEvent;->EVENTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
