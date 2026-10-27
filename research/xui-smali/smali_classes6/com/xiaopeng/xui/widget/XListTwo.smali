.class public Lcom/xiaopeng/xui/widget/XListTwo;
.super Lcom/xiaopeng/xui/widget/XRelativeLayout;
.source "XListTwo.java"

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

.field private mTagCustomViewStub:Landroid/view/ViewStub;

.field private mText:Landroid/widget/TextView;

.field private mTextSub:Landroid/widget/TextView;

.field private mTvLay:Landroid/view/ViewGroup;

.field private mViewGroupLeft:Landroid/view/ViewGroup;

.field private mViewGroupRight:Landroid/view/ViewGroup;

.field private mViewRightTouchArea:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XListTwo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XListTwo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
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

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XListTwo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    move-object/from16 v0, p0

    .line 64
    invoke-direct/range {p0 .. p4}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 65
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/xiaopeng/xpui/R$layout;->x_list_two:I

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 66
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XListTwo;->initView()V

    .line 68
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XListTwo:[I

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 70
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_two_text:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, "text":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/xiaopeng/xui/widget/XListTwo;->setText(Ljava/lang/CharSequence;)V

    .line 73
    sget v5, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_two_text_sub:I

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, "textSub":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lcom/xiaopeng/xui/widget/XListTwo;->setTextSub(Ljava/lang/CharSequence;)V

    .line 76
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 77
    sget v6, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_two_tag_background:I

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 78
    .local v6, "tagDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_0

    .line 79
    iget-object v7, v0, Lcom/xiaopeng/xui/widget/XListTwo;->mTag:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 82
    :cond_0
    sget v7, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_two_tag_text_color:I

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XListTwo;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/xiaopeng/xpui/R$color;->x_color_text_1:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v8

    invoke-virtual {v1, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    .line 83
    .local v7, "tagColor":I
    iget-object v8, v0, Lcom/xiaopeng/xui/widget/XListTwo;->mTag:Landroid/view/View;

    check-cast v8, Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v8, v7}, Lcom/xiaopeng/xui/widget/XTextView;->setTextColor(I)V

    .line 84
    if-eqz v6, :cond_1

    .line 85
    iget-object v8, v0, Lcom/xiaopeng/xui/widget/XListTwo;->mTag:Landroid/view/View;

    invoke-virtual {v8, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 88
    :cond_1
    sget v8, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_two_tag_text:I

    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 89
    .local v8, "tagText":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 90
    iget-object v9, v0, Lcom/xiaopeng/xui/widget/XListTwo;->mTag:Landroid/view/View;

    check-cast v9, Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v9, v8}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    .end local v6    # "tagDrawable":Landroid/graphics/drawable/Drawable;
    .end local v7    # "tagColor":I
    .end local v8    # "tagText":Ljava/lang/String;
    :cond_2
    sget v6, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_text_sub_lines:I

    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v7

    if-eqz v7, :cond_3

    const v7, 0x7fffffff

    goto :goto_0

    :cond_3
    const/4 v7, 0x1

    :goto_0
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 95
    .local v6, "lines":I
    iget-object v7, v0, Lcom/xiaopeng/xui/widget/XListTwo;->mTextSub:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 97
    sget v7, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_two_left:I

    const/4 v8, -0x1

    invoke-virtual {v1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 98
    .local v7, "left":I
    if-eq v7, v8, :cond_4

    .line 99
    iget-object v9, v0, Lcom/xiaopeng/xui/widget/XListTwo;->mLeftViewStub:Landroid/view/ViewStub;

    invoke-virtual {v9, v7}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 100
    iget-object v9, v0, Lcom/xiaopeng/xui/widget/XListTwo;->mLeftViewStub:Landroid/view/ViewStub;

    invoke-virtual {v9}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v9

    .line 101
    .local v9, "view":Landroid/view/View;
    instance-of v10, v9, Landroid/view/ViewGroup;

    if-eqz v10, :cond_4

    .line 102
    move-object v10, v9

    check-cast v10, Landroid/view/ViewGroup;

    iput-object v10, v0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewGroupLeft:Landroid/view/ViewGroup;

    .line 105
    .end local v9    # "view":Landroid/view/View;
    :cond_4
    sget v9, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_two_right:I

    invoke-virtual {v1, v9, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 106
    .local v9, "right":I
    if-eq v9, v8, :cond_5

    .line 107
    iget-object v10, v0, Lcom/xiaopeng/xui/widget/XListTwo;->mRightViewStub:Landroid/view/ViewStub;

    invoke-virtual {v10, v9}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 108
    iget-object v10, v0, Lcom/xiaopeng/xui/widget/XListTwo;->mRightViewStub:Landroid/view/ViewStub;

    invoke-virtual {v10}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v10

    .line 109
    .local v10, "view":Landroid/view/View;
    instance-of v11, v10, Landroid/view/ViewGroup;

    if-eqz v11, :cond_5

    .line 110
    move-object v11, v10

    check-cast v11, Landroid/view/ViewGroup;

    iput-object v11, v0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewGroupRight:Landroid/view/ViewGroup;

    .line 113
    .end local v10    # "view":Landroid/view/View;
    :cond_5
    sget v10, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_two_tag_icon:I

    invoke-virtual {v1, v10, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 114
    .local v10, "tagIcon":I
    if-eq v10, v8, :cond_6

    .line 115
    invoke-virtual {v0, v10}, Lcom/xiaopeng/xui/widget/XListTwo;->setTagIcon(I)V

    .line 118
    :cond_6
    sget v11, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_two_tag:I

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 119
    .local v11, "tag":Z
    invoke-virtual {v0, v11}, Lcom/xiaopeng/xui/widget/XListTwo;->showIconTag(Z)V

    .line 121
    sget v13, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_two_tag_custom:I

    invoke-virtual {v1, v13, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 122
    .local v13, "tag_custom":I
    if-eq v13, v8, :cond_7

    .line 123
    iget-object v14, v0, Lcom/xiaopeng/xui/widget/XListTwo;->mTagCustomViewStub:Landroid/view/ViewStub;

    invoke-virtual {v14, v13}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 124
    iget-object v14, v0, Lcom/xiaopeng/xui/widget/XListTwo;->mTagCustomViewStub:Landroid/view/ViewStub;

    invoke-virtual {v14}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 127
    :cond_7
    sget v14, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_two_left_right_touch_full:I

    invoke-virtual {v1, v14, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    iput v12, v0, Lcom/xiaopeng/xui/widget/XListTwo;->mLeftRightTouchFull:I

    .line 128
    sget v12, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_two_left_vuiLabel:I

    invoke-virtual {v1, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Lcom/xiaopeng/xui/widget/XListTwo;->mLeftVuiLabel:Ljava/lang/String;

    .line 129
    sget v12, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_two_right_vuiLabel:I

    invoke-virtual {v1, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Lcom/xiaopeng/xui/widget/XListTwo;->mRightVuiLabel:Ljava/lang/String;

    .line 131
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 133
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v12

    if-nez v12, :cond_8

    .line 134
    if-eq v9, v8, :cond_8

    .line 135
    sget v8, Lcom/xiaopeng/xpui/R$id;->x_list_tv_lay:I

    invoke-virtual {v0, v8}, Lcom/xiaopeng/xui/widget/XListTwo;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 136
    .local v8, "x_list_tv_lay":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XListTwo;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v14, Lcom/xiaopeng/xpui/R$dimen;->x_list_tv_margin_end:I

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    .line 137
    .local v12, "marginEnd":I
    invoke-virtual {v8}, Landroid/view/View;->getPaddingStart()I

    move-result v14

    .line 138
    invoke-virtual {v8}, Landroid/view/View;->getPaddingTop()I

    move-result v15

    .line 140
    move-object/from16 v16, v1

    invoke-virtual {v8}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 137
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .local v16, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v8, v14, v15, v12, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 141
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/XListTwo;->mTextSub:Landroid/widget/TextView;

    iget-object v14, v0, Lcom/xiaopeng/xui/widget/XListTwo;->mTextSub:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v14

    iget-object v15, v0, Lcom/xiaopeng/xui/widget/XListTwo;->mTextSub:Landroid/widget/TextView;

    .line 142
    invoke-virtual {v15}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v15

    iget-object v2, v0, Lcom/xiaopeng/xui/widget/XListTwo;->mTextSub:Landroid/widget/TextView;

    .line 144
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    .line 141
    invoke-virtual {v1, v14, v15, v12, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .end local v8    # "x_list_tv_lay":Landroid/view/View;
    .end local v12    # "marginEnd":I
    goto :goto_1

    .line 147
    .end local v16    # "a":Landroid/content/res/TypedArray;
    .restart local v1    # "a":Landroid/content/res/TypedArray;
    :cond_8
    move-object/from16 v16, v1

    .end local v1    # "a":Landroid/content/res/TypedArray;
    .restart local v16    # "a":Landroid/content/res/TypedArray;
    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/widget/XListTwo;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XListTwo;

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mNum:Landroid/widget/TextView;

    return-object v0
.end method

.method private extendTouchLeft()V
    .locals 6

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewGroupLeft:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 163
    iget v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mLeftRightTouchFull:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 164
    sget-object v0, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->CLASSES:[Ljava/lang/Class;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 165
    .local v3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewGroupLeft:Landroid/view/ViewGroup;

    invoke-static {v4, v3}, Lcom/xiaopeng/xui/utils/XuiUtils;->findViewsByType(Landroid/view/ViewGroup;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 166
    .local v4, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 167
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/view/View;

    .line 168
    .local v5, "views1":[Landroid/view/View;
    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 169
    invoke-static {v5, p0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize([Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 164
    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v5    # "views1":[Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-nez v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mLeftView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize(Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewGroupLeft:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize(Landroid/view/ViewGroup;)V

    .line 183
    :cond_3
    :goto_1
    return-void
.end method

.method private extendTouchRight()V
    .locals 7

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewGroupRight:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 188
    iget v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mLeftRightTouchFull:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 189
    sget-object v0, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->CLASSES:[Ljava/lang/Class;

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 190
    .local v3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewGroupRight:Landroid/view/ViewGroup;

    invoke-static {v4, v3}, Lcom/xiaopeng/xui/utils/XuiUtils;->findViewsByType(Landroid/view/ViewGroup;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 191
    .local v4, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

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
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 198
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 199
    sget-object v0, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->CLASSES:[Ljava/lang/Class;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 200
    .restart local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewGroupRight:Landroid/view/ViewGroup;

    invoke-static {v4, v3}, Lcom/xiaopeng/xui/utils/XuiUtils;->findViewsByType(Landroid/view/ViewGroup;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 201
    .restart local v4    # "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 202
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/view/View;

    .line 203
    .restart local v5    # "views1":[Landroid/view/View;
    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 204
    iget-object v6, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewRightTouchArea:Landroid/view/ViewGroup;

    invoke-static {v5, v6}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize([Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 199
    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v5    # "views1":[Landroid/view/View;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 208
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewGroupRight:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize(Landroid/view/ViewGroup;)V

    .line 215
    :cond_4
    return-void
.end method

.method private initView()V
    .locals 2

    .line 218
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_tv:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mText:Landroid/widget/TextView;

    .line 219
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_num:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mNum:Landroid/widget/TextView;

    .line 220
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_left_lay:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mLeftView:Landroid/view/ViewGroup;

    .line 221
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_tv_lay:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mTvLay:Landroid/view/ViewGroup;

    .line 222
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_tv_sub:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mTextSub:Landroid/widget/TextView;

    .line 223
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_left:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mLeftViewStub:Landroid/view/ViewStub;

    .line 224
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_right:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mRightViewStub:Landroid/view/ViewStub;

    .line 225
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_tag:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mTag:Landroid/view/View;

    .line 226
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_tag_custom_lay:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mTagCustomViewStub:Landroid/view/ViewStub;

    .line 227
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_right_touch_area:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewRightTouchArea:Landroid/view/ViewGroup;

    .line 228
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListTwo;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mNum:Landroid/widget/TextView;

    sget v1, Lcom/xiaopeng/xpui/R$style;->XFont_Number_Bold:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mNum:Landroid/widget/TextView;

    new-instance v1, Lcom/xiaopeng/xui/widget/XListTwo$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/XListTwo$1;-><init>(Lcom/xiaopeng/xui/widget/XListTwo;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 255
    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$extendTouchLeft$1()V
    .locals 2

    .line 176
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

    .line 211
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

    .line 155
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

    .line 361
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 362
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 363
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 364
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, p2}, Lcom/xiaopeng/xui/widget/XListTwo;->setChildEnabled(Landroid/view/ViewGroup;Z)V

    .line 366
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 367
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 369
    :cond_1
    invoke-virtual {v1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 370
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 361
    .end local v1    # "view":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 372
    .end local v0    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public getTagView()Lcom/xiaopeng/xui/widget/XTextView;
    .locals 1

    .line 329
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mTag:Landroid/view/View;

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    return-object v0

    .line 332
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isShowIconTag()Z
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mTag:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

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

    .line 151
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onAttachedToWindow()V

    .line 152
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XListTwo;->extendTouchLeft()V

    .line 153
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XListTwo;->extendTouchRight()V

    .line 158
    return-void
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiElementBuilder;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 6
    .param p1, "vuiElementId"    # Ljava/lang/String;
    .param p2, "builder"    # Lcom/xiaopeng/vui/commons/IVuiElementBuilder;

    .line 376
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewGroupLeft:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mLeftVuiLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 377
    move v0, v1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewGroupLeft:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 378
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewGroupLeft:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 379
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/XListTwo;->isListNeedSetVuiLabelView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 380
    move-object v3, v2

    check-cast v3, Lcom/xiaopeng/xui/vui/VuiView;

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mLeftVuiLabel:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiLabel(Ljava/lang/String;)V

    .line 381
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

    .line 377
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 385
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewGroupRight:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mRightVuiLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 386
    nop

    .local v1, "i":I
    :goto_1
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewGroupRight:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 387
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewGroupRight:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 388
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XListTwo;->isListNeedSetVuiLabelView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 389
    move-object v2, v1

    check-cast v2, Lcom/xiaopeng/xui/vui/VuiView;

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mRightVuiLabel:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiLabel(Ljava/lang/String;)V

    .line 390
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

    .line 386
    .end local v1    # "view":Landroid/view/View;
    :cond_2
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    goto :goto_1

    .line 394
    .end local v1    # "i":I
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 350
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XListTwo;->setEnabled(ZZ)V

    .line 351
    return-void
.end method

.method public setEnabled(ZZ)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "containChild"    # Z

    .line 354
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setEnabled(Z)V

    .line 355
    if-eqz p2, :cond_0

    .line 356
    invoke-direct {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XListTwo;->setChildEnabled(Landroid/view/ViewGroup;Z)V

    .line 358
    :cond_0
    return-void
.end method

.method public setNum(I)V
    .locals 2
    .param p1, "num"    # I

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mNum:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    return-void
.end method

.method public setTagIcon(I)V
    .locals 1
    .param p1, "res"    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 323
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mTag:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 326
    :cond_0
    return-void
.end method

.method public setTagOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 345
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mTag:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 314
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    .line 316
    return-void
.end method

.method public setTextSub(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 319
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mTextSub:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
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

    .line 398
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 399
    .local v0, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 400
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 401
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 402
    .local v2, "key":I
    if-nez v2, :cond_0

    .line 403
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mLeftVuiLabel:Ljava/lang/String;

    goto :goto_1

    .line 404
    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 405
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mRightVuiLabel:Ljava/lang/String;

    .line 407
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v2    # "key":I
    :cond_1
    :goto_1
    goto :goto_0

    .line 408
    :cond_2
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/XListTwo;->updateVui(Landroid/view/View;)V

    .line 409
    return-void
.end method

.method public showIconTag(Z)V
    .locals 2
    .param p1, "show"    # Z

    .line 337
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mTag:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 338
    return-void
.end method

.method public showNum(Z)V
    .locals 6
    .param p1, "show"    # Z

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mNum:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-nez v0, :cond_b

    .line 264
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListTwo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/xiaopeng/xpui/R$dimen;->x_list_left_width_for_num:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 265
    .local v0, "leftWidthForNum":I
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListTwo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xiaopeng/xpui/R$dimen;->x_list_left_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 266
    .local v2, "leftWidth":I
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mLeftView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 267
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mLeftView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 268
    .local v3, "lay":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz p1, :cond_1

    .line 269
    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_1

    .line 271
    :cond_1
    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 273
    :goto_1
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mLeftView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    .end local v3    # "lay":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewGroupLeft:Landroid/view/ViewGroup;

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    .line 276
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewGroupLeft:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 277
    .restart local v3    # "lay":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz p1, :cond_4

    .line 278
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListTwo;->getLayoutDirection()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 279
    sub-int v1, v0, v2

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    .line 281
    :cond_3
    sub-int v1, v0, v2

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2

    .line 284
    :cond_4
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListTwo;->getLayoutDirection()I

    move-result v5

    if-ne v5, v4, :cond_5

    .line 285
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    .line 287
    :cond_5
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 290
    :goto_2
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewGroupLeft:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    .end local v3    # "lay":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_6
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mTvLay:Landroid/view/ViewGroup;

    if-eqz v1, :cond_a

    .line 293
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mTvLay:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 294
    .local v1, "lay":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz p1, :cond_8

    .line 295
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListTwo;->getLayoutDirection()I

    move-result v3

    if-ne v3, v4, :cond_7

    .line 296
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_3

    .line 298
    :cond_7
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_3

    .line 301
    :cond_8
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListTwo;->getLayoutDirection()I

    move-result v3

    if-ne v3, v4, :cond_9

    .line 302
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_3

    .line 304
    :cond_9
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 307
    :goto_3
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mTvLay:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    .end local v1    # "lay":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_a
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XListTwo;->extendTouchLeft()V

    .line 311
    .end local v0    # "leftWidthForNum":I
    .end local v2    # "leftWidth":I
    :cond_b
    return-void
.end method
