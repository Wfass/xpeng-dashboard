.class public abstract Lcom/xiaopeng/xui/app/XDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "XDialogFragment.java"


# instance fields
.field protected ZO:Lcom/xiaopeng/xui/widget/dialogview/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method private synthetic c(Lcom/xiaopeng/xui/widget/dialogview/b;)V
    .locals 0

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XDialogFragment;->dismiss()V

    return-void
.end method

.method public static synthetic lambda$dRsz5-BGceKsoyNYuNbQEqV4450(Lcom/xiaopeng/xui/app/XDialogFragment;Lcom/xiaopeng/xui/widget/dialogview/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/XDialogFragment;->c(Lcom/xiaopeng/xui/widget/dialogview/b;)V

    return-void
.end method


# virtual methods
.method protected abstract aB(Landroid/content/Context;)Lcom/xiaopeng/xui/widget/dialogview/b;
.end method

.method public getTheme()I
    .locals 1

    .line 55
    sget v0, Lcom/xiaopeng/xpui/R$style;->XAppTheme_XDialog:I

    return v0
.end method

.method protected isFullScreen()Z
    .locals 1

    .line 48
    invoke-static {}, Lcom/xiaopeng/xui/a;->qn()Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;
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

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/xui/c/a;->setWindowBackgroundResource(Landroid/content/res/Configuration;Landroid/view/Window;I)V

    .line 65
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 35
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/app/XDialogFragment;->aB(Landroid/content/Context;)Lcom/xiaopeng/xui/widget/dialogview/b;

    move-result-object p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XDialogFragment;->ZO:Lcom/xiaopeng/xui/widget/dialogview/b;

    .line 38
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDialogFragment;->ZO:Lcom/xiaopeng/xui/widget/dialogview/b;

    new-instance p2, Lcom/xiaopeng/xui/app/-$$Lambda$XDialogFragment$dRsz5-BGceKsoyNYuNbQEqV4450;

    invoke-direct {p2, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$XDialogFragment$dRsz5-BGceKsoyNYuNbQEqV4450;-><init>(Lcom/xiaopeng/xui/app/XDialogFragment;)V

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/b;->a(Lcom/xiaopeng/xui/widget/dialogview/e$d;)Lcom/xiaopeng/xui/widget/dialogview/b;

    .line 39
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XDialogFragment;->isFullScreen()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xui/d/d;->a(Landroid/app/Dialog;)V

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDialogFragment;->ZO:Lcom/xiaopeng/xui/widget/dialogview/b;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/dialogview/b;->qs()Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1

    .line 44
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
