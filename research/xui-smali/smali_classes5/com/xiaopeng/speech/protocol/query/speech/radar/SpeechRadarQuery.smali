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

    .line 15
    return-void
.end method


# virtual methods
.method protected getFrontRadarData(Ljava/lang/String;Ljava/lang/String;)[F
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "radar.front.data"
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/radar/ISpeechRadarQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/radar/ISpeechRadarQueryCaller;->getFrontRadarData()[F

    move-result-object v0

    return-object v0
.end method

.method protected getFrontRadarFaultSt(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "radar.front.fault"
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/radar/ISpeechRadarQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/radar/ISpeechRadarQueryCaller;->getFrontRadarFaultSt()[I

    move-result-object v0

    return-object v0
.end method

.method protected getFrontRadarLevel(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "radar.front.lv"
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/radar/ISpeechRadarQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/radar/ISpeechRadarQueryCaller;->getFrontRadarLevel()[I

    move-result-object v0

    return-object v0
.end method

.method protected getTailRadarData(Ljava/lang/String;Ljava/lang/String;)[F
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "radar.tail.data"
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/radar/ISpeechRadarQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/radar/ISpeechRadarQueryCaller;->getTailRadarData()[F

    move-result-object v0

    return-object v0
.end method

.method protected getTailRadarFaultSt(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "radar.tail.fault"
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/radar/ISpeechRadarQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/radar/ISpeechRadarQueryCaller;->getTailRadarFaultSt()[I

    move-result-object v0

    return-object v0
.end method

.method protected getTailRadarLevel(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "radar.tail.lv"
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/radar/ISpeechRadarQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/radar/ISpeechRadarQueryCaller;->getTailRadarLevel()[I

    move-result-object v0

    return-object v0
.end method
