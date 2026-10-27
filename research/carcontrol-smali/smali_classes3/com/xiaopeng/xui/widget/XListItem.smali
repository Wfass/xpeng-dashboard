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

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    .line 44
    iput p3, p0, Lcom/xiaopeng/xui/widget/XListItem;->mLeftRightTouchFull:I

    .line 64
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XListItem;->context:Landroid/content/Context;

    .line 65
    sget-object p4, Lcom/xiaopeng/xpui/R$styleable;->XListItem:[I

    invoke-virtual {p1, p2, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 66
    sget p4, Lcom/xiaopeng/xpui/R$styleable;->XListItem_list_item_text:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 67
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XListItem_list_item_text_sub:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XListItem_list_item_left:I

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 69
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XListItem_list_item_right:I

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 70
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XListItem_list_item_bottom:I

    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 71
    sget v5, Lcom/xiaopeng/xpui/R$styleable;->XListItem_list_item_text_drawable_left:I

    invoke-virtual {p2, v5, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 72
    sget v5, Lcom/xiaopeng/xpui/R$styleable;->XListItem_list_item_left_right_touch_full:I

    invoke-virtual {p2, v5, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/widget/XListItem;->mLeftRightTouchFull:I

    .line 73
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget v5, Lcom/xiaopeng/xpui/R$layout;->x_list_item:I

    invoke-virtual {p3, v5, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 74
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XListItem_list_item_left_vuiLabel:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaopeng/xui/widget/XListItem;->mLeftVuiLabel:Ljava/lang/String;

    .line 75
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XListItem_list_item_right_vuiLabel:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaopeng/xui/widget/XListItem;->mRightVuiLabel:Ljava/lang/String;

    .line 76
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XListItem_list_item_bottom_vuiLabel:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaopeng/xui/widget/XListItem;->mBottomVuiLabel:Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XListItem;->initView()V

    .line 78
    invoke-virtual {p0, p4}, Lcom/xiaopeng/xui/widget/XListItem;->setText(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListItem;->setTextSub(Ljava/lang/String;)V

    .line 80
    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/widget/XListItem;->initTag(Landroid/content/res/TypedArray;)V

    .line 81
    invoke-direct {p0, v1, v3, v4}, Lcom/xiaopeng/xui/widget/XListItem;->initLayout(III)V

    .line 82
    invoke-direct {p0, v2}, Lcom/xiaopeng/xui/widget/XListItem;->initTextDrawable(I)V

    .line 83
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 84
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object p3

    iget-object p4, p0, Lcom/xiaopeng/xui/widget/XListItem;->mText:Landroid/widget/TextView;

    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XListItem_list_item_text:I

    invoke-interface {p3, p1, p4, p2, v0}, Lcom/xiaopeng/xui/lang/LangPresenter;->setCustomEOLang(Landroid/content/Context;Landroid/widget/TextView;Landroid/content/res/TypedArray;I)V

    .line 85
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object p3

    iget-object p4, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTextSub:Landroid/widget/TextView;

    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XListItem_list_item_text_sub:I

    invoke-interface {p3, p1, p4, p2, v0}, Lcom/xiaopeng/xui/lang/LangPresenter;->setCustomEOLang(Landroid/content/Context;Landroid/widget/TextView;Landroid/content/res/TypedArray;I)V

    .line 87
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    new-instance p1, Lcom/xiaopeng/xui/widget/XListItem$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xui/widget/XListItem$1;-><init>(Lcom/xiaopeng/xui/widget/XListItem;)V

    .line 95
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XListItem;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/widget/XListItem;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XListItem;->extendTouchLeft()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/widget/XListItem;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XListItem;->extendTouchRight()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xui/widget/XListItem;)Landroid/widget/TextView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mNum:Landroid/widget/TextView;

    return-object p0
.end method

.method private extendTouchLeft()V
    .locals 5

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewGroupLeft:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 299
    iget v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mLeftRightTouchFull:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 300
    sget-object v0, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->CLASSES:[Ljava/lang/Class;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 301
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewGroupLeft:Landroid/view/ViewGroup;

    invoke-static {v4, v3}, Lcom/xiaopeng/xui/utils/XuiUtils;->findViewsByType(Landroid/view/ViewGroup;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 302
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 303
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/view/View;

    .line 304
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 305
    invoke-static {v4, p0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize([Landroid/view/View;Landroid/view/ViewGroup;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 309
    :cond_1
    sget-object v0, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->CLASSES:[Ljava/lang/Class;

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 310
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewGroupLeft:Landroid/view/ViewGroup;

    invoke-static {v4, v3}, Lcom/xiaopeng/xui/utils/XuiUtils;->findViewsByType(Landroid/view/ViewGroup;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 311
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 312
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/view/View;

    .line 313
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 314
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewLeftTouchArea:Landroid/view/ViewGroup;

    invoke-static {v4, v3}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize([Landroid/view/View;Landroid/view/ViewGroup;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private extendTouchRight()V
    .locals 5

    .line 322
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewGroupRight:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 323
    iget v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mLeftRightTouchFull:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 324
    sget-object v0, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->CLASSES:[Ljava/lang/Class;

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 325
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewGroupRight:Landroid/view/ViewGroup;

    invoke-static {v4, v3}, Lcom/xiaopeng/xui/utils/XuiUtils;->findViewsByType(Landroid/view/ViewGroup;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 326
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 327
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/view/View;

    .line 328
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 329
    invoke-static {v4, p0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize([Landroid/view/View;Landroid/view/ViewGroup;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 333
    :cond_1
    sget-object v0, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->CLASSES:[Ljava/lang/Class;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 334
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewGroupRight:Landroid/view/ViewGroup;

    invoke-static {v4, v3}, Lcom/xiaopeng/xui/utils/XuiUtils;->findViewsByType(Landroid/view/ViewGroup;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 335
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 336
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/view/View;

    .line 337
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 338
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewRightTouchArea:Landroid/view/ViewGroup;

    invoke-static {v4, v3}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize([Landroid/view/View;Landroid/view/ViewGroup;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private initLayout(III)V
    .locals 6

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 174
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XListItem;->mLeftViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 175
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XListItem;->mLeftViewStub:Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .line 176
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 177
    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewGroupLeft:Landroid/view/ViewGroup;

    :cond_0
    const/4 p1, 0x1

    const/high16 v1, 0x41c00000    # 24.0f

    const/high16 v2, 0x42800000    # 64.0f

    if-eq p2, v0, :cond_2

    .line 181
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XListItem;->mRightViewStub:Landroid/view/ViewStub;

    invoke-virtual {v3, p2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 182
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XListItem;->mRightViewStub:Landroid/view/ViewStub;

    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    .line 183
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTextContent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 184
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    const/high16 v5, 0x42fe0000    # 127.0f

    if-ne v4, p1, :cond_1

    .line 185
    invoke-static {v5}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->dp2px(F)I

    move-result p1

    iput p1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 186
    invoke-static {v1}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->dp2px(F)I

    move-result p1

    iput p1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    .line 187
    invoke-static {v2}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->dp2px(F)I

    move-result p1

    iput p1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    goto :goto_0

    .line 189
    :cond_1
    invoke-static {v1}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->dp2px(F)I

    move-result p1

    iput p1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 190
    invoke-static {v5}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->dp2px(F)I

    move-result p1

    iput p1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    .line 191
    invoke-static {v2}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->dp2px(F)I

    move-result p1

    iput p1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 193
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTextContent:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    instance-of p1, p2, Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    .line 195
    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewGroupRight:Landroid/view/ViewGroup;

    goto :goto_1

    .line 198
    :cond_2
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTextContent:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 199
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-ne v3, p1, :cond_3

    .line 200
    invoke-static {v2}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->dp2px(F)I

    move-result p1

    iput p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 201
    invoke-static {v1}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->dp2px(F)I

    move-result p1

    iput p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    .line 202
    invoke-static {v2}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->dp2px(F)I

    move-result p1

    iput p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    goto :goto_1

    .line 204
    :cond_3
    invoke-static {v1}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->dp2px(F)I

    move-result p1

    iput p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 205
    invoke-static {v2}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->dp2px(F)I

    move-result p1

    iput p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    .line 206
    invoke-static {v2}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->dp2px(F)I

    move-result p1

    iput p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    :cond_4
    :goto_1
    const/4 p1, 0x0

    if-eq p3, v0, :cond_5

    .line 210
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XListItem;->mBottomContent:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 211
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XListItem;->mBottomViewStub:Landroid/view/ViewStub;

    invoke-virtual {p2, p3}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 212
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XListItem;->mBottomViewStub:Landroid/view/ViewStub;

    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    .line 213
    instance-of p3, p2, Landroid/view/ViewGroup;

    if-eqz p3, :cond_6

    .line 214
    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewGroupBottom:Landroid/view/ViewGroup;

    goto :goto_2

    .line 217
    :cond_5
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XListItem;->mBottomContent:Landroid/view/ViewGroup;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 220
    :cond_6
    :goto_2
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTextContent:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 221
    iget-object p3, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewGroupBottom:Landroid/view/ViewGroup;

    if-eqz p3, :cond_7

    .line 222
    iget-object p3, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTextContent:Landroid/view/ViewGroup;

    check-cast p3, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p3, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setMinHeight(I)V

    .line 224
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListItem;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/xiaopeng/xpui/R$dimen;->x_list_item_padding1:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 225
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListItem;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/xiaopeng/xpui/R$dimen;->x_list_item_padding3:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto/16 :goto_4

    .line 227
    :cond_7
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XListItem;->textSub:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string p3, "initLayout: setMinWidth = "

    const-string v0, "XListItem"

    if-eqz p1, :cond_8

    .line 228
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListItem;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/xiaopeng/xpui/R$dimen;->x_list_item_text_min_height1:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTextContent:Landroid/view/ViewGroup;

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListItem;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/xiaopeng/xpui/R$dimen;->x_list_item_text_min_height1:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p1, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setMinHeight(I)V

    goto :goto_3

    .line 231
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListItem;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/xiaopeng/xpui/R$dimen;->x_list_item_text_min_height2:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTextContent:Landroid/view/ViewGroup;

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListItem;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/xiaopeng/xpui/R$dimen;->x_list_item_text_min_height2:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p1, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setMinHeight(I)V

    .line 234
    :goto_3
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListItem;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/xiaopeng/xpui/R$dimen;->x_list_item_padding2:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 235
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListItem;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/xiaopeng/xpui/R$dimen;->x_list_item_padding2:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 237
    :goto_4
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListItem;->invalidate()V

    return-void
.end method

.method private initTag(Landroid/content/res/TypedArray;)V
    .locals 5

    .line 142
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XListItem_list_item_tag_background:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTag:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 147
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

    .line 148
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTag:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setTextColor(I)V

    if-eqz v0, :cond_1

    .line 150
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTag:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 153
    :cond_1
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XListItem_list_item_tag_text:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 155
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTag:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    if-nez v0, :cond_4

    .line 158
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTag:Lcom/xiaopeng/xui/widget/XTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_1

    .line 159
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTag:Lcom/xiaopeng/xui/widget/XTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 164
    :goto_1
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XListItem_list_item_tag_custom:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eq p1, v1, :cond_5

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTagCustomViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 167
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTagCustomViewStub:Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_5
    return-void
.end method

.method private initTextDrawable(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 100
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XListItem;->setTextLeftDrawable(I)V

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 2

    .line 105
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_tv:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mText:Landroid/widget/TextView;

    .line 106
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_tv_sub:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTextSub:Landroid/widget/TextView;

    .line 107
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_num:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mNum:Landroid/widget/TextView;

    .line 108
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_left:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mLeftViewStub:Landroid/view/ViewStub;

    .line 109
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_right:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mRightViewStub:Landroid/view/ViewStub;

    .line 110
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_tag_custom_lay:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTagCustomViewStub:Landroid/view/ViewStub;

    .line 111
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_tag:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTag:Lcom/xiaopeng/xui/widget/XTextView;

    .line 112
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_right_touch_area:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewRightTouchArea:Landroid/view/ViewGroup;

    .line 113
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_left_touch_area:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewLeftTouchArea:Landroid/view/ViewGroup;

    .line 114
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_bottom:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mBottomViewStub:Landroid/view/ViewStub;

    .line 115
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_bottom_content:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mBottomContent:Landroid/view/ViewGroup;

    .line 116
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_text_content:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTextContent:Landroid/view/ViewGroup;

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mNum:Landroid/widget/TextView;

    new-instance v1, Lcom/xiaopeng/xui/widget/XListItem$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/XListItem$2;-><init>(Lcom/xiaopeng/xui/widget/XListItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private setChildEnabled(Landroid/view/ViewGroup;Z)V
    .locals 3

    const/4 v0, 0x0

    .line 358
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 359
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 360
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 361
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, p2}, Lcom/xiaopeng/xui/widget/XListItem;->setChildEnabled(Landroid/view/ViewGroup;Z)V

    .line 363
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 364
    invoke-virtual {v1, v2}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 366
    :cond_1
    invoke-virtual {v1, p2}, Landroid/view/View;->setEnabled(Z)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 367
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getTagView()Lcom/xiaopeng/xui/widget/XTextView;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTag:Lcom/xiaopeng/xui/widget/XTextView;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 292
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->onAttachedToWindow()V

    .line 293
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XListItem;->extendTouchLeft()V

    .line 294
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XListItem;->extendTouchRight()V

    return-void
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiElementBuilder;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 5

    .line 373
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewGroupLeft:Landroid/view/ViewGroup;

    const-string v0, "_"

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XListItem;->mLeftVuiLabel:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    move p2, v1

    .line 374
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewGroupLeft:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge p2, v2, :cond_1

    .line 375
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewGroupLeft:Landroid/view/ViewGroup;

    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 376
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/XListItem;->isListNeedSetVuiLabelView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/xiaopeng/xui/vui/VuiView;

    invoke-interface {v3}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiLabel()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 377
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XListItem;->mLeftVuiLabel:Ljava/lang/String;

    invoke-interface {v3, p2}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiLabel(Ljava/lang/String;)V

    .line 378
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v3, p2}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiElementId(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 383
    :cond_1
    :goto_1
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewGroupRight:Landroid/view/ViewGroup;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XListItem;->mRightVuiLabel:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    move p2, v1

    .line 384
    :goto_2
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewGroupRight:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge p2, v2, :cond_3

    .line 385
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewGroupRight:Landroid/view/ViewGroup;

    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 386
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/XListItem;->isListNeedSetVuiLabelView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 387
    move-object v3, v2

    check-cast v3, Lcom/xiaopeng/xui/vui/VuiView;

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListItem;->mRightVuiLabel:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiLabel(Ljava/lang/String;)V

    .line 388
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

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 392
    :cond_3
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewGroupBottom:Landroid/view/ViewGroup;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XListItem;->mBottomVuiLabel:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 393
    :goto_3
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewGroupBottom:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge v1, p2, :cond_5

    .line 394
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XListItem;->mViewGroupBottom:Landroid/view/ViewGroup;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 395
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XListItem;->isListNeedSetVuiLabelView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 396
    move-object v2, p2

    check-cast v2, Lcom/xiaopeng/xui/vui/VuiView;

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XListItem;->mBottomVuiLabel:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiLabel(Ljava/lang/String;)V

    .line 397
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

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public setEnabled(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 347
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XListItem;->setEnabled(ZZ)V

    return-void
.end method

.method public setEnabled(ZZ)V
    .locals 0

    .line 351
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->setEnabled(Z)V

    if-eqz p2, :cond_0

    .line 353
    invoke-direct {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XListItem;->setChildEnabled(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method

.method public setNum(I)V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mNum:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTagVisible(Z)V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTag:Lcom/xiaopeng/xui/widget/XTextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XListItem;->text:Ljava/lang/String;

    return-void
.end method

.method public setTextLeftDrawable(I)V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    return-void
.end method

.method public setTextSub(Ljava/lang/String;)V
    .locals 2

    .line 273
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTextSub:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTextSub:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mTextSub:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    :goto_0
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XListItem;->textSub:Ljava/lang/String;

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

    .line 405
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 406
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 407
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 408
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 410
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mLeftVuiLabel:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 412
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mRightVuiLabel:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 414
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mBottomVuiLabel:Ljava/lang/String;

    goto :goto_0

    .line 417
    :cond_3
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/XListItem;->updateVui(Landroid/view/View;)V

    return-void
.end method

.method public showNum(Z)V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem;->mNum:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
