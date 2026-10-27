.class public Lcom/xiaopeng/speech/vui/observer/XpVuiElementChangedObserver;
.super Ljava/lang/Object;
.source "XpVuiElementChangedObserver.java"

# interfaces
.implements Lcom/xiaopeng/speech/vui/listener/IXpVuiElementChanged;


# instance fields
.field private mListener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/observer/XpVuiElementChangedObserver;->mListener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/observer/XpVuiElementChangedObserver;->mListener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/observer/XpVuiElementChangedObserver;->mListener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    .line 26
    return-void
.end method

.method private onVuiElementChanged(Ljava/lang/String;Landroid/view/View;Ljava/util/List;[Ljava/lang/String;I)V
    .locals 4
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p4, "vuiLabels"    # [Ljava/lang/String;
    .param p5, "curState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;[",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 47
    .local p3, "elementList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    const-string v0, "XpVuiElementChangedObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVuiElementChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",elementList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/observer/XpVuiElementChangedObserver;->mListener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/observer/XpVuiElementChangedObserver;->mListener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 51
    :cond_0
    if-eqz p2, :cond_7

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/speech/XpSpeechEngine;->getVuiElement(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v0

    .line 53
    .local v0, "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    if-eqz v0, :cond_6

    .line 54
    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->RADIOBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->CHECKBOX:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 55
    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 57
    :cond_1
    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->RECYCLEVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    invoke-static {v0, p2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->addScrollProps(Lcom/xiaopeng/vui/commons/model/VuiElement;Landroid/view/View;)V

    .line 59
    invoke-virtual {v0, p3}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setElements(Ljava/util/List;)V

    goto :goto_1

    .line 60
    :cond_2
    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->STATEFULBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 61
    invoke-static {p5, p4, v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonValues(I[Ljava/lang/String;Lcom/xiaopeng/vui/commons/model/VuiElement;)V

    goto :goto_1

    .line 56
    :cond_3
    :goto_0
    invoke-static {p2, v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setValueAttribute(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiElement;)V

    .line 63
    :cond_4
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setVisible(Ljava/lang/Boolean;)V

    .line 64
    invoke-static {p1, v0}, Lcom/xiaopeng/speech/XpSpeechEngine;->setUpdateElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/model/VuiElement;)V

    goto :goto_3

    .line 66
    :cond_6
    invoke-static {p1, p3}, Lcom/xiaopeng/speech/XpSpeechEngine;->setBuildElement(Ljava/lang/String;Ljava/util/List;)V

    .line 68
    .end local v0    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    :goto_3
    goto :goto_4

    .line 69
    :cond_7
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v0

    .line 70
    .local v0, "cache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    if-eqz v0, :cond_9

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mSceneIdPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 72
    .local v1, "cacheList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 73
    invoke-static {p1, p3}, Lcom/xiaopeng/speech/XpSpeechEngine;->setUpdateElement(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_4

    .line 75
    :cond_8
    const-string v2, "XpVuiElementChangedObserver"

    const-string v3, "cacheList is empty"

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {p1, p3}, Lcom/xiaopeng/speech/XpSpeechEngine;->setBuildElement(Ljava/lang/String;Ljava/util/List;)V

    .line 81
    .end local v0    # "cache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .end local v1    # "cacheList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :cond_9
    :goto_4
    return-void
.end method


# virtual methods
.method public onVuiElementChanged(Ljava/lang/String;Landroid/view/View;)V
    .locals 6
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .line 33
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/observer/XpVuiElementChangedObserver;->onVuiElementChanged(Ljava/lang/String;Landroid/view/View;Ljava/util/List;[Ljava/lang/String;I)V

    .line 34
    return-void
.end method

.method public onVuiElementChanged(Ljava/lang/String;Landroid/view/View;Ljava/util/List;)V
    .locals 6
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;)V"
        }
    .end annotation

    .line 43
    .local p3, "elementList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/observer/XpVuiElementChangedObserver;->onVuiElementChanged(Ljava/lang/String;Landroid/view/View;Ljava/util/List;[Ljava/lang/String;I)V

    .line 44
    return-void
.end method

.method public onVuiElementChanged(Ljava/lang/String;Landroid/view/View;[Ljava/lang/String;I)V
    .locals 6
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "vuiLabels"    # [Ljava/lang/String;
    .param p4, "curState"    # I

    .line 38
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/observer/XpVuiElementChangedObserver;->onVuiElementChanged(Ljava/lang/String;Landroid/view/View;Ljava/util/List;[Ljava/lang/String;I)V

    .line 39
    return-void
.end method
