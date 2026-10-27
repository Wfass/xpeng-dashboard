.class Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;
.super Lcom/xiaopeng/xui/widget/XFrameLayout;
.source "XDialogPure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/app/XDialogPure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XDialogContentView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/app/XDialogPure;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xui/app/XDialogPure;Landroid/content/Context;)V
    .locals 0
    .param p1    # Lcom/xiaopeng/xui/app/XDialogPure;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;

    .line 186
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;->this$0:Lcom/xiaopeng/xui/app/XDialogPure;

    .line 187
    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;)V

    .line 188
    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .line 192
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onWindowFocusChanged(Z)V

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onWindowFocusChanged(Z)V

    .line 196
    :cond_0
    return-void
.end method

.method public setThemeCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V
    .locals 1
    .param p1, "onCallback"    # Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    .line 202
    :cond_0
    return-void
.end method
