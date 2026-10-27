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
    .param p1, "viewWrapper"    # Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    .line 24
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;-><init>(Lcom/xiaopeng/speech/vui/task/TaskWrapper;)V

    .line 21
    const-string v0, "VuiEngine_RemoveTask"

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/RemoveTask;->TAG:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/task/RemoveTask;->viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    .line 26
    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getSceneId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/RemoveTask;->sceneId:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public build(ILandroid/view/View;)Ljava/util/List;
    .locals 1
    .param p1, "fatherElementId"    # I
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;"
        }
    .end annotation

    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/vui/task/RemoveTask;->build(ILandroid/view/View;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public build(ILjava/util/List;)Ljava/util/List;
    .locals 1
    .param p1, "fatherElementId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;"
        }
    .end annotation

    .line 128
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/vui/task/RemoveTask;->build(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public execute()V
    .locals 27

    .line 32
    move-object/from16 v15, p0

    :try_start_0
    iget-object v0, v15, Lcom/xiaopeng/speech/vui/task/RemoveTask;->viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getElementGroupId()Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x3

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    if-nez v0, :cond_d

    .line 33
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/RemoveTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v0

    .line 34
    .local v0, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0, v13}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setLastAddStr(Ljava/lang/String;)V

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

    .line 39
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isContainNotChildrenView()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 40
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getNotChildrenViewIdList()Ljava/util/List;

    move-result-object v1

    .line 41
    .local v1, "removeIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 42
    move v2, v11

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 43
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 44
    .local v3, "id":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v15, Lcom/xiaopeng/speech/vui/task/RemoveTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v14, v12, v5}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 45
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v15, Lcom/xiaopeng/speech/vui/task/RemoveTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v14, v12, v5}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 42
    .end local v3    # "id":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0, v11}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setContainNotChildrenView(Z)V

    .line 49
    invoke-virtual {v0, v13}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setNotChildrenViewIdList(Ljava/util/List;)V

    .line 50
    invoke-virtual {v0, v13}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setNotChildrenViewList(Ljava/util/List;)V

    .line 51
    .end local v1    # "removeIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 97
    .end local v0    # "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    :cond_2
    move-object v11, v15

    goto/16 :goto_7

    .line 53
    .restart local v0    # "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
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
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v6, "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 56
    .local v7, "time":J
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    iget-object v2, v15, Lcom/xiaopeng/speech/vui/task/RemoveTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneIdList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 57
    .local v9, "allIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v10, "bizIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v3, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isContainNotChildrenView()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 60
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getNotChildrenViewIdList()Ljava/util/List;

    move-result-object v1

    move-object v5, v1

    .line 61
    .local v5, "removeIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getNotChildrenViewList()Ljava/util/List;

    move-result-object v1

    move-object v4, v1

    .line 62
    .local v4, "rootViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    move v1, v11

    .local v1, "i":I
    :goto_1
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/RemoveTask;->viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getViewList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 63
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/RemoveTask;->viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getViewList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 64
    .local v1, "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 65
    nop

    .line 62
    move/from16 v22, v2

    move-object v2, v4

    move-object v4, v5

    move/from16 v26, v14

    move v14, v11

    move-object v11, v15

    move-object v15, v13

    move/from16 v13, v26

    goto/16 :goto_6

    .line 67
    :cond_4
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-nez v11, :cond_5

    .line 68
    nop

    .line 62
    move/from16 v22, v2

    move-object v2, v4

    move-object v4, v5

    move-object v11, v15

    move-object v15, v13

    move v13, v14

    const/4 v14, 0x0

    goto/16 :goto_6

    .line 71
    :cond_5
    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    if-eqz v1, :cond_6

    .line 73
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v12, :cond_6

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v12}, Lcom/xiaopeng/vui/commons/IVuiElement;->isVuiLayoutLoadable()Z

    move-result v12

    move/from16 v19, v12

    goto :goto_2

    :cond_6
    const/16 v19, 0x0

    :goto_2
    if-eqz v1, :cond_7

    .line 74
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v12, :cond_7

    const/16 v20, 0x1

    goto :goto_3

    :cond_7
    const/16 v20, 0x0

    :goto_3
    if-eqz v1, :cond_8

    .line 75
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v12, :cond_8

    .line 71
    move-object/from16 v21, v13

    goto :goto_4

    .line 75
    :cond_8
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getElementChangedListener()Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 71
    move-object/from16 v21, v12

    :goto_4
    move-object v12, v1

    move-object v1, v15

    .end local v1    # "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    .local v12, "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    move/from16 v22, v2

    move-object v2, v12

    .end local v2    # "i":I
    .local v22, "i":I
    move-object/from16 v23, v4

    move-object v4, v11

    .end local v4    # "rootViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    .local v23, "rootViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    move-object v11, v5

    move-object/from16 v5, v16

    .end local v5    # "removeIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v11, "removeIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v24, v11

    move-object/from16 v11, v17

    .end local v11    # "removeIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v24, "removeIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v25, v12

    move/from16 v12, v18

    .end local v12    # "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    .local v25, "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    move/from16 v13, v19

    move/from16 v14, v20

    move-object/from16 v15, v21

    :try_start_1
    invoke-virtual/range {v1 .. v15}, Lcom/xiaopeng/speech/vui/task/RemoveTask;->buildView(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/lang/String;IZZLcom/xiaopeng/vui/commons/IVuiElementChangedListener;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v1

    .line 76
    .local v1, "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 77
    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, v24

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .end local v24    # "removeIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v4, "removeIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_9

    .line 78
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v11, p0

    :try_start_2
    iget-object v12, v11, Lcom/xiaopeng/speech/vui/task/RemoveTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ","

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x1

    const/4 v13, 0x3

    invoke-virtual {v2, v13, v12, v5}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 79
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v11, Lcom/xiaopeng/speech/vui/task/RemoveTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ","

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v13, v12, v5}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 80
    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 81
    move-object/from16 v2, v23

    move-object/from16 v5, v25

    invoke-interface {v2, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .end local v23    # "rootViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    .end local v25    # "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    .local v2, "rootViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    .local v5, "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    goto :goto_5

    .line 84
    .end local v2    # "rootViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    .end local v5    # "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    .restart local v23    # "rootViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    .restart local v25    # "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    :cond_9
    move-object/from16 v2, v23

    move-object/from16 v5, v25

    move-object/from16 v11, p0

    const/4 v12, 0x1

    const/4 v13, 0x3

    .end local v23    # "rootViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    .end local v25    # "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    .restart local v2    # "rootViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    .restart local v5    # "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    goto :goto_5

    .end local v2    # "rootViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    .end local v4    # "removeIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    .restart local v23    # "rootViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    .restart local v24    # "removeIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    :cond_a
    move-object/from16 v2, v23

    move-object/from16 v4, v24

    move-object/from16 v5, v25

    move-object/from16 v11, p0

    const/4 v12, 0x1

    const/4 v13, 0x3

    .end local v23    # "rootViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    .end local v24    # "removeIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    .restart local v2    # "rootViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    .restart local v4    # "removeIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    :goto_5
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 85
    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setContainNotChildrenView(Z)V

    .line 86
    const/4 v15, 0x0

    invoke-virtual {v0, v15}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setNotChildrenViewIdList(Ljava/util/List;)V

    .line 87
    invoke-virtual {v0, v15}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setNotChildrenViewList(Ljava/util/List;)V

    goto :goto_6

    .line 89
    :cond_b
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v0, v4}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setNotChildrenViewIdList(Ljava/util/List;)V

    .line 90
    invoke-virtual {v0, v2}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setNotChildrenViewList(Ljava/util/List;)V

    .end local v1    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .end local v5    # "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    goto :goto_6

    .line 115
    .end local v0    # "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    .end local v2    # "rootViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    .end local v3    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local v4    # "removeIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "time":J
    .end local v9    # "allIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "bizIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "i":I
    :catch_0
    move-exception v0

    move-object/from16 v11, p0

    goto/16 :goto_9

    .line 62
    .restart local v0    # "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    .local v2, "i":I
    .restart local v3    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .local v4, "rootViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    .local v5, "removeIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "time":J
    .restart local v9    # "allIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "bizIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_c
    move/from16 v22, v2

    move-object v2, v4

    move-object v4, v5

    move/from16 v26, v14

    move v14, v11

    move-object v11, v15

    move-object v15, v13

    move/from16 v13, v26

    .end local v5    # "removeIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "rootViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    .local v4, "removeIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22    # "i":I
    :goto_6
    add-int/lit8 v1, v22, 0x1

    .end local v22    # "i":I
    .local v1, "i":I
    move-object v5, v4

    move-object v4, v2

    move-object/from16 v26, v15

    move-object v15, v11

    move v11, v14

    move v14, v13

    move-object/from16 v13, v26

    goto/16 :goto_1

    .line 97
    .end local v0    # "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    .end local v1    # "i":I
    .end local v2    # "rootViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    .end local v3    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local v4    # "removeIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "time":J
    .end local v9    # "allIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "bizIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_7
    goto/16 :goto_8

    .line 99
    :cond_d
    move/from16 v26, v14

    move v14, v11

    move-object v11, v15

    move-object v15, v13

    move/from16 v13, v26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v11, Lcom/xiaopeng/speech/vui/task/RemoveTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/xiaopeng/speech/vui/task/RemoveTask;->viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getElementGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "subSceneId":Ljava/lang/String;
    iget-object v1, v11, Lcom/xiaopeng/speech/vui/task/RemoveTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoveTask: subSceneid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    iget-object v2, v11, Lcom/xiaopeng/speech/vui/task/RemoveTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneIdList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 103
    .local v1, "allIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneIdList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 104
    .local v2, "subSceneIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_e

    .line 105
    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 106
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v3

    iget-object v4, v11, Lcom/xiaopeng/speech/vui/task/RemoveTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setSceneIdList(Ljava/lang/String;Ljava/util/List;)V

    .line 108
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v3

    iget-object v4, v11, Lcom/xiaopeng/speech/vui/task/RemoveTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->removeSubSceneIds(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v3

    invoke-virtual {v3, v0, v14, v14, v15}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->removeVuiSceneListener(Ljava/lang/String;ZZLcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 110
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v3

    invoke-virtual {v3, v0, v14, v14, v15}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->removeVuiSceneListener(Ljava/lang/String;ZZLcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 112
    :cond_e
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v11, Lcom/xiaopeng/speech/vui/task/RemoveTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v11, Lcom/xiaopeng/speech/vui/task/RemoveTask;->viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v5}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getElementGroupId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v13, v12, v4}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 113
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v11, Lcom/xiaopeng/speech/vui/task/RemoveTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v11, Lcom/xiaopeng/speech/vui/task/RemoveTask;->viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v5}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getElementGroupId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v13, v12, v4}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 117
    .end local v0    # "subSceneId":Ljava/lang/String;
    .end local v1    # "allIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "subSceneIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_8
    goto :goto_a

    .line 115
    :catch_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    move-object v11, v15

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    :goto_9
    iget-object v1, v11, Lcom/xiaopeng/speech/vui/task/RemoveTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a
    return-void
.end method
