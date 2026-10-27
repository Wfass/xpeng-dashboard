.class public Lcom/xiaopeng/speech/protocol/node/userbook/UserBookNode;
.super Lbut;
.source "UserBookNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbut<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 16
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/userbook/UserBookNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    .line 17
    invoke-static {p2}, Lbwj;->a(Ljava/lang/String;)Lbwj;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 19
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 20
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carcontrol/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/a;->a(Lbwj;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 27
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/userbook/UserBookNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 29
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 30
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/a;->K()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 37
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/userbook/UserBookNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 39
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 40
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/a;->L()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
