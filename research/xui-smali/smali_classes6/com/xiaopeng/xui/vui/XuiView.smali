.class public interface abstract Lcom/xiaopeng/xui/vui/XuiView;
.super Ljava/lang/Object;
.source "XuiView.java"


# virtual methods
.method public onViewCreated(Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .line 17
    return-void
.end method

.method public onVisibilityChangedThemeRefresh(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 20
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isThemeRefreshByVisibilityChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    if-nez p1, :cond_0

    .line 22
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/xiaopeng/xui/vui/XuiView;->setThemeRefreshable(Z)V

    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/xiaopeng/xui/vui/XuiView;->setThemeRefreshable(Z)V

    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method public abstract setThemeRefreshable(Z)V
.end method
