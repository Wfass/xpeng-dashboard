.class public Lcom/xiaopeng/xui/widget/XListSingle;
.super Lcom/xiaopeng/xui/widget/XRelativeLayout;
.source "XListSingle.java"

# interfaces
.implements Lcom/xiaopeng/vui/commons/IVuiElementListener;


# instance fields
.field private mLeftRightTouchFull:I

.field private mLeftView:Landroid/view/ViewGroup;

.field private mLeftViewStub:Landroid/view/ViewStub;

.field private mLeftVuiLabel:Ljava/lang/String;

.field private mNum:Landroid/widget/TextView;

.field private mRightViewStub:Landroid/view/ViewStub;

.field private mRightVuiLabel:Ljava/lang/String;

.field private mTag:Landroid/view/View;

.field private mText:Landroid/widget/TextView;

.field private mViewGroupLeft:Landroid/view/ViewGroup;

.field private mViewGroupRight:Landroid/view/ViewGroup;

.field private mViewRightTouchArea:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XListSingle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XListSingle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XListSingle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 66
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$layout;->x_list_single:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 67
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XListSingle;->initView()V

    .line 69
    sget-object v0, Lcom/xiaopeng/xpui/R$styleable;->XListSingle:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 71
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XListSingle_list_single_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XListSingle;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XListSingle_list_single_tag_background:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 76
    .local v2, "tagDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 77
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mTag:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 80
    :cond_0
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XListSingle_list_single_tag_text_color:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListSingle;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/xiaopeng/xpui/R$color;->x_color_text_1:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 81
    .local v3, "tagColor":I
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mTag:Landroid/view/View;

    check-cast v4, Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v4, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setTextColor(I)V

    .line 82
    if-eqz v2, :cond_1

    .line 83
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mTag:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 86
    :cond_1
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XListSingle_list_single_tag_text:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, "tagText":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 88
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mTag:Landroid/view/View;

    check-cast v5, Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v5, v4}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .end local v2    # "tagDrawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "tagColor":I
    .end local v4    # "tagText":Ljava/lang/String;
    :cond_2
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XListSingle_list_single_left:I

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 92
    .local v2, "left":I
    if-eq v2, v3, :cond_3

    .line 93
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mLeftViewStub:Landroid/view/ViewStub;

    invoke-virtual {v4, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 94
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mLeftViewStub:Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    .line 95
    .local v4, "view":Landroid/view/View;
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    .line 96
    move-object v5, v4

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mViewGroupLeft:Landroid/view/ViewGroup;

    .line 99
    .end local v4    # "view":Landroid/view/View;
    :cond_3
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XListSingle_list_single_right:I

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 100
    .local v4, "right":I
    if-eq v4, v3, :cond_4

    .line 101
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mRightViewStub:Landroid/view/ViewStub;

    invoke-virtual {v5, v4}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 102
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mRightViewStub:Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v5

    .line 103
    .local v5, "view":Landroid/view/View;
    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_4

    .line 104
    move-object v6, v5

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mViewGroupRight:Landroid/view/ViewGroup;

    .line 107
    .end local v5    # "view":Landroid/view/View;
    :cond_4
    sget v5, Lcom/xiaopeng/xpui/R$styleable;->XListSingle_list_single_tag_icon:I

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 108
    .local v5, "tagIcon":I
    if-eq v5, v3, :cond_5

    .line 109
    invoke-virtual {p0, v5}, Lcom/xiaopeng/xui/widget/XListSingle;->setTagIcon(I)V

    .line 111
    :cond_5
    sget v6, Lcom/xiaopeng/xpui/R$styleable;->XListSingle_list_single_tag:I

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 112
    .local v6, "tag":Z
    invoke-virtual {p0, v6}, Lcom/xiaopeng/xui/widget/XListSingle;->showIconTag(Z)V

    .line 114
    sget v8, Lcom/xiaopeng/xpui/R$styleable;->XListSingle_list_single_left_right_touch_full:I

    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mLeftRightTouchFull:I

    .line 116
    sget v7, Lcom/xiaopeng/xpui/R$styleable;->XListSingle_list_single_left_vuiLabel:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mLeftVuiLabel:Ljava/lang/String;

    .line 117
    sget v7, Lcom/xiaopeng/xpui/R$styleable;->XListSingle_list_single_right_vuiLabel:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mRightVuiLabel:Ljava/lang/String;

    .line 118
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 120
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v7

    if-nez v7, :cond_8

    .line 121
    if-eq v4, v3, :cond_7

    .line 122
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 123
    .local v3, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListSingle;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v6, :cond_6

    .line 124
    sget v8, Lcom/xiaopeng/xpui/R$dimen;->x_list_tv_has_tag_margin_end:I

    goto :goto_0

    :cond_6
    sget v8, Lcom/xiaopeng/xpui/R$dimen;->x_list_tv_margin_end:I

    .line 123
    :goto_0
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    .line 125
    .local v7, "marginEnd":I
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 126
    iget-object v8, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mText:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    .end local v3    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v7    # "marginEnd":I
    goto :goto_1

    .line 128
    :cond_7
    if-eqz v6, :cond_8

    .line 129
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 130
    .restart local v3    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListSingle;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/xiaopeng/xpui/R$dimen;->x_list_tv_has_tag_margin_end:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    .line 131
    .restart local v7    # "marginEnd":I
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 132
    iget-object v8, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mText:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    .end local v3    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v7    # "marginEnd":I
    :cond_8
    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/widget/XListSingle;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XListSingle;

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mNum:Landroid/widget/TextView;

    return-object v0
.end method

.method private extendTouchLeft()V
    .locals 7

    .line 296
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mViewGroupLeft:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 297
    iget v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mLeftRightTouchFull:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 298
    sget-object v0, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->CLASSES:[Ljava/lang/Class;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 299
    .local v4, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mViewGroupLeft:Landroid/view/ViewGroup;

    invoke-static {v5, v4}, Lcom/xiaopeng/xui/utils/XuiUtils;->findViewsByType(Landroid/view/ViewGroup;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    .line 300
    .local v5, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 301
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Landroid/view/View;

    .line 302
    .local v6, "views1":[Landroid/view/View;
    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 303
    invoke-static {v6, p0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize([Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 298
    .end local v4    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v6    # "views1":[Landroid/view/View;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 307
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-nez v0, :cond_2

    .line 308
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mLeftView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize(Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 310
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mViewGroupLeft:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize(Landroid/view/ViewGroup;)V

    .line 314
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mViewGroupRight:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    .line 315
    iget v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mLeftRightTouchFull:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 316
    sget-object v0, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->CLASSES:[Ljava/lang/Class;

    array-length v2, v0

    :goto_2
    if-ge v1, v2, :cond_6

    aget-object v3, v0, v1

    .line 317
    .local v3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mViewGroupRight:Landroid/view/ViewGroup;

    invoke-static {v4, v3}, Lcom/xiaopeng/xui/utils/XuiUtils;->findViewsByType(Landroid/view/ViewGroup;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 318
    .local v4, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 319
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/view/View;

    .line 320
    .local v5, "views1":[Landroid/view/View;
    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 321
    invoke-static {v5, p0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize([Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 316
    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v5    # "views1":[Landroid/view/View;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 325
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mViewGroupRight:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize(Landroid/view/ViewGroup;)V

    .line 328
    :cond_6
    return-void
.end method

.method private extendTouchRight()V
    .locals 7

    .line 331
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mViewGroupRight:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 332
    iget v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mLeftRightTouchFull:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 333
    sget-object v0, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->CLASSES:[Ljava/lang/Class;

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 334
    .local v3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mViewGroupRight:Landroid/view/ViewGroup;

    invoke-static {v4, v3}, Lcom/xiaopeng/xui/utils/XuiUtils;->findViewsByType(Landroid/view/ViewGroup;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 335
    .local v4, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 336
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/view/View;

    .line 337
    .local v5, "views1":[Landroid/view/View;
    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 338
    invoke-static {v5, p0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize([Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 333
    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v5    # "views1":[Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 342
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 343
    sget-object v0, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->CLASSES:[Ljava/lang/Class;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 344
    .restart local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mViewGroupRight:Landroid/view/ViewGroup;

    invoke-static {v4, v3}, Lcom/xiaopeng/xui/utils/XuiUtils;->findViewsByType(Landroid/view/ViewGroup;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 345
    .restart local v4    # "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 346
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/view/View;

    .line 347
    .restart local v5    # "views1":[Landroid/view/View;
    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 348
    iget-object v6, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mViewRightTouchArea:Landroid/view/ViewGroup;

    invoke-static {v5, v6}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize([Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 343
    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v5    # "views1":[Landroid/view/View;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 352
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mViewGroupRight:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize(Landroid/view/ViewGroup;)V

    .line 356
    :cond_4
    return-void
.end method

.method private initView()V
    .locals 2

    .line 139
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_tv:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mText:Landroid/widget/TextView;

    .line 140
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_num:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mNum:Landroid/widget/TextView;

    .line 141
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_left:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mLeftViewStub:Landroid/view/ViewStub;

    .line 142
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_right:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mRightViewStub:Landroid/view/ViewStub;

    .line 143
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_tag:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mTag:Landroid/view/View;

    .line 144
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_right_touch_area:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mViewRightTouchArea:Landroid/view/ViewGroup;

    .line 145
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_left_lay:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mLeftView:Landroid/view/ViewGroup;

    .line 147
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListSingle;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mNum:Landroid/widget/TextView;

    sget v1, Lcom/xiaopeng/xpui/R$style;->XFont_Number_Bold:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mNum:Landroid/widget/TextView;

    new-instance v1, Lcom/xiaopeng/xui/widget/XListSingle$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/XListSingle$1;-><init>(Lcom/xiaopeng/xui/widget/XListSingle;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 173
    :cond_1
    :goto_0
    return-void
.end method

.method private setChildEnabled(Landroid/view/ViewGroup;Z)V
    .locals 3
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "enabled"    # Z

    .line 371
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 372
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 373
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 374
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, p2}, Lcom/xiaopeng/xui/widget/XListSingle;->setChildEnabled(Landroid/view/ViewGroup;Z)V

    .line 376
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 377
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 379
    :cond_1
    invoke-virtual {v1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 380
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 371
    .end local v1    # "view":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    .end local v0    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public getTagView()Lcom/xiaopeng/xui/widget/XTextView;
    .locals 1

    .line 251
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mTag:Landroid/view/View;

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    return-object v0

    .line 254
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 289
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onAttachedToWindow()V

    .line 290
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XListSingle;->extendTouchLeft()V

    .line 291
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XListSingle;->extendTouchRight()V

    .line 292
    return-void
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiElementBuilder;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 6
    .param p1, "vuiElementId"    # Ljava/lang/String;
    .param p2, "builder"    # Lcom/xiaopeng/vui/commons/IVuiElementBuilder;

    .line 386
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mViewGroupLeft:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mLeftVuiLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 387
    move v0, v1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mViewGroupLeft:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 388
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mViewGroupLeft:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 389
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/XListSingle;->isListNeedSetVuiLabelView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 390
    move-object v3, v2

    check-cast v3, Lcom/xiaopeng/xui/vui/VuiView;

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mLeftVuiLabel:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiLabel(Ljava/lang/String;)V

    .line 391
    move-object v3, v2

    check-cast v3, Lcom/xiaopeng/xui/vui/VuiView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiElementId(Ljava/lang/String;)V

    .line 387
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 395
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mViewGroupRight:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mRightVuiLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 396
    nop

    .local v1, "i":I
    :goto_1
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mViewGroupRight:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 397
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mViewGroupRight:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 398
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XListSingle;->isListNeedSetVuiLabelView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 399
    move-object v2, v1

    check-cast v2, Lcom/xiaopeng/xui/vui/VuiView;

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mRightVuiLabel:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiLabel(Ljava/lang/String;)V

    .line 400
    move-object v2, v1

    check-cast v2, Lcom/xiaopeng/xui/vui/VuiView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiElementId(Ljava/lang/String;)V

    .line 396
    .end local v1    # "view":Landroid/view/View;
    :cond_2
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    goto :goto_1

    .line 404
    .end local v1    # "i":I
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 360
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XListSingle;->setEnabled(ZZ)V

    .line 361
    return-void
.end method

.method public setEnabled(ZZ)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "containChild"    # Z

    .line 364
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setEnabled(Z)V

    .line 365
    if-eqz p2, :cond_0

    .line 366
    invoke-direct {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XListSingle;->setChildEnabled(Landroid/view/ViewGroup;Z)V

    .line 368
    :cond_0
    return-void
.end method

.method public setNum(I)V
    .locals 2
    .param p1, "num"    # I

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mNum:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    return-void
.end method

.method public setTagIcon(I)V
    .locals 1
    .param p1, "res"    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 264
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mTag:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 267
    :cond_0
    return-void
.end method

.method public setTagOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 284
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mTag:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    return-void
.end method

.method public setVuiLabels(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 408
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 409
    .local v0, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 410
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 411
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 412
    .local v2, "key":I
    if-nez v2, :cond_0

    .line 413
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mLeftVuiLabel:Ljava/lang/String;

    goto :goto_1

    .line 414
    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 415
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mRightVuiLabel:Ljava/lang/String;

    .line 417
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v2    # "key":I
    :cond_1
    :goto_1
    goto :goto_0

    .line 418
    :cond_2
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/XListSingle;->updateVui(Landroid/view/View;)V

    .line 419
    return-void
.end method

.method public showIconTag(Z)V
    .locals 2
    .param p1, "show"    # Z

    .line 275
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mTag:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 276
    return-void
.end method

.method public showNum(Z)V
    .locals 6
    .param p1, "show"    # Z

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mNum:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-nez v0, :cond_b

    .line 192
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListSingle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/xiaopeng/xpui/R$dimen;->x_list_left_width_for_num:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 193
    .local v0, "leftWidthForNum":I
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListSingle;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xiaopeng/xpui/R$dimen;->x_list_left_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 194
    .local v2, "leftWidth":I
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mLeftView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 195
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mLeftView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 196
    .local v3, "lay":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz p1, :cond_1

    .line 197
    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_1

    .line 199
    :cond_1
    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 201
    :goto_1
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mLeftView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    .end local v3    # "lay":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mViewGroupLeft:Landroid/view/ViewGroup;

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    .line 204
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mViewGroupLeft:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 205
    .restart local v3    # "lay":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz p1, :cond_4

    .line 206
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListSingle;->getLayoutDirection()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 207
    sub-int v1, v0, v2

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    .line 209
    :cond_3
    sub-int v1, v0, v2

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2

    .line 212
    :cond_4
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListSingle;->getLayoutDirection()I

    move-result v5

    if-ne v5, v4, :cond_5

    .line 213
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    .line 215
    :cond_5
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 218
    :goto_2
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mViewGroupLeft:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    .end local v3    # "lay":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_6
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mText:Landroid/widget/TextView;

    if-eqz v1, :cond_a

    .line 221
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 222
    .local v1, "lay":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz p1, :cond_8

    .line 223
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListSingle;->getLayoutDirection()I

    move-result v3

    if-ne v3, v4, :cond_7

    .line 224
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_3

    .line 226
    :cond_7
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_3

    .line 229
    :cond_8
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListSingle;->getLayoutDirection()I

    move-result v3

    if-ne v3, v4, :cond_9

    .line 230
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_3

    .line 232
    :cond_9
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 235
    :goto_3
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    .end local v1    # "lay":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_a
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XListSingle;->extendTouchLeft()V

    .line 239
    .end local v0    # "leftWidthForNum":I
    .end local v2    # "leftWidth":I
    :cond_b
    return-void
.end method
