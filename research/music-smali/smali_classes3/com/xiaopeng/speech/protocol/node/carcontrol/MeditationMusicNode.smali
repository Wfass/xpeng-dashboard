.class public Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode;
.super Lbut;
.source "MeditationMusicNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbut<",
        "Lcom/xiaopeng/speech/protocol/node/carcontrol/b;",
        ">;"
    }
.end annotation


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 12
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 14
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 15
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/b;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/b;->a()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 21
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 23
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 24
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/b;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/b;->b()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 31
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 33
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 34
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/b;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/b;->c()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 41
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/MeditationMusicNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 43
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 44
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/b;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/b;->d()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
