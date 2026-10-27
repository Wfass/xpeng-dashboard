.class public Lcom/xiaopeng/speech/protocol/node/asr/AsrNode;
.super Lbut;
.source "AsrNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbut<",
        "Lcom/xiaopeng/speech/protocol/node/app/a;",
        ">;"
    }
.end annotation


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 20
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/asr/AsrNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    .line 21
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 22
    invoke-static {p2}, Lcom/xiaopeng/speech/jarvisproto/a;->a(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/a;

    move-result-object p2

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 24
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 25
    iget v1, p2, Lcom/xiaopeng/speech/jarvisproto/a;->b:I

    if-lez v1, :cond_0

    .line 26
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/asr/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/asr/a;->a(Lcom/xiaopeng/speech/jarvisproto/a;)V

    goto :goto_1

    .line 28
    :cond_0
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/asr/a;

    iget v2, p2, Lcom/xiaopeng/speech/jarvisproto/a;->a:I

    invoke-interface {v1, v2}, Lcom/xiaopeng/speech/protocol/node/asr/a;->a(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
