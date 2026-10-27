.class public Lcom/xiaopeng/speech/protocol/query/phone/PhoneQuery;
.super Lbuu;
.source "PhoneQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbuu<",
        "Lcom/xiaopeng/speech/protocol/query/phone/a;",
        ">;"
    }
.end annotation


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 15
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/phone/PhoneQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/phone/a;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/phone/a;->a(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 20
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/phone/PhoneQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/phone/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/phone/a;->a()Z

    move-result p1

    return p1
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 25
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/phone/PhoneQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/phone/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/phone/a;->b()I

    move-result p1

    return p1
.end method
