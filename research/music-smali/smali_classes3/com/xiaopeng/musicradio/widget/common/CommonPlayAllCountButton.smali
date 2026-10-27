.class public Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;
.super Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;
.source "CommonPlayAllCountButton.java"


# instance fields
.field private c:I

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;->c:I

    .line 17
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;->c:I

    .line 17
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;->c:I

    .line 17
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;->e:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 33
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;->a:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;->a:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 37
    sget v0, Lcom/xiaopeng/musicradio/common/k$g;->play_all_btn_resume:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;->d:Ljava/lang/String;

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/xiaopeng/musicradio/common/k$d;->ic_music_play_s:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 40
    :cond_1
    sget v0, Lcom/xiaopeng/musicradio/common/k$g;->play_all_btn_default:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;->d:Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/xiaopeng/musicradio/common/k$d;->ic_music_play_s:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 34
    :cond_2
    :goto_0
    sget v0, Lcom/xiaopeng/musicradio/common/k$g;->play_all_btn_pause:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;->d:Ljava/lang/String;

    .line 35
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/xiaopeng/musicradio/common/k$d;->ic_music_pause_s:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 43
    :goto_1
    iget v2, p0, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;->e:I

    if-ne v2, v1, :cond_3

    .line 44
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;->b:Lcom/xiaopeng/xui/widget/XButton;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 46
    :cond_3
    iget v1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;->c:I

    if-lez v1, :cond_4

    .line 47
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;->b:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 49
    :cond_4
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;->b:Lcom/xiaopeng/xui/widget/XButton;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :goto_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 53
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;->b:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2, v2}, Lcom/xiaopeng/xui/widget/XButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public getAccountType()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;->e:I

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;->c:I

    return v0
.end method

.method public getPlayText()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;->d:Ljava/lang/String;

    return-object v0
.end method

.method public setAccountType(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;->e:I

    return-void
.end method

.method public setCountText(I)V
    .locals 0

    if-ltz p1, :cond_0

    .line 58
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;->c:I

    .line 60
    :cond_0
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;->c:I

    if-nez p1, :cond_1

    const/16 p1, 0x8

    .line 61
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 63
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;->setVisibility(I)V

    .line 65
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;->a()V

    return-void
.end method
