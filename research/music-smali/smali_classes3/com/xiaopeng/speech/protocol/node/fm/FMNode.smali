.class public Lcom/xiaopeng/speech/protocol/node/fm/FMNode;
.super Lbut;
.source "FMNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbut<",
        "Lcom/xiaopeng/speech/protocol/node/fm/a;",
        ">;"
    }
.end annotation


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 16
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/fm/FMNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 18
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 19
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/fm/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/fm/a;->c()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 26
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/fm/FMNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 28
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 29
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/fm/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/fm/a;->d()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 36
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/fm/FMNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 38
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 39
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/fm/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/fm/a;->e()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 46
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/fm/FMNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 48
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 49
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/fm/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/fm/a;->f()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 56
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/fm/FMNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 58
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 59
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/fm/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/fm/a;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/fm/FMNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 68
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 69
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/fm/a;

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/speech/protocol/node/fm/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 76
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/fm/FMNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 78
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 79
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/fm/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/fm/a;->g()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
