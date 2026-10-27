.class public Lcom/xiaopeng/factory/model/factorytest/hardwaretest/LoopbackModel;
.super Ljava/lang/Object;
.source "LoopbackModel.java"


# instance fields
.field private final PARAMETER_LOOPBACK:Ljava/lang/String;

.field private final PARAMETER_LOOPBACK_DEST:Ljava/lang/String;

.field private final PARAMETER_LOOPBACK_SRC:Ljava/lang/String;

.field private final PARAMETER_LOOPBACK_START:Ljava/lang/String;

.field private final PARAMETER_LOOPBACK_STOP:Ljava/lang/String;

.field private final PARAMETER_MIC2SPK:Ljava/lang/String;

.field private final PARAMETER_OFF:Ljava/lang/String;

.field private final PARAMETER_ON:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "mic2spklb="

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/LoopbackModel;->PARAMETER_MIC2SPK:Ljava/lang/String;

    .line 22
    const-string v0, "on"

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/LoopbackModel;->PARAMETER_ON:Ljava/lang/String;

    .line 23
    const-string v0, "off"

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/LoopbackModel;->PARAMETER_OFF:Ljava/lang/String;

    .line 24
    const-string v0, "ftmtest=loopback"

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/LoopbackModel;->PARAMETER_LOOPBACK:Ljava/lang/String;

    .line 25
    const-string v0, "action=start"

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/LoopbackModel;->PARAMETER_LOOPBACK_START:Ljava/lang/String;

    .line 26
    const-string v0, "action=stop"

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/LoopbackModel;->PARAMETER_LOOPBACK_STOP:Ljava/lang/String;

    .line 27
    const-string v0, "source="

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/LoopbackModel;->PARAMETER_LOOPBACK_SRC:Ljava/lang/String;

    .line 28
    const-string v0, "dest="

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/LoopbackModel;->PARAMETER_LOOPBACK_DEST:Ljava/lang/String;

    .line 31
    invoke-static {}, Lcom/xiaopeng/factory/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/LoopbackModel;->mAudioManager:Landroid/media/AudioManager;

    .line 32
    return-void
.end method


# virtual methods
.method public startLoopAudio()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/LoopbackModel;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "mic2spklb=on"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public startLoopBack(II)V
    .locals 3
    .param p1, "src"    # I
    .param p2, "dest"    # I

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/LoopbackModel;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ftmtest=loopback;action=start;source="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "dest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public stopLoopAudio()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/LoopbackModel;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "ftmtest=loopback;action=stop"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 56
    return-void
.end method
