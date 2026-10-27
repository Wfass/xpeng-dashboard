.class public abstract Lcom/xiaopeng/speech/vui/task/base/BaseTask;
.super Ljava/lang/Object;
.source "BaseTask.java"

# interfaces
.implements Lbxr;
.implements Lcom/xiaopeng/speech/vui/task/base/Task;


# instance fields
.field private TAG:Ljava/lang/String;

.field private bizTypeEnum:[Ljava/lang/String;

.field protected mGson:Lcom/google/gson/Gson;

.field private mPackageName:Ljava/lang/String;

.field private mPackageVersion:Ljava/lang/String;

.field private mSceneIdPrefix:Ljava/lang/String;

.field private sceneId:Ljava/lang/String;

.field public wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/vui/task/TaskWrapper;)V
    .locals 10

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BaseTask"

    .line 59
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->mSceneIdPrefix:Ljava/lang/String;

    const-string v1, "Address"

    const-string v2, "Navi"

    const-string v3, "Route"

    const-string v4, "Waypoint"

    const-string v5, "Pic"

    const-string v6, "Charge"

    const-string v7, "Connect"

    const-string v8, "Disconnect"

    const-string v9, "Null"

    .line 66
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->bizTypeEnum:[Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    .line 69
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->mGson:Lcom/google/gson/Gson;

    .line 70
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getSceneId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->sceneId:Ljava/lang/String;

    .line 71
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->init()V

    return-void
.end method

.method private addChildElement(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/lang/String;IZZLbxs;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Lbye;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/ref/SoftReference<",
            "Lbxt;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "IZZ",
            "Lbxs;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-wide/from16 v6, p7

    move-object/from16 v8, p9

    move-object/from16 v9, p3

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    .line 882
    invoke-virtual/range {v0 .. v14}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->buildView(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/lang/String;IZZLbxs;)Lbye;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 884
    invoke-virtual {v0}, Lbye;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 886
    invoke-virtual {v0}, Lbye;->getId()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v1, p2

    .line 887
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v8, p7

    .line 888
    invoke-virtual {v0, v8, v9}, Lbye;->setTimestamp(J)V

    .line 889
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lbye;->getType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 890
    invoke-virtual {v0}, Lbye;->getType()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lbxy;->STATEFULBUTTON:Lbxy;

    invoke-virtual {v2}, Lbxy;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p3

    move/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    .line 891
    invoke-direct/range {v2 .. v15}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->getChildElements(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/lang/String;ZZLbxs;)V

    :cond_0
    return-void
.end method

.method private buildVuiElement(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/lang/String;IJZZ)Lbye;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "IJZZ)",
            "Lbye;"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    const/4 v14, 0x0

    if-eqz v11, :cond_9

    .line 346
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lbxq;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 349
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->buildVuiElementAttr(Ljava/lang/ref/SoftReference;)Lbye;

    move-result-object v15

    if-eqz v15, :cond_8

    .line 352
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lbxq;

    const-string v0, "vuiElementId"

    .line 353
    invoke-direct {v10, v11, v0}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->getElementId(Ljava/lang/ref/SoftReference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    move-object v2, v15

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p1

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p8

    move/from16 v9, p9

    .line 354
    invoke-virtual/range {v0 .. v9}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->handleId(Ljava/lang/String;Lbye;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/lang/String;IZZ)Ljava/lang/String;

    const/4 v0, 0x0

    .line 356
    invoke-interface/range {v16 .. v16}, Lbxq;->isVuiLayoutLoadable()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    :goto_0
    move v6, v2

    goto :goto_1

    :cond_1
    if-eqz p8, :cond_2

    .line 359
    sget-object v1, Lbxy;->XGROUPHEADER:Lbxy;

    invoke-virtual {v1}, Lbxy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15}, Lbye;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v6, v0

    :goto_1
    if-eqz v6, :cond_3

    .line 364
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v15, v0}, Lbye;->setLayoutLoadable(Ljava/lang/Boolean;)V

    .line 367
    :cond_3
    invoke-interface/range {v16 .. v16}, Lbxq;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 369
    sget-object v0, Lbxy;->STATEFULBUTTON:Lbxy;

    invoke-virtual {v0}, Lbxy;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15}, Lbye;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lbxy;->RECYCLEVIEW:Lbxy;

    .line 370
    invoke-virtual {v0}, Lbxy;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15}, Lbye;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 373
    :cond_4
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 374
    iget-object v0, v10, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    invoke-virtual {v15, v0}, Lbye;->setProps(Lcom/google/gson/JsonObject;)V

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v15

    move-wide/from16 v4, p6

    .line 371
    invoke-virtual/range {v0 .. v7}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->createElementByProps(Ljava/lang/ref/SoftReference;Lbye;Lorg/json/JSONObject;JZZ)V

    :cond_6
    :goto_3
    if-eqz v11, :cond_8

    .line 378
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    invoke-interface/range {v16 .. v16}, Lbxq;->isVuiModeEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz v11, :cond_8

    .line 379
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    sget-object v0, Lbxy;->GROUP:Lbxy;

    invoke-virtual {v0}, Lbxy;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15}, Lbye;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 380
    invoke-virtual {v15}, Lbye;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface/range {v16 .. v16}, Lbxq;->getVuiAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 381
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 382
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getViewMode()Lbya;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getViewMode()Lbya;

    move-result-object v0

    sget-object v1, Lbya;->DISABLED:Lbya;

    invoke-virtual {v0, v1}, Lbya;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 383
    iget-object v0, v10, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VuiSceneTagWarn]ViewGroup is ignored:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    invoke-virtual {v15}, Lbye;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->isContainsInAllCache(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 385
    invoke-virtual {v15}, Lbye;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v11, v0, v12, v13}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->removeId(Ljava/lang/ref/SoftReference;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v14

    .line 390
    :cond_7
    iget-object v0, v10, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VuiSceneTagDebug]ViewGroup is ignored:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    invoke-virtual {v15}, Lbye;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v11, v0, v12, v13}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->removeId(Ljava/lang/ref/SoftReference;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v14

    :cond_8
    return-object v15

    :cond_9
    :goto_4
    return-object v14
.end method

.method private buildVuiElementGroup(Ljava/lang/ref/SoftReference;Ljava/lang/String;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/util/List;ILjava/util/List;ZZLbxs;)Lbye;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/ref/SoftReference<",
            "Lbxt;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Lbye;",
            ">;ZZ",
            "Lbxs;",
            ")",
            "Lbye;"
        }
    .end annotation

    move-object/from16 v10, p1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p8

    move-object/from16 v4, p2

    move/from16 v5, p10

    move-wide/from16 v6, p6

    move/from16 v8, p12

    move/from16 v9, p13

    .line 254
    invoke-direct/range {v0 .. v9}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->buildVuiElement(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/lang/String;IJZZ)Lbye;

    move-result-object v14

    if-eqz v14, :cond_6

    .line 256
    invoke-virtual {v14}, Lbye;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v14}, Lbye;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v14}, Lbye;->getType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lbxy;->XSLIDER:Lbxy;

    invoke-virtual {v1}, Lbxy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 257
    invoke-virtual {v14}, Lbye;->getId()Ljava/lang/String;

    move-result-object v11

    .line 258
    invoke-virtual {v14}, Lbye;->getType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lbxy;->UNKNOWN:Lbxy;

    invoke-virtual {v1}, Lbxy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v14}, Lbye;->getId()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v15, p0

    move-object/from16 v5, p5

    move-object/from16 v8, p8

    invoke-direct {v15, v10, v0, v5, v8}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->removeId(Ljava/lang/ref/SoftReference;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_0
    move-object/from16 v15, p0

    move-object/from16 v5, p5

    move-object/from16 v8, p8

    .line 261
    invoke-virtual {v14}, Lbye;->getType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lbxy;->STATEFULBUTTON:Lbxy;

    invoke-virtual {v1}, Lbxy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v14

    :cond_1
    if-eqz v10, :cond_3

    .line 264
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lbxq;

    if-eqz v0, :cond_3

    .line 265
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbxq;

    .line 266
    invoke-interface {v0}, Lbxq;->isVuiLayoutLoadable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    return-object v14

    .line 270
    :cond_2
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 271
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xiaopeng.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 272
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v1, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->disableChildVuiAttrsWhenInvisible:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    return-object v14

    .line 277
    :cond_3
    invoke-virtual {v14}, Lbye;->getElements()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    move-object v13, v0

    const/4 v0, 0x0

    .line 282
    invoke-virtual {v14}, Lbye;->isLayoutLoadable()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 283
    invoke-virtual {v14}, Lbye;->isLayoutLoadable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_5
    move v12, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v13

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object v10, v11

    move v11, v12

    move/from16 v12, p13

    move-object/from16 p1, v13

    move-object/from16 v13, p14

    .line 285
    invoke-direct/range {v0 .. v13}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->getChildElements(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/lang/String;ZZLbxs;)V

    .line 287
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    move-object/from16 v0, p1

    .line 288
    invoke-virtual {v14, v0}, Lbye;->setElements(Ljava/util/List;)V

    goto :goto_0

    :cond_6
    move-object/from16 v15, p0

    :cond_7
    :goto_0
    return-object v14
.end method

.method private escapeQueryChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 326
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 329
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 331
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 332
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x27

    if-ne v2, v3, :cond_1

    const-string v2, " "

    .line 335
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 337
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getChildElements(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/lang/String;ZZLbxs;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Lbye;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/ref/SoftReference<",
            "Lbxt;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZ",
            "Lbxs;",
            ")V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p9

    if-eqz p1, :cond_c

    .line 806
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    if-eqz p1, :cond_2

    .line 809
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lbxq;

    if-eqz v0, :cond_2

    .line 810
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbxq;

    invoke-interface {v0}, Lbxq;->getVuiBizId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 812
    invoke-interface {v14, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 815
    :cond_1
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 818
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_7

    .line 819
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    .line 830
    :cond_3
    new-instance v13, Ljava/lang/ref/SoftReference;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v13, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 831
    invoke-virtual {v13}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v12

    .line 832
    invoke-virtual {v13}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v13}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_4

    .line 833
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RecyclerView \u7684child count \u4e3a0,view\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 835
    :cond_4
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RecyclerView \u7684child count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ",view\uff1a"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v10, v0

    .line 836
    :goto_0
    invoke-virtual {v13}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v13}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-ge v10, v0, :cond_c

    invoke-virtual {v13}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ge v10, v0, :cond_c

    .line 837
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {v13}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 838
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    .line 839
    iget-object v0, v15, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RecyclerView \u7684child \u4e3anull,postion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p9

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move/from16 v17, v10

    move-object/from16 v10, p10

    move-object/from16 v18, v11

    move/from16 v11, v17

    move v15, v12

    move/from16 v12, p11

    move-object/from16 v19, v13

    move/from16 v13, v16

    move-object/from16 v14, p13

    .line 841
    invoke-direct/range {v0 .. v14}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->addChildElement(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/lang/String;IZZLbxs;)V

    .line 843
    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-eq v0, v15, :cond_6

    move v0, v15

    move-object/from16 v15, p0

    .line 844
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RecyclerView is not same child count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v3, v18

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",len:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move v0, v15

    move-object/from16 v3, v18

    move-object/from16 v15, p0

    :goto_1
    add-int/lit8 v10, v17, 0x1

    move-object/from16 v14, p9

    move v12, v0

    move-object v11, v3

    move-object/from16 v13, v19

    goto/16 :goto_0

    :cond_7
    if-eqz p1, :cond_9

    .line 847
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/ListView;

    if-eqz v1, :cond_9

    .line 848
    new-instance v14, Ljava/lang/ref/SoftReference;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-direct {v14, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    move v13, v0

    .line 849
    :goto_2
    invoke-virtual {v14}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v14}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-ge v13, v0, :cond_c

    .line 850
    invoke-virtual {v14}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 851
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {v14}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v14}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-interface {v0, v13, v2, v3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p9

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p10

    move v11, v13

    move/from16 v12, p11

    move/from16 v16, v13

    move/from16 v13, p12

    move-object/from16 v17, v14

    move-object/from16 v14, p13

    .line 852
    invoke-direct/range {v0 .. v14}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->addChildElement(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/lang/String;IZZLbxs;)V

    goto :goto_3

    :cond_8
    move/from16 v16, v13

    move-object/from16 v17, v14

    :goto_3
    add-int/lit8 v13, v16, 0x1

    move-object/from16 v14, v17

    goto :goto_2

    :cond_9
    if-eqz p1, :cond_c

    .line 856
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_c

    .line 857
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lbxq;

    if-eqz v1, :cond_b

    .line 858
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbxq;

    invoke-interface {v1}, Lbxq;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string v2, "buildChildren"

    .line 859
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 860
    :cond_a
    new-instance v14, Ljava/lang/ref/SoftReference;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v14, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    move v13, v0

    .line 861
    :goto_4
    invoke-virtual {v14}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v14}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v13, v0, :cond_c

    .line 862
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {v14}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p9

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p10

    move v11, v13

    move/from16 v12, p11

    move/from16 v16, v13

    move/from16 v13, p12

    move-object/from16 v17, v14

    move-object/from16 v14, p13

    .line 863
    invoke-direct/range {v0 .. v14}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->addChildElement(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/lang/String;IZZLbxs;)V

    add-int/lit8 v13, v16, 0x1

    move-object/from16 v14, v17

    goto :goto_4

    .line 868
    :cond_b
    new-instance v14, Ljava/lang/ref/SoftReference;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v14, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    move v13, v0

    .line 869
    :goto_5
    invoke-virtual {v14}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v14}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v13, v0, :cond_c

    .line 870
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {v14}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p9

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p10

    move v11, v13

    move/from16 v12, p11

    move/from16 v16, v13

    move/from16 v13, p12

    move-object/from16 v17, v14

    move-object/from16 v14, p13

    .line 871
    invoke-direct/range {v0 .. v14}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->addChildElement(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/lang/String;IZZLbxs;)V

    add-int/lit8 v13, v16, 0x1

    move-object/from16 v14, v17

    goto :goto_5

    :cond_c
    :goto_6
    return-void
.end method

.method private getElementId(Ljava/lang/ref/SoftReference;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 1078
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lbxq;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 1080
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbxq;

    const-string v2, "vuiElementId"

    .line 1082
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    .line 1083
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1084
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "4657"

    .line 1085
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1086
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "client has set Tag"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3

    :cond_1
    const-string v3, "vuiFatherElementId"

    .line 1091
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1092
    invoke-interface {v1}, Lbxq;->getVuiFatherElementId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1093
    :cond_2
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1094
    invoke-interface {v1}, Lbxq;->getVuiElementId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    const-string v2, ""

    if-eqz v1, :cond_5

    .line 1097
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1098
    invoke-direct {p0, v1}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->isNumber(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/speech/vui/constants/Foo;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v1}, Lcom/xiaopeng/speech/vui/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    .line 1101
    :cond_5
    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    return-object v0

    :cond_6
    if-eqz p1, :cond_8

    .line 1105
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_7

    goto :goto_2

    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8
    :goto_2
    return-object v0
.end method

.method private getElementLabel(Lbxq;)Ljava/lang/String;
    .locals 4

    .line 1027
    invoke-interface {p1}, Lbxq;->getVuiLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 1038
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.systemui"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_1

    .line 1039
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.xiaopeng.systemui"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1041
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/view/View;

    sget v3, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->vuiLabelUnSupportText:I

    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 1042
    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    .line 1043
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    move-object v0, v2

    :cond_2
    return-object v0

    :cond_3
    const/4 v0, 0x0

    .line 1050
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 1051
    instance-of v0, p1, Landroid/widget/EditText;

    if-nez v0, :cond_4

    .line 1052
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1054
    :cond_4
    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_5

    .line 1056
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1061
    :cond_5
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 1062
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v2
.end method

.method private getStateFulBtnCurr(Ljava/lang/String;Ljava/util/List;)Lbye;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lbye;",
            ">;)",
            "Lbye;"
        }
    .end annotation

    .line 782
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p2, :cond_2

    .line 786
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 790
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "_"

    .line 791
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 792
    array-length v0, p1

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    .line 793
    aget-object v0, p1, v2

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 794
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sub-int/2addr p1, v2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbye;

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method private init()V
    .locals 3

    .line 75
    invoke-static {}, Lcom/xiaopeng/speech/vui/constants/Foo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->mPackageName:Ljava/lang/String;

    .line 76
    invoke-static {}, Lcom/xiaopeng/speech/vui/constants/Foo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 82
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    .line 84
    :goto_0
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->mPackageVersion:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->mPackageVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->mSceneIdPrefix:Ljava/lang/String;

    return-void
.end method

.method private isContainsInAllCache(Ljava/lang/String;)Z
    .locals 3

    .line 401
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v0

    .line 402
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getVuiElementById(Ljava/lang/String;Ljava/lang/String;)Lbye;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "[VuiSceneTagDebug]\u7f13\u5b58\u4e2d\u6ca1\u6709\u6b64\u5143\u7d20"

    if-nez p1, :cond_0

    .line 404
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v0

    .line 407
    :cond_0
    sget-object v2, Lbxy;->GROUP:Lbxy;

    invoke-virtual {v2}, Lbxy;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lbye;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 408
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private isNumber(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "[0-9]+(_[0-9]+)*"

    .line 1109
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1110
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 1111
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private isVuiEnabled(Ljava/lang/ref/SoftReference;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 100
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lbxq;

    if-eqz v2, :cond_2

    .line 101
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbxq;

    invoke-interface {v2}, Lbxq;->getVuiMode()Lbya;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 102
    sget-object v3, Lbya;->DISABLED:Lbya;

    invoke-virtual {v2, v3}, Lbya;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lbya;->SILENT:Lbya;

    invoke-virtual {v2, v3}, Lbya;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v1, v0

    :cond_1
    if-eqz v1, :cond_2

    .line 104
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbxq;

    .line 105
    invoke-interface {v2}, Lbxq;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "disabledWhenInvisible"

    .line 106
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 107
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    move v1, v0

    :cond_2
    return v1
.end method

.method private removeId(Ljava/lang/ref/SoftReference;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 308
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 309
    :cond_0
    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    invoke-interface {p3, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p4, :cond_2

    .line 312
    invoke-interface {p4, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 313
    invoke-interface {p4, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 315
    :cond_2
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "com.android.systemui"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 316
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "com.xiaopeng.systemui"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 317
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    sget p3, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->vuiElementId:I

    invoke-virtual {p2, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 318
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 319
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    sget p3, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->vuiElementId:I

    const-string p4, ""

    invoke-virtual {p2, p3, p4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 320
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setVuiElementChangedListener(Ljava/lang/ref/SoftReference;Lbxs;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;",
            "Lbxs;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 296
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lbxq;

    if-eqz v0, :cond_1

    .line 297
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbxq;

    .line 298
    invoke-interface {v0}, Lbxq;->getVuiElementId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    invoke-interface {v0, p3}, Lbxq;->setVuiElementId(Ljava/lang/String;)V

    .line 301
    :cond_0
    invoke-interface {v0}, Lbxq;->getVuiElementChangedListener()Lbxs;

    move-result-object p3

    if-nez p3, :cond_1

    .line 302
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbxq;

    invoke-interface {p1, p2}, Lbxq;->setVuiElementChangedListener(Lbxs;)V

    :cond_1
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2

    .line 1015
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/xiaopeng/speech/vui/task/base/BaseTask$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/vui/task/base/BaseTask$1;-><init>(Lcom/xiaopeng/speech/vui/task/base/BaseTask;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public buildView(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/lang/String;IZZLbxs;)Lbye;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Lbye;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/ref/SoftReference<",
            "Lbxt;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "IZZ",
            "Lbxs;",
            ")",
            "Lbye;"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    move-object/from16 v14, p3

    move-object/from16 v13, p5

    move-object/from16 v12, p8

    move-object/from16 v11, p10

    move-object/from16 v10, p14

    const/16 v16, 0x0

    if-eqz v0, :cond_1d

    .line 123
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_f

    .line 126
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b

    const-string v2, ""

    const/4 v3, -0x1

    if-eqz p4, :cond_1

    .line 127
    :try_start_1
    invoke-virtual/range {p4 .. p4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    if-eqz v14, :cond_1

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    if-eq v1, v3, :cond_1

    .line 128
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v14, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p5

    move-object/from16 v5, p8

    move-object/from16 v6, p1

    move-object/from16 v7, p10

    move/from16 v8, p11

    move/from16 v9, p12

    move/from16 v10, p13

    .line 130
    invoke-virtual/range {v1 .. v10}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->handleId(Ljava/lang/String;Lbye;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/lang/String;IZZ)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual/range {p4 .. p4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbxt;

    invoke-interface {v1, v0, v15}, Lbxt;->onBuildVuiElement(Ljava/lang/String;Lbxr;)Lbye;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b

    return-object v0

    :cond_1
    const-string v4, "0"

    if-eqz v0, :cond_13

    .line 134
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_13

    .line 135
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    move/from16 v17, v5

    goto :goto_0

    :cond_2
    move/from16 v17, p13

    .line 138
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lbxt;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b

    const-string v9, "_"

    if-eqz v5, :cond_c

    if-ne v1, v3, :cond_3

    move-object v2, v4

    goto :goto_1

    .line 139
    :cond_3
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_1
    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p5

    move-object/from16 v5, p8

    move-object/from16 v6, p1

    move-object/from16 v7, p10

    move/from16 v8, p11

    move-object/from16 v18, v9

    move/from16 v9, p12

    move/from16 v10, v17

    .line 140
    invoke-virtual/range {v1 .. v10}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->handleId(Ljava/lang/String;Lbye;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/lang/String;IZZ)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 142
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbxt;

    invoke-interface {v1, v10, v15}, Lbxt;->onBuildVuiElement(Ljava/lang/String;Lbxr;)Lbye;

    move-result-object v19
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b

    if-nez v19, :cond_8

    .line 144
    :try_start_4
    invoke-interface {v13, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 145
    invoke-interface {v13, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v0, :cond_5

    .line 148
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lbxq;

    if-eqz v1, :cond_5

    .line 149
    invoke-direct/range {p0 .. p1}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->isVuiEnabled(Ljava/lang/ref/SoftReference;)Z

    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-nez v1, :cond_5

    return-object v16

    :cond_5
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p10

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object v0, v10

    move-object/from16 v10, p9

    move/from16 v11, p11

    move-object/from16 v12, p2

    move-object/from16 v16, v0

    move-object v0, v13

    move/from16 v13, p12

    move/from16 v14, v17

    move-object/from16 v15, p14

    .line 153
    :try_start_5
    invoke-direct/range {v1 .. v15}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->buildVuiElementGroup(Ljava/lang/ref/SoftReference;Ljava/lang/String;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/util/List;ILjava/util/List;ZZLbxs;)Lbye;

    move-result-object v15
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    if-nez v15, :cond_7

    move-object/from16 v1, v16

    .line 157
    :try_start_6
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v14, p10

    if-eqz v14, :cond_6

    invoke-virtual {v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v18

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6
    move-object v11, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v12, p12

    move/from16 v13, v17

    move-object/from16 v14, p14

    .line 162
    invoke-direct/range {v1 .. v14}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->getChildElements(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/lang/String;ZZLbxs;)V

    move-object/from16 v13, p0

    goto :goto_2

    .line 166
    :cond_7
    invoke-virtual {v15}, Lbye;->getId()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-object/from16 v13, p0

    move-object/from16 v12, p1

    move-object/from16 v10, p14

    :try_start_7
    invoke-direct {v13, v12, v10, v0}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->setVuiElementChangedListener(Ljava/lang/ref/SoftReference;Lbxs;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :goto_2
    move-object/from16 v16, v15

    goto :goto_4

    :catch_0
    move-exception v0

    move-object/from16 v16, v15

    goto/16 :goto_7

    :catch_1
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_3

    :cond_8
    move-object v12, v0

    move-object v1, v10

    move-object v0, v13

    move-object v13, v15

    move-object/from16 v10, p14

    .line 169
    :try_start_8
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 170
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    move-object/from16 v15, p8

    if-eqz v15, :cond_a

    .line 172
    invoke-interface {v15, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 173
    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_a
    invoke-virtual/range {v19 .. v19}, Lbye;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v12, v10, v0}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->setVuiElementChangedListener(Ljava/lang/ref/SoftReference;Lbxs;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    move-object/from16 v16, v19

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v15, v13

    :goto_3
    move-object/from16 v16, v19

    goto/16 :goto_e

    :cond_b
    move-object v13, v15

    :goto_4
    move-object v15, v13

    goto/16 :goto_f

    :cond_c
    move-object v14, v11

    move-object v11, v9

    move-object/from16 v20, v12

    move-object v12, v0

    move-object v0, v13

    move-object v13, v15

    move-object/from16 v15, v20

    if-eqz v12, :cond_f

    .line 178
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lbxq;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    if-eqz v5, :cond_f

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p10

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object v11, v10

    move-object/from16 v10, p9

    move-object v0, v11

    move/from16 v11, p11

    move-object v0, v12

    move-object/from16 v12, p2

    move/from16 v13, p12

    move-object v0, v14

    move/from16 v14, v17

    move-object/from16 v15, p14

    .line 179
    :try_start_a
    invoke-direct/range {v1 .. v15}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->buildVuiElementGroup(Ljava/lang/ref/SoftReference;Ljava/lang/String;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/util/List;ILjava/util/List;ZZLbxs;)Lbye;

    move-result-object v15
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    if-nez v15, :cond_e

    .line 182
    :try_start_b
    invoke-direct/range {p0 .. p1}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->isVuiEnabled(Ljava/lang/ref/SoftReference;)Z

    move-result v1

    if-nez v1, :cond_d

    return-object v16

    :cond_d
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p12

    move/from16 v13, v17

    move-object/from16 v14, p14

    .line 185
    invoke-direct/range {v1 .. v14}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->getChildElements(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/lang/String;ZZLbxs;)V

    move-object/from16 v14, p0

    goto :goto_5

    .line 188
    :cond_e
    invoke-virtual {v15}, Lbye;->getId()Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    move-object/from16 v14, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p14

    :try_start_c
    invoke-direct {v14, v12, v13, v0}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->setVuiElementChangedListener(Ljava/lang/ref/SoftReference;Lbxs;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    :goto_5
    move-object/from16 v16, v15

    goto/16 :goto_a

    :catch_4
    move-exception v0

    move-object/from16 v16, v15

    goto/16 :goto_b

    :catch_5
    move-exception v0

    move-object/from16 v16, v15

    goto :goto_6

    :catch_6
    move-exception v0

    :goto_6
    move-object/from16 v15, p0

    goto/16 :goto_e

    :catch_7
    move-exception v0

    :goto_7
    move-object v15, v13

    goto/16 :goto_e

    :cond_f
    move-object v0, v14

    move-object v14, v13

    move-object v13, v10

    if-eqz v12, :cond_12

    .line 190
    :try_start_d
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_12

    if-ne v1, v3, :cond_10

    move-object v2, v4

    goto :goto_8

    .line 191
    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_8
    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p5

    move-object/from16 v5, p8

    move-object/from16 v6, p1

    move-object/from16 v7, p10

    move/from16 v8, p11

    move/from16 v9, p12

    move/from16 v10, v17

    .line 192
    invoke-virtual/range {v1 .. v10}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->handleId(Ljava/lang/String;Lbye;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/lang/String;IZZ)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    move-object v15, v13

    move-object/from16 v13, p5

    .line 194
    invoke-interface {v13, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    if-eqz v0, :cond_11

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v11, p8

    goto :goto_9

    :cond_11
    move-object/from16 v11, p8

    move-object v0, v1

    .line 199
    :goto_9
    invoke-direct {v14, v12, v1, v13, v11}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->removeId(Ljava/lang/ref/SoftReference;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object v11, v0

    move/from16 v12, p12

    move/from16 v13, v17

    move-object v15, v14

    move-object/from16 v14, p14

    .line 200
    :try_start_e
    invoke-direct/range {v1 .. v14}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->getChildElements(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/lang/String;ZZLbxs;)V

    goto/16 :goto_f

    :cond_12
    :goto_a
    move-object v15, v14

    goto/16 :goto_f

    :catch_8
    move-exception v0

    :goto_b
    move-object v15, v14

    goto/16 :goto_e

    :cond_13
    move-object/from16 v20, v12

    move-object v12, v0

    move-object v0, v11

    move-object/from16 v11, v20

    if-eqz v12, :cond_1b

    .line 205
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lbxt;

    if-eqz v5, :cond_1b

    if-ne v1, v3, :cond_14

    move-object v2, v4

    goto :goto_c

    .line 206
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_c
    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p5

    move-object/from16 v5, p8

    move-object/from16 v6, p1

    move-object/from16 v7, p10

    move/from16 v8, p11

    move/from16 v9, p12

    move/from16 v10, p13

    .line 207
    invoke-virtual/range {v1 .. v10}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->handleId(Ljava/lang/String;Lbye;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/lang/String;IZZ)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1d

    .line 209
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbxt;

    invoke-interface {v1, v14, v15}, Lbxt;->onBuildVuiElement(Ljava/lang/String;Lbxr;)Lbye;

    move-result-object v17
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    if-eqz v17, :cond_17

    .line 211
    :try_start_f
    invoke-interface {v13, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 212
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    if-eqz v11, :cond_16

    .line 214
    invoke-interface {v11, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 215
    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_16
    invoke-virtual/range {v17 .. v17}, Lbye;->getId()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v10, p14

    invoke-direct {v15, v12, v10, v0}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->setVuiElementChangedListener(Ljava/lang/ref/SoftReference;Lbxs;Ljava/lang/String;)V

    move-object/from16 v16, v17

    goto/16 :goto_f

    :cond_17
    move-object/from16 v10, p14

    .line 219
    invoke-interface {v13, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 220
    invoke-interface {v13, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_18
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object/from16 v4, p8

    move-object/from16 v5, p10

    move/from16 v6, p11

    move-wide/from16 v7, p6

    move/from16 v9, p12

    move-object v0, v10

    move/from16 v10, p13

    .line 222
    invoke-direct/range {v1 .. v10}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->buildVuiElement(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/lang/String;IJZZ)Lbye;

    move-result-object v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    if-eqz v1, :cond_19

    .line 223
    :try_start_10
    invoke-virtual {v1}, Lbye;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lbxy;->UNKNOWN:Lbxy;

    invoke-virtual {v3}, Lbxy;->a()Ljava/lang/String;

    move-result-object v3

    if-ne v2, v3, :cond_19

    .line 225
    invoke-direct {v15, v12, v14, v13, v11}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->removeId(Ljava/lang/ref/SoftReference;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v16

    :cond_19
    if-eqz v1, :cond_1a

    .line 228
    invoke-virtual {v1}, Lbye;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v12, v0, v2}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->setVuiElementChangedListener(Ljava/lang/ref/SoftReference;Lbxs;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a

    :cond_1a
    :goto_d
    move-object/from16 v16, v1

    goto :goto_f

    :catch_9
    move-exception v0

    move-object/from16 v16, v17

    goto :goto_e

    :cond_1b
    move-object/from16 v14, p14

    if-eqz v12, :cond_1d

    .line 232
    :try_start_11
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lbxq;

    if-eqz v1, :cond_1d

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object/from16 v4, p8

    move-object/from16 v5, p10

    move/from16 v6, p11

    move-wide/from16 v7, p6

    move/from16 v9, p12

    move/from16 v10, p13

    .line 233
    invoke-direct/range {v1 .. v10}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->buildVuiElement(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/lang/String;IJZZ)Lbye;

    move-result-object v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    if-eqz v1, :cond_1c

    .line 234
    :try_start_12
    invoke-virtual {v1}, Lbye;->getType()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lbxy;->UNKNOWN:Lbxy;

    invoke-virtual {v2}, Lbxy;->a()Ljava/lang/String;

    move-result-object v2

    if-ne v0, v2, :cond_1c

    .line 235
    invoke-virtual {v1}, Lbye;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v12, v0, v13, v11}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->removeId(Ljava/lang/ref/SoftReference;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v16

    :catch_a
    move-exception v0

    move-object/from16 v16, v1

    goto :goto_e

    :cond_1c
    if-eqz v1, :cond_1a

    .line 238
    invoke-virtual {v1}, Lbye;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v12, v14, v0}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->setVuiElementChangedListener(Ljava/lang/ref/SoftReference;Lbxs;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_a

    goto :goto_d

    :catch_b
    move-exception v0

    .line 243
    :goto_e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1d
    :goto_f
    return-object v16
.end method

.method public buildVuiElement(Landroid/view/View;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Lbye;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public buildVuiElement(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/List<",
            "Lbye;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public buildVuiElementAttr(Ljava/lang/ref/SoftReference;)Lbye;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;)",
            "Lbye;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    .line 416
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lbxq;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_7

    .line 419
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbxq;

    .line 420
    invoke-interface {v1}, Lbxq;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v2

    .line 421
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getViewMode()Lbya;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getViewMode()Lbya;

    move-result-object v3

    sget-object v6, Lbya;->DISABLED:Lbya;

    invoke-virtual {v3, v6}, Lbya;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-nez v3, :cond_3

    .line 422
    invoke-interface {v1}, Lbxq;->isVuiModeEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 423
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-direct {v3, v6}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 425
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lbxq;

    if-eqz v6, :cond_1

    .line 426
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbxq;

    invoke-interface {v3}, Lbxq;->getVuiElementType()Lbxy;

    move-result-object v3

    sget-object v6, Lbxy;->XTABLAYOUT:Lbxy;

    if-ne v3, v6, :cond_1

    :goto_0
    move v3, v5

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    const-string v3, "isTabLayoutChild"

    .line 428
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_1
    if-eqz v3, :cond_3

    return-object v0

    .line 435
    :cond_3
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->isVuiEnabled(Ljava/lang/ref/SoftReference;)Z

    move-result v3

    if-nez v3, :cond_4

    return-object v0

    .line 455
    :cond_4
    new-instance v3, Lbye;

    invoke-direct {v3}, Lbye;-><init>()V

    .line 456
    invoke-interface {v1}, Lbxq;->getVuiAction()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 458
    invoke-virtual {v3, v6}, Lbye;->setActions(Ljava/lang/String;)V

    .line 461
    :cond_5
    invoke-direct {p0, v1}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->getElementLabel(Lbxq;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_6

    .line 463
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->TAG:Ljava/lang/String;

    const-string v1, "label \u4e0d\u5408\u6cd5"

    invoke-static {p1, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_6
    const-string v0, "\'"

    .line 465
    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 466
    invoke-direct {p0, v6}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->escapeQueryChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 468
    :cond_7
    invoke-virtual {v3, v6}, Lbye;->setLabel(Ljava/lang/String;)V

    .line 470
    invoke-interface {v1}, Lbxq;->getVuiFatherLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lbye;->setFatherLabel(Ljava/lang/String;)V

    const-string v0, "vuiFatherElementId"

    .line 472
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->getElementId(Ljava/lang/ref/SoftReference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 474
    invoke-virtual {v3, v0}, Lbye;->setFatherElementId(Ljava/lang/String;)V

    .line 477
    :cond_8
    sget-object v0, Lbxy;->UNKNOWN:Lbxy;

    invoke-virtual {v0}, Lbxy;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_9

    .line 478
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_9

    .line 479
    sget-object v0, Lbxy;->RECYCLEVIEW:Lbxy;

    invoke-virtual {v0}, Lbxy;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lbye;->setType(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    if-eqz p1, :cond_b

    .line 480
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 481
    invoke-interface {v1}, Lbxq;->getVuiElementType()Lbxy;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 483
    invoke-virtual {v6}, Lbxy;->a()Ljava/lang/String;

    move-result-object v0

    .line 486
    :cond_a
    invoke-virtual {v3, v0}, Lbye;->setType(Ljava/lang/String;)V

    .line 488
    :cond_b
    :goto_2
    invoke-interface {v1}, Lbxq;->getVuiPriority()Lbyb;

    move-result-object v0

    invoke-virtual {v0}, Lbyb;->a()I

    move-result v0

    .line 489
    sget-object v6, Lbyb;->LEVEL3:Lbyb;

    invoke-virtual {v6}, Lbyb;->a()I

    move-result v6

    if-eq v0, v6, :cond_c

    .line 490
    invoke-virtual {v3, v0}, Lbye;->setPriority(I)V

    .line 493
    :cond_c
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v6, "com.android.systemui"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v7, "com.xiaopeng.systemui"

    if-nez v0, :cond_11

    .line 494
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    if-eqz p1, :cond_f

    .line 496
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v8, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->vuiElementUnSupport:I

    invoke-virtual {v0, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 497
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v8, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->vuiElementUnSupport:I

    invoke-virtual {v0, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v8, "unsupported"

    if-eqz v0, :cond_e

    if-nez v2, :cond_d

    .line 501
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v0

    .line 503
    :cond_d
    invoke-virtual {v2, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_e
    if-eqz v2, :cond_f

    .line 508
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 509
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :catch_0
    :cond_f
    :goto_3
    if-eqz p1, :cond_11

    .line 513
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v4, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->vuiElementDefaultAction:I

    invoke-virtual {v0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 514
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v4, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->vuiElementDefaultAction:I

    invoke-virtual {v0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_11

    if-nez v2, :cond_10

    .line 518
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v4

    :cond_10
    const-string v4, "defaultAction"

    .line 520
    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_11
    if-eqz v2, :cond_13

    const-string v0, "canVoiceControl"

    .line 528
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 530
    :try_start_2
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 532
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 535
    :catch_2
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 538
    :cond_12
    :goto_4
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_13

    .line 539
    invoke-interface {v1, v2}, Lbxq;->setVuiProps(Lorg/json/JSONObject;)V

    .line 543
    :cond_13
    invoke-interface {v1}, Lbxq;->getVuiPosition()I

    move-result v0

    invoke-virtual {v3, v0}, Lbye;->setPosition(I)V

    .line 545
    invoke-virtual {v3}, Lbye;->getValues()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_14

    .line 546
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setValueAttribute(Landroid/view/View;Lbye;)V

    :cond_14
    if-eqz p1, :cond_17

    .line 591
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 592
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 593
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 594
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v1, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->vuiElementVisible:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_15

    .line 596
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_17

    .line 597
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Lbye;->setVisible(Ljava/lang/Boolean;)V

    goto :goto_5

    .line 599
    :cond_15
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_17

    .line 600
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Lbye;->setVisible(Ljava/lang/Boolean;)V

    goto :goto_5

    .line 602
    :cond_16
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_17

    .line 603
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Lbye;->setVisible(Ljava/lang/Boolean;)V

    :cond_17
    :goto_5
    if-eqz p1, :cond_18

    .line 607
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-eqz v0, :cond_18

    .line 608
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 609
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 610
    invoke-virtual {v3, v0}, Lbye;->setResourceName(Ljava/lang/String;)V

    goto :goto_6

    :cond_18
    if-eqz p1, :cond_19

    .line 612
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 613
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 614
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 615
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v1, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->virtualResourceName:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 616
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resourceTag:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_19

    .line 618
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lbye;->setResourceName(Ljava/lang/String;)V

    .line 622
    :cond_19
    :goto_6
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbxq;

    invoke-interface {p1}, Lbxq;->getVuiMode()Lbya;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 623
    sget-object v0, Lbya;->UNDERSTOOD:Lbya;

    invoke-virtual {p1, v0}, Lbya;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 624
    invoke-virtual {p1}, Lbya;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lbye;->setMode(Ljava/lang/String;)V

    :cond_1a
    return-object v3

    :cond_1b
    :goto_7
    return-object v0
.end method

.method public createElementByProps(Ljava/lang/ref/SoftReference;Lbye;Lorg/json/JSONObject;JZZ)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;",
            "Lbye;",
            "Lorg/json/JSONObject;",
            "JZZ)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    if-eqz v3, :cond_1f

    if-eqz p1, :cond_1f

    .line 632
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_15

    .line 635
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 636
    sget-object v0, Lbxy;->STATEFULBUTTON:Lbxy;

    invoke-virtual {v0}, Lbxy;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lbye;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v7, "supportVuiLabels"

    const-string v8, "curState"

    const-string v9, "states"

    const-string v10, "displayEnd"

    const-string v11, "displayStart"

    const-string v12, "maxValue"

    const-string v13, "minValue"

    if-eqz v0, :cond_10

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 638
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    if-eqz v14, :cond_f

    .line 639
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_f

    if-nez p7, :cond_9

    const/4 v15, 0x0

    .line 641
    :goto_0
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v15, v0, :cond_8

    .line 643
    :try_start_0
    invoke-virtual {v14, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 645
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v16

    .line 646
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 647
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-object/from16 v18, v14

    :try_start_1
    move-object/from16 v14, v17

    check-cast v14, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-object/from16 v17, v9

    .line 648
    :try_start_2
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 649
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_6

    move-object/from16 p7, v0

    .line 650
    new-instance v0, Lbye;

    invoke-direct {v0}, Lbye;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v19, v7

    :try_start_3
    const-string v7, "-"

    .line 653
    invoke-virtual {v9, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v7, :cond_1

    move-object/from16 v20, v10

    .line 654
    :try_start_4
    array-length v10, v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object/from16 v21, v11

    const/4 v11, 0x1

    if-le v10, v11, :cond_2

    const/4 v10, 0x0

    .line 655
    :try_start_5
    aget-object v9, v7, v10

    invoke-virtual {v0, v9}, Lbye;->setValues(Ljava/lang/Object;)V

    .line 656
    aget-object v7, v7, v11

    invoke-virtual {v0, v7}, Lbye;->setLabel(Ljava/lang/String;)V

    goto :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :cond_1
    move-object/from16 v20, v10

    move-object/from16 v21, v11

    :cond_2
    const-string v7, "\\|"

    .line 658
    invoke-virtual {v9, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 659
    array-length v10, v7

    if-nez v10, :cond_3

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    .line 663
    aget-object v7, v7, v10

    invoke-virtual {v0, v7}, Lbye;->setValues(Ljava/lang/Object;)V

    goto :goto_3

    .line 661
    :cond_4
    :goto_2
    invoke-virtual {v0, v9}, Lbye;->setValues(Ljava/lang/Object;)V

    .line 665
    :goto_3
    invoke-virtual {v0, v9}, Lbye;->setLabel(Ljava/lang/String;)V

    .line 668
    :goto_4
    sget-object v7, Lbxy;->STATE:Lbxy;

    invoke-virtual {v7}, Lbxy;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lbye;->setType(Ljava/lang/String;)V

    .line 669
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lbye;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lbye;->setId(Ljava/lang/String;)V

    .line 670
    invoke-virtual {v0, v4, v5}, Lbye;->setTimestamp(J)V

    if-eqz p6, :cond_5

    const/4 v7, 0x1

    .line 672
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v9}, Lbye;->setLayoutLoadable(Ljava/lang/Boolean;)V

    .line 674
    :cond_5
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_6

    :cond_6
    move-object/from16 p7, v0

    move-object/from16 v19, v7

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    :goto_5
    move-object/from16 v0, p7

    move-object/from16 v9, v17

    move-object/from16 v14, v18

    move-object/from16 v7, v19

    move-object/from16 v10, v20

    move-object/from16 v11, v21

    goto/16 :goto_1

    :catch_3
    move-exception v0

    move-object/from16 v19, v7

    goto :goto_6

    :catch_4
    move-exception v0

    move-object/from16 v19, v7

    move-object/from16 v17, v9

    :goto_6
    move-object/from16 v20, v10

    :goto_7
    move-object/from16 v21, v11

    goto :goto_8

    :cond_7
    move-object/from16 v19, v7

    move-object/from16 v17, v9

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move-object/from16 v18, v14

    goto :goto_9

    :catch_5
    move-exception v0

    move-object/from16 v19, v7

    move-object/from16 v17, v9

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move-object/from16 v18, v14

    .line 681
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_9
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v9, v17

    move-object/from16 v14, v18

    move-object/from16 v7, v19

    move-object/from16 v10, v20

    move-object/from16 v11, v21

    goto/16 :goto_0

    :cond_8
    move-object/from16 v19, v7

    move-object/from16 v17, v9

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    .line 684
    invoke-virtual {v2, v6}, Lbye;->setElements(Ljava/util/List;)V

    goto :goto_a

    :cond_9
    move-object/from16 v19, v7

    move-object/from16 v17, v9

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    :goto_a
    const/4 v0, 0x0

    .line 687
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 688
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 691
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lbxq;

    if-eqz v4, :cond_b

    .line 692
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbxq;

    invoke-interface {v0}, Lbxq;->getVuiValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 694
    :cond_b
    :goto_b
    iget-object v4, v2, Lbye;->actions:Lcom/google/gson/JsonObject;

    if-eqz v4, :cond_15

    .line 696
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v2, Lbye;->actions:Lcom/google/gson/JsonObject;

    invoke-virtual {v5}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 699
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const/4 v7, 0x0

    .line 700
    :goto_c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_e

    .line 701
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "SetCheck"

    .line 702
    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 703
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->isSelected()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v5, v10, v9}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateElementValueJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d

    :cond_c
    const-string v10, "SetValue"

    .line 704
    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 705
    invoke-direct {v1, v0, v6}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->getStateFulBtnCurr(Ljava/lang/String;Ljava/util/List;)Lbye;

    move-result-object v9

    if-eqz v9, :cond_d

    .line 707
    invoke-virtual {v9}, Lbye;->getValues()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v5, v10, v9}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateElementValueJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_d
    :goto_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 711
    :cond_e
    iget-object v0, v1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lbye;->setValues(Ljava/lang/Object;)V

    goto/16 :goto_10

    :cond_f
    move-object/from16 v19, v7

    move-object/from16 v17, v9

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    goto/16 :goto_10

    :cond_10
    move-object/from16 v19, v7

    move-object/from16 v17, v9

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    .line 716
    sget-object v0, Lbxy;->RECYCLEVIEW:Lbxy;

    invoke-virtual {v0}, Lbxy;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lbye;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    if-nez p7, :cond_15

    .line 717
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    move-object/from16 v6, v21

    .line 718
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    move-object/from16 v7, v20

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 719
    new-instance v0, Lbye$a;

    invoke-direct {v0}, Lbye$a;-><init>()V

    const-string v9, "10000"

    invoke-virtual {v0, v9}, Lbye$a;->c(Ljava/lang/String;)Lbye$a;

    move-result-object v0

    sget-object v9, Lbxy;->VIRTUALLIST:Lbxy;

    .line 720
    invoke-virtual {v9}, Lbxy;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lbye$a;->a(Ljava/lang/String;)Lbye$a;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lbye$a;->a(J)Lbye$a;

    move-result-object v0

    invoke-virtual {v0}, Lbye$a;->a()Lbye;

    move-result-object v0

    .line 722
    :try_start_6
    new-instance v9, Lcom/google/gson/JsonObject;

    invoke-direct {v9}, Lcom/google/gson/JsonObject;-><init>()V

    .line 723
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v13, v10}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 724
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v12, v10}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 725
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 726
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v10, "parentId"

    .line 727
    invoke-virtual/range {p2 .. p2}, Lbye;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    move-object/from16 v10, v19

    .line 728
    :try_start_7
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 729
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_12

    .line 730
    instance-of v14, v11, Ljava/util/List;

    if-eqz v14, :cond_12

    .line 731
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x0

    .line 732
    :goto_e
    move-object/from16 v16, v11

    check-cast v16, Ljava/util/List;

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    if-ge v15, v1, :cond_11

    .line 733
    move-object v1, v11

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    move-object/from16 p1, v11

    .line 734
    new-instance v11, Lbye$a;

    invoke-direct {v11}, Lbye$a;-><init>()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    move-object/from16 v19, v10

    :try_start_8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    move-object/from16 v20, v7

    :try_start_9
    const-string v7, "10000_"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    move-object/from16 v21, v6

    const/4 v7, 0x0

    :try_start_a
    aget-object v6, v1, v7

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Lbye$a;->c(Ljava/lang/String;)Lbye$a;

    move-result-object v6

    sget-object v10, Lbxy;->VIRTUALLISTITEM:Lbxy;

    .line 735
    invoke-virtual {v10}, Lbxy;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lbye$a;->a(Ljava/lang/String;)Lbye$a;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lbye$a;->a(J)Lbye$a;

    move-result-object v6

    const/4 v10, 0x1

    aget-object v1, v1, v10

    invoke-virtual {v6, v1}, Lbye$a;->b(Ljava/lang/String;)Lbye$a;

    move-result-object v1

    invoke-virtual {v1}, Lbye$a;->a()Lbye;

    move-result-object v1

    .line 736
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p0

    move-object/from16 v11, p1

    move-object/from16 v10, v19

    move-object/from16 v7, v20

    move-object/from16 v6, v21

    goto :goto_e

    :cond_11
    move-object/from16 v21, v6

    move-object/from16 v20, v7

    move-object/from16 v19, v10

    .line 738
    invoke-virtual {v0, v14}, Lbye;->setElements(Ljava/util/List;)V

    goto :goto_f

    :cond_12
    move-object/from16 v21, v6

    move-object/from16 v20, v7

    move-object/from16 v19, v10

    .line 741
    :goto_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 742
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 743
    invoke-virtual {v0, v9}, Lbye;->setProps(Lcom/google/gson/JsonObject;)V

    .line 744
    invoke-virtual {v2, v1}, Lbye;->setElements(Ljava/util/List;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_10

    :catch_6
    move-object/from16 v21, v6

    move-object/from16 v20, v7

    move-object/from16 v19, v10

    goto :goto_10

    :catch_7
    :cond_13
    move-object/from16 v21, v6

    move-object/from16 v20, v7

    goto :goto_10

    :catch_8
    :cond_14
    move-object/from16 v21, v6

    .line 752
    :catch_9
    :cond_15
    :goto_10
    :try_start_b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 753
    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 754
    sget-object v4, Lbxy;->STATEFULBUTTON:Lbxy;

    invoke-virtual {v4}, Lbxy;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lbye;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 755
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 756
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_16

    move-object/from16 v5, v17

    .line 757
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    .line 758
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_12

    :cond_16
    move-object/from16 v5, v17

    :cond_17
    :goto_12
    move-object/from16 v17, v5

    goto :goto_11

    .line 761
    :cond_18
    sget-object v4, Lbxy;->RECYCLEVIEW:Lbxy;

    invoke-virtual {v4}, Lbxy;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lbye;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 762
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 763
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1b

    .line 764
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    move-object/from16 v5, v21

    .line 765
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1a

    move-object/from16 v6, v20

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_19

    move-object/from16 v7, v19

    .line 766
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1c

    .line 767
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_14

    :cond_19
    move-object/from16 v7, v19

    goto :goto_14

    :cond_1a
    move-object/from16 v7, v19

    move-object/from16 v6, v20

    goto :goto_14

    :cond_1b
    move-object/from16 v7, v19

    move-object/from16 v6, v20

    move-object/from16 v5, v21

    :cond_1c
    :goto_14
    move-object/from16 v21, v5

    move-object/from16 v20, v6

    move-object/from16 v19, v7

    goto :goto_13

    .line 772
    :cond_1d
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    if-eqz v1, :cond_1e

    move-object/from16 v1, p0

    .line 773
    :try_start_c
    iget-object v3, v1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v4, Lcom/google/gson/JsonObject;

    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    invoke-virtual {v2, v0}, Lbye;->setProps(Lcom/google/gson/JsonObject;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    goto :goto_15

    :catch_a
    :cond_1e
    move-object/from16 v1, p0

    :catch_b
    :cond_1f
    :goto_15
    return-void
.end method

.method public getActiveWholeSceneId(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 1143
    :cond_0
    sget-object v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1144
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1145
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1146
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1147
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v0
.end method

.method protected getNewVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;
    .locals 1

    .line 1126
    new-instance v0, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;

    invoke-direct {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;-><init>()V

    .line 1127
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->sceneId(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->mPackageVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->appVersion(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->mPackageName:Ljava/lang/String;

    .line 1128
    invoke-virtual {p1, v0}, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->packageName(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->timestamp(J)Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->build()Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object p1

    return-object p1
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 1136
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->sceneId:Ljava/lang/String;

    return-object v0
.end method

.method protected getSceneUnqiueId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->mSceneIdPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public handleId(Ljava/lang/String;Lbye;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/lang/String;IZZ)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lbye;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/String;",
            "IZZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 899
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_0

    .line 900
    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_0

    .line 901
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 903
    invoke-virtual {p2, p1}, Lbye;->setId(Ljava/lang/String;)V

    :cond_0
    if-eqz p4, :cond_1

    .line 906
    invoke-interface {p4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 907
    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p1

    :cond_2
    const-string v0, "0"

    const-string v1, "_"

    if-nez p8, :cond_3

    if-nez p9, :cond_3

    if-eqz p1, :cond_4

    .line 911
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p8

    if-nez p8, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p8

    if-eqz p8, :cond_4

    :cond_3
    if-eqz p5, :cond_9

    .line 912
    invoke-virtual {p5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p8

    instance-of p8, p8, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p8, :cond_9

    .line 913
    :cond_4
    invoke-virtual {p5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p8

    if-eqz p8, :cond_5

    invoke-virtual {p5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Landroid/view/View;

    sget p9, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->vuiElementId:I

    invoke-virtual {p8, p9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Ljava/lang/String;

    goto :goto_0

    :cond_5
    const/4 p8, 0x0

    .line 914
    :goto_0
    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p9

    if-nez p9, :cond_9

    .line 916
    invoke-interface {p3, p8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 917
    invoke-interface {p3, p8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 926
    :cond_6
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->TAG:Ljava/lang/String;

    const-string p3, "[VuiSceneTagWarn]\u66f4\u65b0\u4e0d\u5408\u6cd5"

    invoke-static {p1, p3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    if-eqz p4, :cond_7

    .line 929
    invoke-interface {p4, p8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 930
    invoke-interface {p4, p8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    if-eqz p2, :cond_8

    .line 933
    invoke-virtual {p2, p8}, Lbye;->setId(Ljava/lang/String;)V

    :cond_8
    return-object p8

    :cond_9
    if-eqz p1, :cond_c

    .line 939
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p8

    if-eqz p8, :cond_a

    goto :goto_2

    :cond_a
    if-eqz p3, :cond_e

    .line 946
    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p8

    if-eqz p8, :cond_e

    if-nez p6, :cond_b

    .line 948
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 950
    :cond_b
    new-instance p8, Ljava/lang/StringBuilder;

    invoke-direct {p8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p8, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 951
    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_e

    .line 952
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_c
    :goto_2
    if-nez p6, :cond_d

    .line 941
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "4657_"

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 943
    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_e
    :goto_3
    if-eqz p3, :cond_11

    .line 958
    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_11

    .line 959
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_f

    .line 961
    invoke-virtual {p2, p1}, Lbye;->setId(Ljava/lang/String;)V

    .line 963
    :cond_f
    invoke-virtual {p0, p5, p1}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->setVuiTag(Ljava/lang/ref/SoftReference;Ljava/lang/String;)V

    if-eqz p4, :cond_10

    .line 983
    invoke-interface {p4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_10

    .line 984
    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    return-object p1

    .line 989
    :cond_11
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "[VuiSceneTagWarn]\u5bb9\u9519\u5931\u8d25\uff1a"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 990
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_error"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public run()V
    .locals 1

    .line 92
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->execute()V

    return-void
.end method

.method public setVuiTag(Ljava/lang/ref/SoftReference;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 995
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 996
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xiaopeng.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_3

    .line 999
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1000
    :cond_1
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1001
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1002
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    sget v0, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->vuiElementId:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 1004
    :cond_2
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v1, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->vuiElementId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1006
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1007
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1008
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    sget v0, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->vuiElementId:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method
