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

.method public static synthetic lambda$onCreateView$0(Lcom/xiaopeng/xui/app/XDialogFragment;Lcom/xiaopeng/xui/widget/dialogview/XDialogView;)V
    .locals 0
    .param p1, "dialogView1"    # Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XDialogFragment;->dismiss()V

    return-void
.end method


# virtual methods
.method public getTheme()I
    .locals 1

    .line 55
    sget v0, Lcom/xiaopeng/xpui/R$style;->XAppTheme_XDialog:I

    return v0
.end method

.method protected isFullScreen()Z
    .locals 1

    .line 48
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isDialogFullScreen()Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

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

    sget v1, Lcom/xiaopeng/xpui/R$drawable;->x_bg_dialog:I

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/xui/theme/XThemeManager;->setWindowBackgroundResource(Landroid/content/res/Configuration;Landroid/view/Window;I)V

    .line 65
    :cond_0
    return-void
.end method

.method protected abstract onCreateDialogView(Landroid/content/Context;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 35
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/app/XDialogFragment;->onCreateDialogView(Landroid/content/Context;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    move-result-object v0

    .line 36
    .local v0, "dialogView":Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    if-eqz v0, :cond_1

    .line 37
    iput-object v0, p0, Lcom/xiaopeng/xui/app/XDialogFragment;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 38
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDialogFragment;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    new-instance v2, Lcom/xiaopeng/xui/app/-$$Lambda$XDialogFragment$x5B-nKf3XZWM7G-iAeQ2siL8JDY;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$XDialogFragment$x5B-nKf3XZWM7G-iAeQ2siL8JDY;-><init>(Lcom/xiaopeng/xui/app/XDialogFragment;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setOnDismissListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnDismissListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 39
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XDialogFragment;->isFullScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/xui/utils/XDialogUtils;->requestFullScreen(Landroid/app/Dialog;)V

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDialogFragment;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->getContentView()Landroid/view/ViewGroup;

    move-result-object v1

    return-object v1

    .line 44
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method
