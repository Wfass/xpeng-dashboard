.class Lbrh$1;
.super Ljava/lang/Object;
.source "MusicRetriever.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbrh;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/google/android/exoplayer2/MediaItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

.field final synthetic b:Lcom/google/android/exoplayer2/MediaItem;

.field final synthetic c:Lbrh;


# direct methods
.method constructor <init>(Lbrh;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/google/android/exoplayer2/MediaItem;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lbrh$1;->c:Lbrh;

    iput-object p2, p0, Lbrh$1;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    iput-object p3, p0, Lbrh$1;->b:Lcom/google/android/exoplayer2/MediaItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 37
    invoke-static {}, Lbqy;->a()Lbqy;

    move-result-object v0

    iget-object v1, p0, Lbrh$1;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbqy;->a(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;

    move-result-object v0

    const-string v1, " hash = "

    const-string v2, "MusicRetriever"

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retrieveMetadata2 from parse uri = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lbrh$1;->b:Lcom/google/android/exoplayer2/MediaItem;

    iget-object v3, v3, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v3, v3, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbrh$1;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v0, p0, Lbrh$1;->c:Lbrh;

    invoke-static {v0}, Lbrh;->a(Lbrh;)Lcom/xiaopeng/musicradio/player/i;

    move-result-object v0

    iget-object v1, p0, Lbrh$1;->b:Lcom/google/android/exoplayer2/MediaItem;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/player/i;->a(Lcom/google/android/exoplayer2/MediaItem;)V

    goto :goto_0

    .line 42
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retrieveMetadata3 from dbdata uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lbrh$1;->b:Lcom/google/android/exoplayer2/MediaItem;

    iget-object v4, v4, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v4, v4, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbrh$1;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v1, p0, Lbrh$1;->c:Lbrh;

    invoke-static {v1}, Lbrh;->b(Lbrh;)Lbrh$a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 44
    iget-object v1, p0, Lbrh$1;->c:Lbrh;

    invoke-static {v1}, Lbrh;->b(Lbrh;)Lbrh$a;

    move-result-object v1

    iget-object v2, p0, Lbrh$1;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-interface {v1, v2, v0}, Lbrh$a;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;)V

    :cond_1
    :goto_0
    return-void
.end method
