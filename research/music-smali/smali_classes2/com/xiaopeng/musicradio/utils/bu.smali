.class public Lcom/xiaopeng/musicradio/utils/bu;
.super Ljava/lang/Object;
.source "UIInflaterUtil.java"


# direct methods
.method public static a(Lcom/xiaopeng/xui/widget/XTabLayout_V5;Ljava/lang/String;)Lcom/google/android/material/tabs/TabLayout$f;
    .locals 2

    .line 13
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->newTab()Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object p0

    .line 14
    sget v0, Lcom/xiaopeng/musicradio/common/k$f;->x_tab_item_v5:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$f;->a(I)Lcom/google/android/material/tabs/TabLayout$f;

    .line 15
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$f;->a()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$e;->x_tab_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    .line 16
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->enableViewVuiMode(Z)V

    .line 18
    sget-object v1, Lbyb;->LEVEL1:Lbyb;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiPriority(Lbyb;)V

    .line 19
    sget v1, Lcom/xiaopeng/musicradio/common/k$g;->single_all:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 20
    sget p1, Lcom/xiaopeng/musicradio/common/k$g;->first_all:I

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiLabel(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method
