.class public Lcom/xiaopeng/speech/protocol/query/system/SystemQuery_Processor;
.super Ljava/lang/Object;
.source "SystemQuery_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/IQueryProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;

    return-void
.end method


# virtual methods
.method public getQueryEvents()[Ljava/lang/String;
    .locals 25

    const-string v0, "system.screen.current"

    const-string v1, "system.screen.brightness.max.value"

    const-string v2, "system.screen.brightness.min.value"

    const-string v3, "system.icm.brightness.current"

    const-string v4, "system.icm.brightness.max.value"

    const-string v5, "system.icm.brightness.min.value"

    const-string v6, "system.volume.current"

    const-string v7, "system.volume.max.value"

    const-string v8, "system.volume.min.value"

    const-string v9, "system.tips.volume"

    const-string v10, "gui.page.open.settings"

    const-string v11, "system.music.is.playing"

    const-string v12, "system.music.sound.effect.model.status"

    const-string v13, "system.music.sound.effect.dynaudio.is.support"

    const-string v14, "system.music.sound.effect.is.support"

    const-string v15, "system.music.sound.effect.status"

    const-string v16, "system.sound.scene.is.support"

    const-string v17, "system.sound.scene.status"

    const-string v18, "system.headrest.driver.mode.is.support"

    const-string v19, "system.headrest.driver.mode.status"

    const-string v20, "system.music.sound.direction.is.support"

    const-string v21, "system.music.sound.direction.status"

    const-string v22, "system.settings.auto.screen.status"

    const-string v23, "system.current.nedc.status"

    const-string v24, "system.intelligent.dark.light.adapt"

    .line 72
    filled-new-array/range {v0 .. v24}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public querySensor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "system.music.sound.effect.dynaudio.is.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "system.icm.brightness.current"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "system.music.sound.effect.model.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "system.music.sound.effect.is.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "system.music.is.playing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "system.tips.volume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "system.icm.brightness.min.value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "system.music.sound.effect.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "system.settings.auto.screen.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "system.volume.current"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "system.intelligent.dark.light.adapt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "system.icm.brightness.max.value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "system.headrest.driver.mode.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "system.volume.min.value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "system.sound.scene.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "system.headrest.driver.mode.is.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "system.music.sound.direction.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "system.screen.brightness.min.value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_0

    :cond_11
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_12
    const-string v0, "gui.page.open.settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_0

    :cond_12
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_13
    const-string v0, "system.sound.scene.is.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_0

    :cond_13
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_14
    const-string v0, "system.current.nedc.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_0

    :cond_14
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_15
    const-string v0, "system.volume.max.value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_0

    :cond_15
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_16
    const-string v0, "system.music.sound.direction.is.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_0

    :cond_16
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_17
    const-string v0, "system.screen.brightness.max.value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_0

    :cond_17
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_18
    const-string v0, "system.screen.current"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_0

    :cond_18
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 43
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->isSupportSoundEffectMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 23
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->getCurIcmBrightness(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 41
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->getCurrentSoundEffectMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 45
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->isSupportSoundEffectStyle(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 39
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->getCurrentMusicActive(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 35
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->getTipsVolume(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 27
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->getMinIcmBrightnessValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 47
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->getCurrentSoundEffectStyle(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 61
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->getAutoScreenStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 29
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->getCurVolume(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 65
    :pswitch_a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->getIntelligentDarkLightAdaptStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 25
    :pswitch_b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->getMaxIcmBrightnessValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 55
    :pswitch_c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->getCurrentHeadsetMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 33
    :pswitch_d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->getMinVolumeValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 51
    :pswitch_e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->getCurrentSoundEffectScene(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 53
    :pswitch_f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->isSupportHeadsetMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 59
    :pswitch_10
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->getCurrentSoundEffectField(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_11
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->getMinScreenBrightnessValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 37
    :pswitch_12
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->getGuiPageOpenState(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 49
    :pswitch_13
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->isSupportSoundEffectScene(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 63
    :pswitch_14
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->getCurrentNedcStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 31
    :pswitch_15
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->getMaxVolumeValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 57
    :pswitch_16
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->isSupportSoundEffectField(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_17
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->getMaxScreenBrightnessValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_18
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->getCurScreenBrightness(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x7ff37c6a -> :sswitch_18
        -0x7dd897f3 -> :sswitch_17
        -0x75cc8a5f -> :sswitch_16
        -0x602c9f8e -> :sswitch_15
        -0x5bda52ca -> :sswitch_14
        -0x579328b5 -> :sswitch_13
        -0x54dfc645 -> :sswitch_12
        -0x4fcd8185 -> :sswitch_11
        -0x398fd278 -> :sswitch_10
        -0x34b85fd5 -> :sswitch_f
        -0x32df0bce -> :sswitch_e
        -0x32218920 -> :sswitch_d
        -0x307cd2ee -> :sswitch_c
        -0x29cf119c -> :sswitch_b
        -0x27d7b838 -> :sswitch_a
        -0x2030e3bc -> :sswitch_9
        -0x113205df -> :sswitch_8
        -0xaf297f8 -> :sswitch_7
        0x43c04d2 -> :sswitch_6
        0x8dd0551 -> :sswitch_5
        0x57d9b0b2 -> :sswitch_4
        0x5aaf7021 -> :sswitch_3
        0x5e9ef9ed -> :sswitch_2
        0x5fbb7eb6 -> :sswitch_1
        0x6d37e446 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
