.class public Lcom/xiaopeng/speech/protocol/node/error/ErrorNode;
.super Lbut;
.source "ErrorNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbut<",
        "Lcom/xiaopeng/speech/protocol/node/error/a;",
        ">;"
    }
.end annotation


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 15
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/error/ErrorNode;->b:Lcom/xiaopeng/speech/common/util/e;

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

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/error/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/error/a;->a()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
