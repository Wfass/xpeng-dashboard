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

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XListTwo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XListTwo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XListTwo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 65
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget p4, Lcom/xiaopeng/xpui/R$layout;->x_list_two:I

    invoke-virtual {p3, p4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 66
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XListTwo;->initView()V

    .line 68
    sget-object p3, Lcom/xiaopeng/xpui/R$styleable;->XListTwo:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 70
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_two_text:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 71
    invoke-virtual {p0, p3}, Lcom/xiaopeng/xui/widget/XListTwo;->setText(Ljava/lang/CharSequence;)V

    .line 73
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_two_text_sub:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 74
    invoke-virtual {p0, p3}, Lcom/xiaopeng/xui/widget/XListTwo;->setTextSub(Ljava/lang/CharSequence;)V

    .line 76
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 77
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_two_tag_background:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 79
    iget-object p4, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mTag:Landroid/view/View;

    invoke-virtual {p4, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 82
    :cond_0
    sget p4, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_two_tag_text_color:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListTwo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$color;->x_color_text_1:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {p2, p4, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 83
    iget-object p4, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mTag:Landroid/view/View;

    check-cast p4, Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p4, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setTextColor(I)V

    if-eqz p3, :cond_1

    .line 85
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mTag:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 88
    :cond_1
    sget p1, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_two_tag_text:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 90
    iget-object p3, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mTag:Landroid/view/View;

    check-cast p3, Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p3, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :cond_2
    sget p1, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_text_sub_lines:I

    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result p3

    if-eqz p3, :cond_3

    const p3, 0x7fffffff

    goto :goto_0

    :cond_3
    const/4 p3, 0x1

    :goto_0
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 95
    iget-object p3, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mTextSub:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 97
    sget p1, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_two_left:I

    const/4 p3, -0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eq p1, p3, :cond_4

    .line 99
    iget-object p4, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mLeftViewStub:Landroid/view/ViewStub;

    invoke-virtual {p4, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 100
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mLeftViewStub:Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .line 101
    instance-of p4, p1, Landroid/view/ViewGroup;

    if-eqz p4, :cond_4

    .line 102
    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewGroupLeft:Landroid/view/ViewGroup;

    .line 105
    :cond_4
    sget p1, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_two_right:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eq p1, p3, :cond_5

    .line 107
    iget-object p4, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mRightViewStub:Landroid/view/ViewStub;

    invoke-virtual {p4, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 108
    iget-object p4, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mRightViewStub:Landroid/view/ViewStub;

    invoke-virtual {p4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p4

    .line 109
    instance-of v0, p4, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 110
    check-cast p4, Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewGroupRight:Landroid/view/ViewGroup;

    .line 113
    :cond_5
    sget p4, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_two_tag_icon:I

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    if-eq p4, p3, :cond_6

    .line 115
    invoke-virtual {p0, p4}, Lcom/xiaopeng/xui/widget/XListTwo;->setTagIcon(I)V

    .line 118
    :cond_6
    sget p4, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_two_tag:I

    const/4 v0, 0x0

    invoke-virtual {p2, p4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    .line 119
    invoke-virtual {p0, p4}, Lcom/xiaopeng/xui/widget/XListTwo;->showIconTag(Z)V

    .line 121
    sget p4, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_two_tag_custom:I

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    if-eq p4, p3, :cond_7

    .line 123
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mTagCustomViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1, p4}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 124
    iget-object p4, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mTagCustomViewStub:Landroid/view/ViewStub;

    invoke-virtual {p4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 127
    :cond_7
    sget p4, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_two_left_right_touch_full:I

    invoke-virtual {p2, p4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    iput p4, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mLeftRightTouchFull:I

    .line 128
    sget p4, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_two_left_vuiLabel:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mLeftVuiLabel:Ljava/lang/String;

    .line 129
    sget p4, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_two_right_vuiLabel:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mRightVuiLabel:Ljava/lang/String;

    .line 131
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 133
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result p2

    if-nez p2, :cond_8

    if-eq p1, p3, :cond_8

    .line 135
    sget p1, Lcom/xiaopeng/xpui/R$id;->x_list_tv_lay:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XListTwo;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 136
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListTwo;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/xiaopeng/xpui/R$dimen;->x_list_tv_margin_end:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result p3

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p4

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    .line 137
    invoke-virtual {p1, p3, p4, p2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 141
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mTextSub:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingStart()I

    move-result p3

    iget-object p4, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mTextSub:Landroid/widget/TextView;

    .line 142
    invoke-virtual {p4}, Landroid/widget/TextView;->getPaddingTop()I

    move-result p4

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mTextSub:Landroid/widget/TextView;

    .line 144
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v0

    .line 141
    invoke-virtual {p1, p3, p4, p2, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_8
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/widget/XListTwo;)Landroid/widget/TextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mNum:Landroid/widget/TextView;

    return-object p0
.end method

.method private extendTouchLeft()V
    .locals 5

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
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewGroupLeft:Landroid/view/ViewGroup;

    invoke-static {v4, v3}, Lcom/xiaopeng/xui/utils/XuiUtils;->findViewsByType(Landroid/view/ViewGroup;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 166
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 167
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/view/View;

    .line 168
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 169
    invoke-static {v4, p0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize([Landroid/view/View;Landroid/view/ViewGroup;)V

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

    :cond_3
    :goto_1
    return-void
.end method

.method private extendTouchRight()V
    .locals 5

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
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewGroupRight:Landroid/view/ViewGroup;

    invoke-static {v4, v3}, Lcom/xiaopeng/xui/utils/XuiUtils;->findViewsByType(Landroid/view/ViewGroup;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 191
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 192
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/view/View;

    .line 193
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 194
    invoke-static {v4, p0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize([Landroid/view/View;Landroid/view/ViewGroup;)V

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
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewGroupRight:Landroid/view/ViewGroup;

    invoke-static {v4, v3}, Lcom/xiaopeng/xui/utils/XuiUtils;->findViewsByType(Landroid/view/ViewGroup;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 201
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 202
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/view/View;

    .line 203
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 204
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewRightTouchArea:Landroid/view/ViewGroup;

    invoke-static {v4, v3}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize([Landroid/view/View;Landroid/view/ViewGroup;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 208
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewGroupRight:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize(Landroid/view/ViewGroup;)V

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

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mLeftView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " h "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mLeftView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

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

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewGroupRight:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " h "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewGroupRight:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

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

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListTwo;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " h "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListTwo;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListTwo;->logD(Ljava/lang/String;)V

    return-void
.end method

.method private setChildEnabled(Landroid/view/ViewGroup;Z)V
    .locals 3

    const/4 v0, 0x0

    .line 361
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 362
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 363
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

    const/4 v2, 0x0

    .line 367
    invoke-virtual {v1, v2}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 369
    :cond_1
    invoke-virtual {v1, p2}, Landroid/view/View;->setEnabled(Z)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 370
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

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

    return-void
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiElementBuilder;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 5

    .line 376
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewGroupLeft:Landroid/view/ViewGroup;

    const-string v0, "_"

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mLeftVuiLabel:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    move p2, v1

    .line 377
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewGroupLeft:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge p2, v2, :cond_1

    .line 378
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewGroupLeft:Landroid/view/ViewGroup;

    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 379
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/XListTwo;->isListNeedSetVuiLabelView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 380
    move-object v3, v2

    check-cast v3, Lcom/xiaopeng/xui/vui/VuiView;

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mLeftVuiLabel:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiLabel(Ljava/lang/String;)V

    .line 381
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiElementId(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 385
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewGroupRight:Landroid/view/ViewGroup;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mRightVuiLabel:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 386
    :goto_1
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewGroupRight:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge v1, p2, :cond_3

    .line 387
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewGroupRight:Landroid/view/ViewGroup;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 388
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XListTwo;->isListNeedSetVuiLabelView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 389
    move-object v2, p2

    check-cast v2, Lcom/xiaopeng/xui/vui/VuiView;

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mRightVuiLabel:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiLabel(Ljava/lang/String;)V

    .line 390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p2}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiElementId(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public setEnabled(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 350
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XListTwo;->setEnabled(ZZ)V

    return-void
.end method

.method public setEnabled(ZZ)V
    .locals 0

    .line 354
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setEnabled(Z)V

    if-eqz p2, :cond_0

    .line 356
    invoke-direct {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XListTwo;->setChildEnabled(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method

.method public setNum(I)V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mNum:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTagIcon(I)V
    .locals 1

    .line 323
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mTag:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setTagOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mTag:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method public setTextSub(Ljava/lang/CharSequence;)V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mTextSub:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setVuiLabels(Ljava/util/Map;)V
    .locals 3
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
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 399
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 400
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 401
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 403
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mLeftVuiLabel:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 405
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mRightVuiLabel:Ljava/lang/String;

    goto :goto_0

    .line 408
    :cond_2
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/XListTwo;->updateVui(Landroid/view/View;)V

    return-void
.end method

.method public showIconTag(Z)V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mTag:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showNum(Z)V
    .locals 6

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
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListTwo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xiaopeng/xpui/R$dimen;->x_list_left_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 266
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mLeftView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 267
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

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
    :cond_2
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mViewGroupLeft:Landroid/view/ViewGroup;

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    .line 276
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_4

    .line 278
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListTwo;->getLayoutDirection()I

    move-result v1

    if-ne v1, v4, :cond_3

    sub-int v1, v0, v2

    .line 279
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    :cond_3
    sub-int v1, v0, v2

    .line 281
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
    :cond_6
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mTvLay:Landroid/view/ViewGroup;

    if-eqz v1, :cond_a

    .line 293
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_8

    .line 295
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListTwo;->getLayoutDirection()I

    move-result p1

    if-ne p1, v4, :cond_7

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

    move-result p1

    if-ne p1, v4, :cond_9

    .line 302
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_3

    .line 304
    :cond_9
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 307
    :goto_3
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XListTwo;->mTvLay:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    :cond_a
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XListTwo;->extendTouchLeft()V

    :cond_b
    return-void
.end method
