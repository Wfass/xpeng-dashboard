.class public Lcom/xiaopeng/xuiservice/xapp/speech/miniprog/LandScreenMiniprogHandler;
.super Ljava/lang/Object;
.source "LandScreenMiniprogHandler.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/xapp/speech/miniprog/MiniprogHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "LandScreenMiniprogHandler"


# instance fields
.field private mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)V
    .locals 0
    .param p1, "appManagerService"    # Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/speech/miniprog/LandScreenMiniprogHandler;->mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    .line 17
    return-void
.end method

.method private getCurrentMiniAppStatus(Ljava/lang/String;)I
    .locals 1
    .param p1, "ali_id"    # Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/miniprog/LandScreenMiniprogHandler;->mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getCurrentMiniAppStatus(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public exitApplet(Ljava/lang/String;)I
    .locals 3
    .param p1, "appletId"    # Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/miniprog/LandScreenMiniprogHandler;->mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getCurApp()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;

    move-result-object v0

    .line 35
    .local v0, "curApp":Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;
    iget-boolean v1, v0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;->mIsMiniProgram:Z

    if-nez v1, :cond_0

    .line 36
    const/4 v1, 0x2

    .local v1, "resultCode":I
    goto :goto_0

    .line 38
    .end local v1    # "resultCode":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/miniprog/LandScreenMiniprogHandler;->getCurrentMiniAppStatus(Ljava/lang/String;)I

    move-result v1

    .line 39
    .local v1, "status":I
    if-nez v1, :cond_1

    .line 40
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/speech/miniprog/LandScreenMiniprogHandler;->mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-virtual {v2, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->exitApplet(Ljava/lang/String;)V

    .line 41
    const/4 v2, 0x1

    .line 43
    .local v2, "resultCode":I
    move v1, v2

    .line 46
    .end local v2    # "resultCode":I
    .local v1, "resultCode":I
    :goto_0
    return v1

    .line 43
    .local v1, "status":I
    :cond_1
    const/4 v2, 0x2

    return v2
.end method

.method public startMiniProgram(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)I
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/util/Map;

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/miniprog/LandScreenMiniprogHandler;->mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getCurApp()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;

    move-result-object v0

    .line 22
    .local v0, "curApp":Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;
    iget-boolean v1, v0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;->mIsMiniProgram:Z

    if-nez v1, :cond_0

    .line 23
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/speech/miniprog/LandScreenMiniprogHandler;->mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    if-eqz v1, :cond_0

    .line 24
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/util/InputEventUtil;->dispatchKey(I)V

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/speech/miniprog/LandScreenMiniprogHandler;->mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-virtual {v1, p1, p2, p3}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->startMiniProgram(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 28
    const/4 v1, 0x1

    return v1
.end method
