.class public abstract Lcom/xiaopeng/xui/vui/VuiViewScene;
.super Ljava/lang/Object;
.source "VuiViewScene.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/IVuiViewScene;
.implements Lcom/xiaopeng/vui/commons/IVuiSceneListener;


# instance fields
.field private VUI_DIALOG_TAG:Ljava/lang/String;

.field private VUI_SYS_DIALOG_TAG:Ljava/lang/String;

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

.field private mVuiSceneListener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiEngine:Lcom/xiaopeng/vui/commons/IVuiEngine;

    .line 25
    const-string v1, ""

    iput-object v1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mSceneId:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiElementListener:Lcom/xiaopeng/vui/commons/IVuiElementListener;

    .line 27
    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->customViewIds:Ljava/util/List;

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mHandler:Landroid/os/Handler;

    .line 31
    const-string v0, "SysDialog"

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->VUI_SYS_DIALOG_TAG:Ljava/lang/String;

    .line 32
    const-string v0, "Dialog"

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->VUI_DIALOG_TAG:Ljava/lang/String;

    .line 33
    new-instance v0, Lcom/xiaopeng/xui/vui/VuiViewScene$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/vui/VuiViewScene$1;-><init>(Lcom/xiaopeng/xui/vui/VuiViewScene;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 166
    new-instance v0, Lcom/xiaopeng/xui/vui/-$$Lambda$VuiViewScene$opFwW47al5q72QJCRazwTlW1jvk;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/vui/-$$Lambda$VuiViewScene$opFwW47al5q72QJCRazwTlW1jvk;-><init>(Lcom/xiaopeng/xui/vui/VuiViewScene;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mListener:Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->isUseNewProtocol:Z

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/vui/VuiViewScene;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiViewScene;

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/xui/vui/VuiViewScene;->createVuiScene()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/vui/VuiViewScene;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiViewScene;

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/xui/vui/VuiViewScene;->destroyVuiScene()V

    return-void
.end method

.method private createVuiScene()V
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiEngine:Lcom/xiaopeng/vui/commons/IVuiEngine;

    .line 130
    .local v0, "vuiEngine":Lcom/xiaopeng/vui/commons/IVuiEngine;
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mSceneId:Ljava/lang/String;

    .line 131
    .local v1, "sceneId":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mRootView:Landroid/view/View;

    .line 132
    .local v2, "rootView":Landroid/view/View;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 133
    const-string v3, "createVuiScene"

    invoke-direct {p0, v3}, Lcom/xiaopeng/xui/vui/VuiViewScene;->log(Ljava/lang/String;)V

    .line 135
    :try_start_0
    iget-boolean v3, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->isUseNewProtocol:Z

    if-eqz v3, :cond_0

    .line 136
    iget-object v3, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mListener:Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    invoke-interface {v0, v1, v2, p0, v3}, Lcom/xiaopeng/vui/commons/IVuiEngine;->addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-interface {v0, v1, v2, p0}, Lcom/xiaopeng/vui/commons/IVuiEngine;->addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    goto :goto_1

    .line 140
    :catch_0
    move-exception v3

    .line 141
    .local v3, "e":Ljava/lang/AbstractMethodError;
    invoke-interface {v0, v1, v2, p0}, Lcom/xiaopeng/vui/commons/IVuiEngine;->addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 143
    .end local v3    # "e":Ljava/lang/AbstractMethodError;
    :goto_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/VuiViewScene;->getVuiDisplayLocation()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/xiaopeng/vui/commons/IVuiEngine;->enterScene(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_1
    return-void
.end method

.method private destroyVuiScene()V
    .locals 4

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiEngine:Lcom/xiaopeng/vui/commons/IVuiEngine;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mSceneId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 149
    const-string v0, "destroyVuiScene"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/vui/VuiViewScene;->log(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiEngine:Lcom/xiaopeng/vui/commons/IVuiEngine;

    iget-object v2, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mSceneId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/VuiViewScene;->getVuiDisplayLocation()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3, p0}, Lcom/xiaopeng/vui/commons/IVuiEngine;->exitScene(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiEngine:Lcom/xiaopeng/vui/commons/IVuiEngine;

    iget-object v2, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mSceneId:Ljava/lang/String;

    invoke-interface {v0, v2, p0}, Lcom/xiaopeng/vui/commons/IVuiEngine;->removeVuiSceneListener(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 152
    iput-object v1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiEngine:Lcom/xiaopeng/vui/commons/IVuiEngine;

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiElementListener:Lcom/xiaopeng/vui/commons/IVuiElementListener;

    if-eqz v0, :cond_1

    .line 155
    iput-object v1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiElementListener:Lcom/xiaopeng/vui/commons/IVuiElementListener;

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiSceneListener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    if-eqz v0, :cond_2

    .line 158
    iput-object v1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiSceneListener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    .line 160
    :cond_2
    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/xiaopeng/xui/vui/VuiViewScene;Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "type"    # Lcom/xiaopeng/vui/commons/VuiUpdateType;

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiEngine:Lcom/xiaopeng/vui/commons/IVuiEngine;

    .line 168
    .local v0, "vuiEngine":Lcom/xiaopeng/vui/commons/IVuiEngine;
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mSceneId:Ljava/lang/String;

    .line 169
    .local v1, "sceneId":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    .line 170
    sget-object v2, Lcom/xiaopeng/vui/commons/VuiUpdateType;->UPDATE_VIEW:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    invoke-virtual {v2, p2}, Lcom/xiaopeng/vui/commons/VuiUpdateType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/vui/commons/IVuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    .line 173
    :cond_0
    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/vui/commons/IVuiEngine;->updateElementAttribute(Ljava/lang/String;Landroid/view/View;)V

    .line 176
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$onBuildScene$0(Lcom/xiaopeng/xui/vui/VuiViewScene;)V
    .locals 11

    .line 93
    iget-object v7, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiEngine:Lcom/xiaopeng/vui/commons/IVuiEngine;

    .line 94
    .local v7, "vuiEngine":Lcom/xiaopeng/vui/commons/IVuiEngine;
    iget-object v8, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mSceneId:Ljava/lang/String;

    .line 95
    .local v8, "sceneId":Ljava/lang/String;
    iget-object v9, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mRootView:Landroid/view/View;

    .line 97
    .local v9, "rootView":Landroid/view/View;
    if-eqz v7, :cond_0

    if-eqz v8, :cond_0

    if-eqz v9, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/VuiViewScene;->getVuiDisplayLocation()I

    move-result v10

    .line 99
    .local v10, "displayLocation":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBuildScene:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/vui/VuiViewScene;->log(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/VuiViewScene;->onBuildScenePrepare()V

    .line 101
    iget-object v3, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->customViewIds:Ljava/util/List;

    iget-object v4, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiElementListener:Lcom/xiaopeng/vui/commons/IVuiElementListener;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v7

    move-object v1, v8

    move-object v2, v9

    move-object v6, p0

    invoke-interface/range {v0 .. v6}, Lcom/xiaopeng/vui/commons/IVuiEngine;->buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 103
    .end local v10    # "displayLocation":I
    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 163
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

    .line 164
    return-void
.end method


# virtual methods
.method public initVuiDialogScene(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiEngine;Lcom/xiaopeng/vui/commons/IVuiSceneListener;I)V
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "vuiEngine"    # Lcom/xiaopeng/vui/commons/IVuiEngine;
    .param p3, "listener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    .param p4, "type"    # I

    .line 196
    const/16 v0, 0x7d8

    if-ne v0, p4, :cond_0

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->VUI_SYS_DIALOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->VUI_SYS_DIALOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->VUI_DIALOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->VUI_DIALOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 205
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mSceneId:Ljava/lang/String;

    .line 206
    iput-object p2, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiEngine:Lcom/xiaopeng/vui/commons/IVuiEngine;

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->isUseNewProtocol:Z

    .line 208
    iput-object p3, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiSceneListener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    .line 209
    return-void
.end method

.method public initVuiScene(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiEngine;)V
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "vuiEngine"    # Lcom/xiaopeng/vui/commons/IVuiEngine;

    .line 181
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mSceneId:Ljava/lang/String;

    .line 182
    iput-object p2, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiEngine:Lcom/xiaopeng/vui/commons/IVuiEngine;

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->isUseNewProtocol:Z

    .line 184
    return-void
.end method

.method public initVuiScene(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiEngine;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "vuiEngine"    # Lcom/xiaopeng/vui/commons/IVuiEngine;
    .param p3, "listener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    .line 188
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mSceneId:Ljava/lang/String;

    .line 189
    iput-object p2, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiEngine:Lcom/xiaopeng/vui/commons/IVuiEngine;

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->isUseNewProtocol:Z

    .line 191
    iput-object p3, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiSceneListener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    .line 192
    return-void
.end method

.method public onBuildScene()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/xui/vui/-$$Lambda$VuiViewScene$bhRg6IeHfpBu4ffKtyCCDOAoC1Q;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/vui/-$$Lambda$VuiViewScene$bhRg6IeHfpBu4ffKtyCCDOAoC1Q;-><init>(Lcom/xiaopeng/xui/vui/VuiViewScene;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    return-void
.end method

.method protected abstract onBuildScenePrepare()V
.end method

.method public onInterceptVuiEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "vuiEvent"    # Lcom/xiaopeng/vui/commons/model/VuiEvent;

    .line 77
    const-string v0, "onInterceptVuiEvent"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/vui/VuiViewScene;->log(Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 79
    return v0

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiElementListener:Lcom/xiaopeng/vui/commons/IVuiElementListener;

    .line 82
    .local v1, "vuiElementListener":Lcom/xiaopeng/vui/commons/IVuiElementListener;
    if-eqz v1, :cond_1

    .line 83
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/vui/commons/IVuiElementListener;->onVuiElementEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z

    move-result v0

    return v0

    .line 85
    :cond_1
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    .line 87
    return v0
.end method

.method public onVuiEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "vuiEvent"    # Lcom/xiaopeng/vui/commons/model/VuiEvent;

    .line 63
    const-string v0, "VuiViewScene onVuiEvent"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/vui/VuiViewScene;->log(Ljava/lang/String;)V

    .line 64
    if-nez p1, :cond_0

    .line 65
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiElementListener:Lcom/xiaopeng/vui/commons/IVuiElementListener;

    .line 68
    .local v0, "vuiElementListener":Lcom/xiaopeng/vui/commons/IVuiElementListener;
    if-eqz v0, :cond_1

    .line 69
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/vui/commons/IVuiElementListener;->onVuiElementEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z

    goto :goto_0

    .line 71
    :cond_1
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    .line 73
    :goto_0
    return-void
.end method

.method public onVuiStateChanged()V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiSceneListener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiSceneListener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    invoke-interface {v0}, Lcom/xiaopeng/vui/commons/IVuiSceneListener;->onVuiStateChanged()V

    .line 216
    :cond_0
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

    .line 125
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->customViewIds:Ljava/util/List;

    .line 126
    return-void
.end method

.method public setVuiElementListener(Lcom/xiaopeng/vui/commons/IVuiElementListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/vui/commons/IVuiElementListener;

    .line 120
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiElementListener:Lcom/xiaopeng/vui/commons/IVuiElementListener;

    .line 121
    return-void
.end method

.method public setVuiEngine(Lcom/xiaopeng/vui/commons/IVuiEngine;)V
    .locals 0
    .param p1, "vuiEngine"    # Lcom/xiaopeng/vui/commons/IVuiEngine;

    .line 115
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiEngine:Lcom/xiaopeng/vui/commons/IVuiEngine;

    .line 116
    return-void
.end method

.method public setVuiSceneId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 110
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mSceneId:Ljava/lang/String;

    .line 111
    return-void
.end method

.method protected setVuiView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 50
    const-string v0, "initVui"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/vui/VuiViewScene;->log(Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isVuiEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 57
    :cond_1
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mRootView:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 59
    return-void
.end method
