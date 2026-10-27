.class public Lcom/xiaopeng/xui/app/XPopPanel;
.super Ljava/lang/Object;
.source "XPopPanel.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/IVuiViewScene;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;,
        Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;,
        Lcom/xiaopeng/xui/app/XPopPanel$TN;,
        Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XPopPanel"

.field private static final VUI_SCENE_TAG:Ljava/lang/String; = "PopPanel"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPopPanelView:Lcom/xiaopeng/xui/widget/popPanelView/XPopPanelView;

.field private mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XPopPanel$TN;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tn"    # Lcom/xiaopeng/xui/app/XPopPanel$TN;
    .param p3, "view"    # Landroid/view/View;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    .line 69
    if-eqz p3, :cond_0

    .line 70
    new-instance v0, Lcom/xiaopeng/xui/widget/popPanelView/XPopPanelView;

    invoke-direct {v0, p3}, Lcom/xiaopeng/xui/widget/popPanelView/XPopPanelView;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mPopPanelView:Lcom/xiaopeng/xui/widget/popPanelView/XPopPanelView;

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mPopPanelView:Lcom/xiaopeng/xui/widget/popPanelView/XPopPanelView;

    new-instance v1, Lcom/xiaopeng/xui/app/XPopPanel$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/app/XPopPanel$1;-><init>(Lcom/xiaopeng/xui/app/XPopPanel;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/popPanelView/XPopPanelView;->setPopPanelViewInterface(Lcom/xiaopeng/xui/widget/popPanelView/XPopPanelView$IPopPanelViewInterface;)V

    .line 84
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XPopPanel$TN;Landroid/view/View;Lcom/xiaopeng/xui/app/XPopPanel$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/xiaopeng/xui/app/XPopPanel$TN;
    .param p3, "x2"    # Landroid/view/View;
    .param p4, "x3"    # Lcom/xiaopeng/xui/app/XPopPanel$1;

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/app/XPopPanel;-><init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XPopPanel$TN;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/xui/app/XPopPanel;)Lcom/xiaopeng/xui/app/XPopPanel$TN;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/app/XPopPanel;

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 87
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Lcom/xiaopeng/xui/app/XPopPanel$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/XPopPanel$2;-><init>(Lcom/xiaopeng/xui/app/XPopPanel;)V

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 114
    :cond_0
    return-void
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->getRootView()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 136
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScreenId()I
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$200(Lcom/xiaopeng/xui/app/XPopPanel$TN;)I

    move-result v0

    return v0

    .line 129
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getWidth()V
    .locals 6

    .line 97
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->newBuilder()Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;

    move-result-object v0

    const-string v1, "immersion"

    .line 98
    invoke-virtual {v0, v1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->setAreaType(Ljava/lang/String;)Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;

    move-result-object v0

    .line 99
    .local v0, "builder":Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->build()Landroid/os/Bundle;

    move-result-object v2

    const/16 v3, 0x32

    invoke-virtual {v1, v3, v2}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getWindowBounds(ILandroid/os/Bundle;)Landroid/graphics/Rect;

    move-result-object v1

    .line 100
    .local v1, "bounds":Landroid/graphics/Rect;
    const-string v2, "XPopPanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWidth log:  width : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bottom : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " height : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " physicalBounds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-static {}, Lcom/xiaopeng/screen/ScreenManagerFactory;->get()Lcom/xiaopeng/screen/ScreenManagerFactory;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/xiaopeng/screen/ScreenManagerFactory;->getScreenConfiguration(I)Lcom/xiaopeng/screen/ScreenItemConfiguration;

    move-result-object v4

    iget-object v4, v4, Lcom/xiaopeng/screen/ScreenItemConfiguration;->physicalBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void
.end method

.method public handleUserEvent()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$600(Lcom/xiaopeng/xui/app/XPopPanel$TN;)V

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->reHidePanel()V

    .line 156
    :cond_0
    return-void
.end method

.method public initVuiScene(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiEngine;)V
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "vuiEngine"    # Lcom/xiaopeng/vui/commons/IVuiEngine;

    .line 1080
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/xui/app/XPopPanel;->initVuiScene(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiEngine;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 1081
    return-void
.end method

.method public initVuiScene(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiEngine;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "vuiEngine"    # Lcom/xiaopeng/vui/commons/IVuiEngine;
    .param p3, "listener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    .line 1085
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mPopPanelView:Lcom/xiaopeng/xui/widget/popPanelView/XPopPanelView;

    if-eqz v0, :cond_1

    .line 1086
    const-string v0, "PopPanel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1087
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PopPanel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1089
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mPopPanelView:Lcom/xiaopeng/xui/widget/popPanelView/XPopPanelView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/popPanelView/XPopPanelView;->initVuiScene(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiEngine;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 1091
    :cond_1
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->getWindowState()Z

    move-result v0

    return v0

    .line 120
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public moveToPosition(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "needToggle"    # Z

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->moveToPosition(IZ)V

    .line 170
    :cond_0
    return-void
.end method

.method public removeItemView()V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->removeItemView()V

    .line 176
    :cond_0
    return-void
.end method

.method public setItemView(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    if-eqz v0, :cond_0

    .line 160
    if-eqz p1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->resetItemView(Landroid/view/View;)V

    .line 164
    :cond_0
    return-void
.end method

.method public setOnStateListener(Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$500(Lcom/xiaopeng/xui/app/XPopPanel$TN;Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;)V

    .line 149
    :cond_0
    return-void
.end method

.method public setPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->setPosition(I)V

    .line 143
    :cond_0
    return-void
.end method

.method public show()V
    .locals 5
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->getWindowState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/osd/PoppanelManager;->get()Lcom/xiaopeng/xuimanager/systemui/osd/PoppanelManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v2}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$000(Lcom/xiaopeng/xui/app/XPopPanel$TN;)I

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v3}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$100(Lcom/xiaopeng/xui/app/XPopPanel$TN;)I

    move-result v3

    iget-object v4, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v4}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$200(Lcom/xiaopeng/xui/app/XPopPanel$TN;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaopeng/xuimanager/systemui/osd/PoppanelManager;->requestShow(Lcom/xiaopeng/xuimanager/systemui/osd/IPopPanelListener;III)Z

    .line 94
    :cond_0
    return-void
.end method
