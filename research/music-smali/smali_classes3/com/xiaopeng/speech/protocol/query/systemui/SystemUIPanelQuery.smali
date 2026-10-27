.class public Lcom/xiaopeng/speech/protocol/query/systemui/SystemUIPanelQuery;
.super Lbuu;
.source "SystemUIPanelQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbuu<",
        "Lcom/xiaopeng/speech/protocol/query/systemui/a;",
        ">;"
    }
.end annotation


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 20
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/systemui/SystemUIPanelQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/systemui/a;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/systemui/a;->a(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 25
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/systemui/SystemUIPanelQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/systemui/a;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/systemui/a;->b(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
