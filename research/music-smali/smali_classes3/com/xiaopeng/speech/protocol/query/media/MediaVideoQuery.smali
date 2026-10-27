.class public Lcom/xiaopeng/speech/protocol/query/media/MediaVideoQuery;
.super Lbuu;
.source "MediaVideoQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbuu<",
        "Lcom/xiaopeng/speech/protocol/query/media/b;",
        ">;"
    }
.end annotation


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 17
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaVideoQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/media/b;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/media/b;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 22
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaVideoQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/media/b;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
