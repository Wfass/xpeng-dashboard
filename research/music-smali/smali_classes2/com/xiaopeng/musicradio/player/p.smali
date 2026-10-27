.class public Lcom/xiaopeng/musicradio/player/p;
.super Lcom/google/android/exoplayer2/util/EventLogger;
.source "XpEventLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/player/p$a;
    }
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/player/p$a;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/util/EventLogger;-><init>(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/player/p$a;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/p;->a:Lcom/xiaopeng/musicradio/player/p$a;

    return-void
.end method

.method public onAudioInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/util/EventLogger;->onAudioInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/p;->a:Lcom/xiaopeng/musicradio/player/p$a;

    if-eqz v0, :cond_0

    .line 57
    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/player/p$a;->a(Lcom/google/android/exoplayer2/Format;)V

    :cond_0
    return-void
.end method

.method public onAudioSessionId(I)V
    .locals 2

    .line 46
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/util/EventLogger;->onAudioSessionId(I)V

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAudioSessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XpEventLogger"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/p;->a:Lcom/xiaopeng/musicradio/player/p$a;

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/player/p$a;->a(I)V

    :cond_0
    return-void
.end method

.method public onLoadError(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V
    .locals 4

    move-object/from16 v0, p17

    .line 27
    invoke-super/range {p0 .. p18}, Lcom/google/android/exoplayer2/util/EventLogger;->onLoadError(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadError  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XpEventLogger"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p0

    .line 29
    iget-object v2, v1, Lcom/xiaopeng/musicradio/player/p;->a:Lcom/xiaopeng/musicradio/player/p$a;

    if-eqz v2, :cond_0

    move-object v3, p1

    .line 30
    invoke-interface {v2, p1, v0}, Lcom/xiaopeng/musicradio/player/p$a;->a(Lcom/google/android/exoplayer2/upstream/DataSpec;Ljava/io/IOException;)V

    :cond_0
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 1

    .line 36
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/util/EventLogger;->onPlayerStateChanged(ZI)V

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPlayerStateChanged: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "XpEventLogger"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
