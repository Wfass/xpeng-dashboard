.class public abstract Lcom/xiaopeng/xui/vui/VuiViewScene;
.super Ljava/lang/Object;
.source "VuiViewScene.java"

# interfaces
.implements Lbxv;
.implements Lcom/xiaopeng/xui/vui/IVuiViewScene;


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

.field mListener:Lbxs;

.field private mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mRootView:Landroid/view/View;

.field private mSceneId:Ljava/lang/String;

.field private mVuiElementListener:Lbxt;

.field private mVuiEngine:Lbxu;

.field private mVuiSceneListener:Lbxv;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiEngine:Lbxu;

    const-string v1, ""

    .line 25
    iput-object v1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mSceneId:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiElementListener:Lbxt;

    .line 27
    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->customViewIds:Ljava/util/List;

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mHandler:Landroid/os/Handler;

    const-string v0, "SysDialog"

    .line 31
    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->VUI_SYS_DIALOG_TAG:Ljava/lang/String;

    const-string v0, "Dialog"

    .line 32
    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->VUI_DIALOG_TAG:Ljava/lang/String;

    .line 33
    new-instance v0, Lcom/xiaopeng/xui/vui/VuiViewScene$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/vui/VuiViewScene$1;-><init>(Lcom/xiaopeng/xui/vui/VuiViewScene;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 166
    new-instance v0, Lcom/xiaopeng/xui/vui/-$$Lambda$VuiViewScene$Wki3--I0AO1fwBEd_GrevcnUF_8;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/vui/-$$Lambda$VuiViewScene$Wki3--I0AO1fwBEd_GrevcnUF_8;-><init>(Lcom/xiaopeng/xui/vui/VuiViewScene;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mListener:Lbxs;

    const/4 v0, 0x0

    .line 178
    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->isUseNewProtocol:Z

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/vui/VuiViewScene;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/xui/vui/VuiViewScene;->createVuiScene()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/vui/VuiViewScene;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/xui/vui/VuiViewScene;->destroyVuiScene()V

    return-void
.end method

.method private createVuiScene()V
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiEngine:Lbxu;

    .line 130
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mSceneId:Ljava/lang/String;

    .line 131
    iget-object v2, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    const-string v3, "createVuiScene"

    .line 133
    invoke-direct {p0, v3}, Lcom/xiaopeng/xui/vui/VuiViewScene;->log(Ljava/lang/String;)V

    .line 135
    :try_start_0
    iget-boolean v3, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->isUseNewProtocol:Z

    if-eqz v3, :cond_0

    .line 136
    iget-object v3, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mListener:Lbxs;

    invoke-interface {v0, v1, v2, p0, v3}, Lbxu;->addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lbxv;Lbxs;)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-interface {v0, v1, v2, p0}, Lbxu;->addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lbxv;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    invoke-interface {v0, v1, v2, p0}, Lbxu;->addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lbxv;)V

    .line 143
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/VuiViewScene;->getVuiDisplayLocation()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lbxu;->enterScene(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private destroyVuiScene()V
    .locals 4

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiEngine:Lbxu;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mSceneId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "destroyVuiScene"

    .line 149
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/vui/VuiViewScene;->log(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiEngine:Lbxu;

    iget-object v2, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mSceneId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/VuiViewScene;->getVuiDisplayLocation()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3, p0}, Lbxu;->exitScene(Ljava/lang/String;Ljava/lang/String;Lbxv;)V

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiEngine:Lbxu;

    iget-object v2, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mSceneId:Ljava/lang/String;

    invoke-interface {v0, v2, p0}, Lbxu;->removeVuiSceneListener(Ljava/lang/String;Lbxv;)V

    .line 152
    iput-object v1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiEngine:Lbxu;

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiElementListener:Lbxt;

    if-eqz v0, :cond_1

    .line 155
    iput-object v1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiElementListener:Lbxt;

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiSceneListener:Lbxv;

    if-eqz v0, :cond_2

    .line 158
    iput-object v1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiSceneListener:Lbxv;

    :cond_2
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 2

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSceneId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mSceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " hashcode "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " name "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VuiViewScene"

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public initVuiDialogScene(Ljava/lang/String;Lbxu;Lbxv;I)V
    .locals 1

    const/16 v0, 0x7d8

    if-ne v0, p4, :cond_0

    .line 197
    iget-object p4, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->VUI_SYS_DIALOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_1

    .line 198
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->VUI_SYS_DIALOG_TAG:Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 201
    :cond_0
    iget-object p4, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->VUI_DIALOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_1

    .line 202
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->VUI_DIALOG_TAG:Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 205
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mSceneId:Ljava/lang/String;

    .line 206
    iput-object p2, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiEngine:Lbxu;

    const/4 p1, 0x1

    .line 207
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->isUseNewProtocol:Z

    .line 208
    iput-object p3, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiSceneListener:Lbxv;

    return-void
.end method

.method public initVuiScene(Ljava/lang/String;Lbxu;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mSceneId:Ljava/lang/String;

    .line 182
    iput-object p2, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiEngine:Lbxu;

    const/4 p1, 0x1

    .line 183
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->isUseNewProtocol:Z

    return-void
.end method

.method public initVuiScene(Ljava/lang/String;Lbxu;Lbxv;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mSceneId:Ljava/lang/String;

    .line 189
    iput-object p2, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiEngine:Lbxu;

    const/4 p1, 0x1

    .line 190
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->isUseNewProtocol:Z

    .line 191
    iput-object p3, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiSceneListener:Lbxv;

    return-void
.end method

.method public synthetic lambda$new$1$VuiViewScene(Landroid/view/View;Lbyc;)V
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiEngine:Lbxu;

    .line 168
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mSceneId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 169
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    .line 170
    sget-object v2, Lbyc;->UPDATE_VIEW:Lbyc;

    invoke-virtual {v2, p2}, Lbyc;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 171
    invoke-interface {v0, v1, p1}, Lbxu;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    .line 173
    :cond_0
    invoke-interface {v0, v1, p1}, Lbxu;->updateElementAttribute(Ljava/lang/String;Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$onBuildScene$0$VuiViewScene()V
    .locals 7

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiEngine:Lbxu;

    .line 94
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mSceneId:Ljava/lang/String;

    .line 95
    iget-object v2, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/VuiViewScene;->getVuiDisplayLocation()I

    move-result v3

    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onBuildScene:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/xiaopeng/xui/vui/VuiViewScene;->log(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/VuiViewScene;->onBuildScenePrepare()V

    .line 101
    iget-object v4, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->customViewIds:Ljava/util/List;

    iget-object v5, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiElementListener:Lbxt;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, p0

    invoke-interface/range {v0 .. v6}, Lbxu;->buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lbxt;Ljava/lang/String;Lbxv;)V

    :cond_0
    return-void
.end method

.method public onBuildScene()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/xui/vui/-$$Lambda$VuiViewScene$bhRg6IeHfpBu4ffKtyCCDOAoC1Q;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/vui/-$$Lambda$VuiViewScene$bhRg6IeHfpBu4ffKtyCCDOAoC1Q;-><init>(Lcom/xiaopeng/xui/vui/VuiViewScene;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected abstract onBuildScenePrepare()V
.end method

.method public onInterceptVuiEvent(Landroid/view/View;Lbyf;)Z
    .locals 2

    const-string v0, "onInterceptVuiEvent"

    .line 77
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/vui/VuiViewScene;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiElementListener:Lbxt;

    if-eqz v1, :cond_1

    .line 83
    invoke-interface {v1, p1, p2}, Lbxt;->onVuiElementEvent(Landroid/view/View;Lbyf;)Z

    move-result p1

    return p1

    .line 85
    :cond_1
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    return v0
.end method

.method public onVuiEvent(Landroid/view/View;Lbyf;)V
    .locals 1

    const-string v0, "VuiViewScene onVuiEvent"

    .line 63
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/vui/VuiViewScene;->log(Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiElementListener:Lbxt;

    if-eqz v0, :cond_1

    .line 69
    invoke-interface {v0, p1, p2}, Lbxt;->onVuiElementEvent(Landroid/view/View;Lbyf;)Z

    goto :goto_0

    .line 71
    :cond_1
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public onVuiStateChanged()V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiSceneListener:Lbxv;

    if-eqz v0, :cond_0

    .line 214
    invoke-interface {v0}, Lbxv;->onVuiStateChanged()V

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
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->customViewIds:Ljava/util/List;

    return-void
.end method

.method public setVuiElementListener(Lbxt;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiElementListener:Lbxt;

    return-void
.end method

.method public setVuiEngine(Lbxu;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mVuiEngine:Lbxu;

    return-void
.end method

.method public setVuiSceneId(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mSceneId:Ljava/lang/String;

    return-void
.end method

.method protected setVuiView(Landroid/view/View;)V
    .locals 2

    const-string v0, "initVui"

    .line 50
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/vui/VuiViewScene;->log(Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isVuiEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 55
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 57
    :cond_1
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mRootView:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiViewScene;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method
