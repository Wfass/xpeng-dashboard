.class public Lcom/xiaopeng/xui/widget/XFrameLayout;
.super Landroid/widget/FrameLayout;
.source "XFrameLayout.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/a;


# instance fields
.field protected abs:Lcom/xiaopeng/xui/view/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    invoke-static {p0, p2, p3, p4}, Lcom/xiaopeng/xui/view/a;->a(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/a;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XFrameLayout;->abs:Lcom/xiaopeng/xui/view/a;

    .line 38
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->c(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 92
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 93
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->qV()V

    .line 94
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 52
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XFrameLayout;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XFrameLayout;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/a;->onAttachedToWindow()V

    .line 56
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XFrameLayout;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XFrameLayout;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 48
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 60
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XFrameLayout;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XFrameLayout;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/a;->onDetachedFromWindow()V

    .line 64
    :cond_0
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0

    .line 80
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewAdded(Landroid/view/View;)V

    .line 81
    sget-object p1, Lcom/xiaopeng/vui/commons/VuiUpdateType;->Zx:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->a(Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    .line 82
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0

    .line 86
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewRemoved(Landroid/view/View;)V

    .line 87
    sget-object p1, Lcom/xiaopeng/vui/commons/VuiUpdateType;->Zx:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->a(Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    .line 88
    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 75
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->e(Landroid/view/View;Z)V

    .line 76
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 68
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 69
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->e(Landroid/view/View;I)V

    .line 70
    return-void
.end method
