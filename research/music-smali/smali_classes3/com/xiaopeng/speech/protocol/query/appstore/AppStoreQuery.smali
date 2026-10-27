.class public Lcom/xiaopeng/speech/protocol/query/appstore/AppStoreQuery;
.super Lbuu;
.source "AppStoreQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbuu<",
        "Lcom/xiaopeng/speech/protocol/query/appstore/c;",
        ">;"
    }
.end annotation


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 16
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppStoreQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/appstore/c;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/c;->a(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
