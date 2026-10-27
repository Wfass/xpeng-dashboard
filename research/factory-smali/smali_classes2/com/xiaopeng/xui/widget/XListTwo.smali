.class public Lcom/xiaopeng/xui/widget/XListTwo;
.super Lcom/xiaopeng/xui/widget/XRelativeLayout;
.source "XListTwo.java"


# instance fields
.field private mLeftRightTouchFull:I

.field private mLeftView:Landroid/view/ViewGroup;

.field private mLeftViewStub:Landroid/view/ViewStub;

.field private mNum:Landroid/widget/TextView;

.field private mRightViewStub:Landroid/view/ViewStub;

.field private mTag:Landroid/widget/ImageView;

.field private mTagCustomViewStub:Landroid/view/ViewStub;

.field private mText:Landroid/widget/TextView;

.field private mTextSub:Landroid/widget/TextView;

.field private mTvLay:Landroid/view/ViewGroup;

.field private mViewGroupLeft:Landroid/view/ViewGroup;

.field private mViewGroupRight:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XListTwo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XListTwo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
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

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XListTwo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    move-object/from16 v0, p0

    .line 51
    invoke-direct/range {p0 .. p4}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/xiaopeng/xpui/R$layout;->x_list_two:I

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 53
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XListTwo;->initView()V

    .line 55
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XListTwo:[I

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 57
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_two_text:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 58
    .local v4, "text":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/xiaopeng/xui/widget/XListTwo;->setText(Ljava/lang/CharSequence;)V

    .line 60
    sget v5, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_two_text_sub:I

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 61
    .local v5, "textSub":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lcom/xiaopeng/xui/widget/XListTwo;->setTextSub(Ljava/lang/CharSequence;)V

    .line 63
    sget v6, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_text_sub_lines:I

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 64
    .local v6, "lines":I
    iget-object v7, v0, Lcom/xiaopeng/xui/widget/XListTwo;->mTextSub:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 66
    sget v7, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_two_left:I

    const/4 v8, -0x1

    invoke-virtual {v1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 67
    .local v7, "left":I
    if-eq v7, v8, :cond_0

    .line 68
    iget-object v9, v0, Lcom/xiaopeng/xui/widget/XListTwo;->mLeftViewStub:Landroid/view/ViewStub;

    invoke-virtual {v9, v7}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 69
    iget-object v9, v0, Lcom/xiaopeng/xui/widget/XListTwo;->mLeftViewStub:Landroid/view/ViewStub;

    invoke-virtual {v9}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v9

    .line 70
    .local v9, "view":Landroid/view/View;
    instance-of v10, v9, Landroid/view/ViewGroup;

    if-eqz v10, :cond_0

    .line 71
    move-object v10, v9

    check-cast v10, Landroid/view/ViewGroup;

    iput-object v10, v0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewGroupLeft:Landroid/view/ViewGroup;

    .line 74
    .end local v9    # "view":Landroid/view/View;
    :cond_0
    sget v9, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_two_right:I

    invoke-virtual {v1, v9, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 75
    .local v9, "right":I
    if-eq v9, v8, :cond_1

    .line 76
    iget-object v10, v0, Lcom/xiaopeng/xui/widget/XListTwo;->mRightViewStub:Landroid/view/ViewStub;

    invoke-virtual {v10, v9}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 77
    iget-object v10, v0, Lcom/xiaopeng/xui/widget/XListTwo;->mRightViewStub:Landroid/view/ViewStub;

    invoke-virtual {v10}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v10

    .line 78
    .local v10, "view":Landroid/view/View;
    instance-of v11, v10, Landroid/view/ViewGroup;

    if-eqz v11, :cond_1

    .line 79
    move-object v11, v10

    check-cast v11, Landroid/view/ViewGroup;

    iput-object v11, v0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewGroupRight:Landroid/view/ViewGroup;

    .line 82
    .end local v10    # "view":Landroid/view/View;
    :cond_1
    sget v10, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_two_tag_icon:I

    invoke-virtual {v1, v10, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 83
    .local v10, "tagIcon":I
    if-eq v10, v8, :cond_2

    .line 84
    invoke-virtual {v0, v10}, Lcom/xiaopeng/xui/widget/XListTwo;->setTagIcon(I)V

    .line 87
    :cond_2
    sget v11, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_two_tag:I

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 88
    .local v11, "tag":Z
    invoke-virtual {v0, v11}, Lcom/xiaopeng/xui/widget/XListTwo;->showIconTag(Z)V

    .line 90
    sget v13, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_two_tag_custom:I

    invoke-virtual {v1, v13, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 91
    .local v13, "tag_custom":I
    if-eq v13, v8, :cond_3

    .line 92
    iget-object v14, v0, Lcom/xiaopeng/xui/widget/XListTwo;->mTagCustomViewStub:Landroid/view/ViewStub;

    invoke-virtual {v14, v13}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 93
    iget-object v14, v0, Lcom/xiaopeng/xui/widget/XListTwo;->mTagCustomViewStub:Landroid/view/ViewStub;

    invoke-virtual {v14}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 96
    :cond_3
    sget v14, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_two_left_right_touch_full:I

    invoke-virtual {v1, v14, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    iput v12, v0, Lcom/xiaopeng/xui/widget/XListTwo;->mLeftRightTouchFull:I

    .line 98
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    if-eq v9, v8, :cond_4

    .line 101
    sget v8, Lcom/xiaopeng/xpui/R$id;->x_list_tv_lay:I

    invoke-virtual {v0, v8}, Lcom/xiaopeng/xui/widget/XListTwo;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 102
    .local v8, "x_list_tv_lay":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XListTwo;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v14, Lcom/xiaopeng/xpui/R$dimen;->x_list_tv_margin_end:I

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    .line 103
    .local v12, "marginEnd":I
    invoke-virtual {v8}, Landroid/view/View;->getPaddingLeft()I

    move-result v14

    .line 104
    invoke-virtual {v8}, Landroid/view/View;->getPaddingTop()I

    move-result v15

    .line 106
    move-object/from16 v16, v1

    invoke-virtual {v8}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 103
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .local v16, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v8, v14, v15, v12, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 107
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XListTwo;->mTextSub:Landroid/widget/TextView;

    iget-object v14, v0, Lcom/xiaopeng/xui/widget/XListTwo;->mTextSub:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v14

    iget-object v15, v0, Lcom/xiaopeng/xui/widget/XListTwo;->mTextSub:Landroid/widget/TextView;

    .line 108
    invoke-virtual {v15}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v15

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XListTwo;->mTextSub:Landroid/widget/TextView;

    .line 110
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    .line 107
    invoke-virtual {v1, v14, v15, v12, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .end local v8    # "x_list_tv_lay":Landroid/view/View;
    .end local v12    # "marginEnd":I
    goto :goto_0

    .line 112
    .end local v16    # "a":Landroid/content/res/TypedArray;
    .restart local v1    # "a":Landroid/content/res/TypedArray;
    :cond_4
    move-object/from16 v16, v1

    .end local v1    # "a":Landroid/content/res/TypedArray;
    .restart local v16    # "a":Landroid/content/res/TypedArray;
    :goto_0
    return-void
.end method

.method private extendTouchLeft()V
    .locals 6

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewGroupLeft:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 128
    iget v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mLeftRightTouchFull:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 129
    sget-object v0, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->CLASSES:[Ljava/lang/Class;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 130
    .local v3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewGroupLeft:Landroid/view/ViewGroup;

    invoke-static {v4, v3}, Lcom/xiaopeng/xui/utils/XuiUtils;->findViewsByType(Landroid/view/ViewGroup;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 131
    .local v4, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 132
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/view/View;

    .line 133
    .local v5, "views1":[Landroid/view/View;
    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 134
    invoke-static {v5, p0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize([Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 129
    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v5    # "views1":[Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mLeftView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize(Landroid/view/ViewGroup;)V

    .line 145
    :cond_2
    return-void
.end method

.method private extendTouchRight()V
    .locals 6

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewGroupRight:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 150
    iget v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mLeftRightTouchFull:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 151
    sget-object v0, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->CLASSES:[Ljava/lang/Class;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 152
    .local v3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewGroupRight:Landroid/view/ViewGroup;

    invoke-static {v4, v3}, Lcom/xiaopeng/xui/utils/XuiUtils;->findViewsByType(Landroid/view/ViewGroup;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 153
    .local v4, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 154
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/view/View;

    .line 155
    .local v5, "views1":[Landroid/view/View;
    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 156
    invoke-static {v5, p0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize([Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 151
    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v5    # "views1":[Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewGroupRight:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize(Landroid/view/ViewGroup;)V

    .line 166
    :cond_2
    return-void
.end method

.method private initView()V
    .locals 1

    .line 169
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_tv:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mText:Landroid/widget/TextView;

    .line 170
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_num:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mNum:Landroid/widget/TextView;

    .line 171
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_left_lay:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mLeftView:Landroid/view/ViewGroup;

    .line 172
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_tv_lay:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mTvLay:Landroid/view/ViewGroup;

    .line 173
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_tv_sub:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mTextSub:Landroid/widget/TextView;

    .line 174
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_left:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mLeftViewStub:Landroid/view/ViewStub;

    .line 175
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_right:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mRightViewStub:Landroid/view/ViewStub;

    .line 176
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_tag:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mTag:Landroid/widget/ImageView;

    .line 177
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_tag_custom_lay:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mTagCustomViewStub:Landroid/view/ViewStub;

    .line 178
    return-void
.end method

.method private synthetic lambda$extendTouchLeft$1()V
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "list-two mLeftView w "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mLeftView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " h "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mLeftView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListTwo;->logD(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$extendTouchRight$2()V
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "list-two mViewGroupRight w "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewGroupRight:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " h "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewGroupRight:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListTwo;->logD(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onAttachedToWindow$0()V
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "list-two this w "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListTwo;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " h "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListTwo;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListTwo;->logD(Ljava/lang/String;)V

    return-void
.end method

.method private setChildEnabled(Landroid/view/ViewGroup;Z)V
    .locals 3
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "enabled"    # Z

    .line 256
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 257
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 258
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 259
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, p2}, Lcom/xiaopeng/xui/widget/XListTwo;->setChildEnabled(Landroid/view/ViewGroup;Z)V

    .line 261
    :cond_0
    invoke-virtual {v1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 256
    .end local v1    # "view":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public isShowIconTag()Z
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mTag:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 116
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onAttachedToWindow()V

    .line 117
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XListTwo;->extendTouchLeft()V

    .line 118
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XListTwo;->extendTouchRight()V

    .line 123
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 245
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XListTwo;->setEnabled(ZZ)V

    .line 246
    return-void
.end method

.method public setEnabled(ZZ)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "containChild"    # Z

    .line 249
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setEnabled(Z)V

    .line 250
    if-eqz p2, :cond_0

    .line 251
    invoke-direct {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XListTwo;->setChildEnabled(Landroid/view/ViewGroup;Z)V

    .line 253
    :cond_0
    return-void
.end method

.method public setNum(I)V
    .locals 2
    .param p1, "num"    # I

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mNum:Landroid/widget/TextView;

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

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mTag:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 229
    return-void
.end method

.method public setTagOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mTag:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    .line 221
    return-void
.end method

.method public setTextSub(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 224
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mTextSub:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    return-void
.end method

.method public showIconTag(Z)V
    .locals 2
    .param p1, "show"    # Z

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mTag:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    return-void
.end method

.method public showNum(Z)V
    .locals 5
    .param p1, "show"    # Z

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mNum:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListTwo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/xiaopeng/xpui/R$dimen;->x_list_left_width_for_num:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 187
    .local v0, "leftWidthForNum":I
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListTwo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xiaopeng/xpui/R$dimen;->x_list_left_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 188
    .local v2, "leftWidth":I
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mLeftView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 189
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mLeftView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 190
    .local v3, "lay":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz p1, :cond_1

    .line 191
    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_1

    .line 193
    :cond_1
    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 195
    :goto_1
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mLeftView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    .end local v3    # "lay":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewGroupLeft:Landroid/view/ViewGroup;

    if-eqz v3, :cond_4

    .line 198
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewGroupLeft:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 199
    .restart local v3    # "lay":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz p1, :cond_3

    .line 200
    sub-int v1, v0, v2

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2

    .line 202
    :cond_3
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 204
    :goto_2
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewGroupLeft:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    .end local v3    # "lay":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_4
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mTvLay:Landroid/view/ViewGroup;

    if-eqz v1, :cond_6

    .line 207
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mTvLay:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 208
    .local v1, "lay":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz p1, :cond_5

    .line 209
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_3

    .line 211
    :cond_5
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 213
    :goto_3
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mTvLay:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    .end local v1    # "lay":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_6
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XListTwo;->extendTouchLeft()V

    .line 216
    return-void
.end method
