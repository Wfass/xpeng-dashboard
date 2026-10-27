.class public Lcom/xiaopeng/speech/protocol/node/floater/FloaterSpeechNode;
.super Lbut;
.source "FloaterSpeechNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbut<",
        "Lcom/xiaopeng/speech/protocol/node/floater/a;",
        ">;"
    }
.end annotation


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 16
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/floater/FloaterSpeechNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    .line 17
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 19
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 20
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/floater/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/floater/a;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 27
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/WindowAnimState;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/WindowAnimState;

    move-result-object p1

    .line 28
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/floater/FloaterSpeechNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 30
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 31
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/floater/a;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/floater/a;->a(Lcom/xiaopeng/speech/protocol/bean/WindowAnimState;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 38
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/floater/FloaterSpeechNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 40
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 41
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/floater/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/floater/a;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
