.class public abstract Lcom/xiaopeng/xui/vui/VuiViewScene;
.super Ljava/lang/Object;
.source "VuiViewScene.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/IVuiViewScene;
.implements Lcom/xiaopeng/vui/commons/IVuiSceneListener;


# instance fields
.field private customViewIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isUseNewProtocol:Z

.field private mHandler:Landroid/os/Handler;

.field mListener:Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

.field private mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mRootView:Landroid/view/View;

.field private mSceneId:Ljava/lang/String;

.field private mVuiElementListener:Lcom/xiaopeng/vui/commons/IVuiElementListener;

.field private mVuiEngine:Lcom/xiaopeng/vui/commons/IVuiEngine;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiEngine:Lcom/xiaopeng/vui/commons/IVuiEngine;

    .line 24
    const-string v1, ""

    iput-object v1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mSceneId:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiElementListener:Lcom/xiaopeng/vui/commons/IVuiElementListener;

    .line 26
    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->customViewIds:Ljava/util/List;

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mHandler:Landroid/os/Handler;

    .line 30
    new-instance v0, Lcom/xiaopeng/xui/vui/VuiViewScene$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/vui/VuiViewScene$1;-><init>(Lcom/xiaopeng/xui/vui/VuiViewScene;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 159
    new-instance v0, Lcom/xiaopeng/xui/vui/-$$Lambda$VuiViewScene$opFwW47al5q72QJCRazwTlW1jvk;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/vui/-$$Lambda$VuiViewScene$opFwW47al5q72QJCRazwTlW1jvk;-><init>(Lcom/xiaopeng/xui/vui/VuiViewScene;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mListener:Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->isUseNewProtocol:Z

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/vui/VuiViewScene;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiViewScene;

    .line 21
    invoke-direct {p0}, Lcom/xiaopeng/xui/vui/VuiViewScene;->createVuiScene()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/vui/VuiViewScene;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiViewScene;

    .line 21
    invoke-direct {p0}, Lcom/xiaopeng/xui/vui/VuiViewScene;->destroyVuiScene()V

    return-void
.end method

.method private createVuiScene()V
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiEngine:Lcom/xiaopeng/vui/commons/IVuiEngine;

    .line 126
    .local v0, "vuiEngine":Lcom/xiaopeng/vui/commons/IVuiEngine;
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mSceneId:Ljava/lang/String;

    .line 127
    .local v1, "sceneId":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mRootView:Landroid/view/View;

    .line 128
    .local v2, "rootView":Landroid/view/View;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 129
    const-string v3, "createVuiScene"

    invoke-direct {p0, v3}, Lcom/xiaopeng/xui/vui/VuiViewScene;->log(Ljava/lang/String;)V

    .line 131
    :try_start_0
    iget-boolean v3, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->isUseNewProtocol:Z

    if-eqz v3, :cond_0

    .line 132
    iget-object v3, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mListener:Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    invoke-interface {v0, v1, v2, p0, v3}, Lcom/xiaopeng/vui/commons/IVuiEngine;->addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;)V

    goto :goto_0

    .line 134
    :cond_0
    invoke-interface {v0, v1, v2, p0}, Lcom/xiaopeng/vui/commons/IVuiEngine;->addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    goto :goto_1

    .line 136
    :catch_0
    move-exception v3

    .line 137
    .local v3, "e":Ljava/lang/AbstractMethodError;
    invoke-interface {v0, v1, v2, p0}, Lcom/xiaopeng/vui/commons/IVuiEngine;->addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 139
    .end local v3    # "e":Ljava/lang/AbstractMethodError;
    :goto_1
    invoke-interface {v0, v1}, Lcom/xiaopeng/vui/commons/IVuiEngine;->enterScene(Ljava/lang/String;)V

    .line 141
    :cond_1
    return-void
.end method

.method private destroyVuiScene()V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiEngine:Lcom/xiaopeng/vui/commons/IVuiEngine;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mSceneId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 145
    const-string v0, "destroyVuiScene"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/vui/VuiViewScene;->log(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiEngine:Lcom/xiaopeng/vui/commons/IVuiEngine;

    iget-object v2, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mSceneId:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/xiaopeng/vui/commons/IVuiEngine;->exitScene(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiEngine:Lcom/xiaopeng/vui/commons/IVuiEngine;

    iget-object v2, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mSceneId:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/xiaopeng/vui/commons/IVuiEngine;->removeVuiSceneListener(Ljava/lang/String;)V

    .line 148
    iput-object v1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiEngine:Lcom/xiaopeng/vui/commons/IVuiEngine;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiElementListener:Lcom/xiaopeng/vui/commons/IVuiElementListener;

    if-eqz v0, :cond_1

    .line 151
    iput-object v1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiElementListener:Lcom/xiaopeng/vui/commons/IVuiElementListener;

    .line 153
    :cond_1
    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/xiaopeng/xui/vui/VuiViewScene;Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "type"    # Lcom/xiaopeng/vui/commons/VuiUpdateType;

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiEngine:Lcom/xiaopeng/vui/commons/IVuiEngine;

    .line 161
    .local v0, "vuiEngine":Lcom/xiaopeng/vui/commons/IVuiEngine;
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mSceneId:Ljava/lang/String;

    .line 162
    .local v1, "sceneId":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    .line 163
    sget-object v2, Lcom/xiaopeng/vui/commons/VuiUpdateType;->UPDATE_VIEW:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    invoke-virtual {v2, p2}, Lcom/xiaopeng/vui/commons/VuiUpdateType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/vui/commons/IVuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    .line 166
    :cond_0
    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/vui/commons/IVuiEngine;->updateElementAttribute(Ljava/lang/String;Landroid/view/View;)V

    .line 169
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$onBuildScene$0(Lcom/xiaopeng/xui/vui/VuiViewScene;)V
    .locals 5

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiEngine:Lcom/xiaopeng/vui/commons/IVuiEngine;

    .line 91
    .local v0, "vuiEngine":Lcom/xiaopeng/vui/commons/IVuiEngine;
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mSceneId:Ljava/lang/String;

    .line 92
    .local v1, "sceneId":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mRootView:Landroid/view/View;

    .line 94
    .local v2, "rootView":Landroid/view/View;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 95
    const-string v3, "onBuildScene"

    invoke-direct {p0, v3}, Lcom/xiaopeng/xui/vui/VuiViewScene;->log(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/VuiViewScene;->onBuildScenePrepare()V

    .line 97
    iget-object v3, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->customViewIds:Ljava/util/List;

    iget-object v4, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiElementListener:Lcom/xiaopeng/vui/commons/IVuiElementListener;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/xiaopeng/vui/commons/IVuiEngine;->buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;)V

    .line 99
    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 156
    const-string v0, "VuiViewScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mSceneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mSceneId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " hashcode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    return-void
.end method


# virtual methods
.method public initVuiScene(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiEngine;)V
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "vuiEngine"    # Lcom/xiaopeng/vui/commons/IVuiEngine;

    .line 174
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mSceneId:Ljava/lang/String;

    .line 175
    iput-object p2, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiEngine:Lcom/xiaopeng/vui/commons/IVuiEngine;

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->isUseNewProtocol:Z

    .line 177
    return-void
.end method

.method public onBuildScene()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/xui/vui/-$$Lambda$VuiViewScene$bhRg6IeHfpBu4ffKtyCCDOAoC1Q;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/vui/-$$Lambda$VuiViewScene$bhRg6IeHfpBu4ffKtyCCDOAoC1Q;-><init>(Lcom/xiaopeng/xui/vui/VuiViewScene;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 100
    return-void
.end method

.method protected abstract onBuildScenePrepare()V
.end method

.method public onInterceptVuiEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "vuiEvent"    # Lcom/xiaopeng/vui/commons/model/VuiEvent;

    .line 74
    const-string v0, "onInterceptVuiEvent"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/vui/VuiViewScene;->log(Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 76
    return v0

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiElementListener:Lcom/xiaopeng/vui/commons/IVuiElementListener;

    .line 79
    .local v1, "vuiElementListener":Lcom/xiaopeng/vui/commons/IVuiElementListener;
    if-eqz v1, :cond_1

    .line 80
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/vui/commons/IVuiElementListener;->onVuiElementEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z

    move-result v0

    return v0

    .line 82
    :cond_1
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    .line 84
    return v0
.end method

.method public onVuiEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "vuiEvent"    # Lcom/xiaopeng/vui/commons/model/VuiEvent;

    .line 60
    const-string v0, "VuiViewScene onVuiEvent"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/vui/VuiViewScene;->log(Ljava/lang/String;)V

    .line 61
    if-nez p1, :cond_0

    .line 62
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiElementListener:Lcom/xiaopeng/vui/commons/IVuiElementListener;

    .line 65
    .local v0, "vuiElementListener":Lcom/xiaopeng/vui/commons/IVuiElementListener;
    if-eqz v0, :cond_1

    .line 66
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/vui/commons/IVuiElementListener;->onVuiElementEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z

    goto :goto_0

    .line 68
    :cond_1
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    .line 70
    :goto_0
    return-void
.end method

.method public setCustomViewIdList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 121
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->customViewIds:Ljava/util/List;

    .line 122
    return-void
.end method

.method public setVuiElementListener(Lcom/xiaopeng/vui/commons/IVuiElementListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/vui/commons/IVuiElementListener;

    .line 116
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiElementListener:Lcom/xiaopeng/vui/commons/IVuiElementListener;

    .line 117
    return-void
.end method

.method public setVuiEngine(Lcom/xiaopeng/vui/commons/IVuiEngine;)V
    .locals 0
    .param p1, "vuiEngine"    # Lcom/xiaopeng/vui/commons/IVuiEngine;

    .line 111
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiEngine:Lcom/xiaopeng/vui/commons/IVuiEngine;

    .line 112
    return-void
.end method

.method public setVuiSceneId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 106
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mSceneId:Ljava/lang/String;

    .line 107
    return-void
.end method

.method protected setVuiView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    const-string v0, "initVui"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/vui/VuiViewScene;->log(Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isVuiEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 54
    :cond_1
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mRootView:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 56
    return-void
.end method
