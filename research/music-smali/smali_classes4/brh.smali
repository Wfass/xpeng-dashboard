.class public Lbrh;
.super Ljava/lang/Object;
.source "MusicRetriever.java"

# interfaces
.implements Lbrj$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbrh$a;
    }
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/player/i;

.field private b:Lbrh$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/xiaopeng/musicradio/player/i;->a()Lcom/xiaopeng/musicradio/player/i;

    move-result-object v0

    iput-object v0, p0, Lbrh;->a:Lcom/xiaopeng/musicradio/player/i;

    return-void
.end method

.method static synthetic a(Lbrh;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lbrh;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;
    .locals 9

    .line 52
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;-><init>()V

    .line 53
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->setId(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->setPath(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    move v3, p1

    move-object v2, v1

    move v1, v3

    .line 58
    :goto_0
    iget v4, p2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v1, v4, :cond_4

    .line 60
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v4

    move v5, v3

    move-object v3, v2

    move v2, p1

    .line 61
    :goto_1
    iget v6, v4, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    const/4 v7, 0x1

    if-ge v2, v6, :cond_2

    .line 62
    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v8, "audio"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 63
    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    move v5, v7

    goto :goto_2

    .line 65
    :cond_0
    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v8, "video"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, p1

    goto :goto_3

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v7, p1

    :goto_3
    if-eqz v7, :cond_3

    move-object v2, v3

    move v3, v5

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    move-object v2, v3

    move v3, v5

    goto :goto_0

    .line 75
    :cond_4
    :goto_4
    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->setAudio(Z)V

    if-eqz v2, :cond_8

    .line 76
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result p2

    if-lez p2, :cond_8

    .line 77
    :goto_5
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result p2

    if-ge p1, p2, :cond_8

    .line 78
    new-instance p2, Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;-><init>()V

    .line 79
    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/google/android/exoplayer2/metadata/Metadata$Entry;->populateMediaMetadata(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)V

    .line 80
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->build()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object p2

    .line 81
    iget-object v1, p2, Lcom/google/android/exoplayer2/MediaMetadata;->title:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p2, Lcom/google/android/exoplayer2/MediaMetadata;->title:Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/by;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 82
    iget-object v1, p2, Lcom/google/android/exoplayer2/MediaMetadata;->title:Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->setSong(Ljava/lang/String;)V

    .line 84
    :cond_5
    iget-object v1, p2, Lcom/google/android/exoplayer2/MediaMetadata;->artist:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p2, Lcom/google/android/exoplayer2/MediaMetadata;->artist:Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/by;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 85
    iget-object v1, p2, Lcom/google/android/exoplayer2/MediaMetadata;->artist:Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->setSinger(Ljava/lang/String;)V

    .line 87
    :cond_6
    iget-object v1, p2, Lcom/google/android/exoplayer2/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p2, Lcom/google/android/exoplayer2/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/by;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 88
    iget-object p2, p2, Lcom/google/android/exoplayer2/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->setAlbumTitle(Ljava/lang/String;)V

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_8
    return-object v0
.end method

.method static synthetic a(Lbrh;)Lcom/xiaopeng/musicradio/player/i;
    .locals 0

    .line 20
    iget-object p0, p0, Lbrh;->a:Lcom/xiaopeng/musicradio/player/i;

    return-object p0
.end method

.method static synthetic b(Lbrh;)Lbrh$a;
    .locals 0

    .line 20
    iget-object p0, p0, Lbrh;->b:Lbrh$a;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lbrh;->b:Lbrh$a;

    .line 133
    iget-object v1, p0, Lbrh;->a:Lcom/xiaopeng/musicradio/player/i;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/player/i;->a(Lcom/xiaopeng/musicradio/player/i$b;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lbrh$a;)V
    .locals 2

    .line 96
    iput-object p2, p0, Lbrh;->b:Lbrh$a;

    .line 97
    iget-object v0, p0, Lbrh;->a:Lcom/xiaopeng/musicradio/player/i;

    new-instance v1, Lbrh$2;

    invoke-direct {v1, p0, p1, p2}, Lbrh$2;-><init>(Lbrh;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lbrh$a;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/player/i;->a(Lcom/xiaopeng/musicradio/player/i$b;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/google/android/exoplayer2/MediaItem;)V
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "retrieveMetadata1 uri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicRetriever"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v0, p0, Lbrh;->a:Lcom/xiaopeng/musicradio/player/i;

    new-instance v1, Lbrh$1;

    invoke-direct {v1, p0, p1, p2}, Lbrh$1;-><init>(Lbrh;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/google/android/exoplayer2/MediaItem;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/player/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "MusicRetriever"

    const-string v1, "destroy: ======="

    .line 137
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lbrh;->a:Lcom/xiaopeng/musicradio/player/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/player/i;->b()V

    return-void
.end method
