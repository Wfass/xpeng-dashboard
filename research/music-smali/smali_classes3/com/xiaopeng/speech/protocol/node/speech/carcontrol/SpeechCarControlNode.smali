.class public Lcom/xiaopeng/speech/protocol/node/speech/carcontrol/SpeechCarControlNode;
.super Lbut;
.source "SpeechCarControlNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbut<",
        "Lcom/xiaopeng/speech/protocol/node/speech/carcontrol/a;",
        ">;"
    }
.end annotation


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 14
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/speech/carcontrol/SpeechCarControlNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 16
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 17
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/speech/carcontrol/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/speech/carcontrol/a;->b()V

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
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/speech/carcontrol/SpeechCarControlNode;->b:Lcom/xiaopeng/speech/common/util/e;

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

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/speech/carcontrol/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/speech/carcontrol/a;->a()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
