.class public Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;
.super Lcom/xiaopeng/xui/widget/XLinearLayout;
.source "CommonSubscribeButton.java"


# instance fields
.field private a:Z

.field private b:Lcom/xiaopeng/xui/widget/XButton;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    sget p1, Lcom/xiaopeng/musicradio/common/k$g;->cancel_subscribe_program:I

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;->c:I

    .line 22
    sget p1, Lcom/xiaopeng/musicradio/common/k$g;->subscribe_program:I

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;->d:I

    .line 26
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    sget p1, Lcom/xiaopeng/musicradio/common/k$g;->cancel_subscribe_program:I

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;->c:I

    .line 22
    sget p1, Lcom/xiaopeng/musicradio/common/k$g;->subscribe_program:I

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;->d:I

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    sget p1, Lcom/xiaopeng/musicradio/common/k$g;->cancel_subscribe_program:I

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;->c:I

    .line 22
    sget p1, Lcom/xiaopeng/musicradio/common/k$g;->subscribe_program:I

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;->d:I

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 40
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$f;->layout_common_subscribe_btn:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->subscribe_btn:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;->b:Lcom/xiaopeng/xui/widget/XButton;

    .line 42
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;->b()V

    return-void
.end method

.method private b()V
    .locals 4

    .line 51
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;->a:Z

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;->b:Lcom/xiaopeng/xui/widget/XButton;

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;->c:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setText(I)V

    .line 53
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$d;->ic_music_like_state:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;->b:Lcom/xiaopeng/xui/widget/XButton;

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;->d:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setText(I)V

    .line 56
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$d;->ic_music_unlike_state:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 58
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 59
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;->b:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2, v2}, Lcom/xiaopeng/xui/widget/XButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public getPlayText()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;->b:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 85
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 86
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;->b()V

    return-void
.end method

.method public setButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;->b:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setCancelSubscribe(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;->c:I

    return-void
.end method

.method public setLoveBtnText(Ljava/lang/String;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;->b:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLoveState(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;->a:Z

    .line 64
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;->b()V

    return-void
.end method

.method public setSubscribe(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;->d:I

    return-void
.end method
