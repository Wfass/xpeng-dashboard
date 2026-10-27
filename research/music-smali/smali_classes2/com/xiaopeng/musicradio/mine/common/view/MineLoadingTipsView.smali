.class public Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;
.super Lcom/xiaopeng/musicradio/widget/ClickableLoadingTipsView;
.source "MineLoadingTipsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView$a;
    }
.end annotation


# instance fields
.field private k:Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView$a;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/widget/ClickableLoadingTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;->a()V

    .line 32
    sget-object p1, Lbxy;->UNKNOWN:Lbxy;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;->setVuiElementType(Lbxy;)V

    return-void
.end method

.method private a()V
    .locals 0

    return-void
.end method


# virtual methods
.method public getContentViewId()I
    .locals 1

    .line 77
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->layout_mine_loading_tips_view:I

    return v0
.end method

.method public setBtnGotoLogin(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setGotoLoginCallback(Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView$a;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;->k:Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView$a;

    return-void
.end method

.method public setGotoLoginText(I)V
    .locals 0

    .line 85
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;->l:Ljava/lang/String;

    return-void
.end method

.method public setState(I)V
    .locals 3

    .line 40
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;->a()V

    .line 41
    iput p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;->a:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 45
    invoke-virtual {p0, v2}, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;->setVisibility(I)V

    .line 46
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;->d:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 47
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;->f:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;->setVisibility(I)V

    .line 67
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;->c:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 68
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;->b:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 69
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;->d:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 70
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;->f:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;->f:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;->setVisibility(I)V

    .line 59
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;->c:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 60
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;->b:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 61
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;->d:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 62
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;->f:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;->f:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;->setVisibility(I)V

    .line 51
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;->c:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 52
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;->b:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 53
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;->d:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 54
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;->f:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;->f:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
