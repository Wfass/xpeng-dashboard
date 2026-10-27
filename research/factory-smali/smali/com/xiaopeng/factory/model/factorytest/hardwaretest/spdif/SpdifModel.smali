.class public Lcom/xiaopeng/factory/model/factorytest/hardwaretest/spdif/SpdifModel;
.super Ljava/lang/Object;
.source "SpdifModel.java"


# static fields
.field private static final PARAMETER_PLAYBACK:Ljava/lang/String; = "ftmtest=playback"

.field private static final PARAMETER_PLAYBACK_ANALOG_DEST:Ljava/lang/String; = "dest=1"

.field private static final PARAMETER_PLAYBACK_DIGITAL_DEST:Ljava/lang/String; = "dest=2"

.field private static final PARAMETER_PLAYBACK_START:Ljava/lang/String; = "action=start"

.field private static final PARAMETER_PLAYBACK_STOP:Ljava/lang/String; = "action=stop"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lcom/xiaopeng/factory/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/spdif/SpdifModel;->mAudioManager:Landroid/media/AudioManager;

    .line 25
    return-void
.end method


# virtual methods
.method public startAnalogPlayback()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/spdif/SpdifModel;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "ftmtest=playback;action=start;dest=1"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public startDigitalPlayback()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/spdif/SpdifModel;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "ftmtest=playback;action=start;dest=2"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public stopPlayback()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/spdif/SpdifModel;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "ftmtest=playback;action=stop"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 42
    return-void
.end method
