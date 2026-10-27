.class public Lcom/xiaopeng/speech/vui/VuiEngine;
.super Ljava/lang/Object;
.source "VuiEngine.java"

# interfaces
.implements Lcom/xiaopeng/vui/commons/IVuiEngine;


# static fields
.field private static volatile instance:Lcom/xiaopeng/speech/vui/VuiEngine;


# instance fields
.field private impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

.field private mLifecycleObservers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->mLifecycleObservers:Ljava/util/Map;

    .line 41
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 44
    :cond_0
    new-instance v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;
    .locals 2

    .line 48
    sget-object v0, Lcom/xiaopeng/speech/vui/VuiEngine;->instance:Lcom/xiaopeng/speech/vui/VuiEngine;

    if-nez v0, :cond_1

    .line 49
    const-class v0, Lcom/xiaopeng/speech/vui/VuiEngine;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lcom/xiaopeng/speech/vui/VuiEngine;->instance:Lcom/xiaopeng/speech/vui/VuiEngine;

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Lcom/xiaopeng/speech/vui/VuiEngine;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/vui/VuiEngine;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaopeng/speech/vui/VuiEngine;->instance:Lcom/xiaopeng/speech/vui/VuiEngine;

    .line 54
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 56
    :cond_1
    :goto_0
    sget-object p0, Lcom/xiaopeng/speech/vui/VuiEngine;->instance:Lcom/xiaopeng/speech/vui/VuiEngine;

    return-object p0
.end method


# virtual methods
.method public addSceneElement(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 638
    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->addSceneElement(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public addSceneElementGroup(Landroid/view/View;Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiPriority;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 623
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->addSceneElementGroup(Landroid/view/View;Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiPriority;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    :cond_0
    return-void
.end method

.method public addVuiEventListener(Ljava/lang/String;Lcom/xiaopeng/speech/vui/listener/IVuiEventListener;)V
    .locals 1

    .line 1033
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 1034
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->addVuiEventListener(Ljava/lang/String;Lcom/xiaopeng/speech/vui/listener/IVuiEventListener;)V

    :cond_0
    return-void
.end method

.method public addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 6

    .line 740
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 741
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Z)V

    :cond_0
    return-void
.end method

.method public addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;)V
    .locals 6

    .line 783
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 784
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Z)V

    :cond_0
    return-void
.end method

.method public addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Z)V
    .locals 6

    .line 769
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 770
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Z)V

    :cond_0
    return-void
.end method

.method public addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Z)V
    .locals 6

    .line 754
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .line 755
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Z)V

    :cond_0
    return-void
.end method

.method public buildScene(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    .line 204
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSourceDisplayLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public buildScene(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;)V
    .locals 1

    .line 249
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSourceDisplayLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;)V

    return-void
.end method

.method public buildScene(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;)V
    .locals 10

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 263
    invoke-static {p4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p3

    .line 262
    invoke-virtual/range {v0 .. v9}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    :cond_0
    return-void
.end method

.method public buildScene(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V
    .locals 10

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 211
    invoke-static {p3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v1, p1

    move-object v2, p2

    .line 210
    invoke-virtual/range {v0 .. v9}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    :cond_0
    return-void
.end method

.method public buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;",
            ")V"
        }
    .end annotation

    .line 297
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSourceDisplayLocation()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;)V

    return-void
.end method

.method public buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 308
    invoke-static {p5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v7, p4

    .line 307
    invoke-virtual/range {v0 .. v9}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    :cond_0
    return-void
.end method

.method public buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/xiaopeng/vui/commons/IVuiElementListener;",
            ")V"
        }
    .end annotation

    .line 424
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSourceDisplayLocation()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/lang/String;)V

    return-void
.end method

.method public buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/xiaopeng/vui/commons/IVuiElementListener;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v8, p5

    .line 438
    invoke-virtual/range {v0 .. v8}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;)V

    return-void
.end method

.method public buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/xiaopeng/vui/commons/IVuiElementListener;",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/vui/commons/IVuiSceneListener;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 444
    iget-object v1, v0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v1, :cond_0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 446
    invoke-static/range {p5 .. p5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v10, p6

    .line 445
    invoke-virtual/range {v1 .. v10}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    :cond_0
    return-void
.end method

.method public buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/xiaopeng/vui/commons/IVuiElementListener;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;",
            ")V"
        }
    .end annotation

    .line 323
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSourceDisplayLocation()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;)V

    return-void
.end method

.method public buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/xiaopeng/vui/commons/IVuiElementListener;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 337
    iget-object v1, v0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v1, :cond_0

    const/4 v5, 0x0

    .line 339
    invoke-static/range {p8 .. p8}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    .line 338
    invoke-virtual/range {v1 .. v10}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    :cond_0
    return-void
.end method

.method public buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 274
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSourceDisplayLocation()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;ZLjava/lang/String;)V

    return-void
.end method

.method public buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;ZLjava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 286
    invoke-static {p5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move v6, p4

    .line 285
    invoke-virtual/range {v0 .. v9}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    :cond_0
    return-void
.end method

.method public buildScene(Ljava/lang/String;Landroid/view/View;Z)V
    .locals 1

    .line 224
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSourceDisplayLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Landroid/view/View;ZLjava/lang/String;)V

    return-void
.end method

.method public buildScene(Ljava/lang/String;Landroid/view/View;ZLjava/lang/String;)V
    .locals 10

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 237
    invoke-static {p4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    .line 236
    invoke-virtual/range {v0 .. v9}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    :cond_0
    return-void
.end method

.method public buildScene(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 452
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSourceDisplayLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public buildScene(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 457
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 459
    invoke-static {p3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v1, p1

    move-object v2, p2

    .line 458
    invoke-virtual/range {v0 .. v9}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    :cond_0
    return-void
.end method

.method public buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/xiaopeng/vui/commons/IVuiElementListener;",
            ")V"
        }
    .end annotation

    .line 465
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSourceDisplayLocation()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/lang/String;)V

    return-void
.end method

.method public buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/xiaopeng/vui/commons/IVuiElementListener;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 470
    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    return-void
.end method

.method public buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/xiaopeng/vui/commons/IVuiElementListener;",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/vui/commons/IVuiSceneListener;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 475
    iget-object v1, v0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v1, :cond_0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 477
    invoke-static/range {p5 .. p5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v10, p6

    .line 476
    invoke-virtual/range {v1 .. v10}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    :cond_0
    return-void
.end method

.method public buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/xiaopeng/vui/commons/IVuiElementListener;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;",
            ")V"
        }
    .end annotation

    .line 353
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSourceDisplayLocation()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;)V

    return-void
.end method

.method public buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/xiaopeng/vui/commons/IVuiElementListener;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 366
    iget-object v1, v0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v1, :cond_0

    .line 368
    invoke-static/range {p8 .. p8}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    .line 367
    invoke-virtual/range {v1 .. v10}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    :cond_0
    return-void
.end method

.method public buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 378
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSourceDisplayLocation()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;)V

    return-void
.end method

.method public buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 389
    invoke-static {p5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move v6, p4

    .line 388
    invoke-virtual/range {v0 .. v9}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    :cond_0
    return-void
.end method

.method public buildScene(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .line 399
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSourceDisplayLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)V

    return-void
.end method

.method public buildScene(Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 410
    invoke-static {p4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    .line 409
    invoke-virtual/range {v0 .. v9}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    :cond_0
    return-void
.end method

.method public createVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;
    .locals 1

    .line 1015
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 1016
    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->createVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public disableChildVuiAttrWhenInvisible(Landroid/view/View;)V
    .locals 1

    .line 915
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 916
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->disableChildVuiAttrWhenInvisible(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public disableViewVuiMode()V
    .locals 1

    .line 1043
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 1044
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->disableViewVuiMode()V

    :cond_0
    return-void
.end method

.method public disableVuiFeature()V
    .locals 1

    .line 952
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 953
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->disableVuiFeature()V

    :cond_0
    return-void
.end method

.method public dispatchVuiEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 666
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 667
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->dispatchVuiEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public enableVuiFeature()V
    .locals 1

    .line 961
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 962
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->enableVuiFeature()V

    :cond_0
    return-void
.end method

.method public enterScene(Ljava/lang/String;)V
    .locals 1

    .line 124
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSourceDisplayLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->enterScene(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public enterScene(Ljava/lang/String;I)V
    .locals 1

    .line 68
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSourceDisplayLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->enterScene(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public enterScene(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    .line 82
    invoke-static {p3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->enterScene(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 84
    invoke-static {p3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->enterScene(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public enterScene(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 130
    invoke-static {p2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->enterScene(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public enterScene(Ljava/lang/String;Z)V
    .locals 1

    .line 140
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSourceDisplayLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->enterScene(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public enterScene(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 149
    invoke-static {p3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p3, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->enterScene(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public exitScene(Ljava/lang/String;)V
    .locals 1

    .line 159
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSourceDisplayLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->exitScene(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public exitScene(Ljava/lang/String;I)V
    .locals 1

    .line 97
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSourceDisplayLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->exitScene(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public exitScene(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 110
    invoke-static {p3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->exitScene(Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 112
    invoke-static {p3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->exitScene(Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public exitScene(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 165
    invoke-static {p2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->exitScene(Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    :cond_0
    return-void
.end method

.method public exitScene(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 172
    invoke-static {p2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->exitScene(Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    :cond_0
    return-void
.end method

.method public exitScene(Ljava/lang/String;Z)V
    .locals 1

    .line 182
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSourceDisplayLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->exitScene(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public exitScene(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 191
    invoke-static {p3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p3, p2, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->exitScene(Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    :cond_0
    return-void
.end method

.method public getActiveSceneId()Ljava/lang/String;
    .locals 2

    .line 1184
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 1185
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getActiveSceneId()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "primary"

    .line 1187
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getElementState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 672
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 673
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getElementState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRFActiveSceneId()Ljava/lang/String;
    .locals 2

    .line 1198
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 1199
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getActiveSceneId()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "secondary"

    .line 1201
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVuiElementId(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "_"

    if-eqz p1, :cond_0

    .line 998
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_0
    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    .line 1001
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_1
    return-object p3
.end method

.method public getVuiElementTag(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    .line 846
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 847
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getVuiElementTag(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getVuiElementVisibleTag(Landroid/view/View;)Ljava/lang/Boolean;
    .locals 1

    .line 942
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 943
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getVuiElementVisibleTag(Landroid/view/View;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public handleNewRootviewToScene(Ljava/lang/String;Landroid/view/View;)V
    .locals 3

    .line 576
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 577
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiPriority;->LEVEL2:Lcom/xiaopeng/vui/commons/VuiPriority;

    invoke-virtual {v0, p1, p2, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->handleNewRootviewToScene(Ljava/lang/String;Ljava/util/List;Lcom/xiaopeng/vui/commons/VuiPriority;)V

    :cond_0
    return-void
.end method

.method public handleNewRootviewToScene(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiPriority;)V
    .locals 3

    .line 582
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 583
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->handleNewRootviewToScene(Ljava/lang/String;Ljava/util/List;Lcom/xiaopeng/vui/commons/VuiPriority;)V

    :cond_0
    return-void
.end method

.method public handleNewRootviewToScene(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 570
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 571
    sget-object v1, Lcom/xiaopeng/vui/commons/VuiPriority;->LEVEL2:Lcom/xiaopeng/vui/commons/VuiPriority;

    invoke-virtual {v0, p1, p2, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->handleNewRootviewToScene(Ljava/lang/String;Ljava/util/List;Lcom/xiaopeng/vui/commons/VuiPriority;)V

    :cond_0
    return-void
.end method

.method public handleNewRootviewToScene(Ljava/lang/String;Ljava/util/List;Lcom/xiaopeng/vui/commons/VuiPriority;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/xiaopeng/vui/commons/VuiPriority;",
            ")V"
        }
    .end annotation

    .line 588
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 589
    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->handleNewRootviewToScene(Ljava/lang/String;Ljava/util/List;Lcom/xiaopeng/vui/commons/VuiPriority;)V

    :cond_0
    return-void
.end method

.method public initScene(Landroidx/lifecycle/Lifecycle;Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1110
    invoke-virtual/range {v0 .. v7}, Lcom/xiaopeng/speech/vui/VuiEngine;->initScene(Landroidx/lifecycle/Lifecycle;Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;ZZ)V

    return-void
.end method

.method public initScene(Landroidx/lifecycle/Lifecycle;Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;)V
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1123
    invoke-virtual/range {v0 .. v7}, Lcom/xiaopeng/speech/vui/VuiEngine;->initScene(Landroidx/lifecycle/Lifecycle;Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;ZZ)V

    return-void
.end method

.method public initScene(Landroidx/lifecycle/Lifecycle;Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;ZZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    .line 1138
    iget-object v1, v0, Lcom/xiaopeng/speech/vui/VuiEngine;->mLifecycleObservers:Ljava/util/Map;

    invoke-interface {v1, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 1139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initScene, observer remove before, lifecycle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, ", sceneId: "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v14, ", view: "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", containsKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v15, "VuiEngine"

    invoke-static {v15, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    .line 1142
    iget-object v1, v0, Lcom/xiaopeng/speech/vui/VuiEngine;->mLifecycleObservers:Ljava/util/Map;

    invoke-interface {v1, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;

    .line 1143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initScene, observer remove after, prevObserver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 1145
    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->setSceneId(Ljava/lang/String;)V

    .line 1146
    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->setContext(Landroid/content/Context;)V

    .line 1147
    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->setListener(Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 1148
    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->setRootView(Landroid/view/View;)V

    const/4 v3, 0x0

    .line 1149
    invoke-virtual {v1, v3}, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->setNeedBuild(Z)V

    .line 1150
    invoke-virtual {v1, v3}, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->setKeepCache(Z)V

    .line 1151
    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->setElementChangedListener(Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;)V

    .line 1152
    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->getLifeCycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1154
    invoke-virtual {v3, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 1156
    :cond_0
    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->setLifeCycle(Landroidx/lifecycle/Lifecycle;)V

    .line 1160
    :cond_1
    new-instance v9, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;

    invoke-static {}, Lcom/xiaopeng/speech/vui/constants/Foo;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v1, v9

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v16, v15

    move-object v15, v9

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;ZZ)V

    .line 1162
    invoke-virtual {v10, v15}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 1163
    iget-object v1, v0, Lcom/xiaopeng/speech/vui/VuiEngine;->mLifecycleObservers:Ljava/util/Map;

    invoke-interface {v1, v11, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initScene, observer put, lifecycle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", observer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-static {v2, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isInSpeech()Z
    .locals 1

    .line 982
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 983
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isInSpeech()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSpeechShowNumber()Z
    .locals 1

    .line 1173
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 1174
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isSpeechShowNumber()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isVuiFeatureDisabled()Z
    .locals 1

    .line 971
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 972
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isVuiFeatureDisabled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public removeOtherRootViewFromScene(Ljava/lang/String;)V
    .locals 1

    .line 608
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 609
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->removeOtherRootViewFromScene(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public removeOtherRootViewFromScene(Ljava/lang/String;Landroid/view/View;)V
    .locals 3

    .line 594
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 595
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->removeOtherRootViewFromScene(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public removeOtherRootViewFromScene(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 601
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 602
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->removeOtherRootViewFromScene(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public removeSceneElementGroup(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 652
    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->removeSceneElementGroup(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    :cond_0
    return-void
.end method

.method public removeVuiSceneListener(Ljava/lang/String;)V
    .locals 3

    .line 796
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 797
    invoke-virtual {v0, p1, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->removeVuiSceneListener(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Z)V

    :cond_0
    return-void
.end method

.method public removeVuiSceneListener(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 2

    .line 807
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 808
    invoke-virtual {v0, p1, p2, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->removeVuiSceneListener(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Z)V

    :cond_0
    return-void
.end method

.method public removeVuiSceneListener(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Z)V
    .locals 1

    .line 828
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 829
    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->removeVuiSceneListener(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Z)V

    :cond_0
    return-void
.end method

.method public removeVuiSceneListener(Ljava/lang/String;Z)V
    .locals 2

    .line 818
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 819
    invoke-virtual {v0, p1, v1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->removeVuiSceneListener(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Z)V

    :cond_0
    return-void
.end method

.method public setCustomDoActionTag(Landroid/view/View;)V
    .locals 1

    .line 1087
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 1088
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setCustomDoActionTag(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setExecuteVirtualTag(Landroid/view/View;)V
    .locals 2

    .line 1053
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1054
    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setExecuteVirtualTag(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setExecuteVirtualTag(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 1064
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 1065
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setExecuteVirtualTag(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setHasFeedBackTxtByViewDisable(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 1208
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 1209
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setHasFeedBackTxtByViewDisable(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setLoglevel(I)V
    .locals 1

    .line 1022
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 1023
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setLoglevel(I)V

    :cond_0
    return-void
.end method

.method public setProcessName(Ljava/lang/String;)V
    .locals 1

    .line 1097
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 1098
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setProcessName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setVirtualResourceNameTag(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 1076
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 1077
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setVirtualResourceNameTag(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setVuiCustomDisableControlTag(Landroid/view/View;)V
    .locals 1

    .line 884
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 885
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setVuiCustomDisableControlTag(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setVuiCustomDisableFeedbackTag(Landroid/view/View;)V
    .locals 1

    .line 893
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 894
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setVuiCustomDisableFeedbackTag(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setVuiElementDefaultAction(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 874
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 875
    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setVuiElementDefaultAction(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 840
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 841
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setVuiElementUnStandardSwitch(Landroid/view/View;)V
    .locals 3

    .line 868
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 869
    sget-object v1, Lcom/xiaopeng/vui/commons/VuiAction;->SETCHECK:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setVuiElementDefaultAction(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setVuiElementUnSupportTag(Landroid/view/View;Z)V
    .locals 1

    .line 858
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 859
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setVuiElementUnSupportTag(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public setVuiElementVisibleTag(Landroid/view/View;Z)V
    .locals 1

    .line 936
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 937
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setVuiElementVisibleTag(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public varargs setVuiLabelUnSupportText([Landroid/view/View;)V
    .locals 1

    .line 925
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 926
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setVuiLabelUnSupportText([Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setVuiSceneProps(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1214
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 1215
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setVuiSceneProps(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public setVuiStatfulButtonClick(Landroid/view/View;)V
    .locals 1

    .line 905
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 906
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setVuiStatefulButtonClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public subscribe(Ljava/lang/String;)V
    .locals 1

    .line 702
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 703
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->subscribe(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public subscribeVuiFeature()V
    .locals 1

    .line 712
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 713
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->subscribeVuiFeature()V

    :cond_0
    return-void
.end method

.method public unSubscribe()V
    .locals 1

    .line 726
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 727
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->unSubscribe()V

    :cond_0
    return-void
.end method

.method public unSubscribeVuiFeature()V
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 719
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->unSubscribeVuiFeature()V

    :cond_0
    return-void
.end method

.method public updateDisplayLocation(Ljava/lang/String;I)V
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 504
    invoke-static {p2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->updateDisplayLocation(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateElementAttribute(Ljava/lang/String;Landroid/view/View;)V
    .locals 3

    .line 496
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 497
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->updateElementAttribute(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public updateElementAttribute(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 509
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->updateElementAttribute(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public updateRecyclerViewItemView(Ljava/lang/String;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    .line 515
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 516
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->updateRecyclerViewItemView(Ljava/lang/String;Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    return-void
.end method

.method public updateRecyclerViewItemView(Ljava/lang/String;Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ")V"
        }
    .end annotation

    .line 521
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 522
    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->updateRecyclerViewItemView(Ljava/lang/String;Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    return-void
.end method

.method public updateScene(Ljava/lang/String;Landroid/view/View;)V
    .locals 3

    .line 533
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_1

    .line 534
    instance-of v0, p2, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiElementChangedListener()Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->updateScene(Ljava/lang/String;Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/xiaopeng/vui/commons/IVuiElementListener;",
            ")V"
        }
    .end annotation

    .line 564
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 565
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->updateScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;)V

    :cond_0
    return-void
.end method

.method public updateScene(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 489
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->updateScene(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public updateScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/xiaopeng/vui/commons/IVuiElementListener;",
            ")V"
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 552
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->updateScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;)V

    :cond_0
    return-void
.end method

.method public vuiFeedback(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 685
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->vuiFeedback(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V

    :cond_0
    return-void
.end method

.method public vuiFeedback(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 691
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->vuiFeedback(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
