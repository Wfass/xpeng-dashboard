.class public Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout13;
.super Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;
.source "BannerItemLayout13.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 3

    .line 53
    invoke-super {p0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->b()V

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout13;->d:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout13;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/program/b$b;->x_font_title_03_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setTextSize(F)V

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout13;->c:Lcom/xiaopeng/musicradio/widget/PlayControlView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/PlayControlView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 56
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout13;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v1, v2}, Lapf;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->bottomMargin:I

    .line 57
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout13;->c:Lcom/xiaopeng/musicradio/widget/PlayControlView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/PlayControlView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
