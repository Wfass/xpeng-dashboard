.class public Lcom/xiaopeng/speech/protocol/node/changba/ChangbaNode;
.super Lbut;
.source "ChangbaNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbut<",
        "Lcom/xiaopeng/speech/protocol/node/changba/a;",
        ">;"
    }
.end annotation


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 19
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/changba/ChangbaNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    .line 20
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/changba/bean/ChangbaBean;->a(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/changba/bean/ChangbaBean;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 22
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 23
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/changba/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/changba/a;->a(Lcom/xiaopeng/speech/protocol/node/changba/bean/ChangbaBean;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
