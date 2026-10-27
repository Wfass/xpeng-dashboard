.class public Lcom/xiaopeng/xuiservice/xapp/speech/SpeechAppQueryModel;
.super Lcom/xiaopeng/speech/protocol/SpeechModel;
.source "SpeechAppQueryModel.java"

# interfaces
.implements Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;
.implements Lcom/xiaopeng/speech/protocol/query/music/ISingQueryCaller;
.implements Lcom/xiaopeng/speech/protocol/query/system/IControlPanelCaller;
.implements Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SpeechAppQueryModel"


# instance fields
.field private mSpeechController:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/xiaopeng/speech/protocol/SpeechModel;-><init>()V

    .line 22
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechAppQueryModel;->mSpeechController:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;

    .line 23
    return-void
.end method


# virtual methods
.method public getAppCloseStatus(Ljava/lang/String;)I
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechAppQueryModel;->mSpeechController:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->stopApplication(Ljava/lang/String;)I

    move-result v0

    .line 92
    .local v0, "result":I
    const-string v1, "SpeechAppQueryModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppCloseStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " &result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return v0
.end method

.method public getAppDownStatus(Ljava/lang/String;)I
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechAppQueryModel;->mSpeechController:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->downloadApplication(Ljava/lang/String;)I

    move-result v0

    .line 120
    .local v0, "result":I
    const-string v1, "SpeechAppQueryModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppDownStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " &result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return v0
.end method

.method public getAppOpenStatus(Ljava/lang/String;)I
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechAppQueryModel;->mSpeechController:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->startApplication(Ljava/lang/String;)I

    move-result v0

    .line 85
    .local v0, "result":I
    const-string v1, "SpeechAppQueryModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppOpenStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " &result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return v0
.end method

.method public getAppStatusV2(Ljava/lang/String;)I
    .locals 1
    .param p1, "var1"    # Ljava/lang/String;

    .line 188
    const/4 v0, -0x1

    return v0
.end method

.method public getAppletCloseStatus(Ljava/lang/String;)I
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechAppQueryModel;->mSpeechController:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->stopApplet(Ljava/lang/String;)I

    move-result v0

    .line 106
    .local v0, "result":I
    const-string v1, "SpeechAppQueryModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppletCloseStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " &result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return v0
.end method

.method public getAppletOpenStatus(Ljava/lang/String;)I
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechAppQueryModel;->mSpeechController:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->startApplet(Ljava/lang/String;)I

    move-result v0

    .line 99
    .local v0, "result":I
    const-string v1, "SpeechAppQueryModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppletOpenStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " &result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return v0
.end method

.method public getCurrentBackStatus(Ljava/lang/String;)I
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechAppQueryModel;->mSpeechController:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->currentBack(Ljava/lang/String;)I

    move-result v0

    .line 127
    .local v0, "result":I
    const-string v1, "SpeechAppQueryModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentBackStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " &result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return v0
.end method

.method public getCurrentCloseStatus(Ljava/lang/String;)I
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechAppQueryModel;->mSpeechController:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->closeCurrentApp(Ljava/lang/String;)I

    move-result v0

    .line 78
    .local v0, "result":I
    const-string v1, "SpeechAppQueryModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentCloseStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " &result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return v0
.end method

.method public getSingStatus(Ljava/lang/String;)I
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechAppQueryModel;->mSpeechController:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->getSingStatus(Ljava/lang/String;)I

    move-result v0

    .line 134
    .local v0, "result":I
    const-string v1, "SpeechAppQueryModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSingStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " &result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return v0
.end method

.method public hasDialogCloseByHand()Z
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechAppQueryModel;->mSpeechController:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->isHaveNotCancelableDialog()Z

    move-result v0

    .line 113
    .local v0, "result":Z
    const-string v1, "SpeechAppQueryModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasDialogCloseByHand: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return v0
.end method

.method public onBlueToothVolumeSet(I)I
    .locals 4
    .param p1, "type"    # I

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechAppQueryModel;->mSpeechController:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->adjustBluetoothVolume(I)I

    move-result v0

    .line 141
    .local v0, "result":I
    const-string v1, "SpeechAppQueryModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBlueToothVolumeSet type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " &result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return v0
.end method

.method public onBlueToothVolumeSetValue(I)I
    .locals 4
    .param p1, "value"    # I

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechAppQueryModel;->mSpeechController:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->setBluetoothVolume(I)I

    move-result v0

    .line 148
    .local v0, "result":I
    const-string v1, "SpeechAppQueryModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBlueToothVolumeSetValue value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " &result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return v0
.end method

.method public onCancel()V
    .locals 2

    .line 160
    const-string v0, "SpeechAppQueryModel"

    const-string v1, "onBotCancel"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechAppQueryModel;->mSpeechController:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->onBotCancel()V

    .line 162
    return-void
.end method

.method public onCloseAppStoreMainPage()I
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechAppQueryModel;->mSpeechController:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->closeXpAppStore()I

    move-result v0

    .line 43
    .local v0, "result":I
    const-string v1, "SpeechAppQueryModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCloseAppStoreMainPage result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return v0
.end method

.method public onCloseAppletMainPage()I
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechAppQueryModel;->mSpeechController:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->closeXpAppStore()I

    move-result v0

    .line 57
    .local v0, "result":I
    const-string v1, "SpeechAppQueryModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCloseAppletMainPage result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return v0
.end method

.method public onCloseAppshopPage()I
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechAppQueryModel;->mSpeechController:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->closeXpAppStore()I

    move-result v0

    .line 71
    .local v0, "result":I
    const-string v1, "SpeechAppQueryModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCloseAppshopPage result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return v0
.end method

.method public onOpenAppStoreMainPage(Ljava/lang/String;)I
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechAppQueryModel;->mSpeechController:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;

    const-string v1, "com.xiaopeng.intent.action.SHOW_APP_LIST"

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->startXpAppStore(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 36
    .local v0, "result":I
    const-string v1, "SpeechAppQueryModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOpenAppStoreMainPage result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return v0
.end method

.method public onOpenAppletMainPage(Ljava/lang/String;)I
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechAppQueryModel;->mSpeechController:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;

    const-string v1, "com.xiaopeng.intent.action.SHOW_APPLET_LIST"

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->startXpAppStore(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 50
    .local v0, "result":I
    const-string v1, "SpeechAppQueryModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOpenAppletMainPage result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return v0
.end method

.method public onOpenAppshopPage(Ljava/lang/String;)I
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechAppQueryModel;->mSpeechController:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;

    const-string v1, "com.xiaopeng.intent.action.SHOW_APP_STORE"

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->startXpAppStore(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 64
    .local v0, "result":I
    const-string v1, "SpeechAppQueryModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOpenAppshopPage result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return v0
.end method

.method public onSubmit()V
    .locals 2

    .line 154
    const-string v0, "SpeechAppQueryModel"

    const-string v1, "onBotSubmit"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechAppQueryModel;->mSpeechController:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->onBotSubmit()V

    .line 156
    return-void
.end method

.method public screenChangeSet(Ljava/lang/String;)I
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechAppQueryModel;->mSpeechController:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->exchangeWindow(Ljava/lang/String;)I

    move-result v0

    .line 181
    .local v0, "result":I
    const-string v1, "SpeechAppQueryModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screenChangeSet result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return v0
.end method

.method public screenFullSet(Ljava/lang/String;)I
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechAppQueryModel;->mSpeechController:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->screenFullSet(Ljava/lang/String;)I

    move-result v0

    .line 167
    .local v0, "result":I
    const-string v1, "SpeechAppQueryModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screenFullSet result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return v0
.end method

.method public screenSplitSet(Ljava/lang/String;)I
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechAppQueryModel;->mSpeechController:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->screenSplitSet(Ljava/lang/String;)I

    move-result v0

    .line 174
    .local v0, "result":I
    const-string v1, "SpeechAppQueryModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screenSplitSet result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return v0
.end method

.method public subscribe()V
    .locals 2

    .line 26
    const-string v0, "SpeechAppQueryModel"

    const-string v1, "subscribe SpeechAppQueryModel"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-class v0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;

    invoke-virtual {p0, v0, p0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechAppQueryModel;->subscribe(Ljava/lang/Class;Lcom/xiaopeng/speech/IQueryCaller;)V

    .line 28
    const-class v0, Lcom/xiaopeng/speech/protocol/query/music/SingQuery;

    invoke-virtual {p0, v0, p0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechAppQueryModel;->subscribe(Ljava/lang/Class;Lcom/xiaopeng/speech/IQueryCaller;)V

    .line 29
    const-class v0, Lcom/xiaopeng/speech/protocol/query/system/ControlPanelQuery;

    invoke-virtual {p0, v0, p0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechAppQueryModel;->subscribe(Ljava/lang/Class;Lcom/xiaopeng/speech/IQueryCaller;)V

    .line 30
    const-class v0, Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode;

    invoke-virtual {p0, v0, p0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechAppQueryModel;->subscribe(Ljava/lang/Class;Lcom/xiaopeng/speech/INodeListener;)V

    .line 31
    return-void
.end method
