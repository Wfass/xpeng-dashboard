.class public Lcom/xiaopeng/xuiservice/mediacenter/Constants$LyricRequest;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LyricRequest"
.end annotation


# static fields
.field public static final KEY_QUERY_PARAMS_ARTIST:Ljava/lang/String; = "artistName"

.field public static final KEY_QUERY_PARAMS_SONG:Ljava/lang/String; = "songName"

.field public static final KEY_RESPONSE_ARTIST:Ljava/lang/String; = "singerName"

.field public static final KEY_RESPONSE_CODE:Ljava/lang/String; = "code"

.field public static final KEY_RESPONSE_DATA:Ljava/lang/String; = "data"

.field public static final KEY_RESPONSE_LYRIC_CONTENT:Ljava/lang/String; = "songLyric"

.field public static final KEY_RESPONSE_LYRIC_TYPE:Ljava/lang/String; = "lyricType"

.field public static final KEY_RESPONSE_SONG:Ljava/lang/String; = "songName"

.field public static final KEY_RESPONSE_STYLE:Ljava/lang/String; = "style"

.field public static final SECRET_OFFICIAL_MEDIA:Ljava/lang/String; = "dj5pyz4qpamfg9c1"

.field private static final TAG:Ljava/lang/String; = "LyricRequest"

.field public static final XP_BASE:Ljava/lang/String; = "https://xmart.xiaopeng.com/media"

.field public static final XP_MUSIC_BASE_V2:Ljava/lang/String; = "https://xmart.xiaopeng.com/media/v2"

.field public static final XP_MUSIC_BASE_V3:Ljava/lang/String; = "https://xmart.xiaopeng.com/media/v3"

.field public static final XP_MUSIC_MATCH:Ljava/lang/String; = "https://xmart.xiaopeng.com/media/v2/music/songs/get"

.field public static final XP_PRE_MUSIC_MATCH:Ljava/lang/String; = "https://xmart.deploy-test.xiaopeng.com/media/xui/qq/get"

.field public static final XP_RELEASE_MUSIC_MATCH:Ljava/lang/String; = "https://xmart.xiaopeng.com/media/xui/qq/get"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMusicMatchUri()Ljava/lang/String;
    .locals 4

    .line 103
    const-string v0, "https://xmart.deploy-test.xiaopeng.com/media/xui/qq/get"

    .line 104
    .local v0, "matchUri":Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "debug"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    const-string v0, "https://xmart.xiaopeng.com/media/xui/qq/get"

    .line 107
    :cond_0
    const-string v1, "LyricRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMusicMatchUri type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " &matchUri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-object v0
.end method
