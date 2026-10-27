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
    .locals 1

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/speech/vui/VuiEngine;->instance:Lcom/xiaopeng/speech/vui/VuiEngine;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

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

    .line 42
    return-void

    .line 44
    :cond_0
    new-instance v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 45
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

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

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaopeng/speech/vui/VuiEngine;->instance:Lcom/xiaopeng/speech/vui/VuiEngine;

    .line 54
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 56
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/speech/vui/VuiEngine;->instance:Lcom/xiaopeng/speech/vui/VuiEngine;

    return-object v0
.end method


# virtual methods
.method public addSceneElement(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "parentElementId"    # Ljava/lang/String;
    .param p3, "sceneId"    # Ljava/lang/String;

    .line 637
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->addSceneElement(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    :cond_0
    return-void
.end method

.method public addSceneElementGroup(Landroid/view/View;Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiPriority;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "sceneId"    # Ljava/lang/String;
    .param p3, "priority"    # Lcom/xiaopeng/vui/commons/VuiPriority;
    .param p4, "listener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    .line 622
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->addSceneElementGroup(Landroid/view/View;Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiPriority;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 625
    :cond_0
    return-void
.end method

.method public addVuiEventListener(Ljava/lang/String;Lcom/xiaopeng/speech/vui/listener/IVuiEventListener;)V
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/xiaopeng/speech/vui/listener/IVuiEventListener;

    .line 1033
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->addVuiEventListener(Ljava/lang/String;Lcom/xiaopeng/speech/vui/listener/IVuiEventListener;)V

    .line 1036
    :cond_0
    return-void
.end method

.method public addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 7
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "listener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    .line 740
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 741
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Z)V

    .line 744
    :cond_0
    return-void
.end method

.method public addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;)V
    .locals 7
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "listener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    .param p4, "elementChangedListener"    # Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    .line 783
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 784
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Z)V

    .line 786
    :cond_0
    return-void
.end method

.method public addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Z)V
    .locals 7
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "listener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    .param p4, "elementChangedListener"    # Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;
    .param p5, "needBuild"    # Z

    .line 769
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 770
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Z)V

    .line 772
    :cond_0
    return-void
.end method

.method public addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Z)V
    .locals 7
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "listener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    .param p4, "needBuild"    # Z

    .line 754
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 755
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Z)V

    .line 757
    :cond_0
    return-void
.end method

.method public buildScene(Ljava/lang/String;Landroid/view/View;)V
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "rootView"    # Landroid/view/View;

    .line 204
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSourceDisplayLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public buildScene(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;)V
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "mSceneCallbackHandler"    # Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;

    .line 249
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSourceDisplayLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public buildScene(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;)V
    .locals 11
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "mSceneCallbackHandler"    # Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;
    .param p4, "displayLocation"    # Ljava/lang/String;

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 262
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 263
    invoke-static {p4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 262
    move-object v2, p1

    move-object v3, p2

    move-object v8, p3

    invoke-virtual/range {v1 .. v10}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 265
    :cond_0
    return-void
.end method

.method public buildScene(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V
    .locals 11
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "displayLocation"    # Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 210
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 211
    invoke-static {p3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 210
    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v10}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 213
    :cond_0
    return-void
.end method

.method public buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;)V
    .locals 6
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "rootView"    # Landroid/view/View;
    .param p4, "mSceneCallbackHandler"    # Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;
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
    .local p3, "subSceneIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSourceDisplayLocation()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method public buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;)V
    .locals 12
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "rootView"    # Landroid/view/View;
    .param p4, "mSceneCallbackHandler"    # Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;
    .param p5, "displayLocation"    # Ljava/lang/String;
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

    .local p3, "subSceneIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, p0

    .line 306
    iget-object v1, v0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v1, :cond_0

    .line 307
    iget-object v2, v0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 308
    invoke-static/range {p5 .. p5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 307
    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v2 .. v11}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 311
    :cond_0
    return-void
.end method

.method public buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;)V
    .locals 6
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "rootView"    # Landroid/view/View;
    .param p4, "viewVuiHandler"    # Lcom/xiaopeng/vui/commons/IVuiElementListener;
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
    .local p3, "customizeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSourceDisplayLocation()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method public buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/lang/String;)V
    .locals 9
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "rootView"    # Landroid/view/View;
    .param p4, "viewVuiHandler"    # Lcom/xiaopeng/vui/commons/IVuiElementListener;
    .param p5, "displayLocation"    # Ljava/lang/String;
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

    .line 438
    .local p3, "customizeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method public buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 12
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "rootView"    # Landroid/view/View;
    .param p4, "viewVuiHandler"    # Lcom/xiaopeng/vui/commons/IVuiElementListener;
    .param p5, "displayLocation"    # Ljava/lang/String;
    .param p6, "sceneListener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;
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

    .local p3, "customizeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v0, p0

    .line 444
    iget-object v1, v0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v1, :cond_0

    .line 445
    iget-object v2, v0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 446
    invoke-static/range {p5 .. p5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 445
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v11, p6

    invoke-virtual/range {v2 .. v11}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 448
    :cond_0
    return-void
.end method

.method public buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;)V
    .locals 9
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "rootView"    # Landroid/view/View;
    .param p4, "viewVuiHandler"    # Lcom/xiaopeng/vui/commons/IVuiElementListener;
    .param p6, "isWholeScene"    # Z
    .param p7, "sceneCallbackHandler"    # Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;
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
    .local p3, "customizeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p5, "subSceneIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
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

    .line 324
    return-void
.end method

.method public buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;)V
    .locals 12
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "rootView"    # Landroid/view/View;
    .param p4, "viewVuiHandler"    # Lcom/xiaopeng/vui/commons/IVuiElementListener;
    .param p6, "isWholeScene"    # Z
    .param p7, "sceneCallbackHandler"    # Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;
    .param p8, "displayLocation"    # Ljava/lang/String;
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

    .local p3, "customizeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p5, "subSceneIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, p0

    .line 337
    iget-object v1, v0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v1, :cond_0

    .line 338
    iget-object v2, v0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    const/4 v6, 0x0

    .line 339
    invoke-static/range {p8 .. p8}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 338
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v11}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 341
    :cond_0
    return-void
.end method

.method public buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Z)V
    .locals 6
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "rootView"    # Landroid/view/View;
    .param p4, "isWholeScene"    # Z
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
    .local p3, "subSceneIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSourceDisplayLocation()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;ZLjava/lang/String;)V

    .line 275
    return-void
.end method

.method public buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;ZLjava/lang/String;)V
    .locals 12
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "rootView"    # Landroid/view/View;
    .param p4, "isWholeScene"    # Z
    .param p5, "displayLocation"    # Ljava/lang/String;
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

    .local p3, "subSceneIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, p0

    .line 284
    iget-object v1, v0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v1, :cond_0

    .line 285
    iget-object v2, v0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 286
    invoke-static/range {p5 .. p5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 285
    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    move/from16 v8, p4

    invoke-virtual/range {v2 .. v11}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 289
    :cond_0
    return-void
.end method

.method public buildScene(Ljava/lang/String;Landroid/view/View;Z)V
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "isWholeScene"    # Z

    .line 224
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSourceDisplayLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Landroid/view/View;ZLjava/lang/String;)V

    .line 225
    return-void
.end method

.method public buildScene(Ljava/lang/String;Landroid/view/View;ZLjava/lang/String;)V
    .locals 11
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "isWholeScene"    # Z
    .param p4, "displayLocation"    # Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 236
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 237
    invoke-static {p4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 236
    move-object v2, p1

    move-object v3, p2

    move v7, p3

    invoke-virtual/range {v1 .. v10}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 239
    :cond_0
    return-void
.end method

.method public buildScene(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;
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
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSourceDisplayLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method public buildScene(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 11
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p3, "displayLocation"    # Ljava/lang/String;
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
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 458
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 459
    invoke-static {p3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 458
    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v10}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 461
    :cond_0
    return-void
.end method

.method public buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;)V
    .locals 6
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p4, "viewVuiHandler"    # Lcom/xiaopeng/vui/commons/IVuiElementListener;
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
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "customizeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSourceDisplayLocation()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/lang/String;)V

    .line 466
    return-void
.end method

.method public buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/lang/String;)V
    .locals 7
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p4, "viewVuiHandler"    # Lcom/xiaopeng/vui/commons/IVuiElementListener;
    .param p5, "displayLocation"    # Ljava/lang/String;
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

    .line 470
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "customizeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 471
    return-void
.end method

.method public buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 12
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p4, "viewVuiHandler"    # Lcom/xiaopeng/vui/commons/IVuiElementListener;
    .param p5, "displayLocation"    # Ljava/lang/String;
    .param p6, "iVuiSceneListener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;
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

    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "customizeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v0, p0

    .line 475
    iget-object v1, v0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v1, :cond_0

    .line 476
    iget-object v2, v0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 477
    invoke-static/range {p5 .. p5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 476
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v11, p6

    invoke-virtual/range {v2 .. v11}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 479
    :cond_0
    return-void
.end method

.method public buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;)V
    .locals 9
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p4, "viewVuiHandler"    # Lcom/xiaopeng/vui/commons/IVuiElementListener;
    .param p6, "isWholeScene"    # Z
    .param p7, "mSceneCallbackHandler"    # Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;
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
    .local p2, "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "customizeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p5, "subSceneIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
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

    .line 354
    return-void
.end method

.method public buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;)V
    .locals 12
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p4, "viewVuiHandler"    # Lcom/xiaopeng/vui/commons/IVuiElementListener;
    .param p6, "isWholeScene"    # Z
    .param p7, "mSceneCallbackHandler"    # Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;
    .param p8, "displayLocation"    # Ljava/lang/String;
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

    .local p2, "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "customizeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p5, "subSceneIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, p0

    .line 366
    iget-object v1, v0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v1, :cond_0

    .line 367
    iget-object v2, v0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 368
    invoke-static/range {p8 .. p8}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 367
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v11}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 370
    :cond_0
    return-void
.end method

.method public buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)V
    .locals 6
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p4, "isWholeScene"    # Z
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
    .local p2, "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "subSceneIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSourceDisplayLocation()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;)V

    .line 380
    return-void
.end method

.method public buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;)V
    .locals 12
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p4, "isWholeScene"    # Z
    .param p5, "displayLocation"    # Ljava/lang/String;
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

    .local p2, "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "subSceneIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, p0

    .line 387
    iget-object v1, v0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v1, :cond_0

    .line 388
    iget-object v2, v0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 389
    invoke-static/range {p5 .. p5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 388
    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    move/from16 v8, p4

    invoke-virtual/range {v2 .. v11}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 392
    :cond_0
    return-void
.end method

.method public buildScene(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p3, "isWholeScene"    # Z
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
    .local p2, "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSourceDisplayLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)V

    .line 400
    return-void
.end method

.method public buildScene(Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)V
    .locals 11
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p3, "isWholeScene"    # Z
    .param p4, "displayLocation"    # Ljava/lang/String;
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
    .local p2, "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 409
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 410
    invoke-static {p4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 409
    move-object v2, p1

    move-object v3, p2

    move v7, p3

    invoke-virtual/range {v1 .. v10}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 412
    :cond_0
    return-void
.end method

.method public createVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "time"    # J

    .line 1015
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->createVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v0

    return-object v0

    .line 1018
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public disableChildVuiAttrWhenInvisible(Landroid/view/View;)V
    .locals 1
    .param p1, "tagView"    # Landroid/view/View;

    .line 915
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->disableChildVuiAttrWhenInvisible(Landroid/view/View;)V

    .line 918
    :cond_0
    return-void
.end method

.method public disableViewVuiMode()V
    .locals 1

    .line 1043
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->disableViewVuiMode()V

    .line 1046
    :cond_0
    return-void
.end method

.method public disableVuiFeature()V
    .locals 1

    .line 952
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 953
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->disableVuiFeature()V

    .line 955
    :cond_0
    return-void
.end method

.method public dispatchVuiEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "vuiEvent"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 666
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->dispatchVuiEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    :cond_0
    return-void
.end method

.method public enableVuiFeature()V
    .locals 1

    .line 961
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->enableVuiFeature()V

    .line 964
    :cond_0
    return-void
.end method

.method public enterScene(Ljava/lang/String;)V
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 124
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSourceDisplayLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->enterScene(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public enterScene(Ljava/lang/String;I)V
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "flag"    # I

    .line 68
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSourceDisplayLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->enterScene(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    return-void
.end method

.method public enterScene(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "displayLocation"    # Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_1

    .line 81
    if-nez p2, :cond_0

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {p3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->enterScene(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 83
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {p3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->enterScene(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 87
    :cond_1
    :goto_0
    return-void
.end method

.method public enterScene(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "displayLocation"    # Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {p2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->enterScene(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 132
    :cond_0
    return-void
.end method

.method public enterScene(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "isWholeScene"    # Z

    .line 140
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSourceDisplayLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->enterScene(Ljava/lang/String;ZLjava/lang/String;)V

    .line 141
    return-void
.end method

.method public enterScene(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "isWholeScene"    # Z
    .param p3, "displayLocation"    # Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {p3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->enterScene(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 151
    :cond_0
    return-void
.end method

.method public exitScene(Ljava/lang/String;)V
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 159
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSourceDisplayLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->exitScene(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public exitScene(Ljava/lang/String;I)V
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "flag"    # I

    .line 97
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSourceDisplayLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->exitScene(Ljava/lang/String;ILjava/lang/String;)V

    .line 98
    return-void
.end method

.method public exitScene(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "displayLocation"    # Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_1

    .line 109
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 110
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {p3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->exitScene(Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    goto :goto_0

    .line 111
    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 112
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {p3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->exitScene(Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 116
    :cond_1
    :goto_0
    return-void
.end method

.method public exitScene(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "displayLocation"    # Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {p2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->exitScene(Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 167
    :cond_0
    return-void
.end method

.method public exitScene(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 3
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "displayLocation"    # Ljava/lang/String;
    .param p3, "iVuiSceneListener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {p2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->exitScene(Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 174
    :cond_0
    return-void
.end method

.method public exitScene(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "isWholeScene"    # Z

    .line 182
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSourceDisplayLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->exitScene(Ljava/lang/String;ZLjava/lang/String;)V

    .line 183
    return-void
.end method

.method public exitScene(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "isWholeScene"    # Z
    .param p3, "displayLocation"    # Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {p3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->exitScene(Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 193
    :cond_0
    return-void
.end method

.method public getActiveSceneId()Ljava/lang/String;
    .locals 2

    .line 1184
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 1185
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getActiveSceneId()Ljava/util/Map;

    move-result-object v0

    .line 1186
    .local v0, "mActiveSceneIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 1187
    const-string v1, "primary"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 1190
    .end local v0    # "mActiveSceneIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getElementState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "elementId"    # Ljava/lang/String;

    .line 672
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getElementState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 675
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRFActiveSceneId()Ljava/lang/String;
    .locals 2

    .line 1198
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 1199
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getActiveSceneId()Ljava/util/Map;

    move-result-object v0

    .line 1200
    .local v0, "mActiveSceneIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 1201
    const-string v1, "secondary"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 1204
    .end local v0    # "mActiveSceneIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVuiElementId(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fatherId"    # Ljava/lang/String;
    .param p2, "position"    # I
    .param p3, "viewId"    # Ljava/lang/String;

    .line 997
    if-eqz p1, :cond_0

    .line 998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1000
    :cond_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 1001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1004
    :cond_1
    return-object p3
.end method

.method public getVuiElementTag(Landroid/view/View;)Ljava/lang/String;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 846
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getVuiElementTag(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 849
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVuiElementVisibleTag(Landroid/view/View;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "tagView"    # Landroid/view/View;

    .line 942
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getVuiElementVisibleTag(Landroid/view/View;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 945
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleNewRootviewToScene(Ljava/lang/String;Landroid/view/View;)V
    .locals 3
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .line 576
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/vui/commons/VuiPriority;->LEVEL2:Lcom/xiaopeng/vui/commons/VuiPriority;

    invoke-virtual {v0, p1, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->handleNewRootviewToScene(Ljava/lang/String;Ljava/util/List;Lcom/xiaopeng/vui/commons/VuiPriority;)V

    .line 579
    :cond_0
    return-void
.end method

.method public handleNewRootviewToScene(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiPriority;)V
    .locals 3
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "vuiPriority"    # Lcom/xiaopeng/vui/commons/VuiPriority;

    .line 582
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->handleNewRootviewToScene(Ljava/lang/String;Ljava/util/List;Lcom/xiaopeng/vui/commons/VuiPriority;)V

    .line 585
    :cond_0
    return-void
.end method

.method public handleNewRootviewToScene(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;
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
    .local p2, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiPriority;->LEVEL2:Lcom/xiaopeng/vui/commons/VuiPriority;

    invoke-virtual {v0, p1, p2, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->handleNewRootviewToScene(Ljava/lang/String;Ljava/util/List;Lcom/xiaopeng/vui/commons/VuiPriority;)V

    .line 573
    :cond_0
    return-void
.end method

.method public handleNewRootviewToScene(Ljava/lang/String;Ljava/util/List;Lcom/xiaopeng/vui/commons/VuiPriority;)V
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p3, "vuiPriority"    # Lcom/xiaopeng/vui/commons/VuiPriority;
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
    .local p2, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->handleNewRootviewToScene(Ljava/lang/String;Ljava/util/List;Lcom/xiaopeng/vui/commons/VuiPriority;)V

    .line 591
    :cond_0
    return-void
.end method

.method public initScene(Landroidx/lifecycle/Lifecycle;Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 8
    .param p1, "lifecycle"    # Landroidx/lifecycle/Lifecycle;
    .param p2, "sceneId"    # Ljava/lang/String;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "listener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    .line 1110
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/xiaopeng/speech/vui/VuiEngine;->initScene(Landroidx/lifecycle/Lifecycle;Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;ZZ)V

    .line 1111
    return-void
.end method

.method public initScene(Landroidx/lifecycle/Lifecycle;Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;)V
    .locals 8
    .param p1, "lifecycle"    # Landroidx/lifecycle/Lifecycle;
    .param p2, "sceneId"    # Ljava/lang/String;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "listener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    .param p5, "elementChangedListener"    # Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    .line 1123
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/xiaopeng/speech/vui/VuiEngine;->initScene(Landroidx/lifecycle/Lifecycle;Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;ZZ)V

    .line 1124
    return-void
.end method

.method public initScene(Landroidx/lifecycle/Lifecycle;Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;ZZ)V
    .locals 15
    .param p1, "lifecycle"    # Landroidx/lifecycle/Lifecycle;
    .param p2, "sceneId"    # Ljava/lang/String;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "listener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    .param p5, "elementChangedListener"    # Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;
    .param p6, "needBuild"    # Z
    .param p7, "keepCache"    # Z

    move-object v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    .line 1138
    iget-object v1, v0, Lcom/xiaopeng/speech/vui/VuiEngine;->mLifecycleObservers:Ljava/util/Map;

    invoke-interface {v1, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    .line 1139
    .local v13, "containsKey":Z
    const-string v1, "VuiEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initScene, observer remove before, lifecycle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", sceneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", view: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", containsKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    if-eqz v13, :cond_1

    .line 1142
    iget-object v1, v0, Lcom/xiaopeng/speech/vui/VuiEngine;->mLifecycleObservers:Ljava/util/Map;

    invoke-interface {v1, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;

    .line 1143
    .local v1, "prevObserver":Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;
    const-string v2, "VuiEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initScene, observer remove after, prevObserver: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    if-eqz v1, :cond_1

    .line 1145
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->setSceneId(Ljava/lang/String;)V

    .line 1146
    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->setContext(Landroid/content/Context;)V

    .line 1147
    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->setListener(Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 1148
    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->setRootView(Landroid/view/View;)V

    .line 1149
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->setNeedBuild(Z)V

    .line 1150
    invoke-virtual {v1, v3}, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->setKeepCache(Z)V

    .line 1151
    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->setElementChangedListener(Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;)V

    .line 1152
    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->getLifeCycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v3

    .line 1153
    .local v3, "prevLifecycle":Landroidx/lifecycle/Lifecycle;
    if-eqz v3, :cond_0

    .line 1154
    invoke-virtual {v3, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 1156
    :cond_0
    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;->setLifeCycle(Landroidx/lifecycle/Lifecycle;)V

    .line 1160
    .end local v1    # "prevObserver":Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;
    .end local v3    # "prevLifecycle":Landroidx/lifecycle/Lifecycle;
    :cond_1
    new-instance v14, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;

    invoke-static {}, Lcom/xiaopeng/speech/vui/constants/Foo;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v1, v14

    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;ZZ)V

    .line 1162
    .local v1, "observer":Lcom/xiaopeng/speech/vui/observer/VuiLifecycleObserver;
    invoke-virtual {v10, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 1163
    iget-object v2, v0, Lcom/xiaopeng/speech/vui/VuiEngine;->mLifecycleObservers:Ljava/util/Map;

    invoke-interface {v2, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    const-string v2, "VuiEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initScene, observer put, lifecycle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", sceneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", view: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", observer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    return-void
.end method

.method public isInSpeech()Z
    .locals 1

    .line 982
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isInSpeech()Z

    move-result v0

    return v0

    .line 985
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
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isSpeechShowNumber()Z

    move-result v0

    return v0

    .line 1176
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
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isVuiFeatureDisabled()Z

    move-result v0

    return v0

    .line 974
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public removeOtherRootViewFromScene(Ljava/lang/String;)V
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 608
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->removeOtherRootViewFromScene(Ljava/lang/String;)V

    .line 611
    :cond_0
    return-void
.end method

.method public removeOtherRootViewFromScene(Ljava/lang/String;Landroid/view/View;)V
    .locals 3
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .line 594
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->removeOtherRootViewFromScene(Ljava/lang/String;Ljava/util/List;)V

    .line 598
    :cond_0
    return-void
.end method

.method public removeOtherRootViewFromScene(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;
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
    .local p2, "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->removeOtherRootViewFromScene(Ljava/lang/String;Ljava/util/List;)V

    .line 604
    :cond_0
    return-void
.end method

.method public removeSceneElementGroup(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 1
    .param p1, "elementGroupId"    # Ljava/lang/String;
    .param p2, "sceneId"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    .line 651
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->removeSceneElementGroup(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 654
    :cond_0
    return-void
.end method

.method public removeVuiSceneListener(Ljava/lang/String;)V
    .locals 3
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 796
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->removeVuiSceneListener(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Z)V

    .line 799
    :cond_0
    return-void
.end method

.method public removeVuiSceneListener(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    .line 807
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->removeVuiSceneListener(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Z)V

    .line 810
    :cond_0
    return-void
.end method

.method public removeVuiSceneListener(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Z)V
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    .param p3, "keepCache"    # Z

    .line 828
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->removeVuiSceneListener(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Z)V

    .line 831
    :cond_0
    return-void
.end method

.method public removeVuiSceneListener(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "keepCache"    # Z

    .line 818
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->removeVuiSceneListener(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Z)V

    .line 821
    :cond_0
    return-void
.end method

.method public setCustomDoActionTag(Landroid/view/View;)V
    .locals 1
    .param p1, "tagView"    # Landroid/view/View;

    .line 1087
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setCustomDoActionTag(Landroid/view/View;)V

    .line 1090
    :cond_0
    return-void
.end method

.method public setExecuteVirtualTag(Landroid/view/View;)V
    .locals 2
    .param p1, "tagView"    # Landroid/view/View;

    .line 1053
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 1054
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setExecuteVirtualTag(Landroid/view/View;Ljava/lang/String;)V

    .line 1056
    :cond_0
    return-void
.end method

.method public setExecuteVirtualTag(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p1, "tagView"    # Landroid/view/View;
    .param p2, "action"    # Ljava/lang/String;

    .line 1064
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setExecuteVirtualTag(Landroid/view/View;Ljava/lang/String;)V

    .line 1067
    :cond_0
    return-void
.end method

.method public setHasFeedBackTxtByViewDisable(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p1, "tagView"    # Landroid/view/View;
    .param p2, "tts"    # Ljava/lang/String;

    .line 1208
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setHasFeedBackTxtByViewDisable(Landroid/view/View;Ljava/lang/String;)V

    .line 1211
    :cond_0
    return-void
.end method

.method public setLoglevel(I)V
    .locals 1
    .param p1, "loglevel"    # I

    .line 1022
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 1023
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setLoglevel(I)V

    .line 1025
    :cond_0
    return-void
.end method

.method public setProcessName(Ljava/lang/String;)V
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;

    .line 1097
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setProcessName(Ljava/lang/String;)V

    .line 1100
    :cond_0
    return-void
.end method

.method public setVirtualResourceNameTag(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p1, "tagView"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;

    .line 1076
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 1077
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setVirtualResourceNameTag(Landroid/view/View;Ljava/lang/String;)V

    .line 1079
    :cond_0
    return-void
.end method

.method public setVuiCustomDisableControlTag(Landroid/view/View;)V
    .locals 1
    .param p1, "tagView"    # Landroid/view/View;

    .line 884
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setVuiCustomDisableControlTag(Landroid/view/View;)V

    .line 887
    :cond_0
    return-void
.end method

.method public setVuiCustomDisableFeedbackTag(Landroid/view/View;)V
    .locals 1
    .param p1, "tagView"    # Landroid/view/View;

    .line 893
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setVuiCustomDisableFeedbackTag(Landroid/view/View;)V

    .line 896
    :cond_0
    return-void
.end method

.method public setVuiElementDefaultAction(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "tagView"    # Landroid/view/View;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 874
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setVuiElementDefaultAction(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    .line 877
    :cond_0
    return-void
.end method

.method public setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p1, "tagView"    # Landroid/view/View;
    .param p2, "tag"    # Ljava/lang/String;

    .line 840
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V

    .line 843
    :cond_0
    return-void
.end method

.method public setVuiElementUnStandardSwitch(Landroid/view/View;)V
    .locals 3
    .param p1, "tagView"    # Landroid/view/View;

    .line 868
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiAction;->SETCHECK:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setVuiElementDefaultAction(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    .line 871
    :cond_0
    return-void
.end method

.method public setVuiElementUnSupportTag(Landroid/view/View;Z)V
    .locals 1
    .param p1, "tagView"    # Landroid/view/View;
    .param p2, "isUnSupport"    # Z

    .line 858
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setVuiElementUnSupportTag(Landroid/view/View;Z)V

    .line 861
    :cond_0
    return-void
.end method

.method public setVuiElementVisibleTag(Landroid/view/View;Z)V
    .locals 1
    .param p1, "tagView"    # Landroid/view/View;
    .param p2, "isVisible"    # Z

    .line 936
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setVuiElementVisibleTag(Landroid/view/View;Z)V

    .line 939
    :cond_0
    return-void
.end method

.method public varargs setVuiLabelUnSupportText([Landroid/view/View;)V
    .locals 1
    .param p1, "tagView"    # [Landroid/view/View;

    .line 925
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setVuiLabelUnSupportText([Landroid/view/View;)V

    .line 928
    :cond_0
    return-void
.end method

.method public setVuiSceneProps(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;
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
    .local p2, "propsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 1215
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setVuiSceneProps(Ljava/lang/String;Ljava/util/Map;)V

    .line 1217
    :cond_0
    return-void
.end method

.method public setVuiStatfulButtonClick(Landroid/view/View;)V
    .locals 1
    .param p1, "tagView"    # Landroid/view/View;

    .line 905
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setVuiStatefulButtonClick(Landroid/view/View;)V

    .line 908
    :cond_0
    return-void
.end method

.method public subscribe(Ljava/lang/String;)V
    .locals 1
    .param p1, "observer"    # Ljava/lang/String;

    .line 702
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->subscribe(Ljava/lang/String;)V

    .line 705
    :cond_0
    return-void
.end method

.method public subscribeVuiFeature()V
    .locals 1

    .line 712
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->subscribeVuiFeature()V

    .line 715
    :cond_0
    return-void
.end method

.method public unSubscribe()V
    .locals 1

    .line 726
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->unSubscribe()V

    .line 729
    :cond_0
    return-void
.end method

.method public unSubscribeVuiFeature()V
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->unSubscribeVuiFeature()V

    .line 721
    :cond_0
    return-void
.end method

.method public updateDisplayLocation(Ljava/lang/String;I)V
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "displayLocation"    # I

    .line 503
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {p2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->updateDisplayLocation(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    :cond_0
    return-void
.end method

.method public updateElementAttribute(Ljava/lang/String;Landroid/view/View;)V
    .locals 3
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .line 496
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->updateElementAttribute(Ljava/lang/String;Ljava/util/List;)V

    .line 499
    :cond_0
    return-void
.end method

.method public updateElementAttribute(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;
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
    .local p2, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->updateElementAttribute(Ljava/lang/String;Ljava/util/List;)V

    .line 512
    :cond_0
    return-void
.end method

.method public updateRecyclerViewItemView(Ljava/lang/String;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 515
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->updateRecyclerViewItemView(Ljava/lang/String;Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 518
    :cond_0
    return-void
.end method

.method public updateRecyclerViewItemView(Ljava/lang/String;Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p3, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
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
    .local p2, "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->updateRecyclerViewItemView(Ljava/lang/String;Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 524
    :cond_0
    return-void
.end method

.method public updateScene(Ljava/lang/String;Landroid/view/View;)V
    .locals 3
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

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

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->updateScene(Ljava/lang/String;Ljava/util/List;)V

    .line 541
    :cond_1
    :goto_0
    return-void
.end method

.method public updateScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;)V
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p4, "callback"    # Lcom/xiaopeng/vui/commons/IVuiElementListener;
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
    .local p3, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->updateScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;)V

    .line 567
    :cond_0
    return-void
.end method

.method public updateScene(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;
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
    .local p2, "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->updateScene(Ljava/lang/String;Ljava/util/List;)V

    .line 492
    :cond_0
    return-void
.end method

.method public updateScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;)V
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p4, "vuiHandler"    # Lcom/xiaopeng/vui/commons/IVuiElementListener;
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
    .local p2, "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->updateScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;)V

    .line 554
    :cond_0
    return-void
.end method

.method public vuiFeedback(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "vuiResult"    # Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    .line 684
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->vuiFeedback(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V

    .line 687
    :cond_0
    return-void
.end method

.method public vuiFeedback(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Ljava/lang/String;

    .line 690
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->vuiFeedback(Landroid/view/View;Ljava/lang/String;)V

    .line 693
    :cond_0
    return-void
.end method
