.class public Lcom/xiaopeng/xui/widget/XListSingle;
.super Lcom/xiaopeng/xui/widget/XRelativeLayout;
.source "XListSingle.java"


# instance fields
.field private mLeftRightTouchFull:I

.field private mLeftView:Landroid/view/ViewGroup;

.field private mLeftViewStub:Landroid/view/ViewStub;

.field private mNum:Landroid/widget/TextView;

.field private mRightViewStub:Landroid/view/ViewStub;

.field private mTag:Landroid/widget/ImageView;

.field private mText:Landroid/widget/TextView;

.field private mViewGroupLeft:Landroid/view/ViewGroup;

.field private mViewGroupRight:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XListSingle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XListSingle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
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

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XListSingle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$layout;->x_list_single:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 51
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XListSingle;->initView()V

    .line 53
    sget-object v0, Lcom/xiaopeng/xpui/R$styleable;->XListSingle:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XListSingle_list_single_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XListSingle;->setText(Ljava/lang/CharSequence;)V

    .line 58
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XListSingle_list_single_left:I

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 59
    .local v2, "left":I
    if-eq v2, v3, :cond_0

    .line 60
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mLeftViewStub:Landroid/view/ViewStub;

    invoke-virtual {v4, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 61
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mLeftViewStub:Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    .line 62
    .local v4, "view":Landroid/view/View;
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    .line 63
    move-object v5, v4

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mViewGroupLeft:Landroid/view/ViewGroup;

    .line 66
    .end local v4    # "view":Landroid/view/View;
    :cond_0
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XListSingle_list_single_right:I

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 67
    .local v4, "right":I
    if-eq v4, v3, :cond_1

    .line 68
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mRightViewStub:Landroid/view/ViewStub;

    invoke-virtual {v5, v4}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 69
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mRightViewStub:Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v5

    .line 70
    .local v5, "view":Landroid/view/View;
    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1

    .line 71
    move-object v6, v5

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mViewGroupRight:Landroid/view/ViewGroup;

    .line 74
    .end local v5    # "view":Landroid/view/View;
    :cond_1
    sget v5, Lcom/xiaopeng/xpui/R$styleable;->XListSingle_list_single_tag_icon:I

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 75
    .local v5, "tagIcon":I
    if-eq v5, v3, :cond_2

    .line 76
    invoke-virtual {p0, v5}, Lcom/xiaopeng/xui/widget/XListSingle;->setTagIcon(I)V

    .line 78
    :cond_2
    sget v6, Lcom/xiaopeng/xpui/R$styleable;->XListSingle_list_single_tag:I

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 79
    .local v6, "tag":Z
    invoke-virtual {p0, v6}, Lcom/xiaopeng/xui/widget/XListSingle;->showIconTag(Z)V

    .line 81
    sget v8, Lcom/xiaopeng/xpui/R$styleable;->XListSingle_list_single_left_right_touch_full:I

    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mLeftRightTouchFull:I

    .line 83
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    if-eq v4, v3, :cond_4

    .line 86
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 87
    .local v3, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListSingle;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v6, :cond_3

    sget v8, Lcom/xiaopeng/xpui/R$dimen;->x_list_tv_has_tag_margin_end:I

    goto :goto_0

    :cond_3
    sget v8, Lcom/xiaopeng/xpui/R$dimen;->x_list_tv_margin_end:I

    :goto_0
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    .line 89
    .local v7, "marginEnd":I
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 90
    iget-object v8, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mText:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    .end local v3    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v7    # "marginEnd":I
    goto :goto_1

    .line 92
    :cond_4
    if-eqz v6, :cond_5

    .line 93
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 94
    .restart local v3    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListSingle;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/xiaopeng/xpui/R$dimen;->x_list_tv_has_tag_margin_end:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    .line 95
    .restart local v7    # "marginEnd":I
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 96
    iget-object v8, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mText:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    .end local v3    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v7    # "marginEnd":I
    :cond_5
    :goto_1
    return-void
.end method

.method private extendTouchLeft()V
    .locals 7

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mViewGroupLeft:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 174
    iget v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mLeftRightTouchFull:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 175
    sget-object v0, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->CLASSES:[Ljava/lang/Class;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 176
    .local v4, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mViewGroupLeft:Landroid/view/ViewGroup;

    invoke-static {v5, v4}, Lcom/xiaopeng/xui/utils/XuiUtils;->findViewsByType(Landroid/view/ViewGroup;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    .line 177
    .local v5, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 178
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Landroid/view/View;

    .line 179
    .local v6, "views1":[Landroid/view/View;
    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 180
    invoke-static {v6, p0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize([Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 175
    .end local v4    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v6    # "views1":[Landroid/view/View;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mLeftView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize(Landroid/view/ViewGroup;)V

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mViewGroupRight:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 188
    iget v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mLeftRightTouchFull:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 189
    sget-object v0, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->CLASSES:[Ljava/lang/Class;

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    .line 190
    .local v3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mViewGroupRight:Landroid/view/ViewGroup;

    invoke-static {v4, v3}, Lcom/xiaopeng/xui/utils/XuiUtils;->findViewsByType(Landroid/view/ViewGroup;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 191
    .local v4, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 192
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/view/View;

    .line 193
    .local v5, "views1":[Landroid/view/View;
    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 194
    invoke-static {v5, p0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize([Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 189
    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v5    # "views1":[Landroid/view/View;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 198
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mViewGroupRight:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize(Landroid/view/ViewGroup;)V

    .line 201
    :cond_5
    return-void
.end method

.method private extendTouchRight()V
    .locals 6

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mViewGroupRight:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 204
    iget v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mLeftRightTouchFull:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 205
    sget-object v0, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->CLASSES:[Ljava/lang/Class;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 206
    .local v3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mViewGroupRight:Landroid/view/ViewGroup;

    invoke-static {v4, v3}, Lcom/xiaopeng/xui/utils/XuiUtils;->findViewsByType(Landroid/view/ViewGroup;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 207
    .local v4, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 208
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/view/View;

    .line 209
    .local v5, "views1":[Landroid/view/View;
    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 210
    invoke-static {v5, p0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize([Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 205
    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v5    # "views1":[Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mViewGroupRight:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize(Landroid/view/ViewGroup;)V

    .line 217
    :cond_2
    return-void
.end method

.method private initView()V
    .locals 1

    .line 102
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_tv:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mText:Landroid/widget/TextView;

    .line 103
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_num:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mNum:Landroid/widget/TextView;

    .line 104
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_left_lay:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mLeftView:Landroid/view/ViewGroup;

    .line 105
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_left:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mLeftViewStub:Landroid/view/ViewStub;

    .line 106
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_right:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mRightViewStub:Landroid/view/ViewStub;

    .line 107
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_tag:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mTag:Landroid/widget/ImageView;

    .line 108
    return-void
.end method

.method private setChildEnabled(Landroid/view/ViewGroup;Z)V
    .locals 3
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "enabled"    # Z

    .line 231
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 232
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 233
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 234
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, p2}, Lcom/xiaopeng/xui/widget/XListSingle;->setChildEnabled(Landroid/view/ViewGroup;Z)V

    .line 236
    :cond_0
    invoke-virtual {v1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 231
    .end local v1    # "view":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 166
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onAttachedToWindow()V

    .line 167
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XListSingle;->extendTouchLeft()V

    .line 168
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XListSingle;->extendTouchRight()V

    .line 169
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 220
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XListSingle;->setEnabled(ZZ)V

    .line 221
    return-void
.end method

.method public setEnabled(ZZ)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "containChild"    # Z

    .line 224
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setEnabled(Z)V

    .line 225
    if-eqz p2, :cond_0

    .line 226
    invoke-direct {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XListSingle;->setChildEnabled(Landroid/view/ViewGroup;Z)V

    .line 228
    :cond_0
    return-void
.end method

.method public setNum(I)V
    .locals 2
    .param p1, "num"    # I

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mNum:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    return-void
.end method

.method public setTagIcon(I)V
    .locals 1
    .param p1, "res"    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mTag:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 154
    return-void
.end method

.method public setTagOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mTag:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    return-void
.end method

.method public showIconTag(Z)V
    .locals 2
    .param p1, "show"    # Z

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mTag:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    return-void
.end method

.method public showNum(Z)V
    .locals 5
    .param p1, "show"    # Z

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mNum:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListSingle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/xiaopeng/xpui/R$dimen;->x_list_left_width_for_num:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 117
    .local v0, "leftWidthForNum":I
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListSingle;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xiaopeng/xpui/R$dimen;->x_list_left_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 118
    .local v2, "leftWidth":I
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mLeftView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 119
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mLeftView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 120
    .local v3, "lay":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz p1, :cond_1

    .line 121
    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_1

    .line 123
    :cond_1
    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 125
    :goto_1
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mLeftView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    .end local v3    # "lay":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mViewGroupLeft:Landroid/view/ViewGroup;

    if-eqz v3, :cond_4

    .line 128
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mViewGroupLeft:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 129
    .restart local v3    # "lay":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz p1, :cond_3

    .line 130
    sub-int v1, v0, v2

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2

    .line 132
    :cond_3
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 134
    :goto_2
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mViewGroupLeft:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    .end local v3    # "lay":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_4
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mText:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    .line 137
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 138
    .local v1, "lay":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz p1, :cond_5

    .line 139
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_3

    .line 141
    :cond_5
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 143
    :goto_3
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XListSingle;->mText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    .end local v1    # "lay":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_6
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XListSingle;->extendTouchLeft()V

    .line 146
    return-void
.end method
