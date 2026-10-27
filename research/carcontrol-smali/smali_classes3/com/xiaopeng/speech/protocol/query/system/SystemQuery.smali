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

    return-void
.end method


# virtual methods
.method protected getAutoScreenStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 179
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->getAutoScreenStatus()I

    move-result p1

    return p1
.end method

.method protected getCurIcmBrightness(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 35
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->getCurIcmBrightness()I

    move-result p1

    return p1
.end method

.method protected getCurScreenBrightness(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 20
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->getCurScreenBrightness()I

    move-result p1

    return p1
.end method

.method protected getCurVolume(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const-string p1, "3"

    .line 52
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "stream_type"

    .line 53
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 55
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    move-object p2, p1

    .line 57
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/utils/StringUtil;->isDecimalNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p1, p2

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->getCurVolume(I)I

    move-result p1

    return p1
.end method

.method protected getCurrentHeadsetMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 157
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->getCurrentHeadsetMode()I

    move-result p1

    return p1
.end method

.method protected getCurrentMusicActive(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 96
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->getCurrentMusicActive()I

    move-result p1

    return p1
.end method

.method protected getCurrentNedcStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 184
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->getCurrentNedcStatus()I

    move-result p1

    return p1
.end method

.method protected getCurrentSoundEffectField(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 174
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->getCurrentSoundEffectField()I

    move-result p1

    return p1
.end method

.method protected getCurrentSoundEffectMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 101
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->getCurrentSoundEffectMode()I

    move-result p1

    return p1
.end method

.method protected getCurrentSoundEffectScene(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 147
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->getCurrentSoundEffectScene()I

    move-result p1

    return p1
.end method

.method protected getCurrentSoundEffectStyle(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 130
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->getCurrentSoundEffectStyle()I

    move-result p1

    return p1
.end method

.method protected getGuiPageOpenState(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 91
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->getGuiPageOpenState(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected getIntelligentDarkLightAdaptStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 189
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->getIntelligentDarkLightAdaptStatus()I

    move-result p1

    return p1
.end method

.method protected getMaxIcmBrightnessValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 40
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->getMaxIcmBrightnessValue()I

    move-result p1

    return p1
.end method

.method protected getMaxScreenBrightnessValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 25
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->getMaxScreenBrightnessValue()I

    move-result p1

    return p1
.end method

.method protected getMaxVolumeValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const-string p1, "3"

    .line 64
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "stream_type"

    .line 65
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 67
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    move-object p2, p1

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/utils/StringUtil;->isDecimalNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p1, p2

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->getMaxVolumeValue(I)I

    move-result p1

    return p1
.end method

.method protected getMinIcmBrightnessValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 45
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->getMinIcmBrightnessValue()I

    move-result p1

    return p1
.end method

.method protected getMinScreenBrightnessValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 30
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->getMinScreenBrightnessValue()I

    move-result p1

    return p1
.end method

.method protected getMinVolumeValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const-string p1, "3"

    .line 76
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "stream_type"

    .line 77
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 79
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    move-object p2, p1

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/utils/StringUtil;->isDecimalNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p1, p2

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->getMinVolumeValue(I)I

    move-result p1

    return p1
.end method

.method protected getTipsVolume(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 86
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->getTipsVolume()I

    move-result p1

    return p1
.end method

.method protected isSupportHeadsetMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 152
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->isSupportHeadsetMode()I

    move-result p1

    return p1
.end method

.method protected isSupportSoundEffectField(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 164
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "direction"

    .line 165
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 167
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x1

    .line 169
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->isSupportSoundEffectField(I)I

    move-result p1

    return p1
.end method

.method protected isSupportSoundEffectMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 108
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "mode"

    .line 109
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 111
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x2

    .line 113
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->isSupportSoundEffectMode(I)I

    move-result p1

    return p1
.end method

.method protected isSupportSoundEffectScene(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 137
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "scene"

    .line 138
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 140
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x1

    .line 142
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->isSupportSoundEffectScene(I)I

    move-result p1

    return p1
.end method

.method protected isSupportSoundEffectStyle(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 120
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "style"

    .line 121
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 123
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    .line 125
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/system/ISystemCaller;->isSupportSoundEffectStyle(I)I

    move-result p1

    return p1
.end method
