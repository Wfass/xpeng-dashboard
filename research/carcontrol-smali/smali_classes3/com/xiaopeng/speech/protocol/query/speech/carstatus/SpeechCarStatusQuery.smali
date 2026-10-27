.class public Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;
.super Lcom/xiaopeng/speech/SpeechQuery;
.source "SpeechCarStatusQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechQuery<",
        "Lcom/xiaopeng/speech/protocol/query/speech/carstatus/ISpeechCarstatusQueryCaller;",
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
.method protected getAcCirculationMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 54
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/ISpeechCarstatusQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/ISpeechCarstatusQueryCaller;->getAcCirculationMode()I

    move-result p1

    return p1
.end method

.method protected getAcPowerStatus(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 24
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/ISpeechCarstatusQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/ISpeechCarstatusQueryCaller;->getAcPowerStatus()Z

    move-result p1

    return p1
.end method

.method protected getAcQualityPurgeStatus(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 29
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/ISpeechCarstatusQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/ISpeechCarstatusQueryCaller;->getAcQualityPurgeStatus()Z

    move-result p1

    return p1
.end method

.method protected getAcTempDriverValue(Ljava/lang/String;Ljava/lang/String;)F
    .locals 0

    .line 34
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/ISpeechCarstatusQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/ISpeechCarstatusQueryCaller;->getAcTempDriverValue()F

    move-result p1

    return p1
.end method

.method protected getAcTempPsnValue(Ljava/lang/String;Ljava/lang/String;)F
    .locals 0

    .line 39
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/ISpeechCarstatusQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/ISpeechCarstatusQueryCaller;->getAcTempPsnValue()F

    move-result p1

    return p1
.end method

.method protected getAcWindBlowMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 49
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/ISpeechCarstatusQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/ISpeechCarstatusQueryCaller;->getAcWindBlowMode()I

    move-result p1

    return p1
.end method

.method protected getAcWindSpeedLevel(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 44
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/ISpeechCarstatusQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/ISpeechCarstatusQueryCaller;->getAcWindSpeedLevel()I

    move-result p1

    return p1
.end method

.method protected getCurrentMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 19
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/ISpeechCarstatusQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/ISpeechCarstatusQueryCaller;->getCurrentMode()I

    move-result p1

    return p1
.end method
