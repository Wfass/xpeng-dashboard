.class public Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;
.super Lcom/xiaopeng/xui/widget/XLinearLayout;
.source "CommonBlackPlayAllButton.java"


# instance fields
.field private a:I

.field private b:Lcom/xiaopeng/xui/widget/XButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 45
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$f;->layout_black_playall_btn:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->btn_play_black:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->b:Lcom/xiaopeng/xui/widget/XButton;

    .line 47
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->b()V

    return-void
.end method

.method private b()V
    .locals 4

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePlaystatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonBlackPlayAllButton"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->b:Lcom/xiaopeng/xui/widget/XButton;

    sget v1, Lcom/xiaopeng/musicradio/common/k$g;->play_all_btn_resume:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setText(I)V

    .line 62
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$d;->ic_music_play_black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->b:Lcom/xiaopeng/xui/widget/XButton;

    sget v1, Lcom/xiaopeng/musicradio/common/k$g;->play_all_btn_default:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setText(I)V

    .line 65
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$d;->ic_music_play_black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 58
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->b:Lcom/xiaopeng/xui/widget/XButton;

    sget v1, Lcom/xiaopeng/musicradio/common/k$g;->play_all_btn_pause:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setText(I)V

    .line 59
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$d;->ic_music_pause_black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 67
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 68
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->b:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2, v2}, Lcom/xiaopeng/xui/widget/XButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public getPlayButton()Lcom/xiaopeng/xui/widget/XButton;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->b:Lcom/xiaopeng/xui/widget/XButton;

    return-object v0
.end method

.method public getPlayText()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->b:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 91
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 92
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->b()V

    return-void
.end method

.method public setButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->b:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPlayAllBtnEnable(Z)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->b:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->b:Lcom/xiaopeng/xui/widget/XButton;

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3e99999a    # 0.3f

    :goto_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setAlpha(F)V

    return-void
.end method

.method public setPlayState(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->a:I

    .line 73
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->b()V

    return-void
.end method
