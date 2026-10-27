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

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/observer/XpVuiElementChangedObserver;->mListener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/observer/XpVuiElementChangedObserver;->mListener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/observer/XpVuiElementChangedObserver;->mListener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    return-void
.end method

.method private onVuiElementChanged(Ljava/lang/String;Landroid/view/View;Ljava/util/List;[Ljava/lang/String;I)V
    .locals 4
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
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVuiElementChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",elementList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XpVuiElementChangedObserver"

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/observer/XpVuiElementChangedObserver;->mListener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    const-string v2, "-"

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/observer/XpVuiElementChangedObserver;->mListener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-eqz p2, :cond_7

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/speech/XpSpeechEngine;->getVuiElement(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v0

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
    sget-object p3, Lcom/xiaopeng/vui/commons/VuiElementType;->STATEFULBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {p3}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

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

    move-result p2

    if-nez p2, :cond_5

    const/4 p2, 0x0

    goto :goto_2

    :cond_5
    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    :goto_2
    invoke-virtual {v0, p2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setVisible(Ljava/lang/Boolean;)V

    .line 64
    invoke-static {p1, v0}, Lcom/xiaopeng/speech/XpSpeechEngine;->setUpdateElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/model/VuiElement;)V

    goto :goto_3

    .line 66
    :cond_6
    invoke-static {p1, p3}, Lcom/xiaopeng/speech/XpSpeechEngine;->setBuildElement(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_3

    .line 69
    :cond_7
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object p2

    sget-object p4, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {p4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result p4

    invoke-virtual {p2, p4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 71
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p5, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mSceneIdPrefix:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 72
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    .line 73
    invoke-static {p1, p3}, Lcom/xiaopeng/speech/XpSpeechEngine;->setUpdateElement(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_3

    :cond_8
    const-string p2, "cacheList is empty"

    .line 75
    invoke-static {v1, p2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {p1, p3}, Lcom/xiaopeng/speech/XpSpeechEngine;->setBuildElement(Ljava/lang/String;Ljava/util/List;)V

    :cond_9
    :goto_3
    return-void
.end method


# virtual methods
.method public onVuiElementChanged(Ljava/lang/String;Landroid/view/View;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 33
    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/observer/XpVuiElementChangedObserver;->onVuiElementChanged(Ljava/lang/String;Landroid/view/View;Ljava/util/List;[Ljava/lang/String;I)V

    return-void
.end method

.method public onVuiElementChanged(Ljava/lang/String;Landroid/view/View;Ljava/util/List;)V
    .locals 6
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

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 43
    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/observer/XpVuiElementChangedObserver;->onVuiElementChanged(Ljava/lang/String;Landroid/view/View;Ljava/util/List;[Ljava/lang/String;I)V

    return-void
.end method

.method public onVuiElementChanged(Ljava/lang/String;Landroid/view/View;[Ljava/lang/String;I)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    .line 38
    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/observer/XpVuiElementChangedObserver;->onVuiElementChanged(Ljava/lang/String;Landroid/view/View;Ljava/util/List;[Ljava/lang/String;I)V

    return-void
.end method
