.class public Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;
.super Landroid/view/View;
.source "TabView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/devdebug/drivemode/TabView$a;
    }
.end annotation


# instance fields
.field private count:I

.field private duration:I

.field private height:I

.field private qD:Landroid/graphics/Paint;

.field private qE:Landroid/graphics/Paint;

.field private qF:Landroid/graphics/Paint;

.field private qG:Landroid/graphics/Paint;

.field private qH:F

.field private qI:F

.field private qJ:F

.field private qK:I

.field private qL:I

.field private qM:I

.field private qN:Z

.field private qO:F

.field private qP:[Ljava/lang/String;

.field private qQ:I

.field private qR:I

.field private qS:I

.field private qT:I

.field private qU:F

.field private qV:F

.field private qW:Lcom/a/a/i;

.field private qX:F

.field private qY:Lcom/xiaopeng/devtools/devdebug/drivemode/TabView$a;

.field private rect:Landroid/graphics/Rect;

.field private rectF:Landroid/graphics/RectF;

.field private textSize:I

.field private touchSlop:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const/4 p3, 0x0

    iput p3, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qM:I

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->init(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method private a(Landroid/graphics/Paint;)F
    .locals 4

    .line 256
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    .line 257
    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    add-double/2addr v0, v2

    div-double/2addr v0, v2

    double-to-float p1, v0

    return p1
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;)F
    .locals 0

    .line 27
    iget p0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qX:F

    return p0
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;F)F
    .locals 0

    .line 27
    iput p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qX:F

    return p1
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 75
    sget-object v0, Lcom/xiaopeng/devtools/R$styleable;->TabView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 76
    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 77
    if-eqz p2, :cond_0

    const-string v0, ";"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qP:[Ljava/lang/String;

    .line 78
    nop

    .line 79
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/high16 v0, 0x41600000    # 14.0f

    const/4 v1, 0x1

    invoke-static {v1, v0, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    .line 78
    const/4 v2, 0x6

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->textSize:I

    .line 80
    nop

    .line 81
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    invoke-static {v1, v0, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    .line 80
    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qO:F

    .line 82
    const/4 p2, 0x0

    const-string v0, "#FF4081"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qS:I

    iput p2, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qQ:I

    .line 83
    const-string p2, "#ffffff"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qT:I

    iput p2, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qR:I

    .line 84
    const/4 p2, 0x3

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    int-to-float p2, p2

    iput p2, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qU:F

    .line 85
    const/4 p2, 0x4

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    int-to-float p2, p2

    iput p2, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qV:F

    .line 86
    const/4 p2, 0x2

    const/16 v0, 0xfa

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->duration:I

    .line 87
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;)Lcom/xiaopeng/devtools/devdebug/drivemode/TabView$a;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qY:Lcom/xiaopeng/devtools/devdebug/drivemode/TabView$a;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qL:I

    return p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 91
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->touchSlop:I

    .line 93
    iget-object p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qP:[Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qP:[Ljava/lang/String;

    array-length p1, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->count:I

    .line 95
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->rect:Landroid/graphics/Rect;

    .line 96
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->rectF:Landroid/graphics/RectF;

    .line 97
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qD:Landroid/graphics/Paint;

    .line 98
    iget-object p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qD:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qQ:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qE:Landroid/graphics/Paint;

    .line 101
    iget-object p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qE:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qR:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qF:Landroid/graphics/Paint;

    .line 104
    iget-object p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qF:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->textSize:I

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 105
    iget-object p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qF:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 106
    iget-object p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qF:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qS:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qG:Landroid/graphics/Paint;

    .line 109
    iget-object p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qG:Landroid/graphics/Paint;

    iget v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->textSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 110
    iget-object p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qG:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 111
    iget-object p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qG:Landroid/graphics/Paint;

    iget v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qT:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Lcom/a/a/i;->b([F)Lcom/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qW:Lcom/a/a/i;

    .line 114
    iget-object p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qW:Lcom/a/a/i;

    iget v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->duration:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/a/a/i;->h(J)Lcom/a/a/i;

    .line 115
    iget-object p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qW:Lcom/a/a/i;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Lcom/a/a/i;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 116
    iget-object p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qW:Lcom/a/a/i;

    new-instance v0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView$1;-><init>(Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;)V

    invoke-virtual {p1, v0}, Lcom/a/a/i;->a(Lcom/a/a/i$b;)V

    .line 123
    iget-object p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qW:Lcom/a/a/i;

    new-instance v0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView$2;-><init>(Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;)V

    invoke-virtual {p1, v0}, Lcom/a/a/i;->a(Lcom/a/a/a$a;)V

    .line 147
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public b(IZ)V
    .locals 1

    .line 296
    iget v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qL:I

    if-ne p1, v0, :cond_0

    .line 297
    return-void

    .line 299
    :cond_0
    iget v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qL:I

    iput v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qK:I

    .line 300
    iput p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qL:I

    .line 301
    if-eqz p2, :cond_1

    .line 302
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->start()V

    goto :goto_0

    .line 304
    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qX:F

    .line 305
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->invalidate()V

    .line 307
    :goto_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 151
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 152
    iget v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->count:I

    if-gtz v0, :cond_0

    .line 153
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->rect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->width:I

    iget v2, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->height:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->rectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->rectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qO:F

    iget v2, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qO:F

    iget-object v4, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qD:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->rect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qU:F

    float-to-int v1, v1

    iget v2, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qU:F

    float-to-int v2, v2

    iget v4, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->width:I

    int-to-float v4, v4

    iget v5, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qU:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->height:I

    int-to-float v5, v5

    iget v6, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qU:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->rectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->rectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qO:F

    iget v2, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qO:F

    iget-object v4, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qE:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 166
    iget v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qV:F

    iget v1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qH:F

    iget v2, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qK:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 167
    iget v1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qV:F

    iget v2, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qH:F

    iget v4, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qL:I

    int-to-float v4, v4

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    .line 168
    sub-float/2addr v1, v0

    iget v2, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qX:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 175
    iget-object v1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->rect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qV:F

    sub-float v2, v0, v2

    float-to-int v2, v2

    iget v4, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qH:F

    add-float/2addr v4, v0

    iget v5, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qV:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->height:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 176
    iget-object v1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->rectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 179
    iget-object v1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->rectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qO:F

    iget v4, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qO:F

    iget-object v5, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qD:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 181
    iget-object v1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qF:Landroid/graphics/Paint;

    invoke-direct {p0, v1}, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->a(Landroid/graphics/Paint;)F

    move-result v1

    float-to-int v1, v1

    .line 182
    iget v2, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->height:I

    add-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    .line 185
    :goto_0
    iget v1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->count:I

    if-ge v3, v1, :cond_4

    .line 186
    iget v1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qV:F

    iget v4, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qH:F

    int-to-float v5, v3

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    iget v4, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qH:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v1, v4

    .line 187
    iget v4, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qH:F

    div-float/2addr v4, v5

    add-float/2addr v4, v0

    iget v5, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qV:F

    sub-float/2addr v4, v5

    .line 188
    const/4 v5, 0x0

    cmpg-float v6, v4, v5

    if-gez v6, :cond_1

    .line 189
    nop

    .line 191
    move v4, v5

    :cond_1
    iget v5, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qH:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 192
    if-ne v4, v3, :cond_3

    iget v5, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qL:I

    if-eq v4, v5, :cond_2

    iget v5, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qK:I

    if-ne v4, v5, :cond_3

    .line 194
    :cond_2
    iget-object v4, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qP:[Ljava/lang/String;

    aget-object v4, v4, v3

    int-to-float v5, v2

    iget-object v6, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qG:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v1, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 196
    :cond_3
    iget-object v4, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qP:[Ljava/lang/String;

    aget-object v4, v4, v3

    int-to-float v5, v2

    iget-object v6, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qF:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v1, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 185
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 199
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 203
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 204
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->width:I

    .line 205
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->height:I

    .line 207
    iget p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qV:F

    const/high16 p2, -0x40800000    # -1.0f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    iget p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qO:F

    const p2, 0x3f59999a    # 0.85f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    int-to-float p1, p1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qV:F

    :goto_0
    iput p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qV:F

    .line 208
    iget p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->width:I

    int-to-float p1, p1

    iget p2, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qV:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p2, v0

    sub-float/2addr p1, p2

    iget p2, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->count:I

    if-lez p2, :cond_1

    iget p2, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->count:I

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    :goto_1
    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qH:F

    .line 209
    iget p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->width:I

    iget p2, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->height:I

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->setMeasuredDimension(II)V

    .line 210
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 214
    iget v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->count:I

    const/4 v1, 0x0

    if-lez v0, :cond_7

    iget v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qX:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qX:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 217
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 219
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_0

    .line 249
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 229
    :pswitch_0
    iget-boolean p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qN:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qI:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->touchSlop:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_1

    iget p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qJ:F

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->touchSlop:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 230
    :cond_1
    iput-boolean v1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qN:Z

    .line 232
    :cond_2
    iget-boolean p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qN:Z

    return p1

    .line 235
    :pswitch_1
    iget-boolean p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qN:Z

    if-eqz p1, :cond_5

    cmpg-float p1, v0, v2

    if-ltz p1, :cond_5

    iget p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->width:I

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-gtz p1, :cond_5

    cmpg-float p1, v3, v2

    if-ltz p1, :cond_5

    iget p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->height:I

    int-to-float p1, p1

    cmpl-float p1, v3, p1

    if-lez p1, :cond_3

    goto :goto_0

    .line 238
    :cond_3
    iget p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qV:F

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qH:F

    div-float/2addr v0, p1

    float-to-int p1, v0

    .line 239
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 240
    iget v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->count:I

    sub-int/2addr v0, v5

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 241
    iget v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qM:I

    if-ne p1, v0, :cond_4

    .line 242
    iget p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qL:I

    iput p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qK:I

    .line 243
    iget p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qM:I

    iput p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qL:I

    .line 244
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->start()V

    .line 245
    return v5

    .line 247
    :cond_4
    return v1

    .line 236
    :cond_5
    :goto_0
    return v1

    .line 221
    :pswitch_2
    iput v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qI:F

    .line 222
    iput v3, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qJ:F

    .line 223
    iget p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qV:F

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qH:F

    div-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qM:I

    .line 224
    iget p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qM:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qM:I

    .line 225
    iget p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qM:I

    iget v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->count:I

    sub-int/2addr v0, v5

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qM:I

    .line 226
    iput-boolean v5, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qN:Z

    .line 227
    iget p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qM:I

    iget v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qL:I

    if-eq p1, v0, :cond_6

    move v1, v5

    nop

    :cond_6
    return v1

    .line 215
    :cond_7
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnTabSelectedListener(Lcom/xiaopeng/devtools/devdebug/drivemode/TabView$a;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qY:Lcom/xiaopeng/devtools/devdebug/drivemode/TabView$a;

    .line 318
    return-void
.end method

.method public setTitle([Ljava/lang/String;)V
    .locals 2

    .line 280
    if-eqz p1, :cond_2

    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_1

    .line 283
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qP:[Ljava/lang/String;

    .line 284
    iget-object p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qP:[Ljava/lang/String;

    array-length p1, p1

    iput p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->count:I

    .line 285
    iget p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->width:I

    int-to-float p1, p1

    iget v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qV:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->count:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->count:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qH:F

    .line 286
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->postInvalidate()V

    .line 287
    return-void

    .line 281
    :cond_2
    :goto_1
    return-void
.end method

.method public start()V
    .locals 1

    .line 264
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->stop()V

    .line 265
    iget-object v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qW:Lcom/a/a/i;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qW:Lcom/a/a/i;

    invoke-virtual {v0}, Lcom/a/a/i;->start()V

    .line 268
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qW:Lcom/a/a/i;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->qW:Lcom/a/a/i;

    invoke-virtual {v0}, Lcom/a/a/i;->cancel()V

    .line 277
    :cond_0
    return-void
.end method
