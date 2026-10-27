.class Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;
.super Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;
.source "XDialogViewDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;,
        Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogCountDownHandlerCallBack;
    }
.end annotation


# instance fields
.field h:I

.field private mCloseView:Landroid/view/View;

.field private mContentView:Landroid/view/ViewGroup;

.field private mCountDownHandler:Lcom/xiaopeng/xui/widget/dialogview/XCountDown;

.field private mItemListener:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

.field private mNegativeButton:Lcom/xiaopeng/xui/widget/XButton;

.field private mNegativeInterceptDismiss:Z

.field private mNegativeListener:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnCloseListener:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCloseListener;

.field private mOnCountDownListener:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCountDownListener;

.field private mOnDismissListener:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnDismissListener;

.field private mOnTouchedListener:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnTouchedListener;

.field private mOnWindowFocusChangedListener:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnWindowFocusChangedListener;

.field private mPositiveButton:Lcom/xiaopeng/xui/widget/XButton;

.field private mPositiveInterceptDismiss:Z

.field private mPositiveListener:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

.field private mRootView:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;

.field private mTextTitle:Landroid/widget/TextView;

.field private mTextTitleLayout:Landroid/view/ViewGroup;

.field private mViewHasButtons:Landroid/view/View;

.field private mXDialogList:Lcom/xiaopeng/xui/widget/dialogview/XDialogList;

.field private mXDialogMessage:Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;

.field private mXDialogScroll:Lcom/xiaopeng/xui/widget/XScrollView;

.field w:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/dialogview/XDialogView;Landroid/content/Context;I)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;-><init>(Lcom/xiaopeng/xui/widget/dialogview/XDialogView;Landroid/content/Context;I)V

    .line 123
    new-instance p1, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$2;-><init>(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)V

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 71
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->extendTouchArea()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Lcom/xiaopeng/xui/widget/dialogview/XCountDown;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mCountDownHandler:Lcom/xiaopeng/xui/widget/dialogview/XCountDown;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;Z)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->resetTitlePadding(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Landroid/view/View;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mViewHasButtons:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Landroid/content/Context;
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCountDownListener;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mOnCountDownListener:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCountDownListener;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnWindowFocusChangedListener;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mOnWindowFocusChangedListener:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnWindowFocusChangedListener;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnTouchedListener;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mOnTouchedListener:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnTouchedListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mPositiveInterceptDismiss:Z

    return p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mNegativeInterceptDismiss:Z

    return p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mPositiveListener:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->logs(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mNegativeListener:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCloseListener;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mOnCloseListener:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCloseListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->dismiss()V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Landroid/view/View;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mCloseView:Landroid/view/View;

    return-object p0
.end method

.method private dismiss()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mOnDismissListener:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 168
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mXDelegator:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnDismissListener;->onDismiss(Lcom/xiaopeng/xui/widget/dialogview/XDialogView;)V

    :cond_0
    return-void
.end method

.method public static dp2px(Landroid/content/Context;I)I
    .locals 0

    .line 722
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private extendTouchArea()V
    .locals 4

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 526
    fill-array-data v1, :array_0

    .line 527
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mPositiveButton:Lcom/xiaopeng/xui/widget/XButton;

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mRootView:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchArea(Landroid/view/View;Landroid/view/ViewGroup;[I)V

    .line 528
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mNegativeButton:Lcom/xiaopeng/xui/widget/XButton;

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mRootView:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchArea(Landroid/view/View;Landroid/view/ViewGroup;[I)V

    .line 529
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mCloseView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/xpui/R$dimen;->x_dialog_close_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    new-array v0, v0, [I

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 531
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mCloseView:Landroid/view/View;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mRootView:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchArea(Landroid/view/View;Landroid/view/ViewGroup;[I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x14
        0x0
        0x0
    .end array-data
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private init()V
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XDialog:[I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 76
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XDialog_dialog_max_height:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    .line 77
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XDialog_dialog_width:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->w:I

    .line 78
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XDialog_dialog_height:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->h:I

    .line 79
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    new-instance v0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;-><init>(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mRootView:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;

    .line 81
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;->setMaxHeight(I)V

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mRootView:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xiaopeng/xpui/R$dimen;->x_dialog_min_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;->setMinimumHeight(I)V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mRootView:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;

    iget v2, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->w:I

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;->setWidth(I)V

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mRootView:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;

    iget v2, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->h:I

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;->setHeight(I)V

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxHeight:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",w:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", h "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->logs(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$layout;->x_dialog:I

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mRootView:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mRootView:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->initView(Landroid/view/View;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 6

    .line 91
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_dialog_title_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mTextTitleLayout:Landroid/view/ViewGroup;

    .line 92
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_dialog_close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mCloseView:Landroid/view/View;

    .line 93
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_dialog_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mTextTitle:Landroid/widget/TextView;

    .line 94
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_dialog_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mContentView:Landroid/view/ViewGroup;

    .line 96
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_dialog_button1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mPositiveButton:Lcom/xiaopeng/xui/widget/XButton;

    .line 97
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_dialog_button2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mNegativeButton:Lcom/xiaopeng/xui/widget/XButton;

    .line 98
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_dialog_has_buttons:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mViewHasButtons:Landroid/view/View;

    .line 99
    iget v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->w:I

    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x500

    invoke-static {v1, v2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->dp2px(Landroid/content/Context;I)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mViewHasButtons:Landroid/view/View;

    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-static {v1, v2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->dp2px(Landroid/content/Context;I)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mContentView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->dp2px(Landroid/content/Context;I)I

    move-result v1

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 102
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_dialog_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->dp2px(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mCloseView:Landroid/view/View;

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mPositiveButton:Lcom/xiaopeng/xui/widget/XButton;

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mNegativeButton:Lcom/xiaopeng/xui/widget/XButton;

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mRootView:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;

    new-instance v0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$1;-><init>(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private logs(Ljava/lang/String;)V
    .locals 1

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "--hashcode "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mXDelegator:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "xpui-XDialogView"

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private prepareMessage()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mXDialogMessage:Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mXDialogMessage:Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mContentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mXDialogMessage:Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private resetButton()V
    .locals 2

    .line 539
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mPositiveButton:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mNegativeButton:Lcom/xiaopeng/xui/widget/XButton;

    .line 540
    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mViewHasButtons:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 541
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mViewHasButtons:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private resetTitlePadding(Z)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 277
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mCloseView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 278
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/xpui/R$dimen;->x_dialog_close_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 280
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mTextTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 281
    instance-of v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_0

    .line 282
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p1

    sub-int/2addr v3, v2

    .line 285
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mTextTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v0, v3, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 286
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    const/4 p1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    aput-object p1, v4, v0

    const/4 p1, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, p1

    const-string p1, "resetTitlePadding closeWidth: %s ,closeMargin: %s ,textMargin: %s ,padding: %s"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->logs(Ljava/lang/String;)V

    goto :goto_1

    .line 288
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mTextTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_1
    return-void
.end method

.method private setCompatButtonLayout(Lcom/xiaopeng/xui/widget/XButton;)V
    .locals 2

    .line 322
    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$4;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$4;-><init>(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;Lcom/xiaopeng/xui/widget/XButton;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private updateVui(Lcom/xiaopeng/xui/widget/XButton;Z)V
    .locals 4

    const/4 v0, 0x0

    .line 404
    :try_start_0
    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XButton;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    const-string v3, "hasFeedback"

    if-eqz p2, :cond_0

    if-eqz v1, :cond_2

    .line 406
    :try_start_1
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 407
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 412
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 414
    :cond_1
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 415
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :goto_0
    move v0, v2

    :cond_2
    if-eqz v0, :cond_3

    .line 421
    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVuiProps(Lorg/json/JSONObject;)V

    .line 422
    invoke-virtual {p1, p1}, Lcom/xiaopeng/xui/widget/XButton;->updateVui(Landroid/view/View;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_3
    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/ViewGroup;
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mRootView:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;

    return-object v0
.end method

.method public isCloseShowing()Z
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mCloseView:Landroid/view/View;

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

.method public isNegativeButtonEnable()Z
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mNegativeButton:Lcom/xiaopeng/xui/widget/XButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNegativeButtonShowing()Z
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mNegativeButton:Lcom/xiaopeng/xui/widget/XButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPositiveButtonEnable()Z
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mPositiveButton:Lcom/xiaopeng/xui/widget/XButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPositiveButtonShowing()Z
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mPositiveButton:Lcom/xiaopeng/xui/widget/XButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$setSingleChoiceItems$0$XDialogViewDelegateImpl(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 248
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mItemListener:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    if-eqz p1, :cond_0

    .line 249
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mXDelegator:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-interface {p1, p2, p3}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;->onClick(Lcom/xiaopeng/xui/widget/dialogview/XDialogView;I)V

    :cond_0
    return-void
.end method

.method public onBuildScenePrepare()V
    .locals 7

    .line 589
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mRootView:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;

    sget v1, Lcom/xiaopeng/xpui/R$id;->x_dialog_title:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    .line 590
    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 592
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 593
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 594
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mRootView:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;->getVuiLabel()Ljava/lang/String;

    move-result-object v2

    .line 595
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 596
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mRootView:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;->setVuiLabel(Ljava/lang/String;)V

    goto :goto_0

    .line 597
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 598
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mRootView:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;

    const-string v4, "%s|%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;->setVuiLabel(Ljava/lang/String;)V

    .line 602
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mRootView:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;

    sget v2, Lcom/xiaopeng/xpui/R$id;->x_dialog_close:I

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageButton;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "generalAct"

    if-eqz v0, :cond_2

    .line 604
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "System.Close"

    .line 605
    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "canVoiceControl"

    .line 606
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 607
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XImageButton;->setVuiProps(Lorg/json/JSONObject;)V

    .line 609
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mRootView:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;

    sget v1, Lcom/xiaopeng/xpui/R$id;->x_dialog_button1:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    .line 610
    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 611
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mRootView:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/xiaopeng/xpui/R$string;->vui_label_confirm:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 612
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "System.Confirm"

    .line 613
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 614
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVuiProps(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 617
    :cond_3
    sget-object v1, Lcom/xiaopeng/vui/commons/VuiMode;->DISABLED:Lcom/xiaopeng/vui/commons/VuiMode;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVuiMode(Lcom/xiaopeng/vui/commons/VuiMode;)V

    .line 619
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mRootView:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;

    sget v1, Lcom/xiaopeng/xpui/R$id;->x_dialog_button2:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    .line 620
    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 621
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mRootView:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/xiaopeng/xpui/R$string;->vui_label_cancel:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 622
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "System.Cancel"

    .line 623
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 624
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVuiProps(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 631
    :cond_5
    sget-object v1, Lcom/xiaopeng/vui/commons/VuiMode;->DISABLED:Lcom/xiaopeng/vui/commons/VuiMode;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVuiMode(Lcom/xiaopeng/vui/commons/VuiMode;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 634
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_2
    return-void
.end method

.method public onKey(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setCloseVisibility(Z)V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mCloseView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mCloseView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    .line 258
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->resetTitlePadding(Z)V

    goto :goto_1

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mCloseView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$3;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$3;-><init>(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :goto_1
    return-void
.end method

.method public setCustomView(I)V
    .locals 1

    const/4 v0, 0x1

    .line 232
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->setCustomView(IZ)V

    return-void
.end method

.method public setCustomView(IZ)V
    .locals 3

    .line 236
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mContentView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 237
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->setCustomView(Landroid/view/View;Z)V

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 213
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->setCustomView(Landroid/view/View;Z)V

    return-void
.end method

.method public setCustomView(Landroid/view/View;Z)V
    .locals 3

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz p2, :cond_1

    .line 219
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mXDialogScroll:Lcom/xiaopeng/xui/widget/XScrollView;

    if-nez p2, :cond_0

    .line 220
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/xiaopeng/xpui/R$layout;->x_dialog_scroll:I

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mContentView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/widget/XScrollView;

    iput-object p2, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mXDialogScroll:Lcom/xiaopeng/xui/widget/XScrollView;

    .line 222
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mXDialogScroll:Lcom/xiaopeng/xui/widget/XScrollView;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/XScrollView;->removeAllViews()V

    .line 223
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mContentView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mXDialogScroll:Lcom/xiaopeng/xui/widget/XScrollView;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 224
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mXDialogScroll:Lcom/xiaopeng/xui/widget/XScrollView;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/widget/XScrollView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 226
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .line 185
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->prepareMessage()V

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mXDialogMessage:Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->setIcon(I)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 190
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->prepareMessage()V

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mXDialogMessage:Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setMessage(I)V
    .locals 1

    .line 200
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->prepareMessage()V

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mXDialogMessage:Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->setMessage(I)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 195
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->prepareMessage()V

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mXDialogMessage:Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNegativeButton(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 359
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->setNegativeButton(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->setNegativeButton(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setNegativeButton(ILcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)V
    .locals 0

    .line 379
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->setNegativeButton(I)V

    .line 380
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->setNegativeButtonListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)V

    return-void
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;)V
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mNegativeButton:Lcom/xiaopeng/xui/widget/XButton;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mNegativeButton:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 368
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->resetButton()V

    .line 369
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mNegativeButton:Lcom/xiaopeng/xui/widget/XButton;

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->setCompatButtonLayout(Lcom/xiaopeng/xui/widget/XButton;)V

    return-void
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)V
    .locals 0

    .line 384
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->setNegativeButton(Ljava/lang/CharSequence;)V

    .line 385
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->setNegativeButtonListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)V

    return-void
.end method

.method public setNegativeButtonEnable(Z)V
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mNegativeButton:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 431
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mNegativeButton:Lcom/xiaopeng/xui/widget/XButton;

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->updateVui(Lcom/xiaopeng/xui/widget/XButton;Z)V

    return-void
.end method

.method public setNegativeButtonInterceptDismiss(Z)V
    .locals 0

    .line 393
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mNegativeInterceptDismiss:Z

    return-void
.end method

.method public setNegativeButtonListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mNegativeListener:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    return-void
.end method

.method public setOnCloseListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCloseListener;)V
    .locals 0

    .line 471
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mOnCloseListener:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCloseListener;

    return-void
.end method

.method public setOnCountDownListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCountDownListener;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mOnCountDownListener:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCountDownListener;

    return-void
.end method

.method public setOnDismissListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnDismissListener;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mOnDismissListener:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnDismissListener;

    return-void
.end method

.method public setOnTouchedListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnTouchedListener;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mOnTouchedListener:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnTouchedListener;

    return-void
.end method

.method public setOnWindowFocusChangedListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnWindowFocusChangedListener;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mOnWindowFocusChangedListener:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnWindowFocusChangedListener;

    return-void
.end method

.method public setPositiveButton(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 308
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->setPositiveButton(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->setPositiveButton(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setPositiveButton(ILcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)V
    .locals 0

    .line 347
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->setPositiveButton(I)V

    .line 348
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->setPositiveButtonListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)V

    return-void
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;)V
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mPositiveButton:Lcom/xiaopeng/xui/widget/XButton;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mPositiveButton:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 317
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->resetButton()V

    .line 318
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mPositiveButton:Lcom/xiaopeng/xui/widget/XButton;

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->setCompatButtonLayout(Lcom/xiaopeng/xui/widget/XButton;)V

    return-void
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)V
    .locals 0

    .line 352
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->setPositiveButton(Ljava/lang/CharSequence;)V

    .line 353
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->setPositiveButtonListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)V

    return-void
.end method

.method public setPositiveButtonEnable(Z)V
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mPositiveButton:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 398
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mPositiveButton:Lcom/xiaopeng/xui/widget/XButton;

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->updateVui(Lcom/xiaopeng/xui/widget/XButton;Z)V

    return-void
.end method

.method public setPositiveButtonInterceptDismiss(Z)V
    .locals 0

    .line 389
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mPositiveInterceptDismiss:Z

    return-void
.end method

.method public setPositiveButtonListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mPositiveListener:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    return-void
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mXDialogList:Lcom/xiaopeng/xui/widget/dialogview/XDialogList;

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Lcom/xiaopeng/xui/widget/dialogview/XDialogList;

    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogList;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mXDialogList:Lcom/xiaopeng/xui/widget/dialogview/XDialogList;

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mContentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mXDialogList:Lcom/xiaopeng/xui/widget/dialogview/XDialogList;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mXDialogList:Lcom/xiaopeng/xui/widget/dialogview/XDialogList;

    new-instance v1, Lcom/xiaopeng/xui/widget/dialogview/-$$Lambda$XDialogViewDelegateImpl$K1C6D2DkaKw-Kn0emAtivdaUpts;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/dialogview/-$$Lambda$XDialogViewDelegateImpl$K1C6D2DkaKw-Kn0emAtivdaUpts;-><init>(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogList;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/widget/AdapterView$OnItemClickListener;)V

    .line 252
    iput-object p3, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mItemListener:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    return-void
.end method

.method public setThemeCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mRootView:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;->setThemeCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mTextTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mTextTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleBarVisibility(Z)V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mTextTitleLayout:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public setTitleVisibility(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 297
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->setTitleBarVisibility(Z)V

    return-void
.end method

.method public startNegativeButtonCountDown(I)V
    .locals 4

    .line 461
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mCountDownHandler:Lcom/xiaopeng/xui/widget/dialogview/XCountDown;

    if-eqz v0, :cond_0

    .line 462
    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->stop()V

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mNegativeButton:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    if-lez p1, :cond_1

    .line 465
    new-instance v0, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;

    new-instance v1, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogCountDownHandlerCallBack;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mNegativeButton:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v3, -0x2

    invoke-direct {v1, p0, v2, v3}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogCountDownHandlerCallBack;-><init>(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;Landroid/widget/TextView;I)V

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;-><init>(Lcom/xiaopeng/xui/widget/dialogview/XCountDown$CallBack;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mCountDownHandler:Lcom/xiaopeng/xui/widget/dialogview/XCountDown;

    .line 466
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mNegativeButton:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->start(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public startPositiveButtonCountDown(I)V
    .locals 4

    .line 451
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mCountDownHandler:Lcom/xiaopeng/xui/widget/dialogview/XCountDown;

    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->stop()V

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mPositiveButton:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    if-lez p1, :cond_1

    .line 455
    new-instance v0, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;

    new-instance v1, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogCountDownHandlerCallBack;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mPositiveButton:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v3, -0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogCountDownHandlerCallBack;-><init>(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;Landroid/widget/TextView;I)V

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;-><init>(Lcom/xiaopeng/xui/widget/dialogview/XCountDown$CallBack;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mCountDownHandler:Lcom/xiaopeng/xui/widget/dialogview/XCountDown;

    .line 456
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mPositiveButton:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->start(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
