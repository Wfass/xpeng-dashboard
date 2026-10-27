.class public Lcom/xiaopeng/musicradio/model/player/NetRadioPlayerWrapper;
.super Lbld;
.source "NetRadioPlayerWrapper.java"


# annotations
.annotation runtime Lcom/xiaopeng/speech/common/util/DontProguardClass;
.end annotation


# static fields
.field public static final MAX_COUNT:I = 0x8

.field private static final TAG:Ljava/lang/String; = "NetRadioPlayerWrapper"


# instance fields
.field mPolicy:Lbkx$a;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/player/l;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lbld;-><init>(Lcom/xiaopeng/musicradio/player/l;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/model/player/NetRadioPlayerWrapper;)Lcom/xiaopeng/musicradio/player/h;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/xiaopeng/musicradio/model/player/NetRadioPlayerWrapper;->mPlayer:Lcom/xiaopeng/musicradio/player/h;

    return-object p0
.end method


# virtual methods
.method protected createCache()Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .locals 4

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "NetRadioPlayerWrapper"

    const/16 v2, 0x20

    if-lt v0, v2, :cond_0

    .line 38
    sget-object v0, Lcom/xiaopeng/musicradio/player/PlayerService;->a:Landroid/content/Context;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createCache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    new-instance v1, Ljava/io/File;

    const-string v2, "xpmusic_netradio"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "netradio"

    .line 42
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/model/player/NetRadioPlayerWrapper;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createCache: sdcardPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    :goto_0
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    new-instance v2, Lcom/xiaopeng/musicradio/player/j;

    invoke-direct {v2}, Lcom/xiaopeng/musicradio/player/j;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;-><init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;)V

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setData(Landroid/os/Bundle;)V
    .locals 1

    .line 77
    invoke-super {p0, p1}, Lbld;->setData(Landroid/os/Bundle;)V

    .line 78
    new-instance v0, Lbkx;

    invoke-direct {v0}, Lbkx;-><init>()V

    invoke-virtual {v0, p1}, Lbkx;->a(Landroid/os/Bundle;)Lbkx$a;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/player/NetRadioPlayerWrapper;->mPolicy:Lbkx$a;

    return-void
.end method

.method public wrapCache(Ljava/lang/String;)Lcom/xiaopeng/musicradio/player/o;
    .locals 3

    .line 52
    new-instance v0, Lcom/xiaopeng/musicradio/player/o;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/player/o;-><init>()V

    .line 53
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/player/NetRadioPlayerWrapper;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/player/o;->a(Lcom/google/android/exoplayer2/upstream/cache/Cache;)V

    .line 54
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/player/NetRadioPlayerWrapper;->mPolicy:Lbkx$a;

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/player/NetRadioPlayerWrapper;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-static {v1, p1}, Lbla;->d(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)I

    move-result p1

    .line 56
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/player/NetRadioPlayerWrapper;->mPolicy:Lbkx$a;

    invoke-interface {v1}, Lbkx$a;->a()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "cache_old"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/player/NetRadioPlayerWrapper;->mPolicy:Lbkx$a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/player/o;->a(Lbkx$a;)V

    .line 60
    new-instance p1, Lcom/xiaopeng/musicradio/model/player/NetRadioPlayerWrapper$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/model/player/NetRadioPlayerWrapper$1;-><init>(Lcom/xiaopeng/musicradio/model/player/NetRadioPlayerWrapper;)V

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/player/o;->a(Lcom/xiaopeng/musicradio/player/o$a;)V

    return-object v0
.end method
