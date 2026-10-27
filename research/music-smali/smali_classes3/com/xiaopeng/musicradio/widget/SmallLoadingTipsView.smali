.class public Lcom/xiaopeng/musicradio/widget/SmallLoadingTipsView;
.super Lcom/xiaopeng/musicradio/widget/LoadingTipsView;
.source "SmallLoadingTipsView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getContentViewId()I
    .locals 1

    .line 26
    sget v0, Lcom/xiaopeng/musicradio/common/k$f;->layout_loading_tips_small_view:I

    return v0
.end method

.method public setState(I)V
    .locals 3

    .line 31
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/SmallLoadingTipsView;->a:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 35
    invoke-virtual {p0, v2}, Lcom/xiaopeng/musicradio/widget/SmallLoadingTipsView;->setVisibility(I)V

    .line 36
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/SmallLoadingTipsView;->d:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 37
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/SmallLoadingTipsView;->f:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/widget/SmallLoadingTipsView;->setVisibility(I)V

    .line 57
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/SmallLoadingTipsView;->c:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 58
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/SmallLoadingTipsView;->b:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 59
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/SmallLoadingTipsView;->d:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 60
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/SmallLoadingTipsView;->f:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/SmallLoadingTipsView;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/SmallLoadingTipsView;->f:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/widget/SmallLoadingTipsView;->setVisibility(I)V

    .line 49
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/SmallLoadingTipsView;->c:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 50
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/SmallLoadingTipsView;->b:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 51
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/SmallLoadingTipsView;->d:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 52
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/SmallLoadingTipsView;->f:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/SmallLoadingTipsView;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/SmallLoadingTipsView;->f:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/widget/SmallLoadingTipsView;->setVisibility(I)V

    .line 41
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/SmallLoadingTipsView;->c:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 42
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/SmallLoadingTipsView;->b:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 43
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/SmallLoadingTipsView;->d:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 44
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/SmallLoadingTipsView;->f:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/SmallLoadingTipsView;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/SmallLoadingTipsView;->f:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
