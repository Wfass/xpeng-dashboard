.class Lcom/xiaopeng/xuiservice/userscene/UserSceneService$3;
.super Ljava/lang/Object;
.source "UserSceneService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->doScreenOperation(ILjava/lang/String;ZILcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

.field final synthetic val$extraDate:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;

.field final synthetic val$isUserScenario:Z

.field final synthetic val$operation:I

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$screenId:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;ILjava/lang/String;ZI)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    .line 865
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$3;->this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$3;->val$extraDate:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;

    iput p3, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$3;->val$operation:I

    iput-object p4, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$3;->val$packageName:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$3;->val$isUserScenario:Z

    iput p6, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$3;->val$screenId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .line 868
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$3;->this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->access$100(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    .line 869
    .local v2, "operationQueueIsEmpty":Z
    const/4 v0, 0x0

    .line 870
    .local v0, "startActivity":Ljava/lang/String;
    const/4 v3, -0x1

    .line 871
    .local v3, "shouldDoScreenMode":I
    const/4 v4, 0x0

    .line 872
    .local v4, "backComponentName":Landroid/content/ComponentName;
    const/4 v5, 0x1

    .line 873
    .local v5, "useAnimation":Z
    const/4 v6, 0x0

    .line 874
    .local v6, "freezeDuration":I
    const/4 v7, 0x0

    .line 875
    .local v7, "delayDuration":I
    iget-object v8, v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$3;->val$extraDate:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;

    if-eqz v8, :cond_0

    .line 876
    iget-object v8, v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$3;->val$extraDate:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;

    invoke-static {v8}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;->access$2400(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;)Ljava/lang/String;

    move-result-object v0

    .line 877
    iget-object v8, v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$3;->val$extraDate:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;

    invoke-static {v8}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;->access$2500(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;)I

    move-result v3

    .line 878
    iget-object v8, v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$3;->val$extraDate:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;

    invoke-static {v8}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;->access$2600(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;)Landroid/content/ComponentName;

    move-result-object v4

    .line 879
    iget-object v8, v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$3;->val$extraDate:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;

    invoke-static {v8}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;->access$2700(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;)Z

    move-result v5

    .line 880
    iget-object v8, v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$3;->val$extraDate:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;

    invoke-static {v8}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;->access$2800(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;)I

    move-result v6

    .line 881
    iget-object v8, v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$3;->val$extraDate:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;

    invoke-static {v8}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;->access$2900(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;)I

    move-result v7

    .line 883
    .end local v0    # "startActivity":Ljava/lang/String;
    .local v3, "startActivity":Ljava/lang/String;
    .local v4, "shouldDoScreenMode":I
    .local v5, "backComponentName":Landroid/content/ComponentName;
    .local v6, "useAnimation":Z
    .local v7, "freezeDuration":I
    .local v8, "delayDuration":I
    :cond_0
    move v8, v7

    move v7, v6

    move v6, v5

    move-object v5, v4

    move v4, v3

    move-object v3, v0

    const-string v0, "UserSceneService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "##doScreenOperation, operationQueueIsEmpty="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " operation="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$3;->val$operation:I

    .line 884
    invoke-static {v10}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->getOperationName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " packageName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$3;->val$packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " isUserScenario="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$3;->val$isUserScenario:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " extraDate ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$3;->val$extraDate:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 883
    invoke-static {v0, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    new-instance v0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;

    new-instance v9, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;

    invoke-direct {v9}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;-><init>()V

    iget v10, v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$3;->val$operation:I

    .line 887
    invoke-virtual {v9, v10}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->setOperation(I)Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;

    move-result-object v9

    iget-object v10, v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$3;->val$packageName:Ljava/lang/String;

    .line 888
    invoke-virtual {v9, v10}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->setPackageName(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;

    move-result-object v9

    iget-boolean v10, v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$3;->val$isUserScenario:Z

    .line 889
    invoke-virtual {v9, v10}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->setIsUserScenario(Z)Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;

    move-result-object v9

    iget v10, v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$3;->val$screenId:I

    .line 890
    invoke-virtual {v9, v10}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->setScreenId(I)Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;

    move-result-object v9

    .line 891
    invoke-virtual {v9, v3}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->setStartActivity(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;

    move-result-object v9

    .line 892
    invoke-virtual {v9, v4}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->setShouldDoScreenMode(I)Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;

    move-result-object v9

    .line 893
    invoke-virtual {v9, v5}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->setBackComponentName(Landroid/content/ComponentName;)Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;

    move-result-object v9

    .line 894
    invoke-virtual {v9, v6}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->setUseAnimation(Z)Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;

    move-result-object v9

    .line 895
    invoke-virtual {v9, v7}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->setFreezeDuration(I)Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;

    move-result-object v9

    .line 896
    invoke-virtual {v9, v8}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->setDelayDuration(I)Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;

    move-result-object v9

    invoke-direct {v0, v9}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;-><init>(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;)V

    move-object v9, v0

    .line 897
    .local v9, "operationData":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$3;->this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->access$100(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)Ljava/util/Deque;

    move-result-object v10

    monitor-enter v10

    .line 898
    const/4 v0, 0x1

    .line 899
    .local v0, "shouldOfferLast":Z
    if-nez v2, :cond_6

    .line 900
    :try_start_0
    iget-object v12, v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$3;->this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    invoke-static {v12}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->access$100(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)Ljava/util/Deque;

    move-result-object v12

    invoke-interface {v12, v9}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 902
    iget-object v12, v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$3;->this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    invoke-static {v12}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->access$100(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)Ljava/util/Deque;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v12

    .line 903
    .local v12, "descendingIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;>;"
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 904
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;

    .line 905
    .local v13, "queuedOperation":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    invoke-virtual {v13}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getOperation()I

    move-result v14

    .line 906
    .local v14, "queuedOperationId":I
    iget v15, v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$3;->val$operation:I

    if-ne v14, v15, :cond_3

    .line 907
    iget-object v15, v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$3;->this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    invoke-static {v15}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->access$100(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)Ljava/util/Deque;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Deque;->size()I

    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v11, 0x1

    if-le v15, v11, :cond_1

    .line 908
    :try_start_1
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    .line 909
    const-string v11, "UserSceneService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v0

    const-string v0, "**doScreenOperation**, operation remove="

    .end local v0    # "shouldOfferLast":Z
    .local v16, "shouldOfferLast":Z
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 910
    nop

    .line 926
    move/from16 v17, v2

    move-object/from16 v18, v3

    goto :goto_1

    .line 964
    .end local v12    # "descendingIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;>;"
    .end local v13    # "queuedOperation":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    .end local v14    # "queuedOperationId":I
    .end local v16    # "shouldOfferLast":Z
    :catchall_0
    move-exception v0

    move/from16 v17, v2

    move-object/from16 v18, v3

    goto/16 :goto_8

    .line 912
    .restart local v0    # "shouldOfferLast":Z
    .restart local v12    # "descendingIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;>;"
    .restart local v13    # "queuedOperation":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    .restart local v14    # "queuedOperationId":I
    :cond_1
    move/from16 v16, v0

    .end local v0    # "shouldOfferLast":Z
    .restart local v16    # "shouldOfferLast":Z
    const/4 v0, 0x0

    .line 914
    .end local v16    # "shouldOfferLast":Z
    .restart local v0    # "shouldOfferLast":Z
    :try_start_2
    iget v11, v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$3;->val$operation:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v15, 0x6

    if-eq v11, v15, :cond_2

    .line 915
    move/from16 v17, v2

    move-object/from16 v18, v3

    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .end local v2    # "operationQueueIsEmpty":Z
    .end local v3    # "startActivity":Ljava/lang/String;
    .local v17, "operationQueueIsEmpty":Z
    .local v18, "startActivity":Ljava/lang/String;
    invoke-virtual {v13, v2, v3}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->setOperationStartTime(J)V

    .line 916
    const-string v2, "UserSceneService"

    const-string v3, "**doScreenOperation**, operationQueue.size()<=1 reset sartTime"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 926
    .end local v12    # "descendingIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;>;"
    .end local v13    # "queuedOperation":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    .end local v14    # "queuedOperationId":I
    .end local v17    # "operationQueueIsEmpty":Z
    .end local v18    # "startActivity":Ljava/lang/String;
    .restart local v2    # "operationQueueIsEmpty":Z
    .restart local v3    # "startActivity":Ljava/lang/String;
    :cond_2
    move/from16 v17, v2

    move-object/from16 v18, v3

    .end local v2    # "operationQueueIsEmpty":Z
    .end local v3    # "startActivity":Ljava/lang/String;
    .restart local v17    # "operationQueueIsEmpty":Z
    .restart local v18    # "startActivity":Ljava/lang/String;
    goto :goto_2

    .line 921
    .end local v17    # "operationQueueIsEmpty":Z
    .end local v18    # "startActivity":Ljava/lang/String;
    .restart local v2    # "operationQueueIsEmpty":Z
    .restart local v3    # "startActivity":Ljava/lang/String;
    .restart local v12    # "descendingIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;>;"
    .restart local v13    # "queuedOperation":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    .restart local v14    # "queuedOperationId":I
    :cond_3
    move/from16 v16, v0

    move/from16 v17, v2

    move-object/from16 v18, v3

    .end local v0    # "shouldOfferLast":Z
    .end local v2    # "operationQueueIsEmpty":Z
    .end local v3    # "startActivity":Ljava/lang/String;
    .restart local v16    # "shouldOfferLast":Z
    .restart local v17    # "operationQueueIsEmpty":Z
    .restart local v18    # "startActivity":Ljava/lang/String;
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    .line 922
    const-string v0, "UserSceneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "**doScreenOperation**, remove useless="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    .end local v13    # "queuedOperation":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    .end local v14    # "queuedOperationId":I
    nop

    .line 902
    move/from16 v0, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    goto/16 :goto_0

    .line 926
    .end local v12    # "descendingIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;>;"
    .end local v16    # "shouldOfferLast":Z
    .end local v17    # "operationQueueIsEmpty":Z
    .end local v18    # "startActivity":Ljava/lang/String;
    .restart local v0    # "shouldOfferLast":Z
    .restart local v2    # "operationQueueIsEmpty":Z
    .restart local v3    # "startActivity":Ljava/lang/String;
    :cond_4
    move/from16 v16, v0

    move/from16 v17, v2

    move-object/from16 v18, v3

    .end local v0    # "shouldOfferLast":Z
    .end local v2    # "operationQueueIsEmpty":Z
    .end local v3    # "startActivity":Ljava/lang/String;
    .restart local v16    # "shouldOfferLast":Z
    .restart local v17    # "operationQueueIsEmpty":Z
    .restart local v18    # "startActivity":Ljava/lang/String;
    :goto_1
    move/from16 v0, v16

    .end local v16    # "shouldOfferLast":Z
    .restart local v0    # "shouldOfferLast":Z
    :goto_2
    const-string v2, "UserSceneService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "**doScreenOperation**, operationQueue.size()="

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$3;->this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    invoke-static {v11}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->access$100(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)Ljava/util/Deque;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Deque;->size()I

    move-result v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " shouldOfferLast="

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$3;->this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->access$100(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)Ljava/util/Deque;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 929
    .local v2, "descendingIterator2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;>;"
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 930
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;

    .line 931
    .local v3, "operation":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    const-string v11, "UserSceneService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "**doScreenOperation**, tailed operationlist :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    .end local v3    # "operation":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    goto :goto_3

    .line 934
    :cond_5
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$3;->this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->access$100(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)Ljava/util/Deque;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Deque;->size()I

    move-result v3

    const/4 v11, 0x3

    if-lt v3, v11, :cond_7

    .line 936
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$3;->this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->access$100(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)Ljava/util/Deque;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;

    .line 937
    .local v3, "queuedLast":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    const-string v11, "UserSceneService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "**doScreenOperation**, pollLast = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "descendingIterator2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;>;"
    .end local v3    # "queuedLast":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    goto :goto_4

    .line 964
    .end local v0    # "shouldOfferLast":Z
    .end local v17    # "operationQueueIsEmpty":Z
    .end local v18    # "startActivity":Ljava/lang/String;
    .local v2, "operationQueueIsEmpty":Z
    .local v3, "startActivity":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move/from16 v17, v2

    move-object/from16 v18, v3

    .end local v2    # "operationQueueIsEmpty":Z
    .end local v3    # "startActivity":Ljava/lang/String;
    .restart local v17    # "operationQueueIsEmpty":Z
    .restart local v18    # "startActivity":Ljava/lang/String;
    goto/16 :goto_8

    .line 940
    .end local v17    # "operationQueueIsEmpty":Z
    .end local v18    # "startActivity":Ljava/lang/String;
    .restart local v0    # "shouldOfferLast":Z
    .restart local v2    # "operationQueueIsEmpty":Z
    .restart local v3    # "startActivity":Ljava/lang/String;
    :cond_6
    move/from16 v16, v0

    move/from16 v17, v2

    move-object/from16 v18, v3

    .end local v2    # "operationQueueIsEmpty":Z
    .end local v3    # "startActivity":Ljava/lang/String;
    .restart local v17    # "operationQueueIsEmpty":Z
    .restart local v18    # "startActivity":Ljava/lang/String;
    :cond_7
    :goto_4
    if-eqz v0, :cond_8

    .line 941
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$3;->this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->access$100(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)Ljava/util/Deque;

    move-result-object v2

    invoke-interface {v2, v9}, Ljava/util/Deque;->offerLast(Ljava/lang/Object;)Z

    .line 942
    const-string v2, "UserSceneService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "**doScreenOperation**, offerLast = "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 964
    .end local v0    # "shouldOfferLast":Z
    :catchall_2
    move-exception v0

    goto/16 :goto_8

    .line 947
    .restart local v0    # "shouldOfferLast":Z
    :cond_8
    :goto_5
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$3;->this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->access$100(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)Ljava/util/Deque;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    .line 948
    .local v2, "queueSize":I
    const/4 v3, 0x2

    if-lt v2, v3, :cond_c

    iget v3, v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$3;->val$operation:I

    const/4 v11, 0x5

    if-eq v11, v3, :cond_c

    iget v3, v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$3;->val$operation:I

    const/4 v12, 0x6

    if-eq v12, v3, :cond_c

    .line 949
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$3;->this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->access$100(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)Ljava/util/Deque;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v3

    .line 950
    .local v3, "descendingIterator2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;>;"
    iget-object v12, v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$3;->this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    invoke-static {v12}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->access$100(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)Ljava/util/Deque;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;

    .line 951
    .local v12, "first":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 952
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;

    .line 953
    .local v13, "current":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    invoke-virtual {v13, v9}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    invoke-virtual {v13, v12}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 955
    invoke-virtual {v13}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getOperation()I

    move-result v14

    if-eq v11, v14, :cond_9

    invoke-virtual {v13}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->getOperation()I

    move-result v14

    const/4 v15, 0x6

    if-ne v15, v14, :cond_b

    .line 956
    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 957
    const-string v11, "UserSceneService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "**doScreenOperation**, remove useless operation="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ",queueSize="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    goto :goto_7

    .line 962
    .end local v13    # "current":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    :cond_a
    const/4 v15, 0x6

    :cond_b
    goto :goto_6

    .line 964
    .end local v0    # "shouldOfferLast":Z
    .end local v2    # "queueSize":I
    .end local v3    # "descendingIterator2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;>;"
    .end local v12    # "first":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    :cond_c
    :goto_7
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 965
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$3;->this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->access$3000(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 966
    const-string v0, "UserSceneService"

    const-string v2, "##doScreenOperation, isDoingOperation..."

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$3;->this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->access$3100(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)V

    .line 968
    return-void

    .line 970
    :cond_d
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$3;->this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->access$3200(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)V

    .line 971
    return-void

    .line 964
    :goto_8
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method
