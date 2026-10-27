.class public Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$startActivityCheckRunnable;
.super Ljava/lang/Object;
.source "UserScenarioConfiger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "startActivityCheckRunnable"
.end annotation


# instance fields
.field private extraInfo:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 463
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$startActivityCheckRunnable;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 472
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$startActivityCheckRunnable;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_1

    .line 473
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$startActivityCheckRunnable;->extraInfo:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;->getStartPackageName()Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, "startActivity":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$startActivityCheckRunnable;->extraInfo:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;->getStartClassName()Ljava/lang/String;

    move-result-object v1

    .line 475
    .local v1, "startClassName":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->getInstance()Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->isTopActivity(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 476
    const-string v2, "UserScenarioConfiger"

    const-string v3, "startActivityCheckRunnable start activity is front, no need to start again."

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    return-void

    .line 479
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->getInstance()Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->postStartActivity(ILjava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string v2, "UserScenarioConfiger"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startActivityCheckRunnable mRetryNotFrontCount ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$startActivityCheckRunnable;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->access$200(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " start activity ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " startClassName ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    .end local v0    # "startActivity":Ljava/lang/String;
    .end local v1    # "startClassName":Ljava/lang/String;
    goto :goto_0

    .line 482
    :cond_1
    const-string v0, "UserScenarioConfiger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startActivityCheckRunnable cancel mRetryNotFrontCount ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$startActivityCheckRunnable;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->access$200(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " status ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$startActivityCheckRunnable;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    :goto_0
    return-void
.end method

.method public setExtraInfo(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;)V
    .locals 0
    .param p1, "extraInfo"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;

    .line 467
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$startActivityCheckRunnable;->extraInfo:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;

    .line 468
    return-void
.end method
