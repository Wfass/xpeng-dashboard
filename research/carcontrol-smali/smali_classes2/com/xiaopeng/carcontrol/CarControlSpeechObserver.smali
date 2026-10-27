.class public Lcom/xiaopeng/carcontrol/CarControlSpeechObserver;
.super Ljava/lang/Object;
.source "CarControlSpeechObserver.java"

# interfaces
.implements Lcom/xiaopeng/lib/apirouter/server/IServicePublisher;


# static fields
.field private static final TAG:Ljava/lang/String; = "CarControlSpeechObserver"


# instance fields
.field private final isMainProcess:Z

.field private mCarcontrolSm:Lcom/xiaopeng/carcontrol/speech/ISpeechModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/CarControlSpeechObserver;->isMainProcess:Z

    if-eqz v0, :cond_0

    const-string v0, "carcontrol"

    .line 29
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/speech/SpeechModelFactory;->getSpeechModel(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/speech/ISpeechModel;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/CarControlSpeechObserver;->mCarcontrolSm:Lcom/xiaopeng/carcontrol/speech/ISpeechModel;

    :cond_0
    return-void
.end method

.method private getSource(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const/4 v0, 0x0

    .line 69
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 72
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "source"

    .line 73
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CarControlSpeechObserver"

    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public synthetic lambda$onEvent$0$CarControlSpeechObserver(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "data",
            "event"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/CarControlSpeechObserver;->getSource(Ljava/lang/String;)I

    move-result v0

    const-string v1, "ac."

    .line 41
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/CarControlSpeechObserver;->mCarcontrolSm:Lcom/xiaopeng/carcontrol/speech/ISpeechModel;

    invoke-interface {v1, p2, p1, v0}, Lcom/xiaopeng/carcontrol/speech/ISpeechModel;->onEvent(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onQuery$1$CarControlSpeechObserver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "event",
            "data",
            "callback"
        }
    .end annotation

    const-string v0, "ac."

    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CarControlSpeechObserver;->mCarcontrolSm:Lcom/xiaopeng/carcontrol/speech/ISpeechModel;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/speech/ISpeechModel;->onQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "data"
        }
    .end annotation

    .line 35
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/CarControlSpeechObserver;->isMainProcess:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEvent=====event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "CarControlSpeechObserver"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x5

    .line 39
    new-instance v1, Lcom/xiaopeng/carcontrol/-$$Lambda$CarControlSpeechObserver$tNceYS3sOZ0tsuOsZKRB_1qNnco;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaopeng/carcontrol/-$$Lambda$CarControlSpeechObserver$tNceYS3sOZ0tsuOsZKRB_1qNnco;-><init>(Lcom/xiaopeng/carcontrol/CarControlSpeechObserver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "event",
            "data",
            "callback"
        }
    .end annotation

    .line 52
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/CarControlSpeechObserver;->isMainProcess:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQuery=====event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", callback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "CarControlSpeechObserver"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x5

    .line 56
    new-instance v1, Lcom/xiaopeng/carcontrol/-$$Lambda$CarControlSpeechObserver$JGj_eOLLPTFXB5xu8LN3ft12EV8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/-$$Lambda$CarControlSpeechObserver$JGj_eOLLPTFXB5xu8LN3ft12EV8;-><init>(Lcom/xiaopeng/carcontrol/CarControlSpeechObserver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
