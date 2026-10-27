.class public Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;
.super Lbut;
.source "ControlCardNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbut<",
        "Lcom/xiaopeng/speech/protocol/node/controlcard/a;",
        ">;"
    }
.end annotation


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 25
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 27
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/b;->a(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/b;

    move-result-object p2

    const/4 v0, 0x0

    .line 28
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 29
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/controlcard/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/controlcard/a;->a(Lcom/xiaopeng/speech/protocol/bean/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 36
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 38
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/b;->a(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/b;

    move-result-object p2

    const/4 v0, 0x0

    .line 39
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 40
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/controlcard/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/controlcard/a;->b(Lcom/xiaopeng/speech/protocol/bean/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 48
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 50
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/b;->a(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/b;

    move-result-object p2

    const/4 v0, 0x0

    .line 51
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 52
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/controlcard/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/controlcard/a;->c(Lcom/xiaopeng/speech/protocol/bean/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 59
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 61
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/b;->b(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/b;

    move-result-object p2

    const/4 v0, 0x0

    .line 62
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 63
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/controlcard/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/controlcard/a;->d(Lcom/xiaopeng/speech/protocol/bean/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 70
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 72
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/b;->c(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/b;

    move-result-object p2

    const/4 v0, 0x0

    .line 73
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 74
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/controlcard/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/controlcard/a;->e(Lcom/xiaopeng/speech/protocol/bean/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 81
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 83
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/b;->d(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/b;

    move-result-object p2

    const/4 v0, 0x0

    .line 84
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 85
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/controlcard/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/controlcard/a;->f(Lcom/xiaopeng/speech/protocol/bean/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 92
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 94
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/b;->e(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/b;

    move-result-object p2

    const/4 v0, 0x0

    .line 95
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 96
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/controlcard/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/controlcard/a;->g(Lcom/xiaopeng/speech/protocol/bean/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 104
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 106
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/b;->e(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/b;

    move-result-object p2

    const/4 v0, 0x0

    .line 107
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 108
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/controlcard/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/controlcard/a;->h(Lcom/xiaopeng/speech/protocol/bean/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 116
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 118
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/b;->f(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/b;

    move-result-object p2

    const/4 v0, 0x0

    .line 119
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 120
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/controlcard/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/controlcard/a;->i(Lcom/xiaopeng/speech/protocol/bean/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 128
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 130
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/b;->g(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/b;

    move-result-object p2

    const/4 v0, 0x0

    .line 131
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 132
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/controlcard/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/controlcard/a;->j(Lcom/xiaopeng/speech/protocol/bean/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 139
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 141
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/b;->h(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/b;

    move-result-object p2

    const/4 v0, 0x0

    .line 142
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 143
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/controlcard/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/controlcard/a;->k(Lcom/xiaopeng/speech/protocol/bean/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
