.class public Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog;
.super Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;
.source "XPilotVideoDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static createLccVideoDialog()Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog;
    .locals 3

    .line 30
    new-instance v0, Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$Builder;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$1;)V

    const-string v1, "/system/etc/lcc.mp4"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$Builder;->videoPath(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$Builder;

    move-result-object v0

    .line 31
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->laa_feature_title:I

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/App;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$Builder;->title(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$Builder;

    move-result-object v0

    .line 32
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->lane_center_video_tips:I

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/App;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$Builder;->tips(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 33
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$Builder;->forceWatch(Z)Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$Builder;

    move-result-object v0

    .line 34
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$Builder;->hasNegative(Z)Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$Builder;

    move-result-object v0

    .line 35
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$Builder;->build(Landroid/content/Context;)Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog;

    move-result-object v0

    return-object v0
.end method

.method public static createMemParkVideoDialog()Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog;
    .locals 3

    .line 44
    new-instance v0, Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$Builder;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$1;)V

    const-string v1, "/system/etc/lcc.mp4"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$Builder;->videoPath(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$Builder;

    move-result-object v0

    .line 45
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->mem_park_feature_title:I

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/App;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$Builder;->title(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$Builder;

    move-result-object v0

    .line 46
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->mem_park_video_dialog_tips:I

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/App;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$Builder;->tips(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 47
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$Builder;->forceWatch(Z)Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$Builder;

    move-result-object v0

    .line 48
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$Builder;->hasNegative(Z)Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$Builder;

    move-result-object v0

    .line 49
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$Builder;->build(Landroid/content/Context;)Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bindView(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 60
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$id;->tv_lane_center_video_tips:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog;->mTvTips:Lcom/xiaopeng/xui/widget/XTextView;

    .line 61
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$id;->tv_video:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog;->mTextureView:Landroid/view/SurfaceView;

    .line 62
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$id;->iv_play:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog;->mIvPlayer:Landroid/widget/ImageView;

    .line 63
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$id;->iv_video_cover:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog;->mIvCover:Landroid/widget/ImageView;

    return-void
.end method

.method protected enableVui()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    .line 68
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$layout;->layout_xpilot_video_dialog:I

    return v0
.end method

.method protected initViews()V
    .locals 2

    .line 54
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->initViews()V

    .line 55
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$XPilotVideoDialog$mEvmAU5cYC42amB443CkXlu4xjo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$XPilotVideoDialog$mEvmAU5cYC42amB443CkXlu4xjo;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public synthetic lambda$initViews$0$XPilotVideoDialog(Landroid/content/DialogInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog;->release()V

    return-void
.end method
