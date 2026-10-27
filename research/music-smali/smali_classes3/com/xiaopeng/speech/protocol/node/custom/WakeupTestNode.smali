.class public Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestNode;
.super Lbut;
.source "WakeupTestNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbut<",
        "Lcom/xiaopeng/speech/protocol/node/custom/a;",
        ">;"
    }
.end annotation


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 15
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 17
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 18
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/custom/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/custom/a;->a()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 24
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 26
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 27
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/custom/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/custom/a;->b()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 33
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 35
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 36
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/custom/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/custom/a;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 42
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 44
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 45
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/custom/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/custom/a;->b(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
