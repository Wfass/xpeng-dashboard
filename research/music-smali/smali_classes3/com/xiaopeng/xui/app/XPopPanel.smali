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
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    if-eqz p3, :cond_0

    .line 70
    new-instance p1, Lcom/xiaopeng/xui/widget/popPanelView/XPopPanelView;

    invoke-direct {p1, p3}, Lcom/xiaopeng/xui/widget/popPanelView/XPopPanelView;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mPopPanelView:Lcom/xiaopeng/xui/widget/popPanelView/XPopPanelView;

    .line 71
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mPopPanelView:Lcom/xiaopeng/xui/widget/popPanelView/XPopPanelView;

    new-instance p2, Lcom/xiaopeng/xui/app/XPopPanel$1;

    invoke-direct {p2, p0}, Lcom/xiaopeng/xui/app/XPopPanel$1;-><init>(Lcom/xiaopeng/xui/app/XPopPanel;)V

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/popPanelView/XPopPanelView;->setPopPanelViewInterface(Lcom/xiaopeng/xui/widget/popPanelView/XPopPanelView$IPopPanelViewInterface;)V

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XPopPanel$TN;Landroid/view/View;Lcom/xiaopeng/xui/app/XPopPanel$1;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/app/XPopPanel;-><init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XPopPanel$TN;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xui/app/XPopPanel;)Lcom/xiaopeng/xui/app/XPopPanel$TN;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    if-eqz v0, :cond_1

    .line 107
    invoke-static {}, Lcom/xiaopeng/xui/utils/ThreadUtils;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    const/16 v1, 0x66

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$300(Lcom/xiaopeng/xui/app/XPopPanel$TN;I)V

    goto :goto_0

    .line 110
    :cond_0
    new-instance v0, Lcom/xiaopeng/xui/app/XPopPanel$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/XPopPanel$2;-><init>(Lcom/xiaopeng/xui/app/XPopPanel;)V

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->getRootView()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScreenId()I
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    if-eqz v0, :cond_0

    .line 131
    invoke-static {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$200(Lcom/xiaopeng/xui/app/XPopPanel$TN;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getWidth()V
    .locals 3

    .line 97
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->newBuilder()Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;

    move-result-object v0

    const-string v1, "immersion"

    .line 98
    invoke-virtual {v0, v1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->setAreaType(Ljava/lang/String;)Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;

    move-result-object v0

    .line 99
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->build()Landroid/os/Bundle;

    move-result-object v0

    const/16 v2, 0x32

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getWindowBounds(ILandroid/os/Bundle;)Landroid/graphics/Rect;

    move-result-object v0

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWidth log:  width : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bottom : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " physicalBounds: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-static {}, Lcom/xiaopeng/screen/ScreenManagerFactory;->get()Lcom/xiaopeng/screen/ScreenManagerFactory;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/xiaopeng/screen/ScreenManagerFactory;->getScreenConfiguration(I)Lcom/xiaopeng/screen/ScreenItemConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaopeng/screen/ScreenItemConfiguration;->physicalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XPopPanel"

    .line 100
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public handleUserEvent()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    if-eqz v0, :cond_0

    .line 157
    invoke-static {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$600(Lcom/xiaopeng/xui/app/XPopPanel$TN;)V

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->reHidePanel()V

    :cond_0
    return-void
.end method

.method public initVuiScene(Ljava/lang/String;Lbxu;)V
    .locals 1

    const/4 v0, 0x0

    .line 1085
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/xui/app/XPopPanel;->initVuiScene(Ljava/lang/String;Lbxu;Lbxv;)V

    return-void
.end method

.method public initVuiScene(Ljava/lang/String;Lbxu;Lbxv;)V
    .locals 2

    .line 1090
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mPopPanelView:Lcom/xiaopeng/xui/widget/popPanelView/XPopPanelView;

    if-eqz v0, :cond_1

    const-string v0, "PopPanel"

    .line 1091
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1092
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1094
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mPopPanelView:Lcom/xiaopeng/xui/widget/popPanelView/XPopPanelView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/popPanelView/XPopPanelView;->initVuiScene(Ljava/lang/String;Lbxu;Lbxv;)V

    :cond_1
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->getWindowState()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public moveToPosition(IZ)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->moveToPosition(IZ)V

    :cond_0
    return-void
.end method

.method public removeItemView()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->removeItemView()V

    :cond_0
    return-void
.end method

.method public setItemView(Landroid/view/View;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 165
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->resetItemView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setOnStateListener(Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    if-eqz v0, :cond_0

    .line 151
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$500(Lcom/xiaopeng/xui/app/XPopPanel$TN;Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;)V

    :cond_0
    return-void
.end method

.method public setPosition(I)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->setPosition(I)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 5

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->getWindowState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/osd/PoppanelManager;->get()Lcom/xiaopeng/xuimanager/systemui/osd/PoppanelManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v1}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$000(Lcom/xiaopeng/xui/app/XPopPanel$TN;)I

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v3}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$100(Lcom/xiaopeng/xui/app/XPopPanel$TN;)I

    move-result v3

    iget-object v4, p0, Lcom/xiaopeng/xui/app/XPopPanel;->mTN:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v4}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$200(Lcom/xiaopeng/xui/app/XPopPanel$TN;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaopeng/xuimanager/systemui/osd/PoppanelManager;->requestShow(Lcom/xiaopeng/xuimanager/systemui/osd/IPopPanelListener;III)Z

    :cond_0
    return-void
.end method
