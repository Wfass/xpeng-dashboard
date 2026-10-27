.class public Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;
.super Lcom/xiaopeng/xui/view/XView;
.source "XQuickSideBarView.java"

# interfaces
.implements Lcom/xiaopeng/xui/view/a$a;


# instance fields
.field private ajo:Lcom/xiaopeng/xui/widget/quicksidebar/a/a;

.field private ajp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ajq:I

.field private ajr:F

.field private ajs:I

.field private ajt:F

.field private aju:F

.field private final ajv:F

.field private ajw:Z

.field private ajx:Z

.field private mHeight:I

.field private mPaint:Landroid/graphics/Paint;

.field private mTextColor:I

.field private mTextSize:F

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/view/XView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const/4 p3, -0x1

    iput p3, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajq:I

    .line 30
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mPaint:Landroid/graphics/Paint;

    .line 39
    const/high16 p3, 0x41600000    # 14.0f

    iput p3, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajv:F

    .line 41
    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajx:Z

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method private synthetic a(Lcom/xiaopeng/xui/view/b/b;Lcom/xiaopeng/xui/view/b/b;)V
    .locals 1

    .line 76
    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/view/b/b;->a(Landroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mTextSize:F

    .line 79
    :cond_0
    if-eqz p2, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/view/b/b;->a(Landroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajr:F

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->invalidate()V

    .line 83
    return-void
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$array;->x_quick_side_bar_letters:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajp:Ljava/util/List;

    .line 59
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->rT()V

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$dimen;->x_sidebar_textsize:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mTextSize:F

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$dimen;->x_sidebar_choose_textsize:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajr:F

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/xiaopeng/xpui/R$dimen;->x_sidebar_item_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->aju:F

    .line 63
    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XQuickSideBarView:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 65
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XQuickSideBarView_sidebarTextColor:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mTextColor:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mTextColor:I

    .line 66
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XQuickSideBarView_sidebarTextColorChoose:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajs:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajs:I

    .line 67
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XQuickSideBarView_sidebarTextSize:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mTextSize:F

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mTextSize:F

    .line 68
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XQuickSideBarView_sidebarTextSizeChoose:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajr:F

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajr:F

    .line 69
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XQuickSideBarView_sidebarHighlight:I

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajw:Z

    .line 70
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XQuickSideBarView_sidebarTextSize:I

    sget v1, Lcom/xiaopeng/xpui/R$dimen;->x_sidebar_textsize:I

    invoke-static {p2, v0, v1}, Lcom/xiaopeng/xui/view/b/b;->a(Landroid/content/res/TypedArray;II)Lcom/xiaopeng/xui/view/b/b;

    move-result-object v0

    .line 72
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XQuickSideBarView_sidebarTextSizeChoose:I

    sget v2, Lcom/xiaopeng/xpui/R$dimen;->x_sidebar_choose_textsize:I

    invoke-static {p2, v1, v2}, Lcom/xiaopeng/xui/view/b/b;->a(Landroid/content/res/TypedArray;II)Lcom/xiaopeng/xui/view/b/b;

    move-result-object v1

    .line 74
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->abs:Lcom/xiaopeng/xui/view/a;

    new-instance v3, Lcom/xiaopeng/xui/widget/quicksidebar/-$$Lambda$XQuickSideBarView$WYQGIw5Mmn7cQl96ps5lacCAFJQ;

    invoke-direct {v3, p0, v0, v1}, Lcom/xiaopeng/xui/widget/quicksidebar/-$$Lambda$XQuickSideBarView$WYQGIw5Mmn7cQl96ps5lacCAFJQ;-><init>(Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;Lcom/xiaopeng/xui/view/b/b;Lcom/xiaopeng/xui/view/b/b;)V

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/view/a;->a(Lcom/xiaopeng/xui/view/a$a;)V

    .line 86
    :cond_0
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XQuickSideBarView_sidebarItemHeight:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->aju:F

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->aju:F

    .line 88
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 90
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/view/a;->qN()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 91
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/view/a;->qN()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object p2

    new-instance v0, Lcom/xiaopeng/xui/widget/quicksidebar/-$$Lambda$XQuickSideBarView$36yZHpmf5yyO74UXIQXjdQYvSe8;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/quicksidebar/-$$Lambda$XQuickSideBarView$36yZHpmf5yyO74UXIQXjdQYvSe8;-><init>(Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;)V

    invoke-virtual {p2, v0}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    .line 96
    :cond_2
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->setSoundEffectsEnabled(Z)V

    .line 97
    return-void
.end method

.method private synthetic eq()V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->rT()V

    .line 93
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->invalidate()V

    .line 94
    return-void
.end method

.method private getColor(I)I
    .locals 2

    .line 228
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    return p1
.end method

.method public static synthetic lambda$36yZHpmf5yyO74UXIQXjdQYvSe8(Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->eq()V

    return-void
.end method

.method public static synthetic lambda$WYQGIw5Mmn7cQl96ps5lacCAFJQ(Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;Lcom/xiaopeng/xui/view/b/b;Lcom/xiaopeng/xui/view/b/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->a(Lcom/xiaopeng/xui/view/b/b;Lcom/xiaopeng/xui/view/b/b;)V

    return-void
.end method

.method private rT()V
    .locals 1

    .line 223
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_theme_text_03:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mTextColor:I

    .line 224
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_side_bar_text_choose_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajs:I

    .line 225
    return-void
.end method

.method private setSideBarHighLight(I)V
    .locals 1

    .line 264
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajw:Z

    if-nez v0, :cond_0

    .line 265
    return-void

    .line 267
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajx:Z

    if-eqz v0, :cond_1

    .line 268
    return-void

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 271
    if-ltz p1, :cond_2

    if-ge p1, v0, :cond_2

    .line 272
    iget v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajq:I

    if-eq v0, p1, :cond_2

    .line 273
    iput p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajq:I

    .line 274
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->invalidate()V

    .line 277
    :cond_2
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 156
    iget v1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajq:I

    .line 157
    const/high16 v2, 0x41600000    # 14.0f

    sub-float/2addr p1, v2

    iget v2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->aju:F

    div-float/2addr p1, v2

    float-to-int p1, p1

    .line 158
    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 186
    :pswitch_0
    iput-boolean v5, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajx:Z

    .line 187
    invoke-static {}, Lcom/xiaopeng/xui/b/f;->qL()Lcom/xiaopeng/xui/b/f;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/b/f;->release(I)V

    .line 188
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajo:Lcom/xiaopeng/xui/widget/quicksidebar/a/a;

    if-eqz p1, :cond_0

    .line 189
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajo:Lcom/xiaopeng/xui/widget/quicksidebar/a/a;

    invoke-interface {p1, v5}, Lcom/xiaopeng/xui/widget/quicksidebar/a/a;->br(Z)V

    .line 191
    :cond_0
    iput v2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajq:I

    .line 192
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->invalidate()V

    .line 193
    goto :goto_0

    .line 160
    :pswitch_1
    iput-boolean v5, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajx:Z

    .line 161
    iput v2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajq:I

    .line 162
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajo:Lcom/xiaopeng/xui/widget/quicksidebar/a/a;

    if-eqz p1, :cond_1

    .line 163
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajo:Lcom/xiaopeng/xui/widget/quicksidebar/a/a;

    invoke-interface {p1, v5}, Lcom/xiaopeng/xui/widget/quicksidebar/a/a;->br(Z)V

    .line 165
    :cond_1
    iget-boolean p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajw:Z

    if-nez p1, :cond_2

    .line 166
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->invalidate()V

    goto :goto_0

    .line 171
    :pswitch_2
    iput-boolean v4, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajx:Z

    .line 172
    if-eq v1, p1, :cond_2

    .line 173
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 174
    iput p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajq:I

    .line 176
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->invalidate()V

    .line 177
    invoke-static {}, Lcom/xiaopeng/xui/b/f;->qL()Lcom/xiaopeng/xui/b/f;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/b/f;->play(I)V

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajo:Lcom/xiaopeng/xui/widget/quicksidebar/a/a;

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajo:Lcom/xiaopeng/xui/widget/quicksidebar/a/a;

    invoke-interface {v0, v4}, Lcom/xiaopeng/xui/widget/quicksidebar/a/a;->br(Z)V

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajo:Lcom/xiaopeng/xui/widget/quicksidebar/a/a;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajp:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajq:I

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/xui/widget/quicksidebar/a/a;->G(Ljava/lang/String;I)V

    .line 197
    :cond_2
    :goto_0
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getLetters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajp:Ljava/util/List;

    return-object v0
.end method

.method public getListener()Lcom/xiaopeng/xui/widget/quicksidebar/a/a;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajo:Lcom/xiaopeng/xui/widget/quicksidebar/a/a;

    return-object v0
.end method

.method public k(Ljava/lang/String;Z)V
    .locals 1

    .line 242
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajw:Z

    if-nez v0, :cond_0

    .line 243
    return-void

    .line 245
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajx:Z

    if-eqz v0, :cond_1

    .line 246
    return-void

    .line 248
    :cond_1
    const-string v0, "setSideBarHighLight"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->fn(Ljava/lang/String;)V

    .line 249
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 251
    if-nez p2, :cond_2

    .line 252
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajp:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    .line 254
    :cond_2
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajp:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 256
    :goto_0
    if-ltz p1, :cond_3

    iget p2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajq:I

    if-eq p2, p1, :cond_3

    .line 257
    iput p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajq:I

    .line 258
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->invalidate()V

    .line 261
    :cond_3
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 115
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/view/XView;->onDraw(Landroid/graphics/Canvas;)V

    .line 116
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajp:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 118
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 119
    iget v3, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajq:I

    if-ne v1, v3, :cond_0

    .line 120
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajr:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 121
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajs:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    sget v3, Lcom/xiaopeng/xpui/R$color;->x_side_bar_item_choose_bg_color:I

    invoke-direct {p0, v3}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 124
    :cond_0
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mTextSize:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 125
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mTextColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    sget v3, Lcom/xiaopeng/xpui/R$color;->x_side_bar_item_bg_color:I

    invoke-direct {p0, v3}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    :goto_1
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 131
    iget v4, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajt:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 132
    new-instance v6, Landroid/graphics/RectF;

    iget v7, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->aju:F

    int-to-float v8, v1

    mul-float/2addr v7, v8

    const/high16 v8, 0x41600000    # 14.0f

    add-float/2addr v7, v8

    iget v9, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajt:F

    add-float/2addr v9, v4

    add-int/lit8 v10, v1, 0x1

    int-to-float v11, v10

    iget v12, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->aju:F

    mul-float/2addr v11, v12

    add-float/2addr v8, v11

    invoke-direct {v6, v4, v7, v9, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 133
    const/high16 v4, 0x40800000    # 4.0f

    invoke-virtual {p1, v6, v4, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 136
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 137
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 138
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 139
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 140
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/xiaopeng/xpui/R$string;->x_font_typeface_medium:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 142
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 143
    iget v3, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v4, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v3, v2

    .line 144
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    add-float/2addr v2, v3

    .line 145
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajp:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 147
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    .line 116
    move v1, v10

    goto/16 :goto_0

    .line 150
    :cond_1
    return-void
.end method

.method public onFontScaleChanged()V
    .locals 0

    .line 102
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 106
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/view/XView;->onMeasure(II)V

    .line 107
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mHeight:I

    .line 108
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mWidth:I

    .line 109
    iget p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->mHeight:I

    iget-object p2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajp:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    div-int/2addr p1, p2

    int-to-float p1, p1

    .line 110
    iget p2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->aju:F

    cmpl-float p2, p2, p1

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->aju:F

    :goto_0
    iput p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->aju:F

    .line 111
    iget p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->aju:F

    iput p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajt:F

    .line 112
    return-void
.end method

.method public setLetters(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 218
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajp:Ljava/util/List;

    .line 219
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->invalidate()V

    .line 220
    return-void
.end method

.method public setOnQuickSideBarTouchListener(Lcom/xiaopeng/xui/widget/quicksidebar/a/a;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->ajo:Lcom/xiaopeng/xui/widget/quicksidebar/a/a;

    .line 206
    return-void
.end method

.method public setSideBarHighLight(Ljava/lang/String;)V
    .locals 1

    .line 232
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarView;->k(Ljava/lang/String;Z)V

    .line 233
    return-void
.end method
