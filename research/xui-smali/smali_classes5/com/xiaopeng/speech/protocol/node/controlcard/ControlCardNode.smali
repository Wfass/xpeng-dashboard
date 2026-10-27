.class public Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "ControlCardNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechNode;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method protected showAcDriverTempCard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://card.ac.temp.driver"
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 37
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 38
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/CardValue;->fromJsonForAcTemp(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/CardValue;

    move-result-object v1

    .line 39
    .local v1, "cardValue":Lcom/xiaopeng/speech/protocol/bean/CardValue;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 40
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardListener;->showAcDriverTempCard(Lcom/xiaopeng/speech/protocol/bean/CardValue;)V

    .line 39
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    .end local v1    # "cardValue":Lcom/xiaopeng/speech/protocol/bean/CardValue;
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected showAcPassengerTempCard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://card.ac.temp.passenger"
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 49
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 50
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/CardValue;->fromJsonForAcTemp(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/CardValue;

    move-result-object v1

    .line 51
    .local v1, "cardValue":Lcom/xiaopeng/speech/protocol/bean/CardValue;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 52
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardListener;->showAcPassengerTempCard(Lcom/xiaopeng/speech/protocol/bean/CardValue;)V

    .line 51
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    .end local v1    # "cardValue":Lcom/xiaopeng/speech/protocol/bean/CardValue;
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected showAcSeatHeatingDriverCard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://card.ac.seat.heating.driver"
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 93
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 94
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/CardValue;->fromJsonForAcSeatHeating(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/CardValue;

    move-result-object v1

    .line 95
    .local v1, "cardValue":Lcom/xiaopeng/speech/protocol/bean/CardValue;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 96
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardListener;->showAcSeatHeatingDriverCard(Lcom/xiaopeng/speech/protocol/bean/CardValue;)V

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    .end local v1    # "cardValue":Lcom/xiaopeng/speech/protocol/bean/CardValue;
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected showAcSeatHeatingPassengerCard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://card.ac.seat.heating.passenger"
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 105
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 106
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/CardValue;->fromJsonForAcSeatHeating(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/CardValue;

    move-result-object v1

    .line 107
    .local v1, "cardValue":Lcom/xiaopeng/speech/protocol/bean/CardValue;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 108
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardListener;->showAcSeatHeatingPassengerCard(Lcom/xiaopeng/speech/protocol/bean/CardValue;)V

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    .end local v1    # "cardValue":Lcom/xiaopeng/speech/protocol/bean/CardValue;
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected showAcSeatVentilateDriverCard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://card.ac.seat.ventilate.driver"
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 117
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 118
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/CardValue;->fromJsonForAcSeatVentilate(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/CardValue;

    move-result-object v1

    .line 119
    .local v1, "cardValue":Lcom/xiaopeng/speech/protocol/bean/CardValue;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 120
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardListener;->showAcSeatVentilateDriverCard(Lcom/xiaopeng/speech/protocol/bean/CardValue;)V

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    .end local v1    # "cardValue":Lcom/xiaopeng/speech/protocol/bean/CardValue;
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected showAcTempCard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://card.ac.temp"
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 26
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 27
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/CardValue;->fromJsonForAcTemp(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/CardValue;

    move-result-object v1

    .line 28
    .local v1, "cardValue":Lcom/xiaopeng/speech/protocol/bean/CardValue;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 29
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardListener;->showAcTempCard(Lcom/xiaopeng/speech/protocol/bean/CardValue;)V

    .line 28
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 32
    .end local v1    # "cardValue":Lcom/xiaopeng/speech/protocol/bean/CardValue;
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected showAcWindCard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://card.ac.wind"
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 60
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 61
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/CardValue;->fromJsonForAcWindLv(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/CardValue;

    move-result-object v1

    .line 62
    .local v1, "cardValue":Lcom/xiaopeng/speech/protocol/bean/CardValue;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 63
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardListener;->showAcWindCard(Lcom/xiaopeng/speech/protocol/bean/CardValue;)V

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    .end local v1    # "cardValue":Lcom/xiaopeng/speech/protocol/bean/CardValue;
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected showAtmosphereBrightnessCard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://card.control.light.atmosphere.brightness"
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 71
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 72
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/CardValue;->fromJsonForAtmosphereBrightness(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/CardValue;

    move-result-object v1

    .line 73
    .local v1, "cardValue":Lcom/xiaopeng/speech/protocol/bean/CardValue;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 74
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardListener;->showAtmosphereBrightnessCard(Lcom/xiaopeng/speech/protocol/bean/CardValue;)V

    .line 73
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    .end local v1    # "cardValue":Lcom/xiaopeng/speech/protocol/bean/CardValue;
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected showAtmosphereBrightnessColorCard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://card.control.light.atmosphere.color"
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 82
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 83
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/CardValue;->fromJsonForAtmosphereColor(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/CardValue;

    move-result-object v1

    .line 84
    .local v1, "cardValue":Lcom/xiaopeng/speech/protocol/bean/CardValue;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 85
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardListener;->showAtmosphereBrightnessColorCard(Lcom/xiaopeng/speech/protocol/bean/CardValue;)V

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    .end local v1    # "cardValue":Lcom/xiaopeng/speech/protocol/bean/CardValue;
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected showSystemIcmBrightnessCard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://card.system.icm.brightness"
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 140
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 141
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/CardValue;->fromJsonForIcmBrightness(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/CardValue;

    move-result-object v1

    .line 142
    .local v1, "cardValue":Lcom/xiaopeng/speech/protocol/bean/CardValue;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 143
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardListener;->showSystemIcmBrightnessCard(Lcom/xiaopeng/speech/protocol/bean/CardValue;)V

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    .end local v1    # "cardValue":Lcom/xiaopeng/speech/protocol/bean/CardValue;
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected showSystemScreenBrightnessCard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://card.system.screen.brightness"
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 129
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 130
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/CardValue;->fromJsonForScreenBrightness(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/CardValue;

    move-result-object v1

    .line 131
    .local v1, "cardValue":Lcom/xiaopeng/speech/protocol/bean/CardValue;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 132
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardListener;->showSystemScreenBrightnessCard(Lcom/xiaopeng/speech/protocol/bean/CardValue;)V

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    .end local v1    # "cardValue":Lcom/xiaopeng/speech/protocol/bean/CardValue;
    .end local v2    # "i":I
    :cond_0
    return-void
.end method
