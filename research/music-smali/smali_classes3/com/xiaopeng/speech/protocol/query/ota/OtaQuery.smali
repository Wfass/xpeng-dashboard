.class public Lcom/xiaopeng/speech/protocol/query/ota/OtaQuery;
.super Lbuu;
.source "OtaQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbuu<",
        "Lcom/xiaopeng/speech/protocol/query/ota/a;",
        ">;"
    }
.end annotation


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 15
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/ota/OtaQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/ota/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/ota/a;->a()Z

    move-result p1

    return p1
.end method
