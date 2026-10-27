.class public Lcom/xiaopeng/musicradio/model/player/MusicPlayerWrapper;
.super Lbld;
.source "MusicPlayerWrapper.java"


# annotations
.annotation runtime Lcom/xiaopeng/speech/common/util/DontProguardClass;
.end annotation


# static fields
.field public static final MAX_COUNT:J = 0xa00000L

.field private static final TAG:Ljava/lang/String; = "MusicPlayerWrapper"


# instance fields
.field private mEvictor:Lcom/xiaopeng/musicradio/player/f;

.field private mPolicy:Lbkx$a;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/player/l;)V
    .locals 1

    const/4 v0, 0x1

    .line 36
    invoke-direct {p0, p1, v0}, Lbld;-><init>(Lcom/xiaopeng/musicradio/player/l;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/model/player/MusicPlayerWrapper;)Lcom/xiaopeng/musicradio/player/h;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/xiaopeng/musicradio/model/player/MusicPlayerWrapper;->mPlayer:Lcom/xiaopeng/musicradio/player/h;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/model/player/MusicPlayerWrapper;)Lcom/xiaopeng/musicradio/player/h;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/xiaopeng/musicradio/model/player/MusicPlayerWrapper;->mPlayer:Lcom/xiaopeng/musicradio/player/h;

    return-object p0
.end method


# virtual methods
.method protected createCache()Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .locals 4

    .line 41
    new-instance v0, Lcom/xiaopeng/musicradio/player/f;

    const-wide/32 v1, 0xa00000

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/player/f;-><init>(J)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/player/MusicPlayerWrapper;->mEvictor:Lcom/xiaopeng/musicradio/player/f;

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "MusicPlayerWrapper"

    const/16 v2, 0x20

    if-lt v0, v2, :cond_0

    .line 44
    sget-object v0, Lcom/xiaopeng/musicradio/player/PlayerService;->a:Landroid/content/Context;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 45
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

    .line 46
    new-instance v1, Ljava/io/File;

    const-string v2, "xpmusic_music"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "music"

    .line 48
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/model/player/MusicPlayerWrapper;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createCache: sdcardPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    :goto_0
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/player/MusicPlayerWrapper;->mEvictor:Lcom/xiaopeng/musicradio/player/f;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;-><init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;)V

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public playState(Ljava/lang/String;I)V
    .locals 1

    .line 58
    invoke-super {p0, p1, p2}, Lbld;->playState(Ljava/lang/String;I)V

    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "playState: state = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MusicPlayerWrapper"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    .line 60
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/player/MusicPlayerWrapper;->mEvictor:Lcom/xiaopeng/musicradio/player/f;

    if-eqz p1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/player/MusicPlayerWrapper;->mPlayer:Lcom/xiaopeng/musicradio/player/h;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/player/h;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/player/MusicPlayerWrapper;->mEvictor:Lcom/xiaopeng/musicradio/player/f;

    iget-object p2, p0, Lcom/xiaopeng/musicradio/model/player/MusicPlayerWrapper;->mPlayer:Lcom/xiaopeng/musicradio/player/h;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/player/h;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/player/f;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setData(Landroid/os/Bundle;)V
    .locals 1

    .line 97
    invoke-super {p0, p1}, Lbld;->setData(Landroid/os/Bundle;)V

    .line 98
    new-instance v0, Lbkx;

    invoke-direct {v0}, Lbkx;-><init>()V

    invoke-virtual {v0, p1}, Lbkx;->a(Landroid/os/Bundle;)Lbkx$a;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/player/MusicPlayerWrapper;->mPolicy:Lbkx$a;

    return-void
.end method

.method public wrapCache(Ljava/lang/String;)Lcom/xiaopeng/musicradio/player/o;
    .locals 3

    .line 71
    new-instance v0, Lcom/xiaopeng/musicradio/player/o;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/player/o;-><init>()V

    .line 72
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/player/MusicPlayerWrapper;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/player/o;->a(Lcom/google/android/exoplayer2/upstream/cache/Cache;)V

    .line 73
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/player/MusicPlayerWrapper;->mPolicy:Lbkx$a;

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/player/MusicPlayerWrapper;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-static {v1, p1}, Lbla;->d(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)I

    move-result p1

    .line 75
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/player/MusicPlayerWrapper;->mPolicy:Lbkx$a;

    invoke-interface {v1}, Lbkx$a;->a()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "cache_old"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/player/MusicPlayerWrapper;->mPolicy:Lbkx$a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/player/o;->a(Lbkx$a;)V

    .line 79
    new-instance p1, Lcom/xiaopeng/musicradio/model/player/MusicPlayerWrapper$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/model/player/MusicPlayerWrapper$1;-><init>(Lcom/xiaopeng/musicradio/model/player/MusicPlayerWrapper;)V

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/player/o;->a(Lcom/xiaopeng/musicradio/player/o$a;)V

    return-object v0
.end method
