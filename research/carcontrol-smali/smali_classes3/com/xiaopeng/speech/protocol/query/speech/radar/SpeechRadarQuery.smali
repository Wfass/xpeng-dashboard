.class public Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery;
.super Lcom/xiaopeng/speech/SpeechQuery;
.source "SpeechRadarQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechQuery<",
        "Lcom/xiaopeng/speech/protocol/query/speech/radar/ISpeechRadarQueryCaller;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechQuery;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFrontRadarData(Ljava/lang/String;Ljava/lang/String;)[F
    .locals 0

    .line 19
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/radar/ISpeechRadarQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/radar/ISpeechRadarQueryCaller;->getFrontRadarData()[F

    move-result-object p1

    return-object p1
.end method

.method protected getFrontRadarFaultSt(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 0

    .line 39
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/radar/ISpeechRadarQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/radar/ISpeechRadarQueryCaller;->getFrontRadarFaultSt()[I

    move-result-object p1

    return-object p1
.end method

.method protected getFrontRadarLevel(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 0

    .line 29
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/radar/ISpeechRadarQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/radar/ISpeechRadarQueryCaller;->getFrontRadarLevel()[I

    move-result-object p1

    return-object p1
.end method

.method protected getTailRadarData(Ljava/lang/String;Ljava/lang/String;)[F
    .locals 0

    .line 24
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/radar/ISpeechRadarQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/radar/ISpeechRadarQueryCaller;->getTailRadarData()[F

    move-result-object p1

    return-object p1
.end method

.method protected getTailRadarFaultSt(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 0

    .line 44
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/radar/ISpeechRadarQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/radar/ISpeechRadarQueryCaller;->getTailRadarFaultSt()[I

    move-result-object p1

    return-object p1
.end method

.method protected getTailRadarLevel(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 0

    .line 34
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/radar/ISpeechRadarQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/radar/ISpeechRadarQueryCaller;->getTailRadarLevel()[I

    move-result-object p1

    return-object p1
.end method
