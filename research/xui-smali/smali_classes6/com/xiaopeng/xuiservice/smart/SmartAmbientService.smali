.class public Lcom/xiaopeng/xuiservice/smart/SmartAmbientService;
.super Lcom/xiaopeng/xuiservice/smart/BaseSmartService;
.source "SmartAmbientService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/smart/SmartAmbientService$InstanceHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartAmbientService"


# instance fields
.field private hasIgOn:Z

.field private mMcuCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 86
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientService;->mMcuCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    .line 87
    return-void
.end method

.method private addMcuManagerCallback()V
    .locals 1

    .line 22
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientService$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientService$1;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartAmbientService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientService;->mMcuCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientService;->mMcuCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientService;->addMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 33
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/smart/SmartAmbientService;
    .locals 1

    .line 95
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientService$InstanceHolder;->access$000()Lcom/xiaopeng/xuiservice/smart/SmartAmbientService;

    move-result-object v0

    return-object v0
.end method

.method private removeCarListener()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientService;->mMcuCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientService;->removeMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 37
    return-void
.end method


# virtual methods
.method public bridge synthetic debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 78
    return-void
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 82
    const-string v0, "SmartAmbientService"

    return-object v0
.end method

.method protected initCarListener()V
    .locals 2

    .line 54
    const-string v0, "SmartAmbientService"

    const-string v1, "initCarListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientService;->addMcuManagerCallback()V

    .line 57
    return-void
.end method

.method protected initXUIManager()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 61
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->initXUIManager()V

    .line 62
    return-void
.end method

.method protected onCarManagerInited()V
    .locals 5

    .line 41
    const-string/jumbo v0, "xp_mcu"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/mcu/CarMcuManager;

    .line 44
    .local v0, "mcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    :try_start_0
    invoke-virtual {v0}, Landroid/car/hardware/mcu/CarMcuManager;->getIgStatusFromMcu()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientService;->hasIgOn:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    goto :goto_1

    .line 45
    :catch_0
    move-exception v1

    .line 46
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SmartAmbientService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCarManagerInited failed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    const-string v1, "SmartAmbientService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCarManagerInited, hasIgOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientService;->hasIgOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method protected onInit()V
    .locals 2

    .line 66
    const-string v0, "SmartAmbientService"

    const-string v1, "onInit"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method protected onRelease()V
    .locals 2

    .line 71
    const-string v0, "SmartAmbientService"

    const-string v1, "onRelease"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientService;->removeCarListener()V

    .line 74
    return-void
.end method
