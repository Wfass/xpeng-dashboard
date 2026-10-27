.class Lbrh$2;
.super Ljava/lang/Object;
.source "MusicRetriever.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/player/i$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbrh;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lbrh$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

.field final synthetic b:Lbrh$a;

.field final synthetic c:Lbrh;


# direct methods
.method constructor <init>(Lbrh;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lbrh$a;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lbrh$2;->c:Lbrh;

    iput-object p2, p0, Lbrh$2;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    iput-object p3, p0, Lbrh$2;->b:Lbrh$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/source/TrackGroupArray;)V
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onParseFinish: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbrh$2;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " hash = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbrh$2;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicRetriever"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lbrh$2;->c:Lbrh;

    iget-object v1, p0, Lbrh$2;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-static {v0, v1, p1}, Lbrh;->a(Lbrh;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;

    move-result-object p1

    .line 102
    invoke-static {}, Lbqy;->a()Lbqy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbqy;->a(Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;)V

    .line 103
    iget-object v0, p0, Lbrh$2;->b:Lbrh$a;

    iget-object v1, p0, Lbrh$2;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-interface {v0, v1, p1}, Lbrh$a;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onParseException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicRetriever"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    instance-of v0, p1, Lcom/google/android/exoplayer2/source/UnrecognizedInputFormatException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 110
    new-instance p1, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;-><init>()V

    .line 111
    iget-object v0, p0, Lbrh$2;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->setId(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->setAudio(Z)V

    .line 113
    invoke-static {}, Lbqy;->a()Lbqy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbqy;->a(Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;)V

    .line 115
    iget-object v0, p0, Lbrh$2;->b:Lbrh$a;

    iget-object v1, p0, Lbrh$2;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-interface {v0, v1, p1}, Lbrh$a;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;)V

    goto :goto_0

    .line 116
    :cond_0
    instance-of p1, p1, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;

    if-eqz p1, :cond_1

    .line 117
    new-instance p1, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;-><init>()V

    .line 118
    iget-object v0, p0, Lbrh$2;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->setId(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->setAudio(Z)V

    .line 120
    invoke-static {}, Lbqy;->a()Lbqy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbqy;->a(Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;)V

    .line 122
    iget-object v0, p0, Lbrh$2;->b:Lbrh$a;

    iget-object v1, p0, Lbrh$2;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-interface {v0, v1, p1}, Lbrh$a;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;)V

    goto :goto_0

    .line 124
    :cond_1
    iget-object p1, p0, Lbrh$2;->b:Lbrh$a;

    iget-object v0, p0, Lbrh$2;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lbrh$a;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;)V

    :goto_0
    return-void
.end method
