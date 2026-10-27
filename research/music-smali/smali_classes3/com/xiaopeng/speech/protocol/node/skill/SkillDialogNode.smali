.class public Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogNode;
.super Lbut;
.source "SkillDialogNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbut<",
        "Lcom/xiaopeng/speech/protocol/node/skill/a;",
        ">;"
    }
.end annotation


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 20
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 22
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 23
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/skill/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/skill/a;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 30
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 32
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 33
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/skill/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/skill/a;->b(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 40
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 42
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 43
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/skill/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/skill/a;->c(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 50
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 52
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 53
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/skill/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/skill/a;->d(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 60
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 62
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 63
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/skill/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/skill/a;->e(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 71
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 73
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 74
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/skill/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/skill/a;->f(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
