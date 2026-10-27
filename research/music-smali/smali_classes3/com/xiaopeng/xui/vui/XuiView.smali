.class public interface abstract Lcom/xiaopeng/xui/vui/XuiView;
.super Ljava/lang/Object;
.source "XuiView.java"


# virtual methods
.method public onViewCreated(Landroid/util/AttributeSet;II)V
    .locals 0

    return-void
.end method

.method public onVisibilityChangedThemeRefresh(I)V
    .locals 1

    .line 20
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isThemeRefreshByVisibilityChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 22
    invoke-interface {p0, p1}, Lcom/xiaopeng/xui/vui/XuiView;->setThemeRefreshable(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 24
    invoke-interface {p0, p1}, Lcom/xiaopeng/xui/vui/XuiView;->setThemeRefreshable(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract setThemeRefreshable(Z)V
.end method
