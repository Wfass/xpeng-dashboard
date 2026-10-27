.class public Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery;
.super Lbuu;
.source "SpeechRadioQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbuu<",
        "Lcom/xiaopeng/speech/protocol/query/speech/radio/a;",
        ">;"
    }
.end annotation


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 19
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/radio/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/radio/a;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 24
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/radio/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/radio/a;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 29
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/radio/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/radio/a;->c()I

    move-result p1

    return p1
.end method

.method protected e(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 34
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/radio/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/radio/a;->d()[I

    move-result-object p1

    return-object p1
.end method

.method protected f(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 39
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/radio/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/radio/a;->e()[I

    move-result-object p1

    return-object p1
.end method
