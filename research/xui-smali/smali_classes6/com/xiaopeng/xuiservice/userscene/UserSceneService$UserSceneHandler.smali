.class final Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;
.super Landroid/os/Handler;
.source "UserSceneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/userscene/UserSceneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserSceneHandler"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 446
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;->this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    .line 447
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 445
    const-string p1, "UserSceneHandler"

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;->TAG:Ljava/lang/String;

    .line 448
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 451
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 452
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 470
    :pswitch_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->getInstance()Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    move-result-object v0

    monitor-enter v0

    .line 472
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;->this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->access$100(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 473
    const-string v1, "UserSceneHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "do pending operation,current op elements:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;->this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    .line 474
    invoke-static {v3}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->access$100(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)Ljava/util/Deque;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Deque;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 473
    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    :try_start_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 482
    .local v0, "targetOperation":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 483
    .local v1, "operationData":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 484
    .local v2, "object":Lorg/json/JSONObject;
    const-string v3, "packageName"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 485
    .local v3, "packageName":Ljava/lang/String;
    const-string v4, "className"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 486
    .local v4, "className":Ljava/lang/String;
    const-string v5, "UserSceneHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "do pending operation,targetOperation:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " &packageName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " &className:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const/16 v5, 0x64

    if-ne v5, v0, :cond_1

    .line 489
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;->this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v3, v4}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->startActivtyToForeground(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 493
    .end local v0    # "targetOperation":I
    .end local v1    # "operationData":Ljava/lang/String;
    .end local v2    # "object":Lorg/json/JSONObject;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "className":Ljava/lang/String;
    :cond_1
    goto/16 :goto_0

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "UserSceneHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "do pending operation error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 476
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 454
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;

    .line 455
    .local v0, "operation":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;->this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->access$100(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;

    .line 456
    .local v1, "firstOperation":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    const-string v2, "UserSceneHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage MSG_BACK_CHECK operation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " &firstOperation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->access$200(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;)I

    move-result v2

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->access$200(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;)I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 458
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->access$300(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;)J

    move-result-wide v2

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->access$300(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 459
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;->this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->access$400(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->access$500(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;Ljava/lang/String;)V

    .line 460
    const-string v2, "UserSceneHandler"

    const-string v3, "handleMessage MSG_BACK_CHECK go back timeOut"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 463
    :cond_2
    const-string v2, "UserSceneHandler"

    const-string v3, "handleMessage MSG_BACK_CHECK operation startTime is invalid"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 466
    :cond_3
    const-string v2, "UserSceneHandler"

    const-string v3, "handleMessage MSG_BACK_CHECK operation is invalid"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    nop

    .line 498
    .end local v0    # "operation":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    .end local v1    # "firstOperation":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
