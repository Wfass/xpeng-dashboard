.class public Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;
.super Lcom/xiaopeng/xui/widget/XLinearLayout;
.source "CommonPlayAllButton.java"


# instance fields
.field protected a:I

.field protected b:Lcom/xiaopeng/xui/widget/XButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 47
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;->b:Lcom/xiaopeng/xui/widget/XButton;

    sget v1, Lcom/xiaopeng/musicradio/common/k$g;->play_all_btn_resume:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setText(I)V

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$d;->ic_music_play_s:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;->b:Lcom/xiaopeng/xui/widget/XButton;

    sget v1, Lcom/xiaopeng/musicradio/common/k$g;->play_all_btn_default:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setText(I)V

    .line 55
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$d;->ic_music_play_s:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 48
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;->b:Lcom/xiaopeng/xui/widget/XButton;

    sget v1, Lcom/xiaopeng/musicradio/common/k$g;->play_all_btn_pause:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setText(I)V

    .line 49
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$d;->ic_music_pause_s:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 57
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 58
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;->b:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2, v2}, Lcom/xiaopeng/xui/widget/XButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;->b:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVuiLabel(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 36
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$f;->common_play_all_btn:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 37
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->play_btn:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;->b:Lcom/xiaopeng/xui/widget/XButton;

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;->a()V

    return-void
.end method

.method public getPlayBtn()Lcom/xiaopeng/xui/widget/XButton;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;->b:Lcom/xiaopeng/xui/widget/XButton;

    return-object v0
.end method

.method public getPlayText()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;->b:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 77
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 78
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;->a()V

    return-void
.end method

.method public setButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;->b:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPlayState(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;->a:I

    .line 64
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;->a()V

    return-void
.end method
