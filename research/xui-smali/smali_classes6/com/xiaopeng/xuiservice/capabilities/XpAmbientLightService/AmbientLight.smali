.class public Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;
.super Ljava/lang/Object;
.source "AmbientLight.java"


# static fields
.field private static final DBG:Z = false

.field private static final EFFECT_FOLLOW_SPEED:Ljava/lang/String; = "follow_speed"

.field private static final EFFECT_GENTLE_BREATHING:Ljava/lang/String; = "gentle_breathing"

.field private static final EFFECT_STABLE_EFFECT:Ljava/lang/String; = "stable_effect"

.field private static final TAG:Ljava/lang/String; = "AmbientLight"


# instance fields
.field private mAmbientLightEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;->mAmbientLightEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;

    .line 25
    return-void
.end method


# virtual methods
.method public setAmbientLightBrightPara(I)V
    .locals 1
    .param p1, "bright"    # I

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;->mAmbientLightEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->setAmbientLightBrightPara(I)V

    .line 75
    return-void
.end method

.method public setAmbientLightDataEffect(IBBB)V
    .locals 1
    .param p1, "groupNum"    # I
    .param p2, "color"    # B
    .param p3, "bright"    # B
    .param p4, "fade"    # B

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;->mAmbientLightEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->setGroupLightData(IBBB)V

    .line 107
    return-void
.end method

.method public setAmbientLightDefaultGroupEffect(BBB)V
    .locals 1
    .param p1, "color"    # B
    .param p2, "bright"    # B
    .param p3, "fade"    # B

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;->mAmbientLightEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->setAmbientLightDefaultGroupEffect(BBB)V

    .line 111
    return-void
.end method

.method public setAmbientLightEffect(Ljava/lang/String;ZIII)V
    .locals 9
    .param p1, "effectType"    # Ljava/lang/String;
    .param p2, "doubleThemeColorEnable"    # Z
    .param p3, "firstThemeColor"    # I
    .param p4, "secondThemeColor"    # I
    .param p5, "bright"    # I

    .line 44
    const-string v0, "stable_effect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;->mAmbientLightEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;

    const-string v2, "noeffect"

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->setAmbientLightEffect(Ljava/lang/String;ZIII)V

    goto :goto_0

    .line 46
    :cond_0
    const-string v0, "gentle_breathing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;->mAmbientLightEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;

    const-string v2, "breath"

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->setAmbientLightEffect(Ljava/lang/String;ZIII)V

    goto :goto_0

    .line 49
    :cond_1
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;->mAmbientLightEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->setAmbientLightEffect(Ljava/lang/String;ZIII)V

    .line 51
    :goto_0
    return-void
.end method

.method public setDefaultOrMusicGroup(I)V
    .locals 1
    .param p1, "groupNum"    # I

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;->mAmbientLightEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->setDefaultOrMusicGroup(I)V

    .line 41
    return-void
.end method

.method public setFollowCarSpeedEffect(IFI)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "speed"    # F
    .param p3, "fade"    # I

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;->mAmbientLightEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->setFollowCarSpeedEffect(IFI)V

    .line 103
    return-void
.end method

.method public setIgOnStatus(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;->mAmbientLightEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->setIgOnStatus(Z)V

    .line 115
    return-void
.end method

.method public setMusicSpectrumEffect(BBB)V
    .locals 1
    .param p1, "color"    # B
    .param p2, "bright"    # B
    .param p3, "fade"    # B

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;->mAmbientLightEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->setMusicSpectrumEffect(BBB)V

    .line 96
    return-void
.end method

.method public setSpeechEffect([ILjava/lang/String;)V
    .locals 1
    .param p1, "groupNum"    # [I
    .param p2, "effectType"    # Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;->mAmbientLightEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->setSpeechEffect([ILjava/lang/String;)V

    .line 82
    return-void
.end method

.method public setSpeechEffectEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;->mAmbientLightEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->setSpeechEffectEnable(Z)V

    .line 68
    return-void
.end method

.method public setSpeechSpectrumEffect(BBB)V
    .locals 1
    .param p1, "color"    # B
    .param p2, "bright"    # B
    .param p3, "fade"    # B

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;->mAmbientLightEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->setSpeechSpectrumEffect(BBB)V

    .line 89
    return-void
.end method

.method public setTwoLightData(B[B[B[B[B)V
    .locals 6
    .param p1, "protocol"    # B
    .param p2, "lightPosition"    # [B
    .param p3, "color"    # [B
    .param p4, "bright"    # [B
    .param p5, "fade"    # [B

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;->mAmbientLightEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->setTwoLightData(B[B[B[B[B)V

    .line 119
    return-void
.end method

.method public stopAllAmbilentEffect()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;->mAmbientLightEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->stopAllAmbilentEffect()V

    .line 37
    return-void
.end method

.method public stopDefaultEffect()V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;->mAmbientLightEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->stopDefaultEffect()V

    .line 29
    return-void
.end method

.method public stopSpeechEffect()V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;->mAmbientLightEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->stopSpeechEffect()V

    .line 33
    return-void
.end method

.method public updateLightEffectPara(Ljava/lang/String;ZIII)V
    .locals 9
    .param p1, "effectType"    # Ljava/lang/String;
    .param p2, "doubleThemeColorEnable"    # Z
    .param p3, "firstThemeColor"    # I
    .param p4, "secondThemeColor"    # I
    .param p5, "bright"    # I

    .line 54
    const-string v0, "stable_effect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;->mAmbientLightEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;

    const-string v2, "noeffect"

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->updateLightEffectPara(Ljava/lang/String;ZIII)V

    goto :goto_0

    .line 56
    :cond_0
    const-string v0, "gentle_breathing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;->mAmbientLightEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;

    const-string v2, "breath"

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->updateLightEffectPara(Ljava/lang/String;ZIII)V

    goto :goto_0

    .line 59
    :cond_1
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;->mAmbientLightEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->updateLightEffectPara(Ljava/lang/String;ZIII)V

    .line 61
    :goto_0
    return-void
.end method
