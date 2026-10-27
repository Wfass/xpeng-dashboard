.class public Lcom/xiaopeng/commonfunc/model/ModeModel;
.super Ljava/lang/Object;
.source "ModeModel.java"


# static fields
.field private static final AUDIO_DTS_VER_PREFIX:Ljava/lang/String; = "DTS VER="

.field private static final AUDIO_PARAM_DTS_VER:Ljava/lang/String; = "DTS VER"

.field private static final PARAMETER_FTM_OFF:Ljava/lang/String; = "ftm_mode=false"

.field private static final PARAMETER_FTM_ON:Ljava/lang/String; = "ftm_mode=true"

.field private static final TAG:Ljava/lang/String; = "ModeModel"


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mMcuModel:Lcom/xiaopeng/commonfunc/model/car/McuModel;

.field private final mTboxModel:Lcom/xiaopeng/commonfunc/model/car/TboxModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/xiaopeng/commonfunc/model/car/McuModel;

    const-string v1, "ModeModel"

    invoke-direct {v0, v1}, Lcom/xiaopeng/commonfunc/model/car/McuModel;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/ModeModel;->mMcuModel:Lcom/xiaopeng/commonfunc/model/car/McuModel;

    .line 30
    new-instance v0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;

    const-string v1, "ModeModel"

    invoke-direct {v0, v1}, Lcom/xiaopeng/commonfunc/model/car/TboxModel;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/ModeModel;->mTboxModel:Lcom/xiaopeng/commonfunc/model/car/TboxModel;

    .line 31
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/ModeModel;->mAudioManager:Landroid/media/AudioManager;

    .line 32
    return-void
.end method


# virtual methods
.method public enterAudioTestMode()V
    .locals 2

    .line 35
    const-string v0, "ModeModel"

    const-string v1, "enterAudioTestMode"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/ModeModel;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "ftm_mode=true"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public enterMcuTestMode()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/ModeModel;->mMcuModel:Lcom/xiaopeng/commonfunc/model/car/McuModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/commonfunc/model/car/McuModel;->setDvTestReq(I)V

    .line 54
    return-void
.end method

.method public enterTboxTestMode()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/ModeModel;->mTboxModel:Lcom/xiaopeng/commonfunc/model/car/TboxModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->setDvTestReq(I)V

    .line 46
    return-void
.end method

.method public exitAudioTestMode()V
    .locals 2

    .line 40
    const-string v0, "ModeModel"

    const-string v1, "enterAudioTestMode"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/ModeModel;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "ftm_mode=false"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public exitMcuTestMode()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/ModeModel;->mMcuModel:Lcom/xiaopeng/commonfunc/model/car/McuModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/commonfunc/model/car/McuModel;->setDvTestReq(I)V

    .line 58
    return-void
.end method

.method public exitTboxTestMode()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/ModeModel;->mTboxModel:Lcom/xiaopeng/commonfunc/model/car/TboxModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->setDvTestReq(I)V

    .line 50
    return-void
.end method

.method public getDtsVer()Ljava/lang/String;
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/ModeModel;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "DTS VER"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DTS VER="

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
