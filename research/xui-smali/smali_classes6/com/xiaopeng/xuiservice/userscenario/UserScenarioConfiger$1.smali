.class Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$1;
.super Ljava/lang/Object;
.source "UserScenarioConfiger.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SwitchScreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 383
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$1;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitchScreen(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;)V
    .locals 13
    .param p1, "extra"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;

    .line 394
    const-string v0, "UserScenarioConfiger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwitchScreen extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;->getOperation()I

    move-result v0

    .line 396
    .local v0, "operation":I
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;->isUserScenario()Z

    move-result v2

    .line 398
    .local v2, "isUserScenario":Z
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;->getOpResult()I

    move-result v3

    .line 399
    .local v3, "opResult":I
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;->getStartPackageName()Ljava/lang/String;

    move-result-object v4

    .line 400
    .local v4, "startPackageName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;->getStartClassName()Ljava/lang/String;

    move-result-object v5

    .line 401
    .local v5, "startClassName":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 402
    return-void

    .line 404
    :cond_0
    const/4 v6, 0x1

    const-wide/16 v7, 0x3e8

    const/4 v9, 0x2

    const/4 v10, 0x3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    .line 407
    :pswitch_0
    iget-object v11, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$1;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    invoke-static {v11}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->access$100(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)I

    move-result v11

    if-ne v6, v11, :cond_2

    .line 408
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 409
    .local v6, "bundle":Landroid/os/Bundle;
    const-string v11, "eventType"

    const-string v12, "eventSwitchScreen"

    invoke-virtual {v6, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v11, "eventSwitchPkg"

    invoke-virtual {v6, v11, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v11, "eventSwitchResult"

    invoke-virtual {v6, v11, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 412
    const-string v11, "eventSwitchType"

    invoke-virtual {v6, v11, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 413
    iget-object v11, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$1;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    const-string v12, "eventNotify"

    invoke-virtual {v11, v12, v6}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->launchApp(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 414
    iget-object v11, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$1;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    invoke-static {v11}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->access$200(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)I

    move-result v11

    if-ge v11, v10, :cond_1

    iget-object v10, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$1;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    invoke-virtual {v10}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v10

    if-ne v9, v10, :cond_1

    .line 416
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v9

    iget-object v10, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$1;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    iget-object v10, v10, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->switchScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v9, v10}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 417
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v9

    iget-object v10, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$1;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    iget-object v10, v10, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->switchScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v9, v10, v7, v8}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 418
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$1;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    invoke-static {v7}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->access$208(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)I

    .line 419
    const-string v7, "UserScenarioConfiger"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onSwitchScreen retry mRetryNotFrontCount ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$1;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    invoke-static {v9}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->access$200(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    .end local v6    # "bundle":Landroid/os/Bundle;
    :cond_1
    goto/16 :goto_0

    .line 425
    :pswitch_1
    goto/16 :goto_0

    .line 428
    :pswitch_2
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$1;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    invoke-static {v6}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->access$300(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)I

    move-result v6

    if-ge v6, v10, :cond_2

    iget-object v6, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$1;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    invoke-virtual {v6}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v6

    if-ne v9, v6, :cond_2

    .line 430
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v6

    iget-object v9, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$1;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    iget-object v9, v9, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->switchScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v9}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 431
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v6

    iget-object v9, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$1;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    iget-object v9, v9, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->switchScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v9, v7, v8}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 432
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$1;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    invoke-static {v6}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->access$308(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)I

    .line 433
    const-string v6, "UserScenarioConfiger"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSwitchScreen retry mRetryFullCount ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$1;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    invoke-static {v8}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->access$300(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 442
    :pswitch_3
    iget-object v11, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$1;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    invoke-static {v11}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->access$100(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)I

    move-result v11

    if-ne v6, v11, :cond_2

    .line 443
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$1;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    invoke-static {v6}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->access$200(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)I

    move-result v6

    if-ge v6, v10, :cond_2

    iget-object v6, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$1;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    invoke-virtual {v6}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v6

    if-ne v9, v6, :cond_2

    .line 445
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$1;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    invoke-static {v6}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->access$400(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$startActivityCheckRunnable;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$startActivityCheckRunnable;->setExtraInfo(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;)V

    .line 446
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v6

    iget-object v9, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$1;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    invoke-static {v9}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->access$400(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$startActivityCheckRunnable;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 447
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v6

    iget-object v9, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$1;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    invoke-static {v9}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->access$400(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$startActivityCheckRunnable;

    move-result-object v9

    invoke-virtual {v6, v9, v7, v8}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 448
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$1;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    invoke-static {v6}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->access$208(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)I

    .line 449
    const-string v6, "UserScenarioConfiger"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startActivityCheck retry mRetryNotFrontCount ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$1;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    invoke-static {v8}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->access$200(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " extra ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
