.class public Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;
.super Lcom/xiaopeng/speech/SpeechQuery;
.source "SystemQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechQuery<",
        "Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;",
        ">;"
    }
.end annotation


# static fields
.field private static final SOUND_EFFECT_MODE:I = 0x2

.field private static final STREAM_MUSIC:Ljava/lang/String; = "3"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechQuery;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method protected getAutoScreenStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "system.settings.auto.screen.status"
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->getAutoScreenStatus()I

    move-result v0

    return v0
.end method

.method protected getCurIcmBrightness(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "system.icm.brightness.current"
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->getCurIcmBrightness()I

    move-result v0

    return v0
.end method

.method protected getCurScreenBrightness(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "system.screen.current"
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->getCurScreenBrightness()I

    move-result v0

    return v0
.end method

.method protected getCurVolume(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "system.volume.current"
    .end annotation

    .line 50
    const-string v0, "3"

    .line 52
    .local v0, "streamType":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 53
    .local v1, "obj":Lorg/json/JSONObject;
    const-string v2, "stream_type"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 56
    .end local v1    # "obj":Lorg/json/JSONObject;
    goto :goto_0

    .line 54
    :catch_0
    move-exception v1

    .line 55
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 57
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-static {v0}, Lcom/xiaopeng/speech/protocol/utils/StringUtil;->isDecimalNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    goto :goto_1

    :cond_0
    const-string v2, "3"

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->getCurVolume(I)I

    move-result v1

    return v1
.end method

.method protected getCurrentHeadsetMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "system.headrest.driver.mode.status"
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->getCurrentHeadsetMode()I

    move-result v0

    return v0
.end method

.method protected getCurrentMusicActive(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "system.music.is.playing"
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->getCurrentMusicActive()I

    move-result v0

    return v0
.end method

.method protected getCurrentNedcStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "system.current.nedc.status"
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->getCurrentNedcStatus()I

    move-result v0

    return v0
.end method

.method protected getCurrentSoundEffectField(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "system.music.sound.direction.status"
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->getCurrentSoundEffectField()I

    move-result v0

    return v0
.end method

.method protected getCurrentSoundEffectMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "system.music.sound.effect.model.status"
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->getCurrentSoundEffectMode()I

    move-result v0

    return v0
.end method

.method protected getCurrentSoundEffectScene(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "system.sound.scene.status"
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->getCurrentSoundEffectScene()I

    move-result v0

    return v0
.end method

.method protected getCurrentSoundEffectStyle(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "system.music.sound.effect.status"
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->getCurrentSoundEffectStyle()I

    move-result v0

    return v0
.end method

.method protected getGuiPageOpenState(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "gui.page.open.settings"
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->getGuiPageOpenState(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getIntelligentDarkLightAdaptStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "system.intelligent.dark.light.adapt"
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->getIntelligentDarkLightAdaptStatus()I

    move-result v0

    return v0
.end method

.method protected getMaxIcmBrightnessValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "system.icm.brightness.max.value"
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->getMaxIcmBrightnessValue()I

    move-result v0

    return v0
.end method

.method protected getMaxScreenBrightnessValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "system.screen.brightness.max.value"
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->getMaxScreenBrightnessValue()I

    move-result v0

    return v0
.end method

.method protected getMaxVolumeValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "system.volume.max.value"
    .end annotation

    .line 62
    const-string v0, "3"

    .line 64
    .local v0, "streamType":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 65
    .local v1, "obj":Lorg/json/JSONObject;
    const-string v2, "stream_type"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 68
    .end local v1    # "obj":Lorg/json/JSONObject;
    goto :goto_0

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 69
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-static {v0}, Lcom/xiaopeng/speech/protocol/utils/StringUtil;->isDecimalNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    goto :goto_1

    :cond_0
    const-string v2, "3"

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->getMaxVolumeValue(I)I

    move-result v1

    return v1
.end method

.method protected getMinIcmBrightnessValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "system.icm.brightness.min.value"
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->getMinIcmBrightnessValue()I

    move-result v0

    return v0
.end method

.method protected getMinScreenBrightnessValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "system.screen.brightness.min.value"
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->getMinScreenBrightnessValue()I

    move-result v0

    return v0
.end method

.method protected getMinVolumeValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "system.volume.min.value"
    .end annotation

    .line 74
    const-string v0, "3"

    .line 76
    .local v0, "streamType":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 77
    .local v1, "obj":Lorg/json/JSONObject;
    const-string v2, "stream_type"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 80
    .end local v1    # "obj":Lorg/json/JSONObject;
    goto :goto_0

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 81
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-static {v0}, Lcom/xiaopeng/speech/protocol/utils/StringUtil;->isDecimalNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    goto :goto_1

    :cond_0
    const-string v2, "3"

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->getMinVolumeValue(I)I

    move-result v1

    return v1
.end method

.method protected getTipsVolume(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "system.tips.volume"
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->getTipsVolume()I

    move-result v0

    return v0
.end method

.method protected isSupportHeadsetMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "system.headrest.driver.mode.is.support"
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->isSupportHeadsetMode()I

    move-result v0

    return v0
.end method

.method protected isSupportSoundEffectField(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "system.music.sound.direction.is.support"
    .end annotation

    .line 162
    const/4 v0, 0x1

    .line 164
    .local v0, "direction":I
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 165
    .local v1, "obj":Lorg/json/JSONObject;
    const-string v2, "direction"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 168
    .end local v1    # "obj":Lorg/json/JSONObject;
    goto :goto_0

    .line 166
    :catch_0
    move-exception v1

    .line 167
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 169
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-interface {v1, v0}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->isSupportSoundEffectField(I)I

    move-result v1

    return v1
.end method

.method protected isSupportSoundEffectMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "system.music.sound.effect.dynaudio.is.support"
    .end annotation

    .line 106
    const/4 v0, 0x2

    .line 108
    .local v0, "soundmode":I
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 109
    .local v1, "obj":Lorg/json/JSONObject;
    const-string v2, "mode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 112
    .end local v1    # "obj":Lorg/json/JSONObject;
    goto :goto_0

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 113
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-interface {v1, v0}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->isSupportSoundEffectMode(I)I

    move-result v1

    return v1
.end method

.method protected isSupportSoundEffectScene(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "system.sound.scene.is.support"
    .end annotation

    .line 135
    const/4 v0, 0x1

    .line 137
    .local v0, "scene":I
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 138
    .local v1, "obj":Lorg/json/JSONObject;
    const-string v2, "scene"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 141
    .end local v1    # "obj":Lorg/json/JSONObject;
    goto :goto_0

    .line 139
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 142
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-interface {v1, v0}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->isSupportSoundEffectScene(I)I

    move-result v1

    return v1
.end method

.method protected isSupportSoundEffectStyle(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "system.music.sound.effect.is.support"
    .end annotation

    .line 118
    const/4 v0, 0x0

    .line 120
    .local v0, "style":I
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 121
    .local v1, "obj":Lorg/json/JSONObject;
    const-string v2, "style"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 124
    .end local v1    # "obj":Lorg/json/JSONObject;
    goto :goto_0

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 125
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-interface {v1, v0}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->isSupportSoundEffectStyle(I)I

    move-result v1

    return v1
.end method
