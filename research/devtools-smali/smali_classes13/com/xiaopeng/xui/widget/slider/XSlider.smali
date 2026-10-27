.class public Lcom/xiaopeng/xui/widget/slider/XSlider;
.super Lcom/xiaopeng/xui/widget/XViewGroup;
.source "XSlider.java"

# interfaces
.implements Lcom/xiaopeng/vui/commons/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/slider/XSlider$a;,
        Lcom/xiaopeng/xui/widget/slider/XSlider$b;
    }
.end annotation


# instance fields
.field private ajQ:Landroid/graphics/Paint;

.field ajX:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private akA:F

.field private akB:Ljava/lang/String;

.field private akC:Landroid/graphics/Paint;

.field private akD:I

.field private akE:F

.field private akF:Landroid/graphics/LinearGradient;

.field private akG:Landroid/graphics/LinearGradient;

.field private akH:I

.field private akI:I

.field private akJ:I

.field private akK:Landroid/graphics/drawable/BitmapDrawable;

.field private akL:Z

.field private akM:F

.field private akN:Z

.field private final aka:Landroid/graphics/Paint;

.field private final akb:Landroid/graphics/Paint;

.field private akc:I

.field akd:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field ake:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field akf:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field akg:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field akh:Lcom/xiaopeng/xui/widget/slider/a;

.field private aki:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private akj:F

.field private akk:F

.field private akl:F

.field private akm:F

.field private akn:Landroid/graphics/Paint;

.field private ako:Landroid/graphics/Paint;

.field private akp:I

.field private akq:Ljava/lang/String;

.field private akr:I

.field private aks:I

.field private akt:F

.field private aku:F

.field private akv:Ljava/text/DecimalFormat;

.field private akw:F

.field private akx:Lcom/xiaopeng/xui/widget/slider/XSlider$b;

.field private aky:Lcom/xiaopeng/xui/widget/slider/XSlider$a;

.field private akz:F

.field private endColor:I

.field private endIndex:I

.field private isNight:Z

.field private mScaledTouchSlop:F

.field private mStep:I

.field private startIndex:I

.field private upperLimit:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 138
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XViewGroup;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->aka:Landroid/graphics/Paint;

    .line 70
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akb:Landroid/graphics/Paint;

    .line 75
    const/16 p1, 0x5c

    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akc:I

    .line 78
    const p1, -0xf34e07

    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->ajX:I

    .line 80
    const/high16 p1, 0x5c000000

    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akd:I

    .line 82
    const p1, 0x5cffffff

    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->ake:I

    .line 84
    const p1, -0xc46601

    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akf:I

    .line 87
    const/4 v1, -0x1

    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akg:I

    .line 90
    const/4 v2, 0x0

    iput v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->aki:I

    .line 92
    const/high16 v3, 0x42c80000    # 100.0f

    iput v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akj:F

    .line 93
    const/high16 v3, 0x44210000    # 644.0f

    iput v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akk:F

    .line 94
    const/high16 v3, 0x42200000    # 40.0f

    iput v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akl:F

    .line 95
    const/high16 v3, 0x41800000    # 16.0f

    iput v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akm:F

    .line 103
    const/16 v4, 0x28

    iput v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akp:I

    .line 106
    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akr:I

    .line 109
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->upperLimit:I

    .line 110
    iput v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akt:F

    .line 117
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akA:F

    .line 125
    const v1, 0x5cbbc2d1

    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endColor:I

    .line 126
    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akH:I

    .line 127
    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akI:I

    .line 128
    const p1, -0xc43e01

    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akJ:I

    .line 130
    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mStep:I

    .line 131
    iput-boolean v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akL:Z

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->aka:Landroid/graphics/Paint;

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akb:Landroid/graphics/Paint;

    .line 75
    const/16 v0, 0x5c

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akc:I

    .line 78
    const v0, -0xf34e07

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->ajX:I

    .line 80
    const/high16 v0, 0x5c000000

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akd:I

    .line 82
    const v0, 0x5cffffff

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->ake:I

    .line 84
    const v0, -0xc46601

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akf:I

    .line 87
    const/4 v2, -0x1

    iput v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akg:I

    .line 90
    const/4 v3, 0x0

    iput v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->aki:I

    .line 92
    const/high16 v4, 0x42c80000    # 100.0f

    iput v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akj:F

    .line 93
    const/high16 v4, 0x44210000    # 644.0f

    iput v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akk:F

    .line 94
    const/high16 v4, 0x42200000    # 40.0f

    iput v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akl:F

    .line 95
    const/high16 v4, 0x41800000    # 16.0f

    iput v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akm:F

    .line 103
    const/16 v5, 0x28

    iput v5, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akp:I

    .line 106
    iput v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akr:I

    .line 109
    const/high16 v2, -0x80000000

    iput v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->upperLimit:I

    .line 110
    iput v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akt:F

    .line 117
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akA:F

    .line 125
    const v2, 0x5cbbc2d1

    iput v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endColor:I

    .line 126
    iput v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akH:I

    .line 127
    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akI:I

    .line 128
    const v0, -0xc43e01

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akJ:I

    .line 130
    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mStep:I

    .line 131
    iput-boolean v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akL:Z

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/slider/XSlider;->c(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 144
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->rW()V

    .line 145
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xui/c/a;->aF(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->isNight:Z

    .line 148
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 152
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->aka:Landroid/graphics/Paint;

    .line 70
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akb:Landroid/graphics/Paint;

    .line 75
    const/16 p1, 0x5c

    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akc:I

    .line 78
    const p1, -0xf34e07

    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->ajX:I

    .line 80
    const/high16 p1, 0x5c000000

    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akd:I

    .line 82
    const p1, 0x5cffffff

    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->ake:I

    .line 84
    const p1, -0xc46601

    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akf:I

    .line 87
    const/4 p3, -0x1

    iput p3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akg:I

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->aki:I

    .line 92
    const/high16 v1, 0x42c80000    # 100.0f

    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akj:F

    .line 93
    const/high16 v1, 0x44210000    # 644.0f

    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akk:F

    .line 94
    const/high16 v1, 0x42200000    # 40.0f

    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akl:F

    .line 95
    const/high16 v1, 0x41800000    # 16.0f

    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akm:F

    .line 103
    const/16 v2, 0x28

    iput v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akp:I

    .line 106
    iput p3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akr:I

    .line 109
    const/high16 p3, -0x80000000

    iput p3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->upperLimit:I

    .line 110
    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akt:F

    .line 117
    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akA:F

    .line 125
    const p3, 0x5cbbc2d1

    iput p3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endColor:I

    .line 126
    iput p3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akH:I

    .line 127
    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akI:I

    .line 128
    const p1, -0xc43e01

    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akJ:I

    .line 130
    iput p2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mStep:I

    .line 131
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akL:Z

    .line 154
    return-void
.end method

.method private D(II)I
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 676
    const v0, 0xffffff

    and-int/2addr p1, v0

    .line 677
    shl-int/lit8 p2, p2, 0x18

    or-int/2addr p1, p2

    .line 678
    return p1
.end method

.method private c(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 205
    if-eqz p2, :cond_8

    .line 206
    sget-object v0, Lcom/xiaopeng/xpui/R$styleable;->XSlider:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 207
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_unit:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akq:Ljava/lang/String;

    .line 208
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_start_index:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    .line 209
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_step:I

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mStep:I

    .line 210
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_init_index:I

    const/4 v3, -0x1

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akr:I

    .line 211
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_end_index:I

    const/16 v4, 0x64

    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    .line 212
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_upper_limit:I

    const/high16 v4, -0x80000000

    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->upperLimit:I

    .line 213
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_index_decimal:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->aks:I

    .line 214
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_unit_prefix:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akB:Ljava/lang/String;

    .line 215
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_bg_color:I

    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akd:I

    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akd:I

    .line 216
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_bg_line_color:I

    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->ajX:I

    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->ajX:I

    .line 217
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_background:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->aki:I

    .line 218
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_accuracy:I

    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akA:F

    .line 219
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_hide_pop:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akL:Z

    .line 220
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akr:I

    if-ne v0, v3, :cond_1

    .line 221
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    :goto_0
    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akr:I

    .line 223
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akr:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akw:F

    .line 224
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    if-eq v0, v1, :cond_7

    .line 227
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->aks:I

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->aks:I

    if-ne v0, v2, :cond_3

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    :goto_1
    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akv:Ljava/text/DecimalFormat;

    .line 228
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akA:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_6

    .line 229
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->aks:I

    if-nez v0, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->aks:I

    if-ne v0, v2, :cond_5

    const v0, 0x3dcccccd    # 0.1f

    goto :goto_2

    :cond_5
    const v0, 0x3c23d70a    # 0.01f

    :goto_2
    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akA:F

    .line 231
    :cond_6
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    .line 225
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "startIndex = endIndex!!! please check the xml"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 233
    :cond_8
    :goto_3
    const/16 p2, 0x50

    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/slider/XSlider;->setMinimumWidth(I)V

    .line 234
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->aki:I

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/slider/XSlider;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 235
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mScaledTouchSlop:F

    .line 236
    return-void
.end method

.method private c(ZZ)V
    .locals 7

    .line 446
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->rZ()F

    move-result v0

    .line 447
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getChildCount()I

    move-result v1

    .line 448
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 449
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xui/widget/slider/SlideLineView;

    .line 450
    invoke-virtual {v4}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->getX()F

    move-result v5

    invoke-virtual {v4}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->rZ()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    .line 451
    invoke-virtual {v4}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->rV()Z

    move-result v5

    if-nez v5, :cond_1

    .line 452
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->bs(Z)V

    goto :goto_1

    .line 455
    :cond_0
    invoke-virtual {v4, v2}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->bs(Z)V

    .line 448
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 458
    :cond_2
    if-eqz p1, :cond_4

    .line 460
    const/high16 p1, 0x41800000    # 16.0f

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akD:I

    int-to-float p1, p1

    div-float p1, v0, p1

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr p1, v1

    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akw:F

    .line 461
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akx:Lcom/xiaopeng/xui/widget/slider/XSlider$b;

    if-eqz p1, :cond_4

    if-nez p2, :cond_3

    iget p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akw:F

    iget p2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    iget p2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akz:F

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akA:F

    add-float/2addr p2, v1

    cmpl-float p1, p1, p2

    if-gez p1, :cond_3

    iget p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akw:F

    iget p2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    iget p2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akz:F

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akA:F

    sub-float/2addr p2, v1

    cmpg-float p1, p1, p2

    if-lez p1, :cond_3

    iget p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akz:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_4

    .line 465
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akx:Lcom/xiaopeng/xui/widget/slider/XSlider$b;

    iget p2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akw:F

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    int-to-float v1, v1

    add-float/2addr p2, v1

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akq:Ljava/lang/String;

    invoke-interface {p1, p0, p2, v1}, Lcom/xiaopeng/xui/widget/slider/XSlider$b;->a(Lcom/xiaopeng/xui/widget/slider/XSlider;FLjava/lang/String;)V

    .line 466
    iget p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akD:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    iget p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    iget p2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akw:F

    .line 467
    iget p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akw:F

    float-to-int p1, p1

    iget p2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    add-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akz:F

    .line 468
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->l(Landroid/view/View;)V

    .line 471
    :cond_4
    return-void
.end method

.method private getWidthExIndicator()F
    .locals 1

    .line 514
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    int-to-float v0, v0

    return v0
.end method

.method private synthetic h(IZ)V
    .locals 4

    .line 602
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akD:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x41800000    # 16.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->aku:F

    .line 603
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akw:F

    .line 604
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->invalidate()V

    .line 605
    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lcom/xiaopeng/xui/widget/slider/XSlider;->c(ZZ)V

    .line 606
    iget-boolean p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akL:Z

    if-nez p1, :cond_0

    .line 607
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akh:Lcom/xiaopeng/xui/widget/slider/a;

    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->rZ()F

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getPopString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->isNight:Z

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getWidth()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/xiaopeng/xui/widget/slider/a;->a(FLjava/lang/String;ZI)V

    .line 609
    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->aky:Lcom/xiaopeng/xui/widget/slider/XSlider$a;

    if-eqz p1, :cond_1

    .line 610
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->aky:Lcom/xiaopeng/xui/widget/slider/XSlider$a;

    iget p2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akw:F

    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akq:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p1, p0, p2, v0, v1}, Lcom/xiaopeng/xui/widget/slider/XSlider$a;->a(Lcom/xiaopeng/xui/widget/slider/XSlider;FLjava/lang/String;Z)V

    .line 612
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->qX()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->qX()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getIndicatorValue()F

    move-result p2

    cmpl-float p1, p1, p2

    if-nez p1, :cond_2

    .line 613
    return-void

    .line 615
    :cond_2
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->l(Landroid/view/View;)V

    .line 616
    return-void
.end method

.method private invalidateAll()V
    .locals 5

    .line 416
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->invalidate()V

    .line 417
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akL:Z

    if-nez v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akh:Lcom/xiaopeng/xui/widget/slider/a;

    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->rZ()F

    move-result v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getPopString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->isNight:Z

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getWidth()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaopeng/xui/widget/slider/a;->a(FLjava/lang/String;ZI)V

    .line 420
    :cond_0
    return-void
.end method

.method public static synthetic lambda$AGp8tY_XZZf0vx9hUm-Jn6JZLv4(Lcom/xiaopeng/xui/widget/slider/XSlider;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->sb()V

    return-void
.end method

.method public static synthetic lambda$TkWJf3CMv3ns_Y0T8ZEUAwIBqaI(Lcom/xiaopeng/xui/widget/slider/XSlider;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->sc()V

    return-void
.end method

.method public static synthetic lambda$W29qCPpC1hxxwbKTT5zvQhNsiW0(Lcom/xiaopeng/xui/widget/slider/XSlider;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/slider/XSlider;->h(IZ)V

    return-void
.end method

.method private rW()V
    .locals 3

    .line 172
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akL:Z

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lcom/xiaopeng/xui/widget/slider/a;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/widget/slider/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akh:Lcom/xiaopeng/xui/widget/slider/a;

    .line 175
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akn:Landroid/graphics/Paint;

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akn:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akn:Landroid/graphics/Paint;

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akd:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 179
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->ajQ:Landroid/graphics/Paint;

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->ajQ:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->ajQ:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->ajQ:Landroid/graphics/Paint;

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->ajX:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->ajQ:Landroid/graphics/Paint;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 185
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->ako:Landroid/graphics/Paint;

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->ako:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->ako:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 189
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akC:Landroid/graphics/Paint;

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akC:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akC:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akC:Landroid/graphics/Paint;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akC:Landroid/graphics/Paint;

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akg:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/slider/XSlider;->setEnabled(Z)V

    .line 195
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$drawable;->x_slider_slideblock_night:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akK:Landroid/graphics/drawable/BitmapDrawable;

    .line 196
    return-void
.end method

.method private rX()Z
    .locals 2

    .line 423
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 424
    :goto_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 425
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    const/4 v0, 0x1

    return v0

    .line 428
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 430
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private rY()V
    .locals 7

    .line 434
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mStep:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 435
    return-void

    .line 437
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akD:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    sub-int/2addr v1, v2

    div-int/2addr v0, v1

    int-to-float v0, v0

    .line 438
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->aku:F

    const/high16 v2, 0x41800000    # 16.0f

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    float-to-double v3, v1

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v5

    double-to-int v1, v3

    .line 440
    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->aku:F

    .line 442
    return-void
.end method

.method private rZ()F
    .locals 2

    .line 529
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->aku:F

    const/high16 v1, 0x41800000    # 16.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 530
    return v1

    .line 532
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x10

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->sa()F

    move-result v1

    sub-float/2addr v0, v1

    .line 533
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->aku:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1

    .line 534
    return v0

    .line 536
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->aku:F

    return v0
.end method

.method private sa()F
    .locals 3

    .line 540
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->upperLimit:I

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_0

    .line 541
    return v1

    .line 544
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    if-ge v0, v2, :cond_1

    .line 545
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->upperLimit:I

    if-gt v0, v2, :cond_1

    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->upperLimit:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    if-gt v0, v2, :cond_1

    .line 546
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->upperLimit:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akD:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    sub-int/2addr v1, v2

    div-int/2addr v0, v1

    int-to-float v0, v0

    return v0

    .line 549
    :cond_1
    return v1
.end method

.method private synthetic sb()V
    .locals 0

    .line 651
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->invalidate()V

    .line 652
    return-void
.end method

.method private synthetic sc()V
    .locals 5

    .line 638
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akL:Z

    if-nez v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akh:Lcom/xiaopeng/xui/widget/slider/a;

    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->rZ()F

    move-result v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getPopString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->isNight:Z

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getWidth()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaopeng/xui/widget/slider/a;->a(FLjava/lang/String;ZI)V

    .line 641
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->invalidate()V

    .line 642
    return-void
.end method

.method private setAlphaByEnable(Z)V
    .locals 2

    .line 670
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akd:I

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akc:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akp:I

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xui/widget/slider/XSlider;->D(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akd:I

    .line 671
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->ake:I

    if-eqz p1, :cond_1

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akc:I

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akp:I

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xui/widget/slider/XSlider;->D(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->ake:I

    .line 672
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akf:I

    if-eqz p1, :cond_2

    const/16 p1, 0xff

    goto :goto_2

    :cond_2
    iget p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akp:I

    :goto_2
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xui/widget/slider/XSlider;->D(II)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akf:I

    .line 673
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 488
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 489
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->rZ()F

    move-result v0

    .line 490
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 491
    return-void

    .line 493
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getHeightExIndicator()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 494
    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akL:Z

    if-nez v2, :cond_1

    .line 495
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akh:Lcom/xiaopeng/xui/widget/slider/a;

    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->isNight:Z

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->isEnabled()Z

    move-result v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/xiaopeng/xui/widget/slider/a;->a(Landroid/graphics/Canvas;ZZ)V

    .line 497
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 498
    return-void

    .line 500
    :cond_2
    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->isNight:Z

    if-eqz v2, :cond_3

    .line 501
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akK:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akK:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akK:Landroid/graphics/drawable/BitmapDrawable;

    .line 502
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->ajQ:Landroid/graphics/Paint;

    .line 501
    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 504
    :cond_3
    const/high16 v2, 0x41100000    # 9.0f

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->ako:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 506
    :goto_0
    return-void
.end method

.method public g(IZ)V
    .locals 1

    .line 601
    new-instance v0, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$XSlider$W29qCPpC1hxxwbKTT5zvQhNsiW0;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$XSlider$W29qCPpC1hxxwbKTT5zvQhNsiW0;-><init>(Lcom/xiaopeng/xui/widget/slider/XSlider;IZ)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->post(Ljava/lang/Runnable;)Z

    .line 617
    return-void
.end method

.method public getHeightExIndicator()F
    .locals 1

    .line 509
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x28

    int-to-float v0, v0

    return v0
.end method

.method public getIndicatorLocationX()F
    .locals 1

    .line 518
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->aku:F

    return v0
.end method

.method public getIndicatorValue()F
    .locals 2

    .line 474
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akw:F

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mStep:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method protected getPopString()Ljava/lang/String;
    .locals 6

    .line 565
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akq:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 566
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akq:Ljava/lang/String;

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akB:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 569
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akB:Ljava/lang/String;

    .line 571
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akv:Ljava/text/DecimalFormat;

    if-nez v0, :cond_3

    .line 572
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mStep:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akw:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 575
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akw:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mStep:I

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 578
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akv:Ljava/text/DecimalFormat;

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    int-to-float v2, v2

    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akw:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mStep:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 158
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 159
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xui/c/a;->aF(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->isNight:Z

    .line 162
    :cond_0
    new-instance p1, Lcom/xiaopeng/xui/widget/slider/XSlider$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xui/widget/slider/XSlider$1;-><init>(Lcom/xiaopeng/xui/widget/slider/XSlider;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaopeng/xui/widget/slider/XSlider;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 168
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 554
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XViewGroup;->onDetachedFromWindow()V

    .line 555
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 253
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 257
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->isNight:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akn:Landroid/graphics/Paint;

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akd:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 259
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getHeightExIndicator()F

    move-result v0

    div-float/2addr v0, v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akt:F

    sub-float v5, v0, v2

    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getWidthExIndicator()F

    move-result v6

    .line 260
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getHeightExIndicator()F

    move-result v0

    div-float/2addr v0, v1

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akt:F

    add-float v7, v0, v1

    iget v8, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akm:F

    iget v9, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akm:F

    iget-object v10, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akn:Landroid/graphics/Paint;

    .line 259
    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akb:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akF:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 264
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getHeightExIndicator()F

    move-result v0

    div-float/2addr v0, v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akt:F

    sub-float v5, v0, v2

    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getWidthExIndicator()F

    move-result v6

    .line 265
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getHeightExIndicator()F

    move-result v0

    div-float/2addr v0, v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akt:F

    add-float v7, v0, v2

    iget v8, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akm:F

    iget v9, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akm:F

    iget-object v10, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akb:Landroid/graphics/Paint;

    .line 264
    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akn:Landroid/graphics/Paint;

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->ake:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 268
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getHeightExIndicator()F

    move-result v0

    div-float/2addr v0, v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akt:F

    sub-float v5, v0, v2

    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getWidthExIndicator()F

    move-result v6

    .line 269
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getHeightExIndicator()F

    move-result v0

    div-float/2addr v0, v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akt:F

    add-float v7, v0, v2

    iget v8, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akm:F

    iget v9, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akm:F

    iget-object v10, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akn:Landroid/graphics/Paint;

    .line 268
    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 272
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->isEnabled()Z

    move-result v0

    const/high16 v2, 0x40e00000    # 7.0f

    const/high16 v3, 0x41100000    # 9.0f

    if-eqz v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->aka:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akG:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 274
    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getHeightExIndicator()F

    move-result v0

    div-float/2addr v0, v1

    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akt:F

    sub-float v7, v0, v4

    .line 275
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->rZ()F

    move-result v0

    add-float/2addr v0, v3

    add-float v8, v0, v2

    .line 276
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getHeightExIndicator()F

    move-result v0

    div-float/2addr v0, v1

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akt:F

    add-float v9, v0, v1

    iget v10, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akm:F

    iget v11, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akm:F

    iget-object v12, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->aka:Landroid/graphics/Paint;

    .line 274
    move-object v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akn:Landroid/graphics/Paint;

    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akf:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 279
    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getHeightExIndicator()F

    move-result v0

    div-float/2addr v0, v1

    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akt:F

    sub-float v7, v0, v4

    .line 280
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->rZ()F

    move-result v0

    add-float/2addr v0, v3

    add-float v8, v0, v2

    .line 281
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getHeightExIndicator()F

    move-result v0

    div-float/2addr v0, v1

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akt:F

    add-float v9, v0, v1

    iget v10, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akm:F

    iget v11, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akm:F

    iget-object v12, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akn:Landroid/graphics/Paint;

    .line 279
    move-object v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 284
    :goto_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 332
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getWidth()I

    move-result p1

    add-int/lit8 p1, p1, -0x24

    int-to-float p1, p1

    const/high16 p2, 0x41e80000    # 29.0f

    div-float/2addr p1, p2

    .line 333
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getChildCount()I

    move-result p3

    if-ge p2, p3, :cond_0

    .line 334
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 335
    const/high16 p4, 0x41900000    # 18.0f

    int-to-float p5, p2

    mul-float/2addr p5, p1

    add-float/2addr p4, p5

    const/high16 p5, 0x41200000    # 10.0f

    sub-float v0, p4, p5

    float-to-int v0, v0

    .line 336
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getHeightExIndicator()F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x14

    .line 337
    add-float/2addr p4, p5

    float-to-int p4, p4

    .line 338
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getHeightExIndicator()F

    move-result p5

    float-to-int p5, p5

    div-int/lit8 p5, p5, 0x2

    add-int/lit8 p5, p5, 0x14

    .line 339
    invoke-virtual {p3, v0, v1, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 333
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 341
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 241
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XViewGroup;->onMeasure(II)V

    .line 242
    nop

    .line 243
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 p2, -0x80000000

    if-ne p1, p2, :cond_0

    .line 244
    iget p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akk:F

    float-to-int p1, p1

    goto :goto_0

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getMeasuredWidth()I

    move-result p1

    .line 248
    :goto_0
    iget p2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akj:F

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xui/widget/slider/XSlider;->setMeasuredDimension(II)V

    .line 249
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 22

    move-object/from16 v0, p0

    .line 299
    invoke-super/range {p0 .. p4}, Lcom/xiaopeng/xui/widget/XViewGroup;->onSizeChanged(IIII)V

    .line 300
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/xiaopeng/xui/widget/slider/XSlider;->setPadding(IIII)V

    .line 301
    add-int/lit8 v2, p1, -0x20

    iput v2, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akD:I

    .line 302
    iget v2, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akD:I

    int-to-float v2, v2

    const/high16 v3, 0x41e80000    # 29.0f

    div-float/2addr v2, v3

    iput v2, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akE:F

    .line 303
    iget v2, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akr:I

    iget v3, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    iget v4, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akD:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x41800000    # 16.0f

    add-float/2addr v2, v3

    iput v2, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->aku:F

    .line 304
    move v2, v1

    :goto_0
    const/16 v4, 0x1e

    const/4 v5, 0x1

    if-ge v2, v4, :cond_1

    .line 305
    new-instance v4, Lcom/xiaopeng/xui/widget/slider/SlideLineView;

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->aku:F

    iget v8, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akE:F

    int-to-float v9, v2

    mul-float/2addr v8, v9

    add-float/2addr v8, v3

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    invoke-direct {v4, v6, v5}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;-><init>(Landroid/content/Context;Z)V

    .line 306
    invoke-virtual {v0, v4}, Lcom/xiaopeng/xui/widget/slider/XSlider;->addView(Landroid/view/View;)V

    .line 304
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 308
    :cond_1
    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getHeightExIndicator()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v6, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akt:F

    sub-float v8, v3, v6

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getHeightExIndicator()F

    move-result v3

    div-float/2addr v3, v4

    iget v4, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akt:F

    add-float v10, v3, v4

    const/4 v3, 0x2

    new-array v11, v3, [I

    iget v4, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akH:I

    aput v4, v11, v1

    iget v4, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endColor:I

    aput v4, v11, v5

    const/4 v12, 0x0

    sget-object v13, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object v6, v2

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v2, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akF:Landroid/graphics/LinearGradient;

    .line 310
    new-instance v2, Landroid/graphics/LinearGradient;

    const/high16 v15, 0x41800000    # 16.0f

    const/16 v16, 0x0

    iget v4, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akD:I

    int-to-float v4, v4

    const/16 v18, 0x0

    new-array v3, v3, [I

    iget v6, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akJ:I

    aput v6, v3, v1

    iget v1, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akI:I

    aput v1, v3, v5

    const/16 v20, 0x0

    sget-object v21, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v14, v2

    move/from16 v17, v4

    move-object/from16 v19, v3

    invoke-direct/range {v14 .. v21}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v2, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akG:Landroid/graphics/LinearGradient;

    .line 311
    iget-boolean v1, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akL:Z

    if-nez v1, :cond_2

    .line 312
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akh:Lcom/xiaopeng/xui/widget/slider/a;

    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->rZ()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getPopString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, v0, Lcom/xiaopeng/xui/widget/slider/XSlider;->isNight:Z

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getWidth()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/xiaopeng/xui/widget/slider/a;->a(FLjava/lang/String;ZI)V

    .line 314
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->invalidate()V

    .line 315
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 346
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 347
    return v1

    .line 349
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 404
    :pswitch_0
    iget-boolean p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akN:Z

    if-eqz p1, :cond_1

    .line 405
    iput-boolean v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akN:Z

    .line 407
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->invalidateAll()V

    goto/16 :goto_1

    .line 365
    :pswitch_1
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akN:Z

    if-eqz v0, :cond_2

    .line 366
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->aku:F

    .line 367
    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xui/widget/slider/XSlider;->c(ZZ)V

    .line 368
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->invalidateAll()V

    goto/16 :goto_1

    .line 370
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 371
    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akM:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mScaledTouchSlop:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    .line 372
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akN:Z

    .line 373
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akx:Lcom/xiaopeng/xui/widget/slider/XSlider$b;

    if-eqz v0, :cond_3

    .line 374
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akx:Lcom/xiaopeng/xui/widget/slider/XSlider$b;

    invoke-interface {v0, p0}, Lcom/xiaopeng/xui/widget/slider/XSlider$b;->a(Lcom/xiaopeng/xui/widget/slider/XSlider;)V

    .line 376
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->aku:F

    .line 377
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 378
    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xui/widget/slider/XSlider;->c(ZZ)V

    .line 379
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->invalidateAll()V

    .line 383
    :cond_4
    goto :goto_1

    .line 385
    :pswitch_2
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akN:Z

    if-eqz v0, :cond_5

    .line 386
    iput-boolean v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akN:Z

    goto :goto_0

    .line 389
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akx:Lcom/xiaopeng/xui/widget/slider/XSlider$b;

    if-eqz v0, :cond_6

    .line 390
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akx:Lcom/xiaopeng/xui/widget/slider/XSlider$b;

    invoke-interface {v0, p0}, Lcom/xiaopeng/xui/widget/slider/XSlider$b;->a(Lcom/xiaopeng/xui/widget/slider/XSlider;)V

    .line 393
    :cond_6
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->aku:F

    .line 394
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->rY()V

    .line 395
    invoke-direct {p0, v1, v1}, Lcom/xiaopeng/xui/widget/slider/XSlider;->c(ZZ)V

    .line 396
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 397
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akx:Lcom/xiaopeng/xui/widget/slider/XSlider$b;

    if-eqz p1, :cond_7

    .line 398
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akx:Lcom/xiaopeng/xui/widget/slider/XSlider$b;

    invoke-interface {p1, p0}, Lcom/xiaopeng/xui/widget/slider/XSlider$b;->b(Lcom/xiaopeng/xui/widget/slider/XSlider;)V

    .line 400
    :cond_7
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->invalidateAll()V

    .line 401
    goto :goto_1

    .line 351
    :pswitch_3
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->rX()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 352
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akM:F

    goto :goto_1

    .line 354
    :cond_8
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akN:Z

    .line 355
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 356
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akx:Lcom/xiaopeng/xui/widget/slider/XSlider$b;

    if-eqz v0, :cond_9

    .line 357
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akx:Lcom/xiaopeng/xui/widget/slider/XSlider$b;

    invoke-interface {v0, p0}, Lcom/xiaopeng/xui/widget/slider/XSlider$b;->a(Lcom/xiaopeng/xui/widget/slider/XSlider;)V

    .line 359
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->aku:F

    .line 360
    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xui/widget/slider/XSlider;->c(ZZ)V

    .line 361
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->invalidateAll()V

    .line 363
    nop

    .line 412
    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAccuracy(F)V
    .locals 0

    .line 483
    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akA:F

    .line 484
    return-void
.end method

.method public setCurrentIndex(I)V
    .locals 1

    .line 597
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->g(IZ)V

    .line 598
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 621
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 622
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akN:Z

    .line 624
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->setEnabled(Z)V

    .line 625
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 626
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 625
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 628
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/slider/XSlider;->setAlphaByEnable(Z)V

    .line 629
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->invalidate()V

    .line 630
    return-void
.end method

.method public setEndIndex(I)V
    .locals 1

    .line 646
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    if-eq v0, p1, :cond_0

    .line 649
    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    .line 650
    new-instance p1, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$XSlider$AGp8tY_XZZf0vx9hUm-Jn6JZLv4;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$XSlider$AGp8tY_XZZf0vx9hUm-Jn6JZLv4;-><init>(Lcom/xiaopeng/xui/widget/slider/XSlider;)V

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/slider/XSlider;->post(Ljava/lang/Runnable;)Z

    .line 653
    return-void

    .line 647
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "startIndex = endIndex!!!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInitIndex(I)V
    .locals 1

    .line 656
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    if-le p1, v0, :cond_0

    .line 657
    iget p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akr:I

    .line 658
    return-void

    .line 660
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    if-ge p1, v0, :cond_1

    .line 661
    iget p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akr:I

    .line 662
    return-void

    .line 664
    :cond_1
    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akr:I

    .line 665
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akw:F

    .line 666
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->invalidate()V

    .line 667
    return-void
.end method

.method public setProgressChangeListener(Lcom/xiaopeng/xui/widget/slider/XSlider$a;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->aky:Lcom/xiaopeng/xui/widget/slider/XSlider$a;

    .line 589
    return-void
.end method

.method public setSliderProgressListener(Lcom/xiaopeng/xui/widget/slider/XSlider$b;)V
    .locals 0

    .line 584
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->akx:Lcom/xiaopeng/xui/widget/slider/XSlider$b;

    .line 585
    return-void
.end method

.method public setStartIndex(I)V
    .locals 1

    .line 633
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    if-eq p1, v0, :cond_0

    .line 636
    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    .line 637
    new-instance p1, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$XSlider$TkWJf3CMv3ns_Y0T8ZEUAwIBqaI;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$XSlider$TkWJf3CMv3ns_Y0T8ZEUAwIBqaI;-><init>(Lcom/xiaopeng/xui/widget/slider/XSlider;)V

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/slider/XSlider;->post(Ljava/lang/Runnable;)Z

    .line 643
    return-void

    .line 634
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "startIndex = endIndex!!!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
