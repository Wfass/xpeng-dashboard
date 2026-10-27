.class public Lcom/xiaopeng/xuiservice/xapp/speech/miniprog/PortScreenMiniprogHandler;
.super Ljava/lang/Object;
.source "PortScreenMiniprogHandler.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/xapp/speech/miniprog/MiniprogHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "PortScreenMiniprogHandler"


# instance fields
.field private mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)V
    .locals 0
    .param p1, "appManagerService"    # Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/speech/miniprog/PortScreenMiniprogHandler;->mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    .line 18
    return-void
.end method


# virtual methods
.method public exitApplet(Ljava/lang/String;)I
    .locals 4
    .param p1, "appletId"    # Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/miniprog/PortScreenMiniprogHandler;->mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getCurrentMiniAppStatus(Ljava/lang/String;)I

    move-result v0

    .line 33
    .local v0, "status":I
    const-string v1, "PortScreenMiniprogHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exitApplet current Applet Status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    if-nez v0, :cond_0

    .line 35
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/speech/miniprog/PortScreenMiniprogHandler;->mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->exitApplet(Ljava/lang/String;)V

    .line 36
    const/4 v1, 0x1

    return v1

    .line 38
    :cond_0
    const/4 v1, 0x2

    return v1
.end method

.method public startMiniProgram(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)I
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/util/Map;

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/miniprog/PortScreenMiniprogHandler;->mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getCurApp()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;

    move-result-object v0

    .line 23
    .local v0, "record":Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;->mIsPanel:Z

    if-eqz v1, :cond_0

    .line 24
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/util/InputEventUtil;->dispatchKey(I)V

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/speech/miniprog/PortScreenMiniprogHandler;->mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-virtual {v1, p1, p2, p3}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->startMiniProgram(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 27
    const/4 v1, 0x1

    return v1
.end method
