.class Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;
.super Ljava/lang/Object;
.source "VuiEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiEngineImpl;->enterScene(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

.field final synthetic val$finalDisplayLocation:Ljava/lang/String;

.field final synthetic val$isWholeScene:Z

.field final synthetic val$sceneId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 438
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->val$sceneId:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->val$finalDisplayLocation:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->val$isWholeScene:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .line 442
    move-object/from16 v1, p0

    :try_start_0
    iget-object v0, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-object v2, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getSceneUnqiueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "newSceneId":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v2

    move-object v8, v2

    .line 444
    .local v8, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    if-eqz v8, :cond_0

    .line 445
    iget-object v2, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->val$finalDisplayLocation:Ljava/lang/String;

    invoke-virtual {v8, v2}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setDisplayLocation(Ljava/lang/String;)V

    .line 446
    invoke-virtual {v8}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getState()I

    move-result v2

    sget-object v3, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->IDLE:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->getState()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 447
    const-string v2, "VuiEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u573a\u666f\u7684\u8fdb\u5165\u5fc5\u987b\u5728\u573a\u666f\u88ab\u6fc0\u6d3b\u540e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 448
    return-void

    .line 451
    :cond_0
    const-string v2, "com.xiaopeng.napa"

    iget-object v3, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$300(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->val$sceneId:Ljava/lang/String;

    const-string v3, "Navigation_"

    .line 452
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 453
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->isNaviTop()Z

    move-result v2

    .line 454
    .local v2, "isNaviTop":Z
    const-string v3, "VuiEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " isNaviTop:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 455
    const-string v3, "primary"

    sget-object v4, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSceneStack(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    .line 456
    .local v3, "sceneStack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_c

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_c

    .line 457
    const/4 v4, 0x1

    .line 458
    .local v4, "isAllNaviScene":Z
    const/4 v5, 0x0

    move v6, v4

    move v4, v5

    .local v4, "i":I
    .local v6, "isAllNaviScene":Z
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_2

    .line 459
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 460
    .local v7, "stackSceneId":Ljava/lang/String;
    const-string v9, "Navigation_"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 461
    const/4 v6, 0x0

    .line 458
    .end local v7    # "stackSceneId":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 464
    .end local v4    # "i":I
    :cond_2
    if-nez v6, :cond_c

    .line 465
    const-string v4, "VuiEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " \u5bfc\u822a\u4e0d\u5728\u524d\u53f0\u4e0d\u80fd\u8fdb\u5165"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    iget-boolean v4, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->val$isWholeScene:Z

    if-eqz v4, :cond_b

    .line 467
    iget-object v4, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$600(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 468
    iget-object v4, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$600(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 470
    :cond_3
    iget-object v4, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->val$sceneId:Ljava/lang/String;

    const-string v7, "Dialog"

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->val$sceneId:Ljava/lang/String;

    const-string v7, "dialog"

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    .line 473
    :cond_4
    iget-object v4, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$600(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_5

    .line 474
    iget-object v4, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$600(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 476
    :cond_5
    const/4 v4, 0x0

    .line 477
    .local v4, "isInsert":Z
    nop

    .local v5, "i":I
    :goto_1
    iget-object v7, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v7}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$600(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_8

    .line 478
    iget-object v7, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v7}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$600(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 479
    .restart local v7    # "stackSceneId":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "Dialog"

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "dialog"

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 480
    :cond_6
    iget-object v9, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v9}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$600(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 481
    const/4 v4, 0x1

    .line 482
    goto :goto_2

    .line 477
    .end local v7    # "stackSceneId":Ljava/lang/String;
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 485
    .end local v5    # "i":I
    :cond_8
    :goto_2
    if-nez v4, :cond_a

    .line 486
    iget-object v5, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v5}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$600(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v4    # "isInsert":Z
    goto :goto_4

    .line 471
    :cond_9
    :goto_3
    iget-object v4, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$600(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    :cond_a
    :goto_4
    const-string v4, "VuiEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mBackNaviSceneStack:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v7}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$600(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 492
    :cond_b
    return-void

    .line 496
    .end local v2    # "isNaviTop":Z
    .end local v3    # "sceneStack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "isAllNaviScene":Z
    :cond_c
    sget-object v2, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    iget-object v3, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->val$finalDisplayLocation:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v8, :cond_d

    .line 497
    invoke-virtual {v8}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getState()I

    move-result v2

    sget-object v3, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->ACTIVE:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->getState()I

    move-result v3

    if-ne v2, v3, :cond_d

    .line 498
    return-void

    .line 500
    :cond_d
    const-string v2, "VuiEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enterScene:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",mSceneMap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-boolean v2, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->val$isWholeScene:Z

    if-eqz v2, :cond_1d

    .line 502
    sget-object v2, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    iget-object v3, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->val$finalDisplayLocation:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/vui/model/AppScreenNode;

    .line 503
    .local v2, "screenNode":Lcom/xiaopeng/speech/vui/model/AppScreenNode;
    if-nez v2, :cond_e

    .line 504
    new-instance v3, Lcom/xiaopeng/speech/vui/model/AppScreenNode;

    invoke-direct {v3}, Lcom/xiaopeng/speech/vui/model/AppScreenNode;-><init>()V

    move-object v2, v3

    .line 506
    .end local v2    # "screenNode":Lcom/xiaopeng/speech/vui/model/AppScreenNode;
    .local v9, "screenNode":Lcom/xiaopeng/speech/vui/model/AppScreenNode;
    :cond_e
    move-object v9, v2

    const-string v2, "PopPanel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v10, 0x1

    if-eqz v2, :cond_12

    .line 507
    invoke-virtual {v9}, Lcom/xiaopeng/speech/vui/model/AppScreenNode;->getPanelStack()Ljava/util/concurrent/ConcurrentSkipListSet;

    move-result-object v2

    move-object v11, v2

    .line 508
    .local v11, "popPanelSceneTask":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<Ljava/lang/String;>;"
    invoke-virtual {v11, v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    .line 509
    sget-object v2, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;>;"
    :goto_5
    move-object v12, v2

    .line 510
    .end local v2    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;>;"
    .local v12, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;>;"
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 511
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    move-object v13, v2

    .line 512
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v14, v2

    .line 513
    .local v14, "key":Ljava/lang/String;
    iget-object v2, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->val$finalDisplayLocation:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 514
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/vui/model/AppScreenNode;

    move-object v15, v2

    .line 515
    .local v15, "otherScreenNode":Lcom/xiaopeng/speech/vui/model/AppScreenNode;
    nop

    .line 516
    invoke-virtual {v15}, Lcom/xiaopeng/speech/vui/model/AppScreenNode;->getPanelStack()Ljava/util/concurrent/ConcurrentSkipListSet;

    move-result-object v2

    move-object v7, v2

    .line 517
    .local v7, "otherPopPanelSceneTask":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<Ljava/lang/String;>;"
    if-eqz v7, :cond_f

    invoke-virtual {v7, v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 518
    invoke-virtual {v7, v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->remove(Ljava/lang/Object;)Z

    .line 519
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    iget-object v3, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->val$isWholeScene:Z

    const/16 v16, 0x1

    move-object v3, v0

    move-object v6, v14

    move-object/from16 v17, v7

    move/from16 v7, v16

    .end local v7    # "otherPopPanelSceneTask":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<Ljava/lang/String;>;"
    .local v17, "otherPopPanelSceneTask":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<Ljava/lang/String;>;"
    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->exitScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 520
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v2

    iget-object v3, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->val$isWholeScene:Z

    const/4 v7, 0x1

    move-object v3, v0

    move-object v6, v14

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->exitScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    goto :goto_6

    .line 522
    .end local v17    # "otherPopPanelSceneTask":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<Ljava/lang/String;>;"
    .restart local v7    # "otherPopPanelSceneTask":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<Ljava/lang/String;>;"
    :cond_f
    move-object/from16 v17, v7

    .end local v7    # "otherPopPanelSceneTask":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<Ljava/lang/String;>;"
    .restart local v17    # "otherPopPanelSceneTask":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<Ljava/lang/String;>;"
    :goto_6
    sget-object v2, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-interface {v2, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;"
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "otherScreenNode":Lcom/xiaopeng/speech/vui/model/AppScreenNode;
    .end local v17    # "otherPopPanelSceneTask":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<Ljava/lang/String;>;"
    :cond_10
    nop

    .line 509
    move-object v2, v12

    goto :goto_5

    .line 525
    :cond_11
    iget-object v2, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-object v3, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->val$finalDisplayLocation:Ljava/lang/String;

    invoke-static {v2, v0, v10, v3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$700(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;ZLjava/lang/String;)V

    .line 526
    sget-object v2, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    iget-object v3, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->val$finalDisplayLocation:Ljava/lang/String;

    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    return-void

    .line 529
    .end local v11    # "popPanelSceneTask":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<Ljava/lang/String;>;"
    .end local v12    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;>;"
    :cond_12
    invoke-virtual {v9}, Lcom/xiaopeng/speech/vui/model/AppScreenNode;->getSceneStack()Ljava/util/List;

    move-result-object v2

    move-object v11, v2

    .line 530
    .local v11, "sceneTask":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 531
    invoke-interface {v11, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 533
    :cond_13
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v2

    move-object v12, v2

    .line 534
    .local v12, "listener":Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    iget-object v2, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v2, v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$800(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    move-object v13, v2

    .line 535
    .local v13, "context":Landroid/content/Context;
    const-string v2, "VuiEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enterScene context:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const/4 v2, 0x1

    .line 537
    .local v2, "changeActiveScene":Z
    instance-of v3, v12, Landroid/app/Dialog;

    if-nez v3, :cond_16

    iget-object v3, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->val$sceneId:Ljava/lang/String;

    const-string v4, "Dialog"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    iget-object v3, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->val$sceneId:Ljava/lang/String;

    const-string v4, "dialog"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    goto :goto_7

    .line 538
    :cond_14
    if-eqz v8, :cond_15

    invoke-virtual {v8}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getState()I

    move-result v3

    sget-object v4, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->INIT:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->getState()I

    move-result v4

    if-ne v3, v4, :cond_15

    const-string v3, "com.xiaopeng.musicradio"

    iget-object v4, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_7

    .line 540
    :cond_15
    iget-object v3, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v3, v0, v13, v11}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$900(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Landroid/content/Context;Ljava/util/List;)Z

    move-result v3

    move v2, v3

    .line 543
    .end local v2    # "changeActiveScene":Z
    .local v14, "changeActiveScene":Z
    :cond_16
    :goto_7
    move v14, v2

    if-eqz v14, :cond_17

    .line 544
    sget-object v2, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    iget-object v3, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->val$finalDisplayLocation:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    iget-object v2, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-boolean v3, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->val$isWholeScene:Z

    iget-object v4, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->val$finalDisplayLocation:Ljava/lang/String;

    invoke-static {v2, v0, v3, v4}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$700(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;ZLjava/lang/String;)V

    .line 549
    :cond_17
    sget-object v2, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;>;"
    :goto_8
    move-object v15, v2

    .line 550
    .end local v2    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;>;"
    .local v15, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;>;"
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 551
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    move-object v7, v2

    .line 552
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v6, v2

    .line 553
    .local v6, "key":Ljava/lang/String;
    iget-object v2, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->val$finalDisplayLocation:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 554
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/vui/model/AppScreenNode;

    move-object v5, v2

    .line 555
    .local v5, "otherScreenNode":Lcom/xiaopeng/speech/vui/model/AppScreenNode;
    nop

    .line 556
    invoke-virtual {v5}, Lcom/xiaopeng/speech/vui/model/AppScreenNode;->getSceneStack()Ljava/util/List;

    move-result-object v2

    move-object v4, v2

    .line 557
    .local v4, "otherSceneTask":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 558
    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 559
    const-string v2, "VuiEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "enter exitScene:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",scenes:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    iget-object v3, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v10

    iget-boolean v3, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->val$isWholeScene:Z

    const/16 v16, 0x1

    move/from16 v17, v3

    move-object v3, v0

    move-object/from16 v18, v4

    move-object v4, v10

    .end local v4    # "otherSceneTask":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v18, "otherSceneTask":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v10, v5

    move/from16 v5, v17

    .end local v5    # "otherScreenNode":Lcom/xiaopeng/speech/vui/model/AppScreenNode;
    .local v10, "otherScreenNode":Lcom/xiaopeng/speech/vui/model/AppScreenNode;
    move-object/from16 v19, v6

    .end local v6    # "key":Ljava/lang/String;
    .local v19, "key":Ljava/lang/String;
    move-object/from16 v17, v7

    move/from16 v7, v16

    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;"
    .local v17, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;"
    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->exitScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 561
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v2

    iget-object v3, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->val$isWholeScene:Z

    const/4 v7, 0x1

    move-object v3, v0

    move-object/from16 v6, v19

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->exitScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    goto :goto_9

    .line 563
    .end local v10    # "otherScreenNode":Lcom/xiaopeng/speech/vui/model/AppScreenNode;
    .end local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;"
    .end local v18    # "otherSceneTask":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "key":Ljava/lang/String;
    .restart local v4    # "otherSceneTask":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "otherScreenNode":Lcom/xiaopeng/speech/vui/model/AppScreenNode;
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;"
    :cond_18
    move-object/from16 v18, v4

    move-object v10, v5

    move-object/from16 v19, v6

    move-object/from16 v17, v7

    .end local v4    # "otherSceneTask":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "otherScreenNode":Lcom/xiaopeng/speech/vui/model/AppScreenNode;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;"
    .restart local v10    # "otherScreenNode":Lcom/xiaopeng/speech/vui/model/AppScreenNode;
    .restart local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;"
    .restart local v18    # "otherSceneTask":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "key":Ljava/lang/String;
    :goto_9
    sget-object v2, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v3, v19

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v19    # "key":Ljava/lang/String;
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 564
    move-object/from16 v2, v18

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .end local v18    # "otherSceneTask":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "otherSceneTask":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-lez v4, :cond_19

    .line 565
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 566
    .local v4, "mActiveSceneId":Ljava/lang/String;
    sget-object v6, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6, v3, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    .end local v4    # "mActiveSceneId":Ljava/lang/String;
    goto :goto_a

    .line 568
    :cond_19
    const/4 v5, 0x1

    sget-object v4, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    const-string v6, ""

    invoke-interface {v4, v3, v6}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 572
    .end local v2    # "otherSceneTask":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18    # "otherSceneTask":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1a
    move-object/from16 v2, v18

    const/4 v5, 0x1

    .end local v18    # "otherSceneTask":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "otherSceneTask":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_a
    sget-object v4, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-interface {v4, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v2    # "otherSceneTask":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v10    # "otherScreenNode":Lcom/xiaopeng/speech/vui/model/AppScreenNode;
    .end local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;"
    goto :goto_b

    .line 574
    :cond_1b
    move v5, v10

    .line 549
    :goto_b
    move v10, v5

    move-object v2, v15

    goto/16 :goto_8

    .line 575
    :cond_1c
    sget-object v2, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    iget-object v3, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->val$finalDisplayLocation:Ljava/lang/String;

    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    .end local v9    # "screenNode":Lcom/xiaopeng/speech/vui/model/AppScreenNode;
    .end local v11    # "sceneTask":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "listener":Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    .end local v13    # "context":Landroid/content/Context;
    .end local v14    # "changeActiveScene":Z
    .end local v15    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;>;"
    :cond_1d
    const-string v2, "VuiEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enterScene:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$5;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",SceneMap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    .end local v0    # "newSceneId":Ljava/lang/String;
    .end local v8    # "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    goto :goto_c

    .line 580
    :catch_0
    move-exception v0

    .line 581
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VuiEngine"

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 583
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_c
    return-void
.end method
