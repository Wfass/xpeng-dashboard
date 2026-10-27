.class public Lcom/xiaopeng/speech/protocol/query/music/SingQuery;
.super Lbuu;
.source "SingQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbuu<",
        "Lcom/xiaopeng/speech/protocol/query/music/b;",
        ">;"
    }
.end annotation


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 18
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/SingQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/b;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/music/b;->a(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
