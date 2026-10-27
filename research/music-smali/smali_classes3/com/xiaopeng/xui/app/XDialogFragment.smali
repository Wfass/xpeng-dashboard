.class public abstract Lcom/xiaopeng/xui/app/XDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "XDialogFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "XDialogFragment"


# instance fields
.field protected mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getTheme()I
    .locals 1

    .line 55
    sget v0, Lbyg$m;->XAppTheme_XDialog:I

    return v0
.end method

.method protected isFullScreen()Z
    .locals 1

    .line 48
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isDialogFullScreen()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$onCreateView$0$XDialogFragment(Lcom/xiaopeng/xui/widget/dialogview/XDialogView;)V
    .locals 0

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XDialogFragment;->dismiss()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 60
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 61
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lbyg$g;->x_bg_dialog:I

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/xui/theme/XThemeManager;->setWindowBackgroundResource(Landroid/content/res/Configuration;Landroid/view/Window;I)V

    :cond_0
    return-void
.end method

.method protected abstract onCreateDialogView(Landroid/content/Context;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/app/XDialogFragment;->onCreateDialogView(Landroid/content/Context;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XDialogFragment;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 38
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDialogFragment;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    new-instance p2, Lcom/xiaopeng/xui/app/-$$Lambda$XDialogFragment$x5B-nKf3XZWM7G-iAeQ2siL8JDY;

    invoke-direct {p2, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$XDialogFragment$x5B-nKf3XZWM7G-iAeQ2siL8JDY;-><init>(Lcom/xiaopeng/xui/app/XDialogFragment;)V

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setOnDismissListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnDismissListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 39
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XDialogFragment;->isFullScreen()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xui/utils/XDialogUtils;->requestFullScreen(Landroid/app/Dialog;)V

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDialogFragment;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->getContentView()Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
