.class public Lcom/xiaopeng/xui/widget/XListItem;
.super Lcom/xiaopeng/xui/widget/XConstraintLayout;
.source "XListItem.java"

# interfaces
.implements Lcom/xiaopeng/vui/commons/IVuiElementListener;


# instance fields
.field context:Landroid/content/Context;

.field private mBottomContent:Landroid/view/ViewGroup;

.field private mBottomViewStub:Landroid/view/ViewStub;

.field private mBottomVuiLabel:Ljava/lang/String;

.field private mLeftRightTouchFull:I

.field private mLeftViewStub:Landroid/view/ViewStub;

.field private mLeftVuiLabel:Ljava/lang/String;

.field private mNum:Landroid/widget/TextView;

.field private mRightViewStub:Landroid/view/ViewStub;

.field private mRightVuiLabel:Ljava/lang/String;

.field private mTag:Lcom/xiaopeng/xui/widget/XTextView;

.field private mTagCustomViewStub:Landroid/view/ViewStub;

.field private mText:Landroid/widget/TextView;

.field private mTextContent:Landroid/view/ViewGroup;

.field private mTextSub:Landroid/widget/TextView;

.field private mViewGroupBottom:Landroid/view/ViewGroup;

.field private mViewGroupLeft:Landroid/view/ViewGroup;

.field private mViewGroupRight:Landroid/view/ViewGroup;

.field private mViewLeftTouchArea:Landroid/view/ViewGroup;

.field private mViewRightTouchArea:Landroid/view/ViewGroup;

.field text:Ljava/lang/String;

.field textSub:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
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

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mLeftRightTouchFull:I

    .line 63
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XListItem;->context:Landroid/content/Context;

    .line 64
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XListItem:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 65
    .local v1, "typedArray":Landroid/content/res/TypedArray;
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XListItem_list_item_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "text":Ljava/lang/String;
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XListItem_list_item_text_sub:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "subText":Ljava/lang/String;
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XListItem_list_item_left:I

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 68
    .local v4, "left":I
    sget v6, Lcom/xiaopeng/xpui/R$styleable;->XListItem_list_item_right:I

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 69
    .local v6, "right":I
    sget v7, Lcom/xiaopeng/xpui/R$styleable;->XListItem_list_item_bottom:I

    invoke-virtual {v1, v7, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 70
    .local v7, "bottom":I
    sget v8, Lcom/xiaopeng/xpui/R$styleable;->XListItem_list_item_text_drawable_left:I

    invoke-virtual {v1, v8, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 71
    .local v5, "textDrawableLeft":I
    sget v8, Lcom/xiaopeng/xpui/R$styleable;->XListItem_list_item_left_right_touch_full:I

    invoke-virtual {v1, v8, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mLeftRightTouchFull:I

    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v8, Lcom/xiaopeng/xpui/R$layout;->x_list_item:I

    invoke-virtual {v0, v8, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 73
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XListItem_list_item_left_vuiLabel:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mLeftVuiLabel:Ljava/lang/String;

    .line 74
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XListItem_list_item_right_vuiLabel:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mRightVuiLabel:Ljava/lang/String;

    .line 75
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XListItem_list_item_bottom_vuiLabel:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mBottomVuiLabel:Ljava/lang/String;

    .line 76
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XListItem;->initView()V

    .line 77
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/XListItem;->setText(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xui/widget/XListItem;->setTextSub(Ljava/lang/String;)V

    .line 79
    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XListItem;->initTag(Landroid/content/res/TypedArray;)V

    .line 80
    invoke-direct {p0, v4, v6, v7}, Lcom/xiaopeng/xui/widget/XListItem;->initLayout(III)V

    .line 81
    invoke-direct {p0, v5}, Lcom/xiaopeng/xui/widget/XListItem;->initTextDrawable(I)V

    .line 82
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object v0

    iget-object v8, p0, Lcom/xiaopeng/xui/widget/XListItem;->mText:Landroid/widget/TextView;

    sget v9, Lcom/xiaopeng/xpui/R$styleable;->XListItem_list_item_text:I

    invoke-interface {v0, p1, v8, v1, v9}, Lcom/xiaopeng/xui/lang/LangPresenter;->setCustomEOLang(Landroid/content/Context;Landroid/widget/TextView;Landroid/content/res/TypedArray;I)V

    .line 84
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object v0

    iget-object v8, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTextSub:Landroid/widget/TextView;

    sget v9, Lcom/xiaopeng/xpui/R$styleable;->XListItem_list_item_text_sub:I

    invoke-interface {v0, p1, v8, v1, v9}, Lcom/xiaopeng/xui/lang/LangPresenter;->setCustomEOLang(Landroid/content/Context;Landroid/widget/TextView;Landroid/content/res/TypedArray;I)V

    .line 86
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    new-instance v0, Lcom/xiaopeng/xui/widget/XListItem$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/XListItem$1;-><init>(Lcom/xiaopeng/xui/widget/XListItem;)V

    .line 94
    .local v0, "onLayoutChangeListener":Landroid/view/View$OnLayoutChangeListener;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListItem;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/widget/XListItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XListItem;

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XListItem;->extendTouchLeft()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/widget/XListItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XListItem;

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XListItem;->extendTouchRight()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xui/widget/XListItem;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XListItem;

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mNum:Landroid/widget/TextView;

    return-object v0
.end method

.method private extendTouchLeft()V
    .locals 7

    .line 281
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewGroupLeft:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 282
    iget v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mLeftRightTouchFull:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 283
    sget-object v0, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->CLASSES:[Ljava/lang/Class;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 284
    .local v3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewGroupLeft:Landroid/view/ViewGroup;

    invoke-static {v4, v3}, Lcom/xiaopeng/xui/utils/XuiUtils;->findViewsByType(Landroid/view/ViewGroup;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 285
    .local v4, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 286
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/view/View;

    .line 287
    .local v5, "views1":[Landroid/view/View;
    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 288
    invoke-static {v5, p0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize([Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 283
    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v5    # "views1":[Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 292
    :cond_1
    sget-object v0, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->CLASSES:[Ljava/lang/Class;

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 293
    .restart local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewGroupLeft:Landroid/view/ViewGroup;

    invoke-static {v4, v3}, Lcom/xiaopeng/xui/utils/XuiUtils;->findViewsByType(Landroid/view/ViewGroup;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 294
    .restart local v4    # "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 295
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/view/View;

    .line 296
    .restart local v5    # "views1":[Landroid/view/View;
    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 297
    iget-object v6, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewLeftTouchArea:Landroid/view/ViewGroup;

    invoke-static {v5, v6}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize([Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 292
    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v5    # "views1":[Landroid/view/View;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 302
    :cond_3
    return-void
.end method

.method private extendTouchRight()V
    .locals 7

    .line 305
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewGroupRight:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 306
    iget v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mLeftRightTouchFull:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 307
    sget-object v0, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->CLASSES:[Ljava/lang/Class;

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 308
    .local v3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewGroupRight:Landroid/view/ViewGroup;

    invoke-static {v4, v3}, Lcom/xiaopeng/xui/utils/XuiUtils;->findViewsByType(Landroid/view/ViewGroup;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 309
    .local v4, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 310
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/view/View;

    .line 311
    .local v5, "views1":[Landroid/view/View;
    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 312
    invoke-static {v5, p0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize([Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 307
    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v5    # "views1":[Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 316
    :cond_1
    sget-object v0, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->CLASSES:[Ljava/lang/Class;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 317
    .restart local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewGroupRight:Landroid/view/ViewGroup;

    invoke-static {v4, v3}, Lcom/xiaopeng/xui/utils/XuiUtils;->findViewsByType(Landroid/view/ViewGroup;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 318
    .restart local v4    # "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 319
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/view/View;

    .line 320
    .restart local v5    # "views1":[Landroid/view/View;
    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 321
    iget-object v6, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewRightTouchArea:Landroid/view/ViewGroup;

    invoke-static {v5, v6}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize([Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 316
    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v5    # "views1":[Landroid/view/View;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 326
    :cond_3
    return-void
.end method

.method private initLayout(III)V
    .locals 6
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "bottom"    # I

    .line 172
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 173
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XListItem;->mLeftViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 174
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XListItem;->mLeftViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 175
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 176
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewGroupLeft:Landroid/view/ViewGroup;

    .line 179
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    if-eq p2, v0, :cond_2

    .line 180
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XListItem;->mRightViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1, p2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 181
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XListItem;->mRightViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 182
    .restart local v1    # "view":Landroid/view/View;
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTextContent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 183
    .local v2, "layoutParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListItem;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    const/16 v5, 0x7f

    if-ne v3, v4, :cond_1

    .line 184
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 186
    :cond_1
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    .line 188
    :goto_0
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 189
    move-object v3, v1

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewGroupRight:Landroid/view/ViewGroup;

    .line 192
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "layoutParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    :cond_2
    const/4 v1, 0x0

    if-eq p3, v0, :cond_4

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mBottomContent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mBottomViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0, p3}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mBottomViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 196
    .local v0, "view":Landroid/view/View;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    .line 197
    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewGroupBottom:Landroid/view/ViewGroup;

    .line 199
    .end local v0    # "view":Landroid/view/View;
    :cond_3
    goto :goto_1

    .line 200
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mBottomContent:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 203
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTextContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 204
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewGroupBottom:Landroid/view/ViewGroup;

    if-eqz v2, :cond_5

    .line 205
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTextContent:Landroid/view/ViewGroup;

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setMinHeight(I)V

    .line 207
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/xpui/R$dimen;->x_list_item_padding1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 208
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/xpui/R$dimen;->x_list_item_padding3:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto/16 :goto_3

    .line 210
    :cond_5
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XListItem;->textSub:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 211
    const-string v1, "XListItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initLayout: setMinWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/xiaopeng/xpui/R$dimen;->x_list_item_text_min_height1:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTextContent:Landroid/view/ViewGroup;

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xiaopeng/xpui/R$dimen;->x_list_item_text_min_height1:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setMinHeight(I)V

    goto :goto_2

    .line 214
    :cond_6
    const-string v1, "XListItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initLayout: setMinWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/xiaopeng/xpui/R$dimen;->x_list_item_text_min_height2:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTextContent:Landroid/view/ViewGroup;

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xiaopeng/xpui/R$dimen;->x_list_item_text_min_height2:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setMinHeight(I)V

    .line 217
    :goto_2
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/xpui/R$dimen;->x_list_item_padding2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 218
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/xpui/R$dimen;->x_list_item_padding2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 220
    :goto_3
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListItem;->invalidate()V

    .line 221
    return-void
.end method

.method private initTag(Landroid/content/res/TypedArray;)V
    .locals 5
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;

    .line 141
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XListItem_list_item_tag_background:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 142
    .local v0, "tagDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 143
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTag:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 146
    :cond_0
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XListItem_list_item_tag_text_color:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xiaopeng/xpui/R$color;->x_color_text_1:I

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListItem;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 147
    .local v1, "tagColor":I
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTag:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setTextColor(I)V

    .line 148
    if-eqz v0, :cond_1

    .line 149
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTag:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 152
    :cond_1
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XListItem_list_item_tag_text:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "tagText":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 154
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTag:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v3, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :cond_2
    if-nez v0, :cond_4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 160
    :cond_3
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTag:Lcom/xiaopeng/xui/widget/XTextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_1

    .line 158
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTag:Lcom/xiaopeng/xui/widget/XTextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 163
    :goto_1
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XListItem_list_item_tag_custom:I

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 164
    .local v3, "tag_custom":I
    if-eq v3, v4, :cond_5

    .line 165
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTagCustomViewStub:Landroid/view/ViewStub;

    invoke-virtual {v4, v3}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 166
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTagCustomViewStub:Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 168
    :cond_5
    return-void
.end method

.method private initTextDrawable(I)V
    .locals 1
    .param p1, "textDrawableLeft"    # I

    .line 98
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 99
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XListItem;->setTextLeftDrawable(I)V

    .line 101
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 2

    .line 104
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_tv:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mText:Landroid/widget/TextView;

    .line 105
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_tv_sub:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTextSub:Landroid/widget/TextView;

    .line 106
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_num:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mNum:Landroid/widget/TextView;

    .line 107
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_left:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mLeftViewStub:Landroid/view/ViewStub;

    .line 108
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_right:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mRightViewStub:Landroid/view/ViewStub;

    .line 109
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_tag_custom_lay:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTagCustomViewStub:Landroid/view/ViewStub;

    .line 110
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_tag:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTag:Lcom/xiaopeng/xui/widget/XTextView;

    .line 111
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_right_touch_area:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewRightTouchArea:Landroid/view/ViewGroup;

    .line 112
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_left_touch_area:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewLeftTouchArea:Landroid/view/ViewGroup;

    .line 113
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_bottom:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mBottomViewStub:Landroid/view/ViewStub;

    .line 114
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_bottom_content:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mBottomContent:Landroid/view/ViewGroup;

    .line 115
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_text_content:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTextContent:Landroid/view/ViewGroup;

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mNum:Landroid/widget/TextView;

    new-instance v1, Lcom/xiaopeng/xui/widget/XListItem$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/XListItem$2;-><init>(Lcom/xiaopeng/xui/widget/XListItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 137
    return-void
.end method

.method private setChildEnabled(Landroid/view/ViewGroup;Z)V
    .locals 3
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "enabled"    # Z

    .line 341
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 342
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 343
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 344
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, p2}, Lcom/xiaopeng/xui/widget/XListItem;->setChildEnabled(Landroid/view/ViewGroup;Z)V

    .line 346
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 347
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 349
    :cond_1
    invoke-virtual {v1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 350
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 341
    .end local v1    # "view":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    .end local v0    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public getTagView()Lcom/xiaopeng/xui/widget/XTextView;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTag:Lcom/xiaopeng/xui/widget/XTextView;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 275
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->onAttachedToWindow()V

    .line 276
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XListItem;->extendTouchLeft()V

    .line 277
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XListItem;->extendTouchRight()V

    .line 278
    return-void
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiElementBuilder;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 6
    .param p1, "vuiElementId"    # Ljava/lang/String;
    .param p2, "builder"    # Lcom/xiaopeng/vui/commons/IVuiElementBuilder;

    .line 356
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewGroupLeft:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mLeftVuiLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 357
    move v0, v1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewGroupLeft:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 358
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewGroupLeft:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 359
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/XListItem;->isListNeedSetVuiLabelView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/xiaopeng/xui/vui/VuiView;

    invoke-interface {v3}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiLabel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 360
    move-object v3, v2

    check-cast v3, Lcom/xiaopeng/xui/vui/VuiView;

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListItem;->mLeftVuiLabel:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiLabel(Ljava/lang/String;)V

    .line 361
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

    .line 362
    goto :goto_1

    .line 357
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 366
    .end local v0    # "i":I
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewGroupRight:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mRightVuiLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 367
    move v0, v1

    .restart local v0    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewGroupRight:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 368
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewGroupRight:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 369
    .restart local v2    # "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/XListItem;->isListNeedSetVuiLabelView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 370
    move-object v3, v2

    check-cast v3, Lcom/xiaopeng/xui/vui/VuiView;

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListItem;->mRightVuiLabel:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiLabel(Ljava/lang/String;)V

    .line 371
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

    .line 367
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 375
    .end local v0    # "i":I
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewGroupBottom:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mBottomVuiLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 376
    nop

    .local v1, "i":I
    :goto_3
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewGroupBottom:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 377
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewGroupBottom:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 378
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XListItem;->isListNeedSetVuiLabelView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 379
    move-object v2, v1

    check-cast v2, Lcom/xiaopeng/xui/vui/VuiView;

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XListItem;->mBottomVuiLabel:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiLabel(Ljava/lang/String;)V

    .line 380
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

    .line 376
    .end local v1    # "view":Landroid/view/View;
    :cond_4
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    goto :goto_3

    .line 384
    .end local v1    # "i":I
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 330
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XListItem;->setEnabled(ZZ)V

    .line 331
    return-void
.end method

.method public setEnabled(ZZ)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "containChild"    # Z

    .line 334
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->setEnabled(Z)V

    .line 335
    if-eqz p2, :cond_0

    .line 336
    invoke-direct {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XListItem;->setChildEnabled(Landroid/view/ViewGroup;Z)V

    .line 338
    :cond_0
    return-void
.end method

.method public setNum(I)V
    .locals 2
    .param p1, "num"    # I

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mNum:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    return-void
.end method

.method public setTagVisible(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTag:Lcom/xiaopeng/xui/widget/XTextView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 271
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XListItem;->text:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public setTextLeftDrawable(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 253
    return-void
.end method

.method public setTextSub(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 256
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTextSub:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTextSub:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTextSub:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    :goto_0
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XListItem;->textSub:Ljava/lang/String;

    .line 263
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

    .line 388
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 389
    .local v0, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 390
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 391
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 392
    .local v2, "key":I
    if-nez v2, :cond_0

    .line 393
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/xiaopeng/xui/widget/XListItem;->mLeftVuiLabel:Ljava/lang/String;

    goto :goto_1

    .line 394
    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 395
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/xiaopeng/xui/widget/XListItem;->mRightVuiLabel:Ljava/lang/String;

    goto :goto_1

    .line 396
    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 397
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/xiaopeng/xui/widget/XListItem;->mBottomVuiLabel:Ljava/lang/String;

    .line 399
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v2    # "key":I
    :cond_2
    :goto_1
    goto :goto_0

    .line 400
    :cond_3
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/XListItem;->updateVui(Landroid/view/View;)V

    .line 401
    return-void
.end method

.method public showNum(Z)V
    .locals 2
    .param p1, "show"    # Z

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mNum:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    return-void
.end method
