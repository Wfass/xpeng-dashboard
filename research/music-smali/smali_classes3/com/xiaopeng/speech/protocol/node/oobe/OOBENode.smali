.class public Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;
.super Lbut;
.source "OOBENode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbut<",
        "Lcom/xiaopeng/speech/protocol/node/oobe/a;",
        ">;"
    }
.end annotation


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 23
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 25
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 26
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/oobe/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/oobe/a;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 33
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;->b:Lcom/xiaopeng/speech/common/util/e;

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

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/oobe/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/oobe/a;->b(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 43
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 45
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 46
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/oobe/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/oobe/a;->c(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 53
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 55
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 56
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/oobe/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/oobe/a;->a()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 63
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 65
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 66
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/oobe/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/oobe/a;->b()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 73
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 75
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 76
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/oobe/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/oobe/a;->c()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 83
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 85
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 86
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/oobe/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/oobe/a;->c()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 93
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 95
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 96
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/oobe/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/oobe/a;->d(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 103
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 105
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 106
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/oobe/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/oobe/a;->e(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 113
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 115
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 116
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/oobe/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/oobe/a;->d()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
