.class public Lcom/xiaopeng/musicradio/utils/at;
.super Ljava/lang/Object;
.source "MusicViewUtil.java"


# direct methods
.method public static a(Landroid/view/View;Landroid/view/View;)V
    .locals 5

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 34
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v2, :cond_0

    .line 35
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 36
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    .line 38
    :cond_0
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 39
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 41
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static a(Landroid/view/View;Z)V
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    if-nez p1, :cond_0

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const p1, 0x3ecccccd    # 0.4f

    .line 13
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public static b(Landroid/view/View;Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 19
    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const p1, 0x3ecccccd    # 0.4f

    .line 21
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
