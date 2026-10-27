.class public Lcom/xiaopeng/speech/protocol/node/wakeup/WakeupStatusNode;
.super Lbut;
.source "WakeupStatusNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbut<",
        "Lcom/xiaopeng/speech/protocol/node/wakeup/a;",
        ">;"
    }
.end annotation


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 14
    invoke-static {p2}, Lcom/xiaopeng/speech/jarvisproto/h;->a(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/h;

    move-result-object p1

    .line 15
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/wakeup/WakeupStatusNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 17
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 18
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/wakeup/a;

    iget v2, p1, Lcom/xiaopeng/speech/jarvisproto/h;->a:I

    iget v3, p1, Lcom/xiaopeng/speech/jarvisproto/h;->b:I

    iget-object v4, p1, Lcom/xiaopeng/speech/jarvisproto/h;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/xiaopeng/speech/protocol/node/wakeup/a;->a(IILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
