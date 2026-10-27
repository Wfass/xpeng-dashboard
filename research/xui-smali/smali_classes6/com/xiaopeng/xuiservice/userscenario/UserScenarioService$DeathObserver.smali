.class Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$DeathObserver;
.super Ljava/lang/Object;
.source "UserScenarioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeathObserver"
.end annotation


# instance fields
.field private appPid:I

.field private groupIdx:I

.field private scenario:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "groupIdx"    # I
    .param p2, "appPid"    # I
    .param p3, "scenario"    # Ljava/lang/String;

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$DeathObserver;->groupIdx:I

    .line 441
    iput p2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$DeathObserver;->appPid:I

    .line 442
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$DeathObserver;->scenario:Ljava/lang/String;

    .line 443
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .line 447
    const-string v0, "UserScenarioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launch app died, pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$DeathObserver;->appPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",scenario:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$DeathObserver;->scenario:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",group index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$DeathObserver;->groupIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->access$1300()[Landroid/os/IBinder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$DeathObserver;->groupIdx:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 450
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->access$700()[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$DeathObserver;->groupIdx:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 452
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->access$1600()Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->removeMessages(I)V

    .line 453
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->access$1600()Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->removeMessages(I)V

    .line 454
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->access$700()[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    move-result-object v0

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$DeathObserver;->groupIdx:I

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setStatus(I)V

    .line 455
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->access$1600()Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    move-result-object v0

    const/4 v1, 0x6

    .line 456
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->access$700()[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    move-result-object v2

    iget v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$DeathObserver;->groupIdx:I

    aget-object v2, v2, v3

    .line 455
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 456
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    goto :goto_0

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "UserScenarioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeathRecipient e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method
