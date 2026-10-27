.class public Lcom/xiaopeng/speech/vui/task/RemoveTask;
.super Lcom/xiaopeng/speech/vui/task/base/BaseTask;
.source "RemoveTask.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private sceneId:Ljava/lang/String;

.field private viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/vui/task/TaskWrapper;)V
    .locals 1

    .line 24
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;-><init>(Lcom/xiaopeng/speech/vui/task/TaskWrapper;)V

    const-string v0, "VuiEngine_RemoveTask"

    .line 21
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/RemoveTask;->TAG:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/task/RemoveTask;->viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    .line 26
    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getSceneId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/speech/vui/task/RemoveTask;->sceneId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build(ILandroid/view/View;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Lbye;",
            ">;"
        }
    .end annotation

    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/vui/task/RemoveTask;->build(ILandroid/view/View;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public build(ILjava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/List<",
            "Lbye;",
            ">;"
        }
    .end annotation

    .line 128
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/vui/task/RemoveTask;->build(ILjava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public execute()V
    .locals 32

    move-object/from16 v15, p0

    .line 32
    :try_start_0
    iget-object v0, v15, Lcom/xiaopeng/speech/vui/task/RemoveTask;->viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getElementGroupId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v14, ","

    const/4 v13, 0x3

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    if-nez v0, :cond_d

    .line 33
    :try_start_1
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/RemoveTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0, v12}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setLastAddStr(Ljava/lang/String;)V

    .line 37
    :cond_0
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/RemoveTask;->viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getViewList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_3

    .line 38
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/RemoveTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoveTask: sceneId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/xiaopeng/speech/vui/task/RemoveTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 39
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isContainNotChildrenView()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 40
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getNotChildrenViewIdList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    move v2, v10

    .line 42
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 43
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 44
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v15, Lcom/xiaopeng/speech/vui/task/RemoveTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v13, v11, v5}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 45
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v15, Lcom/xiaopeng/speech/vui/task/RemoveTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v13, v11, v3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v0, v10}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setContainNotChildrenView(Z)V

    .line 49
    invoke-virtual {v0, v12}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setNotChildrenViewIdList(Ljava/util/List;)V

    .line 50
    invoke-virtual {v0, v12}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setNotChildrenViewList(Ljava/util/List;)V

    :cond_2
    move-object v5, v15

    goto/16 :goto_a

    .line 53
    :cond_3
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/RemoveTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoveTask: view list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/xiaopeng/speech/vui/task/RemoveTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 56
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    iget-object v2, v15, Lcom/xiaopeng/speech/vui/task/RemoveTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneIdList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v19

    .line 57
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 58
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_2

    .line 59
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isContainNotChildrenView()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 60
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getNotChildrenViewIdList()Ljava/util/List;

    move-result-object v9

    .line 61
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getNotChildrenViewList()Ljava/util/List;

    move-result-object v7

    move v8, v10

    .line 62
    :goto_1
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/RemoveTask;->viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getViewList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_2

    .line 63
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/RemoveTask;->viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getViewList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/ref/SoftReference;

    .line 64
    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_7

    :cond_4
    if-eqz v6, :cond_c

    .line 67
    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lbxq;

    if-nez v1, :cond_5

    goto/16 :goto_7

    :cond_5
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    if-eqz v6, :cond_6

    .line 73
    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lbxq;

    if-eqz v1, :cond_6

    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbxq;

    invoke-interface {v1}, Lbxq;->isVuiLayoutLoadable()Z

    move-result v1

    move/from16 v24, v1

    goto :goto_2

    :cond_6
    move/from16 v24, v10

    :goto_2
    if-eqz v6, :cond_7

    .line 74
    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_7

    move/from16 v25, v11

    goto :goto_3

    :cond_7
    move/from16 v25, v10

    :goto_3
    if-eqz v6, :cond_8

    .line 75
    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_8

    move-object/from16 v26, v12

    goto :goto_4

    :cond_8
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getElementChangedListener()Lbxs;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v26, v1

    :goto_4
    move-object/from16 v1, p0

    move-object v2, v6

    move-object/from16 v3, v21

    move-object/from16 v27, v6

    move-object/from16 v6, v16

    move-object/from16 v28, v7

    move/from16 v29, v8

    move-wide/from16 v7, v17

    move-object/from16 v30, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    move-object/from16 v11, v22

    move/from16 v12, v23

    move/from16 v13, v24

    move-object/from16 v31, v14

    move/from16 v14, v25

    move-object/from16 v15, v26

    .line 71
    :try_start_2
    invoke-virtual/range {v1 .. v15}, Lcom/xiaopeng/speech/vui/task/RemoveTask;->buildView(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/lang/String;IZZLbxs;)Lbye;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 76
    invoke-virtual {v1}, Lbye;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 77
    invoke-virtual {v1}, Lbye;->getId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v30

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 78
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v5, p0

    :try_start_3
    iget-object v6, v5, Lcom/xiaopeng/speech/vui/task/RemoveTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v31

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lbye;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x3

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8, v4}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 79
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v5, Lcom/xiaopeng/speech/vui/task/RemoveTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lbye;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v7, v8, v4}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 80
    invoke-virtual {v1}, Lbye;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object/from16 v2, v27

    move-object/from16 v1, v28

    .line 81
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    move-object/from16 v1, v28

    goto :goto_5

    :cond_a
    move-object/from16 v1, v28

    move-object/from16 v3, v30

    :goto_5
    move-object/from16 v6, v31

    const/4 v7, 0x3

    const/4 v8, 0x1

    move-object/from16 v5, p0

    .line 84
    :goto_6
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    .line 85
    invoke-virtual {v0, v2}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setContainNotChildrenView(Z)V

    const/4 v4, 0x0

    .line 86
    invoke-virtual {v0, v4}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setNotChildrenViewIdList(Ljava/util/List;)V

    .line 87
    invoke-virtual {v0, v4}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setNotChildrenViewList(Ljava/util/List;)V

    goto :goto_8

    :cond_b
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 89
    invoke-virtual {v0, v3}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setNotChildrenViewIdList(Ljava/util/List;)V

    .line 90
    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setNotChildrenViewList(Ljava/util/List;)V

    goto :goto_8

    :catch_0
    move-exception v0

    move-object/from16 v5, p0

    goto/16 :goto_9

    :cond_c
    :goto_7
    move-object v1, v7

    move/from16 v29, v8

    move-object v3, v9

    move v2, v10

    move v8, v11

    move-object v4, v12

    move v7, v13

    move-object v6, v14

    move-object v5, v15

    :goto_8
    add-int/lit8 v9, v29, 0x1

    move v10, v2

    move-object v12, v4

    move-object v15, v5

    move-object v14, v6

    move v13, v7

    move v11, v8

    move v8, v9

    move-object v7, v1

    move-object v9, v3

    goto/16 :goto_1

    :cond_d
    move v2, v10

    move v8, v11

    move-object v4, v12

    move v7, v13

    move-object v6, v14

    move-object v5, v15

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Lcom/xiaopeng/speech/vui/task/RemoveTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v5, Lcom/xiaopeng/speech/vui/task/RemoveTask;->viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getElementGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    iget-object v1, v5, Lcom/xiaopeng/speech/vui/task/RemoveTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RemoveTask: subSceneid"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    iget-object v3, v5, Lcom/xiaopeng/speech/vui/task/RemoveTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneIdList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 103
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneIdList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 105
    invoke-interface {v1, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 106
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v3

    iget-object v9, v5, Lcom/xiaopeng/speech/vui/task/RemoveTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v3, v9, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setSceneIdList(Ljava/lang/String;Ljava/util/List;)V

    .line 108
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    iget-object v3, v5, Lcom/xiaopeng/speech/vui/task/RemoveTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->removeSubSceneIds(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v2, v4}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->removeVuiSceneListener(Ljava/lang/String;ZZLbxv;)V

    .line 110
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v2, v4}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->removeVuiSceneListener(Ljava/lang/String;ZZLbxv;)V

    .line 112
    :cond_e
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v5, Lcom/xiaopeng/speech/vui/task/RemoveTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Lcom/xiaopeng/speech/vui/task/RemoveTask;->viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getElementGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v8, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 113
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v5, Lcom/xiaopeng/speech/vui/task/RemoveTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Lcom/xiaopeng/speech/vui/task/RemoveTask;->viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getElementGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v8, v1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    move-object v5, v15

    .line 116
    :goto_9
    iget-object v1, v5, Lcom/xiaopeng/speech/vui/task/RemoveTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_a
    return-void
.end method
