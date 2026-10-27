.class public Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode;
.super Lbut;
.source "ThirdAppTriggerNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbut<",
        "Lcom/xiaopeng/speech/protocol/node/app/b;",
        ">;"
    }
.end annotation


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 29
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 31
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 32
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/app/b;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/app/b;->a()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 42
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 44
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 45
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/app/b;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/app/b;->b()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
