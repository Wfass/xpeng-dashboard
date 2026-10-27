.class public Lcom/xiaopeng/speech/protocol/query/xpu/XpuQuery;
.super Lbuu;
.source "XpuQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbuu<",
        "Lcom/xiaopeng/speech/protocol/query/xpu/a;",
        ">;"
    }
.end annotation


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 15
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/xpu/XpuQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/xpu/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/xpu/a;->a()I

    move-result p1

    return p1
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 20
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/xpu/XpuQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/xpu/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/xpu/a;->b()I

    move-result p1

    return p1
.end method
