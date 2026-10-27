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

    .line 15
    return-void
.end method


# virtual methods
.method protected getAcCirculationMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "status.ac.circulationmode"
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/ISpeechCarstatusQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/ISpeechCarstatusQueryCaller;->getAcCirculationMode()I

    move-result v0

    return v0
.end method

.method protected getAcPowerStatus(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "status.ac.power"
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/ISpeechCarstatusQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/ISpeechCarstatusQueryCaller;->getAcPowerStatus()Z

    move-result v0

    return v0
.end method

.method protected getAcQualityPurgeStatus(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "status.ac.qualitypurge"
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/ISpeechCarstatusQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/ISpeechCarstatusQueryCaller;->getAcQualityPurgeStatus()Z

    move-result v0

    return v0
.end method

.method protected getAcTempDriverValue(Ljava/lang/String;Ljava/lang/String;)F
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "status.ac.tempdrivervalue"
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/ISpeechCarstatusQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/ISpeechCarstatusQueryCaller;->getAcTempDriverValue()F

    move-result v0

    return v0
.end method

.method protected getAcTempPsnValue(Ljava/lang/String;Ljava/lang/String;)F
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "status.ac.temppsnvalue"
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/ISpeechCarstatusQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/ISpeechCarstatusQueryCaller;->getAcTempPsnValue()F

    move-result v0

    return v0
.end method

.method protected getAcWindBlowMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "status.ac.windblowmode"
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/ISpeechCarstatusQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/ISpeechCarstatusQueryCaller;->getAcWindBlowMode()I

    move-result v0

    return v0
.end method

.method protected getAcWindSpeedLevel(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "status.ac.windspeedlevel"
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/ISpeechCarstatusQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/ISpeechCarstatusQueryCaller;->getAcWindSpeedLevel()I

    move-result v0

    return v0
.end method

.method protected getCurrentMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "status.cur.mode"
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/ISpeechCarstatusQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/ISpeechCarstatusQueryCaller;->getCurrentMode()I

    move-result v0

    return v0
.end method
