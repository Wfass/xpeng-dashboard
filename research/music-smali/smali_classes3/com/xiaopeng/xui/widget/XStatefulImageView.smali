.class public Lcom/xiaopeng/xui/widget/XStatefulImageView;
.super Lcom/xiaopeng/xui/widget/XStatefulView;
.source "XStatefulImageView.java"


# instance fields
.field private srcId:I

.field private title:Ljava/lang/String;

.field private x_image:Lcom/xiaopeng/xui/widget/XImageView;

.field private x_loading:Lcom/xiaopeng/xui/widget/XLoading;

.field private x_title:Lcom/xiaopeng/xui/widget/XTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XStatefulImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XStatefulImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XStatefulImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XStatefulView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    .line 42
    invoke-virtual {p0, p3}, Lcom/xiaopeng/xui/widget/XStatefulImageView;->setPressAnimEnable(Z)V

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    sget v0, Lbyg$j;->x_stateful_image_view:I

    invoke-virtual {p4, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 44
    sget-object p4, Lbyg$n;->XStatefulImageView:[I

    invoke-virtual {p1, p2, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 45
    sget p4, Lbyg$n;->XStatefulImageView_android_src:I

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->srcId:I

    .line 46
    sget p3, Lbyg$n;->XStatefulImageView_android_text:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->title:Ljava/lang/String;

    .line 47
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 48
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object p3

    sget p4, Lbyg$n;->XStatefulImageView_android_text:I

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->title:Ljava/lang/String;

    invoke-interface {p3, p1, p2, p4, v0}, Lcom/xiaopeng/xui/lang/LangPresenter;->getStrWithEOLang(Landroid/content/Context;Landroid/content/res/TypedArray;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->title:Ljava/lang/String;

    .line 51
    :cond_0
    sget p1, Lbyg$n;->XStatefulImageView_img_height:I

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    float-to-int p1, p1

    .line 52
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XStatefulImageView;->initView()V

    .line 54
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XStatefulImageView;->initDate()V

    .line 55
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XStatefulImageView;->setImageHeight(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/widget/XStatefulImageView;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XStatefulImageView;->update(I)V

    return-void
.end method

.method private initDate()V
    .locals 2

    .line 70
    iget v0, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->srcId:I

    if-eqz v0, :cond_0

    .line 71
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->x_image:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->x_title:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->currentState:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulImageView;->update(I)V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 59
    sget v0, Lbyg$h;->x_image:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->x_image:Lcom/xiaopeng/xui/widget/XImageView;

    .line 60
    sget v0, Lbyg$h;->x_loading:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XLoading;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->x_loading:Lcom/xiaopeng/xui/widget/XLoading;

    .line 61
    sget v0, Lbyg$h;->x_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->x_title:Lcom/xiaopeng/xui/widget/XTextView;

    .line 62
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    .line 63
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 64
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XStatefulImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbyg$f;->x_common_radius5:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 65
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->x_image:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->x_image:Lcom/xiaopeng/xui/widget/XImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setClipToOutline(Z)V

    return-void
.end method

.method private update(I)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XStatefulImageView;->updateOpen()V

    goto :goto_0

    .line 120
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XStatefulImageView;->updateDoing()V

    goto :goto_0

    .line 123
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XStatefulImageView;->updateClose()V

    :goto_0
    return-void
.end method

.method private updateClose()V
    .locals 2

    const/4 v0, 0x0

    .line 141
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulImageView;->setSelected(Z)V

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->x_image:Lcom/xiaopeng/xui/widget/XImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setAlpha(F)V

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->x_loading:Lcom/xiaopeng/xui/widget/XLoading;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    return-void
.end method

.method private updateDoing()V
    .locals 3

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulImageView;->setSelected(Z)V

    .line 136
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->x_image:Lcom/xiaopeng/xui/widget/XImageView;

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setAlpha(F)V

    .line 137
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->x_loading:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    return-void
.end method

.method private updateOpen()V
    .locals 2

    const/4 v0, 0x1

    .line 129
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulImageView;->setSelected(Z)V

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->x_image:Lcom/xiaopeng/xui/widget/XImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setAlpha(F)V

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->x_loading:Lcom/xiaopeng/xui/widget/XLoading;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 99
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XStatefulView;->onAttachedToWindow()V

    .line 100
    iget v0, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->currentState:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulImageView;->update(I)V

    .line 101
    new-instance v0, Lcom/xiaopeng/xui/widget/XStatefulImageView$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/XStatefulImageView$1;-><init>(Lcom/xiaopeng/xui/widget/XStatefulImageView;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulImageView;->addOnStateChangeListener(Lcom/xiaopeng/xui/widget/XStatefulView$OnStateChangeListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 148
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XStatefulView;->onDetachedFromWindow()V

    .line 149
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XStatefulImageView;->removeOnStateChangeListener()V

    return-void
.end method

.method public setImageHeight(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->x_image:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 80
    iput p1, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->srcId:I

    .line 81
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->x_image:Lcom/xiaopeng/xui/widget/XImageView;

    iget v0, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->srcId:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 85
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->title:Ljava/lang/String;

    .line 86
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->title:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 87
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->x_title:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
