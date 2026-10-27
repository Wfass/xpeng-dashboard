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
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XStatefulImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XStatefulImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XStatefulImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XStatefulView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulImageView;->setPressAnimEnable(Z)V

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/xiaopeng/xpui/R$layout;->x_stateful_image_view:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 44
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XStatefulImageView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 45
    .local v1, "typedArray":Landroid/content/res/TypedArray;
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XStatefulImageView_android_src:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->srcId:I

    .line 46
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XStatefulImageView_android_text:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->title:Ljava/lang/String;

    .line 47
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object v0

    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XStatefulImageView_android_text:I

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->title:Ljava/lang/String;

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/xiaopeng/xui/lang/LangPresenter;->getStrWithEOLang(Landroid/content/Context;Landroid/content/res/TypedArray;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->title:Ljava/lang/String;

    .line 51
    :cond_0
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XStatefulImageView_img_height:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    .line 52
    .local v0, "imgHeight":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XStatefulImageView;->initView()V

    .line 54
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XStatefulImageView;->initDate()V

    .line 55
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulImageView;->setImageHeight(I)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/widget/XStatefulImageView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XStatefulImageView;
    .param p1, "x1"    # I

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
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->x_image:Lcom/xiaopeng/xui/widget/XImageView;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->srcId:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

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

    .line 77
    return-void
.end method

.method private initView()V
    .locals 3

    .line 59
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_image:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->x_image:Lcom/xiaopeng/xui/widget/XImageView;

    .line 60
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_loading:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XLoading;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->x_loading:Lcom/xiaopeng/xui/widget/XLoading;

    .line 61
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->x_title:Lcom/xiaopeng/xui/widget/XTextView;

    .line 62
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 63
    .local v0, "shapeDrawable":Landroid/graphics/drawable/GradientDrawable;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 64
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XStatefulImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/xpui/R$dimen;->x_common_radius5:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 65
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->x_image:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 66
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->x_image:Lcom/xiaopeng/xui/widget/XImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setClipToOutline(Z)V

    .line 67
    return-void
.end method

.method private update(I)V
    .locals 1
    .param p1, "state"    # I

    .line 115
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 120
    :pswitch_0
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XStatefulImageView;->updateDoing()V

    .line 121
    goto :goto_0

    .line 123
    :pswitch_1
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XStatefulImageView;->updateClose()V

    goto :goto_0

    .line 117
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XStatefulImageView;->updateOpen()V

    .line 118
    nop

    .line 126
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateClose()V
    .locals 2

    .line 141
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulImageView;->setSelected(Z)V

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->x_image:Lcom/xiaopeng/xui/widget/XImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setAlpha(F)V

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->x_loading:Lcom/xiaopeng/xui/widget/XLoading;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 144
    return-void
.end method

.method private updateDoing()V
    .locals 3

    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulImageView;->setSelected(Z)V

    .line 136
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->x_image:Lcom/xiaopeng/xui/widget/XImageView;

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setAlpha(F)V

    .line 137
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->x_loading:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 138
    return-void
.end method

.method private updateOpen()V
    .locals 2

    .line 129
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStatefulImageView;->setSelected(Z)V

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->x_image:Lcom/xiaopeng/xui/widget/XImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setAlpha(F)V

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->x_loading:Lcom/xiaopeng/xui/widget/XLoading;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 132
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

    .line 112
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 148
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XStatefulView;->onDetachedFromWindow()V

    .line 149
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XStatefulImageView;->removeOnStateChangeListener()V

    .line 150
    return-void
.end method

.method public setImageHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .line 92
    if-lez p1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->x_image:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 95
    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 80
    iput p1, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->srcId:I

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->x_image:Lcom/xiaopeng/xui/widget/XImageView;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->srcId:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 82
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 85
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->title:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->x_title:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :cond_0
    return-void
.end method
