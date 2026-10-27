.class public Lcom/xiaopeng/xuiservice/xapp/speech/window/TopWindowHandler;
.super Ljava/lang/Object;
.source "TopWindowHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TopWindowHandler"


# instance fields
.field protected mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/window/TopWindowHandler;->mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    .line 21
    return-void
.end method


# virtual methods
.method public closeDialog(I)I
    .locals 1
    .param p1, "displayId"    # I

    .line 37
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/window/TopWindowHandler;->closeSystemDialog(I)I

    move-result v0

    return v0
.end method

.method protected closeSystemDialog(I)I
    .locals 2
    .param p1, "screenId"    # I

    .line 45
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getShowDialog(I)Lcom/xiaopeng/app/xpDialogInfo;

    move-result-object v0

    .line 46
    .local v0, "dialogInfo":Lcom/xiaopeng/app/xpDialogInfo;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/xiaopeng/app/xpDialogInfo;->closeOutside:Z

    if-eqz v1, :cond_0

    .line 47
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->dismissDialog(I)V

    .line 48
    const/4 v1, 0x1

    return v1

    .line 50
    :cond_0
    const/4 v1, 0x3

    return v1
.end method

.method protected closeTopActivity(I)I
    .locals 7
    .param p1, "screenId"    # I

    .line 54
    const-string v0, "TopWindowHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeTopActivity screenId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x2

    .line 56
    .local v0, "result":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/speech/window/TopWindowHandler;->mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getTopPrimaryActivityInfo(I)Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;

    move-result-object v1

    .line 57
    .local v1, "xAppActivityInfo":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    if-eqz v1, :cond_0

    .line 58
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 59
    .local v2, "extras":Landroid/os/Bundle;
    const-string v3, "screenId"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v3

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 61
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getActivityName()Ljava/lang/String;

    move-result-object v6

    .line 60
    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->closeApplication(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 62
    const/4 v0, 0x1

    .line 64
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_0
    return v0
.end method

.method public closeTopWindow(I)I
    .locals 2
    .param p1, "screenId"    # I

    .line 24
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getShowDialog(I)Lcom/xiaopeng/app/xpDialogInfo;

    move-result-object v0

    .line 25
    .local v0, "dialogInfo":Lcom/xiaopeng/app/xpDialogInfo;
    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/window/TopWindowHandler;->closeDialog(I)I

    move-result v1

    return v1

    .line 28
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/window/TopWindowHandler;->closeTopActivity(I)I

    move-result v1

    return v1
.end method

.method public isHaveNotCancelableDialog(I)Z
    .locals 1
    .param p1, "displayId"    # I

    .line 33
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/window/TopWindowHandler;->isHaveNotCancelableSystemDialog(I)Z

    move-result v0

    return v0
.end method

.method protected isHaveNotCancelableSystemDialog(I)Z
    .locals 1
    .param p1, "displayId"    # I

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/window/TopWindowHandler;->mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->isHaveNotCancelableDialog()Z

    move-result v0

    return v0
.end method

.method protected sendBackKeyEvent()V
    .locals 2

    .line 68
    const-string v0, "TopWindowHandler"

    const-string v1, "sendBackKeyEvent "

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/util/InputEventUtil;->dispatchKey(I)V

    .line 70
    return-void
.end method

.method protected sendBackKeyEvent(I)V
    .locals 3
    .param p1, "display"    # I

    .line 73
    const-string v0, "TopWindowHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendBackKeyEvent displayId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x4

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/util/InputEventUtil;->dispatchKey(II)V

    .line 75
    return-void
.end method
