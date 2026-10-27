.class public abstract Lcom/xiaopeng/speech/vui/task/base/BaseTask;
.super Ljava/lang/Object;
.source "BaseTask.java"

# interfaces
.implements Lcom/xiaopeng/speech/vui/task/base/Task;
.implements Lcom/xiaopeng/vui/commons/IVuiElementBuilder;


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
    .param p1, "viewWrapper"    # Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, "BaseTask"

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->TAG:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->mSceneIdPrefix:Ljava/lang/String;

    .line 66
    const-string v1, "Address"

    const-string v2, "Navi"

    const-string v3, "Route"

    const-string v4, "Waypoint"

    const-string v5, "Pic"

    const-string v6, "Charge"

    const-string v7, "Connect"

    const-string v8, "Disconnect"

    const-string v9, "Null"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->bizTypeEnum:[Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    .line 69
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->mGson:Lcom/google/gson/Gson;

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getSceneId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->sceneId:Ljava/lang/String;

    .line 71
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->init()V

    .line 72
    return-void
.end method

.method private addChildElement(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/lang/String;IZZLcom/xiaopeng/vui/commons/IVuiElementChangedListener;)V
    .locals 16
    .param p7, "timeStamp"    # J
    .param p10, "fatherId"    # Ljava/lang/String;
    .param p11, "postiton"    # I
    .param p12, "isDynamic"    # Z
    .param p13, "isRecyclerView"    # Z
    .param p14, "elementChangedListener"    # Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/ref/SoftReference<",
            "Lcom/xiaopeng/vui/commons/IVuiElementListener;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "IZZ",
            "Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;",
            ")V"
        }
    .end annotation

    .line 882
    .local p1, "child":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    .local p2, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .local p3, "bizIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "customsizeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p5, "customsizeCallback":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/xiaopeng/vui/commons/IVuiElementListener;>;"
    .local p6, "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p9, "allIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
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

    invoke-virtual/range {v0 .. v14}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->buildView(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/lang/String;IZZLcom/xiaopeng/vui/commons/IVuiElementChangedListener;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v0

    .line 884
    .local v0, "childElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 886
    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v1

    .line 887
    .end local p10    # "fatherId":Ljava/lang/String;
    .local v1, "fatherId":Ljava/lang/String;
    move-object/from16 v15, p2

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 888
    move-wide/from16 v13, p7

    invoke-virtual {v0, v13, v14}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setTimestamp(J)V

    .line 889
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 890
    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/vui/commons/VuiElementType;->STATEFULBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v3}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 891
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v4, v15

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide v8, v13

    move-object/from16 v10, p9

    move-object/from16 v11, p3

    move-object v12, v1

    move/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    invoke-direct/range {v2 .. v15}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->getChildElements(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/lang/String;ZZLcom/xiaopeng/vui/commons/IVuiElementChangedListener;)V

    goto :goto_0

    .line 895
    .end local v1    # "fatherId":Ljava/lang/String;
    .restart local p10    # "fatherId":Ljava/lang/String;
    :cond_0
    move-object/from16 v1, p10

    .end local p10    # "fatherId":Ljava/lang/String;
    .restart local v1    # "fatherId":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method

.method private buildVuiElement(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/lang/String;IJZZ)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 19
    .param p4, "fatherId"    # Ljava/lang/String;
    .param p5, "position"    # I
    .param p6, "timeStamp"    # J
    .param p8, "isDynamic"    # Z
    .param p9, "isRecyclerView"    # Z
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
            "Lcom/xiaopeng/vui/commons/model/VuiElement;"
        }
    .end annotation

    .local p1, "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    .local p2, "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "allIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    .line 346
    if-eqz v11, :cond_a

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 349
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->buildVuiElementAttr(Ljava/lang/ref/SoftReference;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v15

    .line 351
    .local v15, "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    if-eqz v15, :cond_9

    .line 352
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/xiaopeng/vui/commons/IVuiElement;

    .line 353
    .local v9, "vuiFriendlyView":Lcom/xiaopeng/vui/commons/IVuiElement;
    const-string v0, "vuiElementId"

    invoke-direct {v10, v11, v0}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->getElementId(Ljava/lang/ref/SoftReference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 354
    .local v16, "id":Ljava/lang/String;
    move-object v0, v10

    move-object/from16 v1, v16

    move-object v2, v15

    move-object v3, v12

    move-object v4, v13

    move-object v5, v11

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p8

    move-object v14, v9

    move/from16 v9, p9

    .end local v9    # "vuiFriendlyView":Lcom/xiaopeng/vui/commons/IVuiElement;
    .local v14, "vuiFriendlyView":Lcom/xiaopeng/vui/commons/IVuiElement;
    invoke-virtual/range {v0 .. v9}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->handleId(Ljava/lang/String;Lcom/xiaopeng/vui/commons/model/VuiElement;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/lang/String;IZZ)Ljava/lang/String;

    .line 355
    const/4 v0, 0x0

    .line 356
    .local v0, "layoutloadable":Z
    invoke-interface {v14}, Lcom/xiaopeng/vui/commons/IVuiElement;->isVuiLayoutLoadable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 357
    const/4 v0, 0x1

    .line 363
    .end local v0    # "layoutloadable":Z
    .local v9, "layoutloadable":Z
    :cond_1
    :goto_0
    move v9, v0

    goto :goto_1

    .line 358
    .end local v9    # "layoutloadable":Z
    .restart local v0    # "layoutloadable":Z
    :cond_2
    if-eqz p8, :cond_1

    .line 359
    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->XGROUPHEADER:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 360
    const/4 v0, 0x1

    goto :goto_0

    .line 363
    .end local v0    # "layoutloadable":Z
    .restart local v9    # "layoutloadable":Z
    :goto_1
    if-eqz v9, :cond_3

    .line 364
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setLayoutLoadable(Ljava/lang/Boolean;)V

    .line 367
    :cond_3
    invoke-interface {v14}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v7

    .line 368
    .local v7, "vuiPropsJson":Lorg/json/JSONObject;
    if-eqz v7, :cond_7

    .line 369
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->STATEFULBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->RECYCLEVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 370
    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 373
    :cond_4
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 374
    iget-object v0, v10, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    invoke-virtual {v15, v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setProps(Lcom/google/gson/JsonObject;)V

    .line 378
    .end local v7    # "vuiPropsJson":Lorg/json/JSONObject;
    .local v18, "vuiPropsJson":Lorg/json/JSONObject;
    :cond_5
    move-object/from16 v18, v7

    goto :goto_3

    .line 371
    .end local v18    # "vuiPropsJson":Lorg/json/JSONObject;
    .restart local v7    # "vuiPropsJson":Lorg/json/JSONObject;
    :cond_6
    :goto_2
    const/16 v17, 0x0

    move-object v0, v10

    move-object v1, v11

    move-object v2, v15

    move-object v3, v7

    move-wide/from16 v4, p6

    move v6, v9

    move-object/from16 v18, v7

    move/from16 v7, v17

    .end local v7    # "vuiPropsJson":Lorg/json/JSONObject;
    .restart local v18    # "vuiPropsJson":Lorg/json/JSONObject;
    invoke-virtual/range {v0 .. v7}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->createElementByProps(Ljava/lang/ref/SoftReference;Lcom/xiaopeng/vui/commons/model/VuiElement;Lorg/json/JSONObject;JZZ)V

    goto :goto_3

    .line 378
    .end local v18    # "vuiPropsJson":Lorg/json/JSONObject;
    .restart local v7    # "vuiPropsJson":Lorg/json/JSONObject;
    :cond_7
    move-object/from16 v18, v7

    .end local v7    # "vuiPropsJson":Lorg/json/JSONObject;
    .restart local v18    # "vuiPropsJson":Lorg/json/JSONObject;
    :goto_3
    if-eqz v11, :cond_9

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    invoke-interface {v14}, Lcom/xiaopeng/vui/commons/IVuiElement;->isVuiModeEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    .line 379
    if-eqz v11, :cond_9

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->GROUP:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 380
    invoke-virtual {v15}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v14}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 381
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 382
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getViewMode()Lcom/xiaopeng/vui/commons/VuiMode;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getViewMode()Lcom/xiaopeng/vui/commons/VuiMode;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiMode;->DISABLED:Lcom/xiaopeng/vui/commons/VuiMode;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/vui/commons/VuiMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

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
    invoke-virtual {v15}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->isContainsInAllCache(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 385
    invoke-virtual {v15}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v11, v0, v12, v13}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->removeId(Ljava/lang/ref/SoftReference;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 386
    const/4 v0, 0x0

    return-object v0

    .line 390
    :cond_8
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
    invoke-virtual {v15}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v11, v0, v12, v13}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->removeId(Ljava/lang/ref/SoftReference;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 392
    const/4 v0, 0x0

    return-object v0

    .line 397
    .end local v9    # "layoutloadable":Z
    .end local v14    # "vuiFriendlyView":Lcom/xiaopeng/vui/commons/IVuiElement;
    .end local v16    # "id":Ljava/lang/String;
    .end local v18    # "vuiPropsJson":Lorg/json/JSONObject;
    :cond_9
    return-object v15

    .line 347
    .end local v15    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    :cond_a
    :goto_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private buildVuiElementGroup(Ljava/lang/ref/SoftReference;Ljava/lang/String;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/util/List;ILjava/util/List;ZZLcom/xiaopeng/vui/commons/IVuiElementChangedListener;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 19
    .param p2, "fatherId"    # Ljava/lang/String;
    .param p6, "timeStamp"    # J
    .param p10, "position"    # I
    .param p12, "isDynamic"    # Z
    .param p13, "isRecyclerView"    # Z
    .param p14, "elementChangedListener"    # Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;
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
            "Lcom/xiaopeng/vui/commons/IVuiElementListener;",
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
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;ZZ",
            "Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;",
            ")",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;"
        }
    .end annotation

    .local p1, "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    .local p3, "customizeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, "customViewVuiHandler":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/xiaopeng/vui/commons/IVuiElementListener;>;"
    .local p5, "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p8, "allIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p9, "bizIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p11, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    move-object/from16 v14, p1

    .line 254
    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p5

    move-object/from16 v3, p8

    move-object/from16 v4, p2

    move/from16 v5, p10

    move-wide/from16 v6, p6

    move/from16 v8, p12

    move/from16 v9, p13

    invoke-direct/range {v0 .. v9}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->buildVuiElement(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/lang/String;IJZZ)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v15

    .line 256
    .local v15, "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    if-eqz v15, :cond_6

    invoke-virtual {v15}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v15}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v15}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->XSLIDER:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 257
    invoke-virtual {v15}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v16

    .line 258
    .end local p2    # "fatherId":Ljava/lang/String;
    .local v16, "fatherId":Ljava/lang/String;
    invoke-virtual {v15}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->UNKNOWN:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v15}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v13, p0

    move-object/from16 v12, p5

    move-object/from16 v11, p8

    invoke-direct {v13, v14, v0, v12, v11}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->removeId(Ljava/lang/ref/SoftReference;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 260
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 261
    :cond_0
    move-object/from16 v13, p0

    move-object/from16 v12, p5

    move-object/from16 v11, p8

    invoke-virtual {v15}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->STATEFULBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    return-object v15

    .line 264
    :cond_1
    if-eqz v14, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v0, :cond_3

    .line 265
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/vui/commons/IVuiElement;

    .line 266
    .local v0, "IVuiElement":Lcom/xiaopeng/vui/commons/IVuiElement;
    invoke-interface {v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->isVuiLayoutLoadable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 267
    return-object v15

    .line 270
    :cond_2
    const-string v1, "com.android.systemui"

    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.xiaopeng.systemui"

    .line 271
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 272
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget v2, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->disableChildVuiAttrsWhenInvisible:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    .line 273
    return-object v15

    .line 277
    .end local v0    # "IVuiElement":Lcom/xiaopeng/vui/commons/IVuiElement;
    :cond_3
    invoke-virtual {v15}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getElements()Ljava/util/List;

    move-result-object v0

    .line 278
    .local v0, "childElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    if-nez v0, :cond_4

    .line 279
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 281
    .end local v0    # "childElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .local v10, "childElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :cond_4
    move-object v10, v0

    const/4 v0, 0x0

    .line 282
    .local v0, "isLayoutLoadable":Z
    invoke-virtual {v15}, Lcom/xiaopeng/vui/commons/model/VuiElement;->isLayoutLoadable()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 283
    invoke-virtual {v15}, Lcom/xiaopeng/vui/commons/model/VuiElement;->isLayoutLoadable()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 285
    .end local v0    # "isLayoutLoadable":Z
    .local v17, "isLayoutLoadable":Z
    :cond_5
    move/from16 v17, v0

    move-object v0, v13

    move-object v1, v14

    move-object v2, v10

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v12

    move-wide/from16 v6, p6

    move-object v8, v11

    move-object/from16 v9, p9

    move-object v14, v10

    move-object/from16 v10, v16

    .end local v10    # "childElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .local v14, "childElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    move/from16 v11, v17

    move/from16 v12, p13

    move-object/from16 v13, p14

    invoke-direct/range {v0 .. v13}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->getChildElements(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/lang/String;ZZLcom/xiaopeng/vui/commons/IVuiElementChangedListener;)V

    .line 287
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 288
    invoke-virtual {v15, v14}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setElements(Ljava/util/List;)V

    .end local v14    # "childElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local v17    # "isLayoutLoadable":Z
    goto :goto_0

    .line 292
    .end local v16    # "fatherId":Ljava/lang/String;
    .restart local p2    # "fatherId":Ljava/lang/String;
    :cond_6
    move-object/from16 v16, p2

    .end local p2    # "fatherId":Ljava/lang/String;
    .restart local v16    # "fatherId":Ljava/lang/String;
    :cond_7
    :goto_0
    return-object v15
.end method

.method private escapeQueryChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .line 326
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    return-object p1

    .line 329
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 332
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 334
    .local v2, "c":C
    const/16 v3, 0x27

    if-ne v2, v3, :cond_1

    .line 335
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 337
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    .end local v2    # "c":C
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getChildElements(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/lang/String;ZZLcom/xiaopeng/vui/commons/IVuiElementChangedListener;)V
    .locals 20
    .param p6, "timeStamp"    # J
    .param p10, "fatherId"    # Ljava/lang/String;
    .param p11, "isDynamic"    # Z
    .param p12, "isRecyclerView"    # Z
    .param p13, "elementChangedListener"    # Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/ref/SoftReference<",
            "Lcom/xiaopeng/vui/commons/IVuiElementListener;",
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
            "Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;",
            ")V"
        }
    .end annotation

    .local p1, "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    .local p2, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .local p3, "customizeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, "customsizeCallback":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/xiaopeng/vui/commons/IVuiElementListener;>;"
    .local p5, "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p8, "allIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p9, "bizIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v15, p0

    move-object/from16 v14, p9

    .line 806
    if-eqz p1, :cond_11

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 809
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v0, :cond_2

    .line 810
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiBizId()Ljava/lang/String;

    move-result-object v0

    .line 811
    .local v0, "bizId":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 812
    invoke-interface {v14, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 813
    return-void

    .line 815
    :cond_1
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 818
    .end local v0    # "bizId":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_9

    .line 819
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-nez v1, :cond_3

    .line 820
    return-void

    .line 830
    :cond_3
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    move-object v13, v1

    .line 831
    .local v13, "recyclerView":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroidx/recyclerview/widget/RecyclerView;>;"
    invoke-virtual {v13}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v1

    move v12, v1

    .line 832
    .local v12, "len":I
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

    const-string v3, ",view\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 836
    nop

    .local v0, "i":I
    :goto_0
    move v11, v0

    .end local v0    # "i":I
    .local v11, "i":I
    invoke-virtual {v13}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v13}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-ge v11, v0, :cond_8

    invoke-virtual {v13}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ge v11, v0, :cond_8

    .line 837
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v13}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v11}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    move-object v10, v0

    .line 838
    .local v10, "child":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    invoke-virtual {v10}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    .line 839
    iget-object v0, v15, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RecyclerView \u7684child \u4e3anull,postion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 841
    :cond_5
    const/16 v16, 0x1

    move-object v0, v15

    move-object v1, v10

    move-object/from16 v2, p2

    move-object v3, v14

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v17, v10

    move-object/from16 v10, p10

    .end local v10    # "child":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    .local v17, "child":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    move/from16 v18, v11

    .end local v11    # "i":I
    .local v18, "i":I
    move v15, v12

    move/from16 v12, p11

    .end local v12    # "len":I
    .local v15, "len":I
    move/from16 v19, v15

    move-object v15, v13

    move/from16 v13, v16

    .end local v13    # "recyclerView":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroidx/recyclerview/widget/RecyclerView;>;"
    .local v15, "recyclerView":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroidx/recyclerview/widget/RecyclerView;>;"
    .local v19, "len":I
    move-object/from16 v14, p13

    invoke-direct/range {v0 .. v14}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->addChildElement(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/lang/String;IZZLcom/xiaopeng/vui/commons/IVuiElementChangedListener;)V

    .line 843
    invoke-virtual {v15}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v15}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    .line 844
    .end local v19    # "len":I
    .local v1, "len":I
    move v0, v1

    move-object/from16 v14, p0

    iget-object v1, v14, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->TAG:Ljava/lang/String;

    .end local v1    # "len":I
    .local v0, "len":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RecyclerView is not same child count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",view\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",len:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .end local v17    # "child":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    goto :goto_1

    .line 836
    .end local v0    # "len":I
    .restart local v1    # "len":I
    :cond_6
    move v0, v1

    move-object/from16 v14, p0

    .end local v1    # "len":I
    .restart local v0    # "len":I
    goto :goto_1

    .end local v0    # "len":I
    .restart local v19    # "len":I
    :cond_7
    move/from16 v0, v19

    move-object/from16 v14, p0

    .end local v19    # "len":I
    .restart local v0    # "len":I
    :goto_1
    add-int/lit8 v1, v18, 0x1

    .end local v18    # "i":I
    .local v1, "i":I
    move v12, v0

    move v0, v1

    move-object v13, v15

    move-object v15, v14

    move-object/from16 v14, p9

    goto/16 :goto_0

    .line 847
    .end local v0    # "len":I
    .end local v1    # "i":I
    .end local v15    # "recyclerView":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroidx/recyclerview/widget/RecyclerView;>;"
    :cond_8
    move-object v14, v15

    goto/16 :goto_6

    :cond_9
    move-object v14, v15

    if-eqz p1, :cond_c

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/ListView;

    if-eqz v1, :cond_c

    .line 848
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    move-object v15, v1

    .line 849
    .local v15, "listView":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/widget/ListView;>;"
    nop

    .local v0, "i":I
    :goto_2
    move v13, v0

    .end local v0    # "i":I
    .local v13, "i":I
    invoke-virtual {v15}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v15}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-ge v13, v0, :cond_b

    .line 850
    invoke-virtual {v15}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 851
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {v15}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v15}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-interface {v0, v13, v2, v3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 852
    .local v1, "child":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    move-object v0, v14

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

    .end local v13    # "i":I
    .local v16, "i":I
    move-object/from16 v14, p13

    invoke-direct/range {v0 .. v14}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->addChildElement(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/lang/String;IZZLcom/xiaopeng/vui/commons/IVuiElementChangedListener;)V

    .end local v1    # "child":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    goto :goto_3

    .line 849
    .end local v16    # "i":I
    .restart local v13    # "i":I
    :cond_a
    move/from16 v16, v13

    .end local v13    # "i":I
    .restart local v16    # "i":I
    :goto_3
    add-int/lit8 v0, v16, 0x1

    .end local v16    # "i":I
    .restart local v0    # "i":I
    move-object/from16 v14, p0

    goto :goto_2

    .line 856
    .end local v0    # "i":I
    .end local v15    # "listView":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/widget/ListView;>;"
    :cond_b
    goto/16 :goto_6

    :cond_c
    if-eqz p1, :cond_10

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_10

    .line 857
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v1, :cond_f

    .line 858
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v1}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v15

    .line 859
    .local v15, "props":Lorg/json/JSONObject;
    if-eqz v15, :cond_d

    const-string v1, "buildChildren"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 860
    :cond_d
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    move-object v14, v1

    .line 861
    .local v14, "viewGroup":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/ViewGroup;>;"
    nop

    .restart local v0    # "i":I
    :goto_4
    move v13, v0

    .end local v0    # "i":I
    .restart local v13    # "i":I
    invoke-virtual {v14}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v14}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v13, v0, :cond_e

    .line 862
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {v14}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 863
    .restart local v1    # "child":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
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

    .end local v13    # "i":I
    .restart local v16    # "i":I
    move-object/from16 v17, v14

    move-object/from16 v14, p13

    .end local v14    # "viewGroup":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/ViewGroup;>;"
    .local v17, "viewGroup":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/ViewGroup;>;"
    invoke-direct/range {v0 .. v14}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->addChildElement(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/lang/String;IZZLcom/xiaopeng/vui/commons/IVuiElementChangedListener;)V

    .line 861
    .end local v1    # "child":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    add-int/lit8 v0, v16, 0x1

    .end local v16    # "i":I
    .restart local v0    # "i":I
    move-object/from16 v14, v17

    goto :goto_4

    .line 867
    .end local v0    # "i":I
    .end local v15    # "props":Lorg/json/JSONObject;
    .end local v17    # "viewGroup":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/ViewGroup;>;"
    :cond_e
    goto :goto_6

    .line 868
    :cond_f
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    move-object v15, v1

    .line 869
    .local v15, "viewGroup":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/ViewGroup;>;"
    nop

    .restart local v0    # "i":I
    :goto_5
    move v14, v0

    .end local v0    # "i":I
    .local v14, "i":I
    invoke-virtual {v15}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v15}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v14, v0, :cond_10

    .line 870
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {v15}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 871
    .restart local v1    # "child":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p9

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p10

    move v11, v14

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v16, v14

    move-object/from16 v14, p13

    .end local v14    # "i":I
    .restart local v16    # "i":I
    invoke-direct/range {v0 .. v14}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->addChildElement(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/lang/String;IZZLcom/xiaopeng/vui/commons/IVuiElementChangedListener;)V

    .line 869
    .end local v1    # "child":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    add-int/lit8 v0, v16, 0x1

    .end local v16    # "i":I
    .restart local v0    # "i":I
    goto :goto_5

    .line 876
    .end local v0    # "i":I
    .end local v15    # "viewGroup":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/ViewGroup;>;"
    :cond_10
    :goto_6
    return-void

    .line 807
    :cond_11
    :goto_7
    return-void
.end method

.method private getElementId(Ljava/lang/ref/SoftReference;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p2, "name"    # Ljava/lang/String;
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

    .line 1078
    .local p1, "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 1080
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/vui/commons/IVuiElement;

    .line 1082
    .local v1, "viewVuiFriendly":Lcom/xiaopeng/vui/commons/IVuiElement;
    const-string v2, "vuiElementId"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 1083
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1084
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1085
    .local v2, "tag":Ljava/lang/String;
    const-string v3, "4657"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1086
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "client has set Tag"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1087
    return-object v2

    .line 1090
    .end local v2    # "tag":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .line 1091
    .local v2, "elementId":Ljava/lang/String;
    const-string v3, "vuiFatherElementId"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1092
    invoke-interface {v1}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiFatherElementId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1093
    :cond_2
    const-string v3, "vuiElementId"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1094
    invoke-interface {v1}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiElementId()Ljava/lang/String;

    move-result-object v2

    .line 1096
    :cond_3
    :goto_0
    if-eqz v2, :cond_5

    .line 1097
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1098
    invoke-direct {p0, v2}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->isNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v2

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/speech/vui/constants/Foo;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/xiaopeng/speech/vui/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 1101
    :cond_5
    const-string v3, "vuiFatherElementId"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1102
    return-object v0

    .line 1105
    :cond_6
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_7

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    :cond_8
    :goto_2
    return-object v0

    .line 1079
    .end local v1    # "viewVuiFriendly":Lcom/xiaopeng/vui/commons/IVuiElement;
    .end local v2    # "elementId":Ljava/lang/String;
    :cond_9
    :goto_3
    return-object v0
.end method

.method private getElementLabel(Lcom/xiaopeng/vui/commons/IVuiElement;)Ljava/lang/String;
    .locals 3
    .param p1, "view"    # Lcom/xiaopeng/vui/commons/IVuiElement;

    .line 1027
    invoke-interface {p1}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiLabel()Ljava/lang/String;

    move-result-object v0

    .line 1028
    .local v0, "label":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1036
    return-object v0

    .line 1038
    :cond_0
    const-string v1, "com.android.systemui"

    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.xiaopeng.systemui"

    .line 1039
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1041
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/view/View;

    sget v2, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->vuiLabelUnSupportText:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 1042
    .local v1, "isSupport":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    .line 1043
    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1044
    if-nez v0, :cond_2

    const-string v2, ""

    goto :goto_0

    :cond_2
    move-object v2, v0

    :goto_0
    return-object v2

    .line 1049
    .end local v1    # "isSupport":Ljava/lang/Object;
    :cond_3
    const/4 v1, 0x0

    .line 1050
    .local v1, "text":Ljava/lang/CharSequence;
    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_5

    .line 1051
    instance-of v2, p1, Landroid/widget/EditText;

    if-nez v2, :cond_4

    .line 1052
    move-object v2, p1

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1

    .line 1054
    :cond_4
    move-object v2, p1

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1055
    if-nez v1, :cond_5

    .line 1056
    move-object v2, p1

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1061
    :cond_5
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1062
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1072
    :cond_6
    const-string v2, ""

    return-object v2
.end method

.method private getStateFulBtnCurr(Ljava/lang/String;Ljava/util/List;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 4
    .param p1, "curState"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;)",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;"
        }
    .end annotation

    .line 782
    .local p2, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 783
    return-object v1

    .line 786
    :cond_0
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 790
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 791
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 792
    .local v0, "indexs":[Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 793
    aget-object v2, v0, v3

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 794
    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v1, v3

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/vui/commons/model/VuiElement;

    return-object v1

    .line 798
    .end local v0    # "indexs":[Ljava/lang/String;
    :cond_2
    return-object v1

    .line 787
    :cond_3
    :goto_0
    return-object v1
.end method

.method private init()V
    .locals 4

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

    .line 77
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 79
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 83
    goto :goto_0

    .line 81
    :catch_0
    move-exception v2

    .line 82
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 84
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->mPackageVersion:Ljava/lang/String;

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->mPackageVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->mSceneIdPrefix:Ljava/lang/String;

    .line 88
    return-void
.end method

.method private isContainsInAllCache(Ljava/lang/String;)Z
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .line 401
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v0

    .line 402
    .local v0, "vuiSceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getVuiElementById(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v1

    .line 403
    .local v1, "targetElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 404
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->TAG:Ljava/lang/String;

    const-string v4, "[VuiSceneTagDebug]\u7f13\u5b58\u4e2d\u6ca1\u6709\u6b64\u5143\u7d20"

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 405
    return v2

    .line 407
    :cond_0
    sget-object v3, Lcom/xiaopeng/vui/commons/VuiElementType;->GROUP:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v3}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 408
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->TAG:Ljava/lang/String;

    const-string v4, "[VuiSceneTagDebug]\u7f13\u5b58\u4e2d\u6ca1\u6709\u6b64\u5143\u7d20"

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    return v2

    .line 412
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private isNumber(Ljava/lang/String;)Z
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .line 1109
    const-string v0, "[0-9]+(_[0-9]+)*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1110
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1111
    .local v1, "isNum":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1112
    const/4 v2, 0x0

    return v2

    .line 1114
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method private isVuiEnabled(Ljava/lang/ref/SoftReference;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .line 99
    .local p1, "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    const/4 v0, 0x1

    .line 100
    .local v0, "enable":Z
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v1, :cond_2

    .line 101
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v1}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiMode()Lcom/xiaopeng/vui/commons/VuiMode;

    move-result-object v1

    .line 102
    .local v1, "mode":Lcom/xiaopeng/vui/commons/VuiMode;
    if-eqz v1, :cond_1

    sget-object v2, Lcom/xiaopeng/vui/commons/VuiMode;->DISABLED:Lcom/xiaopeng/vui/commons/VuiMode;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/vui/commons/VuiMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/xiaopeng/vui/commons/VuiMode;->SILENT:Lcom/xiaopeng/vui/commons/VuiMode;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/vui/commons/VuiMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    :goto_1
    move v0, v2

    .line 103
    if-eqz v0, :cond_2

    .line 104
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/vui/commons/IVuiElement;

    .line 105
    .local v2, "vuiFriendlyView":Lcom/xiaopeng/vui/commons/IVuiElement;
    invoke-interface {v2}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v3

    .line 106
    .local v3, "vuiPropsJson":Lorg/json/JSONObject;
    if-eqz v3, :cond_2

    const-string v4, "disabledWhenInvisible"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 107
    const-string v4, "disabledWhenInvisible"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 108
    .local v4, "disabledWhenInvisible":Z
    if-eqz v4, :cond_2

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_2

    .line 109
    const/4 v0, 0x0

    .line 114
    .end local v1    # "mode":Lcom/xiaopeng/vui/commons/VuiMode;
    .end local v2    # "vuiFriendlyView":Lcom/xiaopeng/vui/commons/IVuiElement;
    .end local v3    # "vuiPropsJson":Lorg/json/JSONObject;
    .end local v4    # "disabledWhenInvisible":Z
    :cond_2
    return v0
.end method

.method private removeId(Ljava/lang/ref/SoftReference;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .param p2, "id"    # Ljava/lang/String;
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

    .line 308
    .local p1, "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    .local p3, "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "allIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_4

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

    .line 312
    :cond_1
    if-eqz p4, :cond_2

    invoke-interface {p4, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 313
    invoke-interface {p4, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 315
    :cond_2
    const-string v0, "com.android.systemui"

    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.xiaopeng.systemui"

    .line 316
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 317
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v1, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->vuiElementId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 318
    .local v0, "tag":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 319
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget v2, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->vuiElementId:I

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 320
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 323
    .end local v0    # "tag":Ljava/lang/String;
    :cond_3
    return-void

    .line 308
    :cond_4
    :goto_0
    return-void
.end method

.method private setVuiElementChangedListener(Ljava/lang/ref/SoftReference;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Ljava/lang/String;)V
    .locals 2
    .param p2, "listener"    # Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;
    .param p3, "elementId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;",
            "Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 296
    .local p1, "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v0, :cond_1

    .line 297
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/vui/commons/IVuiElement;

    .line 298
    .local v0, "vuiElement":Lcom/xiaopeng/vui/commons/IVuiElement;
    invoke-interface {v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiElementId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    invoke-interface {v0, p3}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiElementId(Ljava/lang/String;)V

    .line 301
    :cond_0
    invoke-interface {v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiElementChangedListener()Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    move-result-object v1

    if-nez v1, :cond_1

    .line 302
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v1, p2}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiElementChangedListener(Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;)V

    .line 305
    .end local v0    # "vuiElement":Lcom/xiaopeng/vui/commons/IVuiElement;
    :cond_1
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 1015
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/xiaopeng/speech/vui/task/base/BaseTask$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/vui/task/base/BaseTask$1;-><init>(Lcom/xiaopeng/speech/vui/task/base/BaseTask;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1021
    return-void
.end method


# virtual methods
.method public buildView(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/lang/String;IZZLcom/xiaopeng/vui/commons/IVuiElementChangedListener;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 24
    .param p6, "timeStamp"    # J
    .param p10, "fatherId"    # Ljava/lang/String;
    .param p11, "position"    # I
    .param p12, "isDynamic"    # Z
    .param p13, "isRecyclerView"    # Z
    .param p14, "elementChangedListener"    # Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/ref/SoftReference<",
            "Lcom/xiaopeng/vui/commons/IVuiElementListener;",
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
            "Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;",
            ")",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;"
        }
    .end annotation

    .local p1, "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    .local p2, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .local p3, "customizeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, "customViewVuiHandler":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/xiaopeng/vui/commons/IVuiElementListener;>;"
    .local p5, "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p8, "allIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p9, "bizIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p3

    move-object/from16 v12, p5

    move-object/from16 v11, p8

    move-object/from16 v10, p10

    .line 121
    move-object/from16 v9, p14

    const/4 v0, 0x0

    move-object/from16 v16, v0

    .line 123
    .local v16, "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    if-eqz v14, :cond_23

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_27

    .line 126
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_27

    move v8, v1

    .line 127
    .local v8, "resourceId":I
    const/4 v1, -0x1

    if-eqz p4, :cond_1

    :try_start_1
    invoke-virtual/range {p4 .. p4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v13, :cond_1

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    if-eq v8, v1, :cond_1

    .line 128
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v13, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "id":Ljava/lang/String;
    const/4 v3, 0x0

    move-object v1, v15

    move-object v4, v12

    move-object v5, v11

    move-object v6, v14

    move-object v7, v10

    move v0, v8

    move/from16 v8, p11

    .end local v8    # "resourceId":I
    .local v0, "resourceId":I
    move/from16 v9, p12

    move/from16 v10, p13

    invoke-virtual/range {v1 .. v10}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->handleId(Ljava/lang/String;Lcom/xiaopeng/vui/commons/model/VuiElement;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/lang/String;IZZ)Ljava/lang/String;

    move-result-object v1

    .line 131
    .end local v2    # "id":Ljava/lang/String;
    .local v1, "id":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/vui/commons/IVuiElementListener;

    invoke-interface {v2, v1, v15}, Lcom/xiaopeng/vui/commons/IVuiElementListener;->onBuildVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiElementBuilder;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    .line 242
    .end local v0    # "resourceId":I
    .end local v1    # "id":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v18, p10

    move/from16 v17, p13

    .end local p10    # "fatherId":Ljava/lang/String;
    .end local p13    # "isRecyclerView":Z
    .local v17, "isRecyclerView":Z
    .local v18, "fatherId":Ljava/lang/String;
    :goto_0
    move-object v13, v15

    move-object v15, v14

    move-object v14, v11

    move-object v11, v12

    :goto_1
    move-object/from16 v12, p14

    goto/16 :goto_25

    .line 134
    .end local v17    # "isRecyclerView":Z
    .end local v18    # "fatherId":Ljava/lang/String;
    .restart local v8    # "resourceId":I
    .restart local p10    # "fatherId":Ljava/lang/String;
    .restart local p13    # "isRecyclerView":Z
    :cond_1
    move v10, v8

    .end local v8    # "resourceId":I
    .local v10, "resourceId":I
    if-eqz v14, :cond_16

    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_16

    .line 135
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroidx/recyclerview/widget/RecyclerView;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_19

    if-eqz v2, :cond_2

    .line 136
    const/4 v2, 0x1

    .line 138
    .end local p13    # "isRecyclerView":Z
    .local v2, "isRecyclerView":Z
    move/from16 v17, v2

    goto :goto_2

    .end local v2    # "isRecyclerView":Z
    .restart local p13    # "isRecyclerView":Z
    :cond_2
    move/from16 v17, p13

    .end local p13    # "isRecyclerView":Z
    .restart local v17    # "isRecyclerView":Z
    :goto_2
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/xiaopeng/vui/commons/IVuiElementListener;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_18

    if-eqz v2, :cond_d

    .line 139
    if-ne v10, v1, :cond_3

    :try_start_4
    const-string v1, "0"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_3
    move-object v2, v1

    goto :goto_4

    .line 242
    .end local v10    # "resourceId":I
    :catch_1
    move-exception v0

    move-object/from16 v18, p10

    goto :goto_0

    .line 139
    .restart local v10    # "resourceId":I
    :cond_3
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 140
    .local v2, "id":Ljava/lang/String;
    :goto_4
    const/4 v3, 0x0

    move-object v1, v15

    move-object v4, v12

    move-object v5, v11

    move-object v6, v14

    move-object/from16 v7, p10

    move/from16 v8, p11

    move/from16 v9, p12

    move/from16 v18, v10

    move/from16 v10, v17

    .end local v10    # "resourceId":I
    .local v18, "resourceId":I
    invoke-virtual/range {v1 .. v10}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->handleId(Ljava/lang/String;Lcom/xiaopeng/vui/commons/model/VuiElement;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/lang/String;IZZ)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    .line 141
    .end local v2    # "id":Ljava/lang/String;
    .local v10, "id":Ljava/lang/String;
    if-eqz v10, :cond_c

    .line 142
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/vui/commons/IVuiElementListener;

    invoke-interface {v1, v10, v15}, Lcom/xiaopeng/vui/commons/IVuiElementListener;->onBuildVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiElementBuilder;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_e

    move-object v9, v1

    .line 143
    .end local v16    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .local v9, "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    if-nez v9, :cond_9

    .line 144
    :try_start_6
    invoke-interface {v12, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    if-eqz v1, :cond_4

    .line 145
    :try_start_7
    invoke-interface {v12, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 242
    .end local v10    # "id":Ljava/lang/String;
    .end local v18    # "resourceId":I
    :catch_2
    move-exception v0

    move-object/from16 v18, p10

    move-object/from16 v16, v9

    goto :goto_0

    .line 148
    .restart local v10    # "id":Ljava/lang/String;
    .restart local v18    # "resourceId":I
    :cond_4
    :goto_5
    if-eqz v14, :cond_5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v1, :cond_5

    .line 149
    invoke-direct/range {p0 .. p1}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->isVuiEnabled(Ljava/lang/ref/SoftReference;)Z

    move-result v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    if-nez v1, :cond_5

    .line 150
    return-object v0

    .line 153
    :cond_5
    move-object v1, v15

    move-object v2, v14

    move-object/from16 v3, p10

    move-object v4, v13

    move-object/from16 v5, p4

    move-object v6, v12

    move-wide/from16 v7, p6

    move-object/from16 v19, v9

    move-object v9, v11

    .end local v9    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .local v19, "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    move-object v0, v10

    move-object/from16 v10, p9

    .end local v10    # "id":Ljava/lang/String;
    .local v0, "id":Ljava/lang/String;
    move/from16 v11, p11

    move-object/from16 v12, p2

    move/from16 v13, p12

    move/from16 v14, v17

    move-object/from16 v15, p14

    :try_start_8
    invoke-direct/range {v1 .. v15}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->buildVuiElementGroup(Ljava/lang/ref/SoftReference;Ljava/lang/String;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/util/List;ILjava/util/List;ZZLcom/xiaopeng/vui/commons/IVuiElementChangedListener;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    move-object v15, v1

    .line 156
    .end local v19    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .local v15, "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    if-nez v15, :cond_8

    .line 157
    move-object/from16 v14, p5

    :try_start_9
    invoke-interface {v14, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    if-eqz v1, :cond_6

    move-object/from16 v13, p10

    if-eqz v13, :cond_7

    :try_start_a
    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_6

    .line 242
    .end local v0    # "id":Ljava/lang/String;
    .end local v18    # "resourceId":I
    :catch_3
    move-exception v0

    goto :goto_7

    .line 160
    .restart local v0    # "id":Ljava/lang/String;
    .restart local v18    # "resourceId":I
    :cond_6
    move-object/from16 v13, p10

    :cond_7
    move-object v1, v0

    .line 162
    .end local p10    # "fatherId":Ljava/lang/String;
    .local v1, "fatherId":Ljava/lang/String;
    .local v16, "fatherId":Ljava/lang/String;
    :goto_6
    move-object/from16 v16, v1

    .end local v1    # "fatherId":Ljava/lang/String;
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v14

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, v16

    move/from16 v12, p12

    move/from16 v13, v17

    move-object/from16 v14, p14

    :try_start_b
    invoke-direct/range {v1 .. v14}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->getChildElements(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/lang/String;ZZLcom/xiaopeng/vui/commons/IVuiElementChangedListener;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 178
    move-object/from16 v14, p0

    move-object/from16 v12, p1

    move-object/from16 v10, p8

    move-object/from16 v11, p14

    move-object/from16 v13, v16

    goto :goto_8

    .line 242
    .end local v0    # "id":Ljava/lang/String;
    .end local v18    # "resourceId":I
    :catch_4
    move-exception v0

    move-object/from16 v13, p0

    move-object/from16 v14, p8

    move-object/from16 v12, p14

    move-object/from16 v18, v16

    move-object/from16 v11, p5

    goto/16 :goto_e

    .end local v16    # "fatherId":Ljava/lang/String;
    .restart local p10    # "fatherId":Ljava/lang/String;
    :catch_5
    move-exception v0

    move-object/from16 v13, p10

    .end local v15    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .end local p10    # "fatherId":Ljava/lang/String;
    .local v16, "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .local v18, "fatherId":Ljava/lang/String;
    :goto_7
    move-object/from16 v12, p14

    move-object/from16 v18, v13

    move-object v11, v14

    move-object/from16 v16, v15

    move-object/from16 v13, p0

    move-object/from16 v15, p1

    goto/16 :goto_11

    .line 166
    .end local v16    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .restart local v0    # "id":Ljava/lang/String;
    .restart local v15    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .local v18, "resourceId":I
    .restart local p10    # "fatherId":Ljava/lang/String;
    :cond_8
    move-object/from16 v13, p10

    :try_start_c
    invoke-virtual {v15}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    move-object/from16 v14, p0

    move-object/from16 v12, p1

    move-object/from16 v11, p14

    :try_start_d
    invoke-direct {v14, v12, v11, v1}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->setVuiElementChangedListener(Ljava/lang/ref/SoftReference;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    .line 178
    move-object/from16 v10, p8

    .end local v0    # "id":Ljava/lang/String;
    .end local v15    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .end local p10    # "fatherId":Ljava/lang/String;
    .local v13, "fatherId":Ljava/lang/String;
    .restart local v16    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    :goto_8
    move-object/from16 v16, v15

    move-object/from16 v15, p5

    goto/16 :goto_d

    .line 242
    .end local v13    # "fatherId":Ljava/lang/String;
    .end local v16    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .end local v18    # "resourceId":I
    .restart local v15    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .restart local p10    # "fatherId":Ljava/lang/String;
    :catch_6
    move-exception v0

    move-object/from16 v18, v13

    move-object v13, v14

    move-object/from16 v16, v15

    move-object/from16 v14, p8

    move-object v15, v12

    move-object v12, v11

    move-object/from16 v11, p5

    goto/16 :goto_25

    :catch_7
    move-exception v0

    move-object/from16 v14, p8

    move-object/from16 v12, p14

    move-object/from16 v18, v13

    move-object/from16 v16, v15

    move-object/from16 v11, p5

    move-object/from16 v13, p0

    goto/16 :goto_f

    .end local v15    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .restart local v19    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    :catch_8
    move-exception v0

    move-object/from16 v13, p10

    move-object/from16 v15, p1

    move-object/from16 v14, p8

    move-object/from16 v12, p14

    move-object/from16 v18, v13

    move-object/from16 v16, v19

    move-object/from16 v11, p5

    move-object/from16 v13, p0

    goto/16 :goto_25

    .end local v19    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .restart local v9    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    :catch_9
    move-exception v0

    move-object/from16 v13, p10

    move-object/from16 v19, v9

    move-object v11, v12

    move-object/from16 v18, v13

    move-object v13, v15

    move-object/from16 v16, v19

    move-object/from16 v12, p14

    move-object v15, v14

    move-object/from16 v14, p8

    .end local v9    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .restart local v19    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    goto/16 :goto_25

    .line 169
    .end local v19    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .restart local v9    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .restart local v10    # "id":Ljava/lang/String;
    .restart local v18    # "resourceId":I
    :cond_9
    move-object/from16 v13, p10

    move-object/from16 v11, p14

    move-object/from16 v19, v9

    move-object v0, v10

    move-object v12, v14

    move-object v14, v15

    .end local v9    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .end local v10    # "id":Ljava/lang/String;
    .restart local v0    # "id":Ljava/lang/String;
    .restart local v19    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    move-object/from16 v15, p5

    :try_start_e
    invoke-interface {v15, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d

    if-nez v1, :cond_a

    .line 170
    :try_start_f
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a

    goto :goto_a

    .line 242
    .end local v0    # "id":Ljava/lang/String;
    .end local v18    # "resourceId":I
    :catch_a
    move-exception v0

    move-object/from16 v18, v13

    move-object v13, v14

    move-object/from16 v16, v19

    move-object/from16 v14, p8

    .end local v19    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .end local p10    # "fatherId":Ljava/lang/String;
    .restart local v16    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .local v18, "fatherId":Ljava/lang/String;
    :goto_9
    move-object/from16 v23, v12

    move-object v12, v11

    move-object v11, v15

    move-object/from16 v15, v23

    goto/16 :goto_25

    .line 172
    .end local v16    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .restart local v0    # "id":Ljava/lang/String;
    .local v18, "resourceId":I
    .restart local v19    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .restart local p10    # "fatherId":Ljava/lang/String;
    :cond_a
    :goto_a
    move-object/from16 v10, p8

    if-eqz v10, :cond_b

    :try_start_10
    invoke-interface {v10, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 173
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b

    goto :goto_c

    .line 242
    .end local v0    # "id":Ljava/lang/String;
    .end local v18    # "resourceId":I
    :catch_b
    move-exception v0

    move-object/from16 v18, v13

    move-object v13, v14

    move-object/from16 v16, v19

    .end local v19    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .end local p10    # "fatherId":Ljava/lang/String;
    .restart local v16    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .local v18, "fatherId":Ljava/lang/String;
    :goto_b
    move-object v14, v10

    goto :goto_9

    .line 175
    .end local v16    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .restart local v0    # "id":Ljava/lang/String;
    .local v18, "resourceId":I
    .restart local v19    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .restart local p10    # "fatherId":Ljava/lang/String;
    :cond_b
    :goto_c
    move-object/from16 v1, v19

    :try_start_11
    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v2

    .end local v19    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .local v1, "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    invoke-direct {v14, v12, v11, v2}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->setVuiElementChangedListener(Ljava/lang/ref/SoftReference;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_c

    .line 178
    .end local v0    # "id":Ljava/lang/String;
    move-object/from16 v16, v1

    goto :goto_d

    .line 242
    .end local v18    # "resourceId":I
    :catch_c
    move-exception v0

    move-object/from16 v16, v1

    move-object/from16 v18, v13

    move-object v13, v14

    goto :goto_b

    .end local v1    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .restart local v19    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    :catch_d
    move-exception v0

    move-object/from16 v1, v19

    move-object/from16 v16, v1

    move-object/from16 v18, v13

    move-object v13, v14

    move-object/from16 v14, p8

    move-object/from16 v23, v12

    move-object v12, v11

    move-object v11, v15

    move-object/from16 v15, v23

    .end local v19    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .restart local v1    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    goto/16 :goto_25

    .line 178
    .end local v1    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .restart local v16    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .restart local v18    # "resourceId":I
    :cond_c
    move-object/from16 v13, p10

    move-object v10, v11

    move-object/from16 v11, p14

    move-object/from16 v23, v15

    move-object v15, v12

    move-object v12, v14

    move-object/from16 v14, v23

    .line 244
    .end local p10    # "fatherId":Ljava/lang/String;
    .restart local v13    # "fatherId":Ljava/lang/String;
    :goto_d
    move-object/from16 v18, v13

    move-object v13, v14

    move-object v14, v10

    move-object/from16 v23, v12

    move-object v12, v11

    move-object v11, v15

    move-object/from16 v15, v23

    goto/16 :goto_23

    .line 242
    .end local v13    # "fatherId":Ljava/lang/String;
    .end local v18    # "resourceId":I
    .restart local p10    # "fatherId":Ljava/lang/String;
    :catch_e
    move-exception v0

    move-object/from16 v13, p10

    move-object v10, v11

    move-object/from16 v23, v15

    move-object v15, v12

    move-object v12, v14

    move-object/from16 v14, v23

    move-object/from16 v18, v13

    move-object v13, v14

    move-object v11, v15

    move-object v14, v10

    move-object v15, v12

    goto/16 :goto_1

    .line 178
    .local v10, "resourceId":I
    :cond_d
    move-object/from16 v13, p10

    move/from16 v18, v10

    move-object v10, v11

    move-object/from16 v11, p14

    move-object/from16 v23, v15

    move-object v15, v12

    move-object v12, v14

    move-object/from16 v14, v23

    .end local v10    # "resourceId":I
    .restart local v18    # "resourceId":I
    if-eqz v12, :cond_10

    :try_start_12
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/xiaopeng/vui/commons/IVuiElement;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_12

    if-eqz v2, :cond_10

    .line 179
    move-object v1, v14

    move-object v2, v12

    move-object v3, v13

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v15

    move-wide/from16 v7, p6

    move-object v9, v10

    move-object/from16 v10, p9

    move/from16 v11, p11

    move-object/from16 v12, p2

    move/from16 v13, p12

    move/from16 v14, v17

    move-object/from16 v15, p14

    :try_start_13
    invoke-direct/range {v1 .. v15}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->buildVuiElementGroup(Ljava/lang/ref/SoftReference;Ljava/lang/String;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/util/List;ILjava/util/List;ZZLcom/xiaopeng/vui/commons/IVuiElementChangedListener;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_11

    move-object v15, v1

    .line 181
    .end local v16    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .restart local v15    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    if-nez v15, :cond_f

    .line 182
    :try_start_14
    invoke-direct/range {p0 .. p1}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->isVuiEnabled(Ljava/lang/ref/SoftReference;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 183
    return-object v0

    .line 185
    :cond_e
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

    invoke-direct/range {v1 .. v14}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->getChildElements(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/lang/String;ZZLcom/xiaopeng/vui/commons/IVuiElementChangedListener;)V

    .line 244
    move-object/from16 v14, p0

    move-object/from16 v13, p1

    move-object/from16 v12, p14

    goto :goto_10

    .line 242
    .end local v18    # "resourceId":I
    :catch_f
    move-exception v0

    move-object/from16 v13, p0

    move-object/from16 v11, p5

    move-object/from16 v14, p8

    move-object/from16 v18, p10

    move-object/from16 v12, p14

    .end local v15    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .end local p10    # "fatherId":Ljava/lang/String;
    .restart local v16    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .local v18, "fatherId":Ljava/lang/String;
    :goto_e
    move-object/from16 v16, v15

    :goto_f
    move-object/from16 v15, p1

    goto/16 :goto_25

    .line 188
    .end local v16    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .restart local v15    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .local v18, "resourceId":I
    .restart local p10    # "fatherId":Ljava/lang/String;
    :cond_f
    invoke-virtual {v15}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_f

    move-object/from16 v14, p0

    move-object/from16 v13, p1

    move-object/from16 v12, p14

    :try_start_15
    invoke-direct {v14, v13, v12, v0}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->setVuiElementChangedListener(Ljava/lang/ref/SoftReference;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_10

    .line 244
    .end local v18    # "resourceId":I
    :goto_10
    move-object/from16 v11, p5

    move-object/from16 v18, p10

    move-object/from16 v16, v15

    move-object v15, v13

    move-object v13, v14

    move-object/from16 v14, p8

    goto/16 :goto_23

    .line 242
    :catch_10
    move-exception v0

    move-object/from16 v11, p5

    move-object/from16 v18, p10

    move-object/from16 v16, v15

    goto :goto_13

    .end local v15    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .restart local v16    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    :catch_11
    move-exception v0

    move-object/from16 v13, p0

    move-object/from16 v15, p1

    move-object/from16 v11, p5

    move-object/from16 v14, p8

    move-object/from16 v18, p10

    goto/16 :goto_1

    :catch_12
    move-exception v0

    move-object v13, v12

    move-object/from16 v18, p10

    move-object v12, v11

    move-object v15, v13

    move-object v13, v14

    move-object/from16 v11, p5

    .end local p10    # "fatherId":Ljava/lang/String;
    .local v18, "fatherId":Ljava/lang/String;
    :goto_11
    move-object/from16 v14, p8

    goto/16 :goto_25

    .line 190
    .local v18, "resourceId":I
    .restart local p10    # "fatherId":Ljava/lang/String;
    :cond_10
    move-object v13, v12

    move-object v12, v11

    if-eqz v13, :cond_15

    :try_start_16
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_17

    if-eqz v0, :cond_15

    .line 191
    move/from16 v15, v18

    if-ne v15, v1, :cond_11

    .end local v18    # "resourceId":I
    .local v15, "resourceId":I
    :try_start_17
    const-string v0, "0"
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_13

    :goto_12
    move-object v2, v0

    goto :goto_14

    .line 242
    .end local v15    # "resourceId":I
    :catch_13
    move-exception v0

    move-object/from16 v11, p5

    move-object/from16 v18, p10

    .end local p10    # "fatherId":Ljava/lang/String;
    .local v18, "fatherId":Ljava/lang/String;
    :goto_13
    move-object v15, v13

    move-object v13, v14

    goto :goto_11

    .line 191
    .end local v18    # "fatherId":Ljava/lang/String;
    .restart local v15    # "resourceId":I
    .restart local p10    # "fatherId":Ljava/lang/String;
    :cond_11
    :try_start_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 192
    .restart local v2    # "id":Ljava/lang/String;
    :goto_14
    const/4 v3, 0x0

    move-object v1, v14

    move-object/from16 v4, p5

    move-object/from16 v5, p8

    move-object v6, v13

    move-object/from16 v7, p10

    move/from16 v8, p11

    move/from16 v9, p12

    move/from16 v10, v17

    invoke-virtual/range {v1 .. v10}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->handleId(Ljava/lang/String;Lcom/xiaopeng/vui/commons/model/VuiElement;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/lang/String;IZZ)Ljava/lang/String;

    move-result-object v0

    .line 193
    .end local v2    # "id":Ljava/lang/String;
    .restart local v0    # "id":Ljava/lang/String;
    if-eqz v0, :cond_14

    .line 194
    move-object/from16 v11, p5

    invoke-interface {v11, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_17

    if-eqz v1, :cond_12

    move-object/from16 v10, p10

    if-eqz v10, :cond_13

    :try_start_19
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_14

    goto :goto_15

    .line 242
    .end local v0    # "id":Ljava/lang/String;
    .end local v15    # "resourceId":I
    :catch_14
    move-exception v0

    move-object/from16 v18, v10

    goto :goto_13

    .line 197
    .restart local v0    # "id":Ljava/lang/String;
    .restart local v15    # "resourceId":I
    :cond_12
    move-object/from16 v10, p10

    :cond_13
    move-object v1, v0

    .line 199
    .end local p10    # "fatherId":Ljava/lang/String;
    .local v1, "fatherId":Ljava/lang/String;
    .restart local v18    # "fatherId":Ljava/lang/String;
    :goto_15
    move-object/from16 v18, v1

    .end local v1    # "fatherId":Ljava/lang/String;
    move-object/from16 v10, p8

    :try_start_1a
    invoke-direct {v14, v13, v0, v11, v10}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->removeId(Ljava/lang/ref/SoftReference;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_16

    .line 200
    move-object v1, v14

    move-object v2, v13

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v11

    move-wide/from16 v7, p6

    move-object v9, v10

    move-object/from16 v10, p9

    move-object/from16 v11, v18

    move/from16 v12, p12

    move/from16 v20, v15

    move-object v15, v13

    move/from16 v13, v17

    .end local v15    # "resourceId":I
    .local v20, "resourceId":I
    move-object/from16 v14, p14

    :try_start_1b
    invoke-direct/range {v1 .. v14}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->getChildElements(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/lang/String;ZZLcom/xiaopeng/vui/commons/IVuiElementChangedListener;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_15

    .end local v0    # "id":Ljava/lang/String;
    goto :goto_17

    .line 242
    .end local v20    # "resourceId":I
    :catch_15
    move-exception v0

    goto :goto_16

    :catch_16
    move-exception v0

    move-object v15, v13

    :goto_16
    move-object/from16 v13, p0

    move-object/from16 v11, p5

    move-object/from16 v14, p8

    goto/16 :goto_1

    .line 203
    .end local v18    # "fatherId":Ljava/lang/String;
    .restart local v15    # "resourceId":I
    .restart local p10    # "fatherId":Ljava/lang/String;
    :cond_14
    move-object/from16 v10, p10

    move/from16 v20, v15

    move-object v15, v13

    move-object/from16 v18, v10

    .line 244
    .end local v15    # "resourceId":I
    .end local p10    # "fatherId":Ljava/lang/String;
    .restart local v18    # "fatherId":Ljava/lang/String;
    .restart local v20    # "resourceId":I
    :goto_17
    move-object/from16 v13, p0

    move-object/from16 v11, p5

    move-object/from16 v14, p8

    move-object/from16 v12, p14

    goto/16 :goto_23

    .line 242
    .end local v18    # "fatherId":Ljava/lang/String;
    .end local v20    # "resourceId":I
    .restart local p10    # "fatherId":Ljava/lang/String;
    :catch_17
    move-exception v0

    move-object/from16 v10, p10

    move-object v15, v13

    goto :goto_18

    .line 244
    :cond_15
    move-object/from16 v10, p10

    move-object v15, v13

    move-object/from16 v13, p0

    move-object/from16 v11, p5

    move-object/from16 v14, p8

    move-object/from16 v12, p14

    move-object/from16 v18, v10

    goto/16 :goto_23

    .line 242
    :catch_18
    move-exception v0

    move-object/from16 v10, p10

    move-object v15, v14

    .end local p10    # "fatherId":Ljava/lang/String;
    .restart local v18    # "fatherId":Ljava/lang/String;
    :goto_18
    move-object/from16 v13, p0

    move-object/from16 v11, p5

    move-object/from16 v14, p8

    goto :goto_1a

    .end local v17    # "isRecyclerView":Z
    .end local v18    # "fatherId":Ljava/lang/String;
    .restart local p10    # "fatherId":Ljava/lang/String;
    .restart local p13    # "isRecyclerView":Z
    :catch_19
    move-exception v0

    move-object/from16 v10, p10

    move-object v15, v14

    .end local p10    # "fatherId":Ljava/lang/String;
    .end local p13    # "isRecyclerView":Z
    .restart local v17    # "isRecyclerView":Z
    .restart local v18    # "fatherId":Ljava/lang/String;
    :goto_19
    move-object/from16 v13, p0

    move-object/from16 v11, p5

    move-object/from16 v14, p8

    move/from16 v17, p13

    :goto_1a
    move-object/from16 v12, p14

    move-object/from16 v18, v10

    goto/16 :goto_25

    .line 205
    .end local v17    # "isRecyclerView":Z
    .end local v18    # "fatherId":Ljava/lang/String;
    .restart local v10    # "resourceId":I
    .restart local p10    # "fatherId":Ljava/lang/String;
    .restart local p13    # "isRecyclerView":Z
    :cond_16
    move/from16 v20, v10

    move-object v15, v14

    move-object/from16 v10, p10

    .end local v10    # "resourceId":I
    .restart local v20    # "resourceId":I
    if-eqz v15, :cond_1f

    :try_start_1c
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/xiaopeng/vui/commons/IVuiElementListener;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_23

    if-eqz v2, :cond_1f

    .line 206
    move/from16 v11, v20

    if-ne v11, v1, :cond_17

    .end local v20    # "resourceId":I
    .local v11, "resourceId":I
    :try_start_1d
    const-string v1, "0"
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1a

    :goto_1b
    move-object v2, v1

    goto :goto_1c

    .line 242
    .end local v11    # "resourceId":I
    :catch_1a
    move-exception v0

    goto :goto_19

    .line 206
    .restart local v11    # "resourceId":I
    :cond_17
    :try_start_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    .line 207
    .restart local v2    # "id":Ljava/lang/String;
    :goto_1c
    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p5

    move-object/from16 v5, p8

    move-object v6, v15

    move-object v7, v10

    move/from16 v8, p11

    move/from16 v9, p12

    move/from16 v10, p13

    invoke-virtual/range {v1 .. v10}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->handleId(Ljava/lang/String;Lcom/xiaopeng/vui/commons/model/VuiElement;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/lang/String;IZZ)Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    .line 208
    .end local v2    # "id":Ljava/lang/String;
    .local v12, "id":Ljava/lang/String;
    if-eqz v12, :cond_1e

    .line 209
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/vui/commons/IVuiElementListener;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_23

    move-object/from16 v13, p0

    :try_start_1f
    invoke-interface {v1, v12, v13}, Lcom/xiaopeng/vui/commons/IVuiElementListener;->onBuildVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiElementBuilder;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_22

    move-object v14, v1

    .line 210
    .end local v16    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .local v14, "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    if-eqz v14, :cond_1a

    .line 211
    move-object/from16 v10, p5

    :try_start_20
    invoke-interface {v10, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 212
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_1c

    .line 214
    :cond_18
    move-object/from16 v9, p8

    if-eqz v9, :cond_19

    :try_start_21
    invoke-interface {v9, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 215
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 242
    .end local v11    # "resourceId":I
    .end local v12    # "id":Ljava/lang/String;
    :catch_1b
    move-exception v0

    move-object/from16 v18, p10

    move/from16 v17, p13

    move-object/from16 v12, p14

    goto :goto_1e

    .line 217
    .restart local v11    # "resourceId":I
    .restart local v12    # "id":Ljava/lang/String;
    :cond_19
    :goto_1d
    invoke-virtual {v14}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_1b

    move-object/from16 v7, p14

    :try_start_22
    invoke-direct {v13, v15, v7, v0}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->setVuiElementChangedListener(Ljava/lang/ref/SoftReference;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_1d

    .line 232
    move/from16 v21, v11

    move-object/from16 v16, v14

    move-object v14, v9

    move-object v11, v10

    move-object v10, v7

    goto/16 :goto_21

    .line 242
    .end local v11    # "resourceId":I
    .end local v12    # "id":Ljava/lang/String;
    :catch_1c
    move-exception v0

    move-object/from16 v18, p10

    move/from16 v17, p13

    move-object/from16 v12, p14

    move-object v11, v10

    move-object/from16 v16, v14

    goto/16 :goto_11

    .line 219
    .restart local v11    # "resourceId":I
    .restart local v12    # "id":Ljava/lang/String;
    :cond_1a
    move-object/from16 v10, p5

    move-object/from16 v9, p8

    move-object/from16 v7, p14

    :try_start_23
    invoke-interface {v10, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_21

    if-eqz v1, :cond_1b

    .line 220
    :try_start_24
    invoke-interface {v10, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_1d

    goto :goto_1f

    .line 242
    .end local v11    # "resourceId":I
    .end local v12    # "id":Ljava/lang/String;
    :catch_1d
    move-exception v0

    move-object/from16 v18, p10

    move/from16 v17, p13

    move-object v12, v7

    .end local v14    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .end local p10    # "fatherId":Ljava/lang/String;
    .end local p13    # "isRecyclerView":Z
    .restart local v16    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .restart local v17    # "isRecyclerView":Z
    .restart local v18    # "fatherId":Ljava/lang/String;
    :goto_1e
    move-object v11, v10

    move-object/from16 v16, v14

    move-object v14, v9

    goto/16 :goto_25

    .line 222
    .end local v16    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .end local v17    # "isRecyclerView":Z
    .end local v18    # "fatherId":Ljava/lang/String;
    .restart local v11    # "resourceId":I
    .restart local v12    # "id":Ljava/lang/String;
    .restart local v14    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .restart local p10    # "fatherId":Ljava/lang/String;
    .restart local p13    # "isRecyclerView":Z
    :cond_1b
    :goto_1f
    move-object v1, v13

    move-object v2, v15

    move-object v3, v10

    move-object v4, v9

    move-object/from16 v5, p10

    move/from16 v6, p11

    move/from16 v21, v11

    move-object v11, v7

    move-wide/from16 v7, p6

    .end local v11    # "resourceId":I
    .local v21, "resourceId":I
    move-object/from16 v22, v14

    move-object v14, v9

    move/from16 v9, p12

    .end local v14    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .local v22, "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    move-object v11, v10

    move/from16 v10, p13

    :try_start_25
    invoke-direct/range {v1 .. v10}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->buildVuiElement(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/lang/String;IJZZ)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v1
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_20

    .line 223
    .end local v22    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .local v1, "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    if-eqz v1, :cond_1c

    :try_start_26
    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/vui/commons/VuiElementType;->UNKNOWN:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v3}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v3

    if-ne v2, v3, :cond_1c

    .line 225
    invoke-direct {v13, v15, v12, v11, v14}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->removeId(Ljava/lang/ref/SoftReference;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 226
    return-object v0

    .line 242
    .end local v12    # "id":Ljava/lang/String;
    .end local v21    # "resourceId":I
    :catch_1e
    move-exception v0

    move-object/from16 v18, p10

    move/from16 v17, p13

    move-object/from16 v16, v1

    goto/16 :goto_1

    .line 227
    .restart local v12    # "id":Ljava/lang/String;
    .restart local v21    # "resourceId":I
    :cond_1c
    if-eqz v1, :cond_1d

    .line 228
    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_1e

    move-object/from16 v10, p14

    :try_start_27
    invoke-direct {v13, v15, v10, v0}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->setVuiElementChangedListener(Ljava/lang/ref/SoftReference;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_1f

    .end local v12    # "id":Ljava/lang/String;
    goto :goto_20

    .line 242
    .end local v21    # "resourceId":I
    :catch_1f
    move-exception v0

    move-object/from16 v18, p10

    move/from16 v17, p13

    move-object/from16 v16, v1

    move-object v12, v10

    goto/16 :goto_25

    .line 232
    .restart local v21    # "resourceId":I
    :cond_1d
    move-object/from16 v10, p14

    :goto_20
    move-object/from16 v16, v1

    goto :goto_21

    .line 242
    .end local v1    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .end local v21    # "resourceId":I
    .restart local v22    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    :catch_20
    move-exception v0

    move-object/from16 v18, p10

    move/from16 v17, p13

    move-object/from16 v16, v22

    goto/16 :goto_1

    .end local v22    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .restart local v14    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    :catch_21
    move-exception v0

    move-object v11, v10

    move-object/from16 v22, v14

    move-object v14, v9

    move-object/from16 v18, p10

    move/from16 v17, p13

    move-object v12, v7

    move-object/from16 v16, v22

    .end local v14    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .restart local v22    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    goto/16 :goto_25

    .end local v22    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .restart local v16    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    :catch_22
    move-exception v0

    goto :goto_22

    .line 232
    .restart local v11    # "resourceId":I
    :cond_1e
    move-object/from16 v13, p0

    move-object/from16 v14, p8

    move-object/from16 v10, p14

    move/from16 v21, v11

    move-object/from16 v11, p5

    .line 244
    .end local v11    # "resourceId":I
    .restart local v21    # "resourceId":I
    :goto_21
    move-object/from16 v18, p10

    move/from16 v17, p13

    move-object v12, v10

    goto/16 :goto_23

    .line 242
    .end local v21    # "resourceId":I
    :catch_23
    move-exception v0

    move-object/from16 v13, p0

    .end local p10    # "fatherId":Ljava/lang/String;
    .end local p13    # "isRecyclerView":Z
    .restart local v17    # "isRecyclerView":Z
    .restart local v18    # "fatherId":Ljava/lang/String;
    :goto_22
    move-object/from16 v11, p5

    move-object/from16 v14, p8

    move-object/from16 v18, p10

    move/from16 v17, p13

    goto/16 :goto_1

    .line 232
    .end local v17    # "isRecyclerView":Z
    .end local v18    # "fatherId":Ljava/lang/String;
    .restart local v20    # "resourceId":I
    .restart local p10    # "fatherId":Ljava/lang/String;
    .restart local p13    # "isRecyclerView":Z
    :cond_1f
    move-object/from16 v13, p0

    move-object/from16 v11, p5

    move-object/from16 v14, p8

    move-object/from16 v10, p14

    move/from16 v21, v20

    .end local v20    # "resourceId":I
    .restart local v21    # "resourceId":I
    if-eqz v15, :cond_22

    :try_start_28
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/xiaopeng/vui/commons/IVuiElement;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_26

    if-eqz v1, :cond_22

    .line 233
    move-object v1, v13

    move-object v2, v15

    move-object v3, v11

    move-object v4, v14

    move-object/from16 v5, p10

    move/from16 v6, p11

    move-wide/from16 v7, p6

    move/from16 v9, p12

    move-object v12, v10

    move/from16 v10, p13

    :try_start_29
    invoke-direct/range {v1 .. v10}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->buildVuiElement(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/lang/String;IJZZ)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v1
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_25

    .line 234
    .end local v16    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .restart local v1    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    if-eqz v1, :cond_20

    :try_start_2a
    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/vui/commons/VuiElementType;->UNKNOWN:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v3}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v3

    if-ne v2, v3, :cond_20

    .line 235
    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v15, v2, v11, v14}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->removeId(Ljava/lang/ref/SoftReference;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 236
    return-object v0

    .line 242
    .end local v21    # "resourceId":I
    :catch_24
    move-exception v0

    move-object/from16 v18, p10

    move/from16 v17, p13

    move-object/from16 v16, v1

    goto :goto_25

    .line 237
    .restart local v21    # "resourceId":I
    :cond_20
    if-eqz v1, :cond_21

    .line 238
    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v15, v12, v0}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->setVuiElementChangedListener(Ljava/lang/ref/SoftReference;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_24

    .line 244
    .end local v21    # "resourceId":I
    :cond_21
    move-object/from16 v18, p10

    move/from16 v17, p13

    move-object/from16 v16, v1

    goto :goto_23

    .line 242
    .end local v1    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .restart local v16    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    :catch_25
    move-exception v0

    goto :goto_24

    :catch_26
    move-exception v0

    move-object v12, v10

    goto :goto_24

    .line 244
    :cond_22
    move-object v12, v10

    move-object/from16 v18, p10

    move/from16 v17, p13

    .end local p10    # "fatherId":Ljava/lang/String;
    .end local p13    # "isRecyclerView":Z
    .restart local v17    # "isRecyclerView":Z
    .restart local v18    # "fatherId":Ljava/lang/String;
    :goto_23
    goto :goto_26

    .line 242
    .end local v17    # "isRecyclerView":Z
    .end local v18    # "fatherId":Ljava/lang/String;
    .restart local p10    # "fatherId":Ljava/lang/String;
    .restart local p13    # "isRecyclerView":Z
    :catch_27
    move-exception v0

    move-object v13, v15

    move-object v15, v14

    move-object v14, v11

    move-object v11, v12

    move-object v12, v9

    .end local p10    # "fatherId":Ljava/lang/String;
    .end local p13    # "isRecyclerView":Z
    .restart local v17    # "isRecyclerView":Z
    .restart local v18    # "fatherId":Ljava/lang/String;
    :goto_24
    move-object/from16 v18, p10

    move/from16 v17, p13

    .line 243
    .local v0, "e":Ljava/lang/Exception;
    :goto_25
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 245
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_26
    return-object v16

    .line 124
    .end local v17    # "isRecyclerView":Z
    .end local v18    # "fatherId":Ljava/lang/String;
    .restart local p10    # "fatherId":Ljava/lang/String;
    .restart local p13    # "isRecyclerView":Z
    :cond_23
    :goto_27
    move-object v13, v15

    move-object v15, v14

    move-object v14, v11

    move-object v11, v12

    move-object v12, v9

    return-object v0
.end method

.method public buildVuiElement(Landroid/view/View;)Ljava/util/List;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;"
        }
    .end annotation

    .line 1118
    const/4 v0, 0x0

    return-object v0
.end method

.method public buildVuiElement(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;"
        }
    .end annotation

    .line 1121
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public buildVuiElementAttr(Ljava/lang/ref/SoftReference;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;)",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;"
        }
    .end annotation

    .line 416
    .local p1, "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_d

    .line 419
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/vui/commons/IVuiElement;

    .line 420
    .local v1, "vuiFriendlyView":Lcom/xiaopeng/vui/commons/IVuiElement;
    invoke-interface {v1}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v2

    .line 421
    .local v2, "vuiPropsJson":Lorg/json/JSONObject;
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getViewMode()Lcom/xiaopeng/vui/commons/VuiMode;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getViewMode()Lcom/xiaopeng/vui/commons/VuiMode;

    move-result-object v3

    sget-object v4, Lcom/xiaopeng/vui/commons/VuiMode;->DISABLED:Lcom/xiaopeng/vui/commons/VuiMode;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/vui/commons/VuiMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-nez v3, :cond_3

    .line 422
    invoke-interface {v1}, Lcom/xiaopeng/vui/commons/IVuiElement;->isVuiModeEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 423
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-direct {v3, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 424
    .local v3, "parentView":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    const/4 v4, 0x1

    .line 425
    .local v4, "ignore":Z
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v5, :cond_1

    .line 426
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v5}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiElementType()Lcom/xiaopeng/vui/commons/VuiElementType;

    move-result-object v5

    sget-object v6, Lcom/xiaopeng/vui/commons/VuiElementType;->XTABLAYOUT:Lcom/xiaopeng/vui/commons/VuiElementType;

    if-ne v5, v6, :cond_1

    .line 427
    const/4 v4, 0x0

    goto :goto_0

    .line 428
    :cond_1
    if-eqz v2, :cond_2

    const-string v5, "isTabLayoutChild"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 429
    const/4 v4, 0x0

    .line 431
    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    .line 432
    return-object v0

    .line 435
    .end local v3    # "parentView":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    .end local v4    # "ignore":Z
    :cond_3
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->isVuiEnabled(Ljava/lang/ref/SoftReference;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 436
    return-object v0

    .line 455
    :cond_4
    new-instance v3, Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-direct {v3}, Lcom/xiaopeng/vui/commons/model/VuiElement;-><init>()V

    .line 456
    .local v3, "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    invoke-interface {v1}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiAction()Ljava/lang/String;

    move-result-object v4

    .line 457
    .local v4, "action":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 458
    invoke-virtual {v3, v4}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setActions(Ljava/lang/String;)V

    .line 461
    :cond_5
    invoke-direct {p0, v1}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->getElementLabel(Lcom/xiaopeng/vui/commons/IVuiElement;)Ljava/lang/String;

    move-result-object v5

    .line 462
    .local v5, "label":Ljava/lang/String;
    if-nez v5, :cond_6

    .line 463
    iget-object v6, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->TAG:Ljava/lang/String;

    const-string v7, "label \u4e0d\u5408\u6cd5"

    invoke-static {v6, v7}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    return-object v0

    .line 465
    :cond_6
    const-string v0, "\'"

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 466
    invoke-direct {p0, v5}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->escapeQueryChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 468
    :cond_7
    invoke-virtual {v3, v5}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setLabel(Ljava/lang/String;)V

    .line 470
    invoke-interface {v1}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiFatherLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setFatherLabel(Ljava/lang/String;)V

    .line 472
    const-string v0, "vuiFatherElementId"

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->getElementId(Ljava/lang/ref/SoftReference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_8

    .line 474
    invoke-virtual {v3, v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setFatherElementId(Ljava/lang/String;)V

    .line 477
    :cond_8
    sget-object v6, Lcom/xiaopeng/vui/commons/VuiElementType;->UNKNOWN:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v6}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v6

    .line 478
    .local v6, "type":Ljava/lang/String;
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v7, :cond_9

    .line 479
    sget-object v7, Lcom/xiaopeng/vui/commons/VuiElementType;->RECYCLEVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v7}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setType(Ljava/lang/String;)V

    goto :goto_1

    .line 480
    :cond_9
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 481
    invoke-interface {v1}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiElementType()Lcom/xiaopeng/vui/commons/VuiElementType;

    move-result-object v7

    .line 482
    .local v7, "vuiElementType":Lcom/xiaopeng/vui/commons/VuiElementType;
    if-eqz v7, :cond_a

    .line 483
    invoke-virtual {v7}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v6

    .line 486
    :cond_a
    invoke-virtual {v3, v6}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setType(Ljava/lang/String;)V

    .line 488
    .end local v7    # "vuiElementType":Lcom/xiaopeng/vui/commons/VuiElementType;
    :cond_b
    :goto_1
    invoke-interface {v1}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiPriority()Lcom/xiaopeng/vui/commons/VuiPriority;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaopeng/vui/commons/VuiPriority;->getLevel()I

    move-result v7

    .line 489
    .local v7, "priority":I
    sget-object v8, Lcom/xiaopeng/vui/commons/VuiPriority;->LEVEL3:Lcom/xiaopeng/vui/commons/VuiPriority;

    invoke-virtual {v8}, Lcom/xiaopeng/vui/commons/VuiPriority;->getLevel()I

    move-result v8

    if-eq v7, v8, :cond_c

    .line 490
    invoke-virtual {v3, v7}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setPriority(I)V

    .line 493
    :cond_c
    const-string v8, "com.android.systemui"

    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11

    const-string v8, "com.xiaopeng.systemui"

    .line 494
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11

    .line 496
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_f

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    sget v9, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->vuiElementUnSupport:I

    invoke-virtual {v8, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_f

    .line 497
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    sget v9, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->vuiElementUnSupport:I

    invoke-virtual {v8, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 498
    .local v8, "isUnSupport":Z
    if-eqz v8, :cond_e

    .line 500
    if-nez v2, :cond_d

    .line 501
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v9

    goto :goto_2

    .line 504
    :catch_0
    move-exception v9

    goto :goto_3

    .line 503
    :cond_d
    :goto_2
    const-string v9, "unsupported"

    const/4 v10, 0x1

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 504
    :goto_3
    nop

    .line 506
    .end local v8    # "isUnSupport":Z
    :goto_4
    goto :goto_5

    .line 508
    .restart local v8    # "isUnSupport":Z
    :cond_e
    if-eqz v2, :cond_f

    const-string v9, "unsupported"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 509
    const-string v9, "unsupported"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 513
    .end local v8    # "isUnSupport":Z
    :cond_f
    :goto_5
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_11

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    sget v9, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->vuiElementDefaultAction:I

    invoke-virtual {v8, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_11

    .line 514
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    sget v9, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->vuiElementDefaultAction:I

    invoke-virtual {v8, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    .line 515
    .local v8, "labelAction":Lorg/json/JSONObject;
    if-eqz v8, :cond_11

    .line 517
    if-nez v2, :cond_10

    .line 518
    :try_start_1
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v9

    goto :goto_6

    .line 521
    :catch_1
    move-exception v9

    goto :goto_7

    .line 520
    :cond_10
    :goto_6
    const-string v9, "defaultAction"

    invoke-virtual {v2, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 523
    goto :goto_8

    .line 521
    :goto_7
    nop

    .line 527
    .end local v8    # "labelAction":Lorg/json/JSONObject;
    :cond_11
    :goto_8
    if-eqz v2, :cond_14

    .line 528
    const-string v8, "canVoiceControl"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 530
    :try_start_2
    const-string v8, "canVoiceControl"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 531
    .local v8, "bool":Z
    if-nez v8, :cond_12

    .line 532
    const-string v9, "canVoiceControl"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 536
    .end local v8    # "bool":Z
    :cond_12
    goto :goto_9

    .line 534
    :catch_2
    move-exception v8

    .line 535
    .local v8, "e":Lorg/json/JSONException;
    const-string v9, "canVoiceControl"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 538
    .end local v8    # "e":Lorg/json/JSONException;
    :cond_13
    :goto_9
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v8

    if-lez v8, :cond_14

    .line 539
    invoke-interface {v1, v2}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiProps(Lorg/json/JSONObject;)V

    .line 543
    :cond_14
    invoke-interface {v1}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiPosition()I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setPosition(I)V

    .line 545
    invoke-virtual {v3}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getValues()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_15

    .line 546
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-static {v8, v3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setValueAttribute(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiElement;)V

    .line 591
    :cond_15
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_19

    .line 592
    const-string v8, "com.android.systemui"

    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_18

    const-string v8, "com.xiaopeng.systemui"

    .line 593
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_18

    .line 594
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    sget v10, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->vuiElementVisible:I

    invoke-virtual {v8, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    .line 595
    .local v8, "isVisible":Ljava/lang/Boolean;
    if-eqz v8, :cond_16

    .line 596
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_17

    .line 597
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setVisible(Ljava/lang/Boolean;)V

    goto :goto_a

    .line 599
    :cond_16
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_17

    .line 600
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setVisible(Ljava/lang/Boolean;)V

    .line 602
    .end local v8    # "isVisible":Ljava/lang/Boolean;
    :cond_17
    :goto_a
    goto :goto_b

    :cond_18
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_19

    .line 603
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setVisible(Ljava/lang/Boolean;)V

    .line 607
    :cond_19
    :goto_b
    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1b

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1b

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    if-eqz v8, :cond_1b

    .line 608
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    invoke-static {v8}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    .line 609
    .local v8, "resourceName":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1a

    .line 610
    invoke-virtual {v3, v8}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setResourceName(Ljava/lang/String;)V

    .line 612
    .end local v8    # "resourceName":Ljava/lang/String;
    :cond_1a
    goto :goto_c

    :cond_1b
    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1c

    .line 613
    const-string v8, "com.android.systemui"

    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1c

    const-string v8, "com.xiaopeng.systemui"

    .line 614
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1c

    .line 615
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    sget v9, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->virtualResourceName:I

    invoke-virtual {v8, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    .line 616
    .local v8, "resourceTag":Ljava/lang/Object;
    iget-object v9, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resourceTag:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 617
    if-eqz v8, :cond_1c

    .line 618
    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v3, v9}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setResourceName(Ljava/lang/String;)V

    .line 622
    .end local v8    # "resourceTag":Ljava/lang/Object;
    :cond_1c
    :goto_c
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v8}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiMode()Lcom/xiaopeng/vui/commons/VuiMode;

    move-result-object v8

    .line 623
    .local v8, "mode":Lcom/xiaopeng/vui/commons/VuiMode;
    if-eqz v8, :cond_1d

    sget-object v9, Lcom/xiaopeng/vui/commons/VuiMode;->UNDERSTOOD:Lcom/xiaopeng/vui/commons/VuiMode;

    invoke-virtual {v8, v9}, Lcom/xiaopeng/vui/commons/VuiMode;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 624
    invoke-virtual {v8}, Lcom/xiaopeng/vui/commons/VuiMode;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setMode(Ljava/lang/String;)V

    .line 627
    :cond_1d
    return-object v3

    .line 417
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "vuiFriendlyView":Lcom/xiaopeng/vui/commons/IVuiElement;
    .end local v2    # "vuiPropsJson":Lorg/json/JSONObject;
    .end local v3    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .end local v4    # "action":Ljava/lang/String;
    .end local v5    # "label":Ljava/lang/String;
    .end local v6    # "type":Ljava/lang/String;
    .end local v7    # "priority":I
    .end local v8    # "mode":Lcom/xiaopeng/vui/commons/VuiMode;
    :cond_1e
    :goto_d
    return-object v0
.end method

.method public createElementByProps(Ljava/lang/ref/SoftReference;Lcom/xiaopeng/vui/commons/model/VuiElement;Lorg/json/JSONObject;JZZ)V
    .locals 23
    .param p2, "element"    # Lcom/xiaopeng/vui/commons/model/VuiElement;
    .param p3, "vuiPropsJson"    # Lorg/json/JSONObject;
    .param p4, "timestamp"    # J
    .param p6, "dynamic"    # Z
    .param p7, "isUpdateAttr"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            "Lorg/json/JSONObject;",
            "JZZ)V"
        }
    .end annotation

    .local p1, "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    .line 632
    if-eqz v3, :cond_19

    if-eqz p1, :cond_19

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_13

    .line 635
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 636
    .local v8, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->STATEFULBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "states"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 638
    const-string v0, "states"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 639
    .local v11, "states":Lorg/json/JSONArray;
    if-eqz v11, :cond_f

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_f

    .line 640
    if-nez p7, :cond_9

    .line 641
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move v12, v0

    .end local v0    # "i":I
    .local v12, "i":I
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v12, v0, :cond_8

    .line 643
    :try_start_0
    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 644
    .local v0, "state":Lorg/json/JSONObject;
    if-eqz v0, :cond_7

    .line 645
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v13

    .line 646
    .local v13, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 647
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 648
    .local v14, "key":Ljava/lang/String;
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 649
    .local v15, "lables":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_6

    .line 650
    new-instance v9, Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-direct {v9}, Lcom/xiaopeng/vui/commons/model/VuiElement;-><init>()V

    .line 653
    .local v9, "vuiElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    const-string v10, "-"

    invoke-virtual {v15, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 654
    .local v10, "value_lbs":[Ljava/lang/String;
    if-eqz v10, :cond_1

    move-object/from16 v18, v0

    array-length v0, v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v0    # "state":Lorg/json/JSONObject;
    .local v18, "state":Lorg/json/JSONObject;
    move-object/from16 v19, v11

    const/4 v11, 0x1

    if-le v0, v11, :cond_2

    .line 655
    .end local v11    # "states":Lorg/json/JSONArray;
    .local v19, "states":Lorg/json/JSONArray;
    const/16 v16, 0x0

    :try_start_1
    aget-object v0, v10, v16

    invoke-virtual {v9, v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setValues(Ljava/lang/Object;)V

    .line 656
    aget-object v0, v10, v11

    invoke-virtual {v9, v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setLabel(Ljava/lang/String;)V

    .line 668
    move-object/from16 v20, v10

    goto :goto_4

    .line 658
    .end local v18    # "state":Lorg/json/JSONObject;
    .end local v19    # "states":Lorg/json/JSONArray;
    .restart local v0    # "state":Lorg/json/JSONObject;
    .restart local v11    # "states":Lorg/json/JSONArray;
    :cond_1
    move-object/from16 v18, v0

    move-object/from16 v19, v11

    .end local v0    # "state":Lorg/json/JSONObject;
    .end local v11    # "states":Lorg/json/JSONArray;
    .restart local v18    # "state":Lorg/json/JSONObject;
    .restart local v19    # "states":Lorg/json/JSONArray;
    :cond_2
    const-string v0, "\\|"

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 659
    .local v0, "lbs":[Ljava/lang/String;
    if-eqz v0, :cond_4

    array-length v11, v0

    if-nez v11, :cond_3

    .line 661
    move-object/from16 v20, v10

    goto :goto_2

    .line 663
    :cond_3
    move-object/from16 v20, v10

    const/4 v11, 0x0

    aget-object v10, v0, v11

    .end local v10    # "value_lbs":[Ljava/lang/String;
    .local v20, "value_lbs":[Ljava/lang/String;
    invoke-virtual {v9, v10}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setValues(Ljava/lang/Object;)V

    goto :goto_3

    .line 661
    .end local v20    # "value_lbs":[Ljava/lang/String;
    .restart local v10    # "value_lbs":[Ljava/lang/String;
    :cond_4
    move-object/from16 v20, v10

    .end local v10    # "value_lbs":[Ljava/lang/String;
    .restart local v20    # "value_lbs":[Ljava/lang/String;
    :goto_2
    invoke-virtual {v9, v15}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setValues(Ljava/lang/Object;)V

    .line 665
    :goto_3
    invoke-virtual {v9, v15}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setLabel(Ljava/lang/String;)V

    .line 668
    .end local v0    # "lbs":[Ljava/lang/String;
    :goto_4
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->STATE:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setType(Ljava/lang/String;)V

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setId(Ljava/lang/String;)V

    .line 670
    invoke-virtual {v9, v4, v5}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setTimestamp(J)V

    .line 671
    if-eqz p6, :cond_5

    .line 672
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setLayoutLoadable(Ljava/lang/Boolean;)V

    .line 674
    :cond_5
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v9    # "vuiElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "lables":Ljava/lang/String;
    .end local v20    # "value_lbs":[Ljava/lang/String;
    goto :goto_5

    .line 680
    .end local v13    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v18    # "state":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    goto :goto_6

    .line 677
    .end local v19    # "states":Lorg/json/JSONArray;
    .local v0, "state":Lorg/json/JSONObject;
    .restart local v11    # "states":Lorg/json/JSONArray;
    .restart local v13    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_6
    move-object/from16 v18, v0

    move-object/from16 v19, v11

    .line 645
    .end local v0    # "state":Lorg/json/JSONObject;
    .end local v11    # "states":Lorg/json/JSONArray;
    .restart local v18    # "state":Lorg/json/JSONObject;
    .restart local v19    # "states":Lorg/json/JSONArray;
    :goto_5
    move-object/from16 v0, v18

    move-object/from16 v11, v19

    goto/16 :goto_1

    .line 682
    .end local v13    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v18    # "state":Lorg/json/JSONObject;
    .end local v19    # "states":Lorg/json/JSONArray;
    .restart local v11    # "states":Lorg/json/JSONArray;
    :cond_7
    move-object/from16 v19, v11

    .end local v11    # "states":Lorg/json/JSONArray;
    .restart local v19    # "states":Lorg/json/JSONArray;
    goto :goto_7

    .line 680
    .end local v19    # "states":Lorg/json/JSONArray;
    .restart local v11    # "states":Lorg/json/JSONArray;
    :catch_1
    move-exception v0

    move-object/from16 v19, v11

    .line 681
    .end local v11    # "states":Lorg/json/JSONArray;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v19    # "states":Lorg/json/JSONArray;
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 641
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7
    add-int/lit8 v0, v12, 0x1

    .end local v12    # "i":I
    .local v0, "i":I
    move-object/from16 v11, v19

    goto/16 :goto_0

    .line 684
    .end local v0    # "i":I
    .end local v19    # "states":Lorg/json/JSONArray;
    .restart local v11    # "states":Lorg/json/JSONArray;
    :cond_8
    move-object/from16 v19, v11

    .end local v11    # "states":Lorg/json/JSONArray;
    .restart local v19    # "states":Lorg/json/JSONArray;
    invoke-virtual {v2, v8}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setElements(Ljava/util/List;)V

    goto :goto_8

    .line 686
    .end local v19    # "states":Lorg/json/JSONArray;
    .restart local v11    # "states":Lorg/json/JSONArray;
    :cond_9
    move-object/from16 v19, v11

    .end local v11    # "states":Lorg/json/JSONArray;
    .restart local v19    # "states":Lorg/json/JSONArray;
    :goto_8
    const/4 v0, 0x0

    .line 687
    .local v0, "curState":Ljava/lang/String;
    const-string v9, "curState"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 688
    const-string v9, "curState"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 691
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v9, :cond_b

    .line 692
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v9}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiValue()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    .line 694
    :cond_b
    :goto_9
    iget-object v9, v2, Lcom/xiaopeng/vui/commons/model/VuiElement;->actions:Lcom/google/gson/JsonObject;

    if-eqz v9, :cond_f

    .line 696
    new-instance v9, Ljava/util/ArrayList;

    iget-object v11, v2, Lcom/xiaopeng/vui/commons/model/VuiElement;->actions:Lcom/google/gson/JsonObject;

    invoke-virtual {v11}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 698
    .local v9, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;>;"
    nop

    .line 699
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 700
    .local v11, "actionObj":Lorg/json/JSONObject;
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_a
    move/from16 v12, v17

    .end local v17    # "i":I
    .restart local v12    # "i":I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_e

    .line 701
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 702
    .local v13, "action":Ljava/lang/String;
    const-string v14, "SetCheck"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 703
    const-string v14, "SetCheck"

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->isSelected()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-static {v11, v14, v15}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateElementValueJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 700
    move-object/from16 v21, v0

    goto :goto_b

    .line 704
    :cond_c
    const-string v14, "SetValue"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 705
    invoke-direct {v1, v0, v8}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->getStateFulBtnCurr(Ljava/lang/String;Ljava/util/List;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v14

    .line 706
    .local v14, "currElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    if-eqz v14, :cond_d

    .line 707
    const-string v15, "SetValue"

    move-object/from16 v21, v0

    invoke-virtual {v14}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getValues()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "curState":Ljava/lang/String;
    .local v21, "curState":Ljava/lang/String;
    invoke-static {v11, v15, v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateElementValueJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .end local v13    # "action":Ljava/lang/String;
    .end local v14    # "currElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    goto :goto_b

    .line 700
    .end local v21    # "curState":Ljava/lang/String;
    .restart local v0    # "curState":Ljava/lang/String;
    :cond_d
    move-object/from16 v21, v0

    .end local v0    # "curState":Ljava/lang/String;
    .restart local v21    # "curState":Ljava/lang/String;
    :goto_b
    add-int/lit8 v17, v12, 0x1

    .end local v12    # "i":I
    .restart local v17    # "i":I
    move-object/from16 v0, v21

    goto :goto_a

    .line 711
    .end local v17    # "i":I
    .end local v21    # "curState":Ljava/lang/String;
    .restart local v0    # "curState":Ljava/lang/String;
    :cond_e
    move-object/from16 v21, v0

    .end local v0    # "curState":Ljava/lang/String;
    .restart local v21    # "curState":Ljava/lang/String;
    iget-object v0, v1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    const-class v13, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v12, v13}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setValues(Ljava/lang/Object;)V

    .line 716
    .end local v9    # "entries":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;>;"
    .end local v11    # "actionObj":Lorg/json/JSONObject;
    .end local v19    # "states":Lorg/json/JSONArray;
    .end local v21    # "curState":Ljava/lang/String;
    :cond_f
    nop

    .line 752
    move-object/from16 v22, v8

    goto/16 :goto_f

    .line 716
    :cond_10
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->RECYCLEVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    if-nez p7, :cond_13

    .line 717
    const-string v0, "minValue"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "maxValue"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "displayStart"

    .line 718
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "displayEnd"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 719
    new-instance v0, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    invoke-direct {v0}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;-><init>()V

    const-string v9, "10000"

    invoke-virtual {v0, v9}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->id(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object v0

    sget-object v9, Lcom/xiaopeng/vui/commons/VuiElementType;->VIRTUALLIST:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 720
    invoke-virtual {v9}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->type(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->timestamp(J)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->build()Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v0

    move-object v9, v0

    .line 722
    .local v9, "vuiElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    :try_start_2
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 723
    .local v0, "propsObj":Lcom/google/gson/JsonObject;
    const-string v11, "minValue"

    const-string v12, "minValue"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 724
    const-string v11, "maxValue"

    const-string v12, "maxValue"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 725
    const-string v11, "displayStart"

    const-string v12, "displayStart"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 726
    const-string v11, "displayEnd"

    const-string v12, "displayEnd"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 727
    const-string v11, "parentId"

    invoke-virtual/range {p2 .. p2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    const-string v11, "supportVuiLabels"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 729
    const-string v11, "supportVuiLabels"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 730
    .local v11, "labels":Ljava/lang/Object;
    if-eqz v11, :cond_12

    instance-of v12, v11, Ljava/util/List;

    if-eqz v12, :cond_12

    .line 731
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 732
    .local v12, "childElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_c
    move-object v14, v11

    check-cast v14, Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_11

    .line 733
    move-object v14, v11

    check-cast v14, Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    check-cast v14, [Ljava/lang/String;

    .line 734
    .local v14, "values":[Ljava/lang/String;
    new-instance v15, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    invoke-direct {v15}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "10000_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v22, v8

    const/4 v7, 0x0

    :try_start_3
    aget-object v8, v14, v7

    .end local v8    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .local v22, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->id(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object v6

    sget-object v8, Lcom/xiaopeng/vui/commons/VuiElementType;->VIRTUALLISTITEM:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 735
    invoke-virtual {v8}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->type(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->timestamp(J)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object v6

    const/4 v8, 0x1

    aget-object v15, v14, v8

    invoke-virtual {v6, v15}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->label(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->build()Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v6

    .line 736
    .local v6, "childElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 732
    .end local v6    # "childElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .end local v14    # "values":[Ljava/lang/String;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v8, v22

    goto :goto_c

    .line 738
    .end local v13    # "i":I
    .end local v22    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .restart local v8    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :cond_11
    move-object/from16 v22, v8

    .end local v8    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .restart local v22    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    invoke-virtual {v9, v12}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setElements(Ljava/util/List;)V

    .end local v11    # "labels":Ljava/lang/Object;
    .end local v12    # "childElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    goto :goto_d

    .line 741
    .end local v22    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .restart local v8    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :cond_12
    move-object/from16 v22, v8

    .end local v8    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .restart local v22    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :goto_d
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 742
    .local v6, "vuiElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 743
    invoke-virtual {v9, v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setProps(Lcom/google/gson/JsonObject;)V

    .line 744
    invoke-virtual {v2, v6}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setElements(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 747
    .end local v0    # "propsObj":Lcom/google/gson/JsonObject;
    .end local v6    # "vuiElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    goto :goto_f

    .line 745
    :catch_2
    move-exception v0

    goto :goto_e

    .end local v22    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .restart local v8    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :catch_3
    move-exception v0

    move-object/from16 v22, v8

    .end local v8    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local v9    # "vuiElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .restart local v22    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :goto_e
    goto :goto_f

    .line 752
    .end local v22    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .restart local v8    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :cond_13
    move-object/from16 v22, v8

    .end local v8    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .restart local v22    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :goto_f
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 753
    .local v0, "props":Lorg/json/JSONObject;
    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 754
    .local v6, "iterator":Ljava/util/Iterator;
    sget-object v7, Lcom/xiaopeng/vui/commons/VuiElementType;->STATEFULBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v7}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 755
    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    .line 756
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 757
    .local v7, "key":Ljava/lang/String;
    if-eqz v7, :cond_14

    const-string v8, "states"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_14

    const-string v8, "curState"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_14

    .line 758
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 760
    .end local v7    # "key":Ljava/lang/String;
    :cond_14
    goto :goto_10

    .line 761
    :cond_15
    sget-object v7, Lcom/xiaopeng/vui/commons/VuiElementType;->RECYCLEVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v7}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 762
    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    .line 763
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 764
    .restart local v7    # "key":Ljava/lang/String;
    if-eqz v7, :cond_16

    const-string v8, "minValue"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    const-string v8, "maxValue"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    const-string v8, "displayStart"

    .line 765
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    const-string v8, "displayEnd"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    const-string v8, "supportVuiLabels"

    .line 766
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    .line 767
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 769
    .end local v7    # "key":Ljava/lang/String;
    :cond_16
    goto :goto_11

    .line 772
    :cond_17
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    .line 773
    iget-object v7, v1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lcom/google/gson/JsonObject;

    invoke-virtual {v7, v8, v9}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/gson/JsonObject;

    invoke-virtual {v2, v7}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setProps(Lcom/google/gson/JsonObject;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 777
    .end local v0    # "props":Lorg/json/JSONObject;
    .end local v6    # "iterator":Ljava/util/Iterator;
    :cond_18
    goto :goto_12

    .line 775
    :catch_4
    move-exception v0

    .line 778
    :goto_12
    return-void

    .line 633
    .end local v22    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :cond_19
    :goto_13
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

    .line 1140
    .local p1, "wholeScenes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 1141
    const-string v0, ""

    return-object v0

    .line 1143
    :cond_0
    sget-object v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1144
    .local v0, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1145
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1146
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1147
    .local v2, "sceneId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1148
    return-object v2

    .line 1150
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "sceneId":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 1151
    :cond_2
    const-string v1, ""

    return-object v1
.end method

.method protected getNewVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "timeStemp"    # J

    .line 1126
    new-instance v0, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;

    invoke-direct {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;-><init>()V

    .line 1127
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->sceneId(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->mPackageVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->appVersion(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->mPackageName:Ljava/lang/String;

    .line 1128
    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->packageName(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->timestamp(J)Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->build()Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v0

    .line 1126
    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 1136
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->sceneId:Ljava/lang/String;

    return-object v0
.end method

.method protected getSceneUnqiueId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 1132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->mSceneIdPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleId(Ljava/lang/String;Lcom/xiaopeng/vui/commons/model/VuiElement;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/lang/String;IZZ)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "childElement"    # Lcom/xiaopeng/vui/commons/model/VuiElement;
    .param p6, "fatherId"    # Ljava/lang/String;
    .param p7, "position"    # I
    .param p8, "isDynamic"    # Z
    .param p9, "isRecyclerView"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
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
    .local p3, "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "allIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "child":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    const-string v0, "com.android.systemui"

    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 900
    if-eqz p3, :cond_0

    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 901
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 902
    if-eqz p2, :cond_0

    .line 903
    invoke-virtual {p2, p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setId(Ljava/lang/String;)V

    .line 906
    :cond_0
    if-eqz p4, :cond_1

    invoke-interface {p4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 907
    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 909
    :cond_1
    return-object p1

    .line 911
    :cond_2
    if-nez p8, :cond_3

    if-nez p9, :cond_3

    if-eqz p1, :cond_4

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    if-eqz p5, :cond_9

    .line 912
    invoke-virtual {p5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_9

    .line 913
    :cond_4
    invoke-virtual {p5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v1, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->vuiElementId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    .line 914
    .local v0, "tag":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 915
    move-object p1, v0

    .line 916
    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 917
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 926
    :cond_6
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->TAG:Ljava/lang/String;

    const-string v2, "[VuiSceneTagWarn]\u66f4\u65b0\u4e0d\u5408\u6cd5"

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 929
    :goto_1
    if-eqz p4, :cond_7

    invoke-interface {p4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 930
    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 932
    :cond_7
    if-eqz p2, :cond_8

    .line 933
    invoke-virtual {p2, p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setId(Ljava/lang/String;)V

    .line 935
    :cond_8
    return-object p1

    .line 939
    .end local v0    # "tag":Ljava/lang/String;
    :cond_9
    if-eqz p1, :cond_c

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_2

    .line 946
    :cond_a
    if-eqz p3, :cond_e

    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 947
    if-nez p6, :cond_b

    .line 948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 950
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 951
    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 940
    :cond_c
    :goto_2
    if-nez p6, :cond_d

    .line 941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "4657_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 943
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 958
    :cond_e
    :goto_3
    if-eqz p3, :cond_11

    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 959
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 960
    if-eqz p2, :cond_f

    .line 961
    invoke-virtual {p2, p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setId(Ljava/lang/String;)V

    .line 963
    :cond_f
    invoke-virtual {p0, p5, p1}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->setVuiTag(Ljava/lang/ref/SoftReference;Ljava/lang/String;)V

    .line 983
    if-eqz p4, :cond_10

    invoke-interface {p4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 984
    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 986
    :cond_10
    return-object p1

    .line 989
    :cond_11
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VuiSceneTagWarn]\u5bb9\u9519\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 990
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 1

    .line 92
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    return-void

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->execute()V

    .line 96
    return-void
.end method

.method public setVuiTag(Ljava/lang/ref/SoftReference;Ljava/lang/String;)V
    .locals 3
    .param p2, "id"    # Ljava/lang/String;
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
    .local p1, "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    const-string v0, "com.android.systemui"

    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "com.xiaopeng.systemui"

    .line 996
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 999
    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

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

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v1, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->vuiElementId:I

    invoke-virtual {v0, v1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

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

    .line 1005
    .local v0, "tag":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 1006
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1007
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1008
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget v2, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->vuiElementId:I

    invoke-virtual {v1, v2, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1012
    .end local v0    # "tag":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 999
    :cond_4
    :goto_1
    return-void

    .line 997
    :cond_5
    :goto_2
    return-void
.end method
