.class public Lcom/xiaopeng/xui/widget/XNumberPicker;
.super Lcom/xiaopeng/xui/widget/XLinearLayout;
.source "XNumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/XNumberPicker$a;,
        Lcom/xiaopeng/xui/widget/XNumberPicker$CustomEditText;,
        Lcom/xiaopeng/xui/widget/XNumberPicker$b;,
        Lcom/xiaopeng/xui/widget/XNumberPicker$f;,
        Lcom/xiaopeng/xui/widget/XNumberPicker$c;,
        Lcom/xiaopeng/xui/widget/XNumberPicker$d;,
        Lcom/xiaopeng/xui/widget/XNumberPicker$e;,
        Lcom/xiaopeng/xui/widget/XNumberPicker$g;
    }
.end annotation


# static fields
.field private static final adz:Lcom/xiaopeng/xui/widget/XNumberPicker$g;

.field private static final aeo:[C


# instance fields
.field private adA:I

.field private final adB:I

.field private final adC:Z

.field private final adD:I

.field private adE:I

.field private adF:[Ljava/lang/String;

.field private adG:I

.field private adH:I

.field private adI:Lcom/xiaopeng/xui/widget/XNumberPicker$e;

.field private adJ:Lcom/xiaopeng/xui/widget/XNumberPicker$d;

.field private adK:Lcom/xiaopeng/xui/widget/XNumberPicker$c;

.field private adL:J

.field private final adM:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final adN:[I

.field private final adO:Landroid/graphics/Paint;

.field private adP:I

.field private adQ:I

.field private adR:I

.field private adS:I

.field private final adT:Landroid/widget/Scroller;

.field private final adU:Landroid/widget/Scroller;

.field private adV:I

.field private adW:Lcom/xiaopeng/xui/widget/XNumberPicker$b;

.field private adX:Lcom/xiaopeng/xui/widget/XNumberPicker$a;

.field private adY:F

.field private adZ:J

.field private ady:Z

.field private aea:F

.field private aeb:I

.field private aec:Z

.field private final aed:I

.field private final aee:Landroid/graphics/drawable/Drawable;

.field private final aef:Landroid/graphics/drawable/Drawable;

.field private final aeg:I

.field private aeh:Z

.field private aei:Z

.field private aej:I

.field private aek:I

.field private final ael:Lcom/xiaopeng/xui/widget/XNumberPicker$f;

.field private aem:I

.field private aen:Z

.field private final mMaxHeight:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMinHeight:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mScrollState:I

.field private mTextColors:Landroid/content/res/ColorStateList;

.field private final mTextSize:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 184
    new-instance v0, Lcom/xiaopeng/xui/widget/XNumberPicker$g;

    invoke-direct {v0}, Lcom/xiaopeng/xui/widget/XNumberPicker$g;-><init>()V

    sput-object v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adz:Lcom/xiaopeng/xui/widget/XNumberPicker$g;

    .line 1785
    const/16 v0, 0x3c

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aeo:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x660s
        0x661s
        0x662s
        0x663s
        0x664s
        0x665s
        0x666s
        0x667s
        0x668s
        0x669s
        0x6f0s
        0x6f1s
        0x6f2s
        0x6f3s
        0x6f4s
        0x6f5s
        0x6f6s
        0x6f7s
        0x6f8s
        0x6f9s
        0x966s
        0x967s
        0x968s
        0x969s
        0x96as
        0x96bs
        0x96cs
        0x96ds
        0x96es
        0x96fs
        0x9e6s
        0x9e7s
        0x9e8s
        0x9e9s
        0x9eas
        0x9ebs
        0x9ecs
        0x9eds
        0x9ees
        0x9efs
        0xce6s
        0xce7s
        0xce8s
        0xce9s
        0xceas
        0xcebs
        0xcecs
        0xceds
        0xcees
        0xcefs
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 524
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 525
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 534
    sget v0, Lcom/xiaopeng/xpui/R$style;->XNumberPicker:I

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 535
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 547
    sget v0, Lcom/xiaopeng/xpui/R$style;->XNumberPicker:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 548
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 564
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->ady:Z

    .line 283
    const-wide/16 v1, 0x12c

    iput-wide v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adL:J

    .line 288
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adM:Landroid/util/SparseArray;

    .line 293
    const/4 v1, 0x5

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adN:[I

    .line 313
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adR:I

    .line 408
    const/4 v1, 0x0

    iput v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mScrollState:I

    .line 444
    const/4 v2, -0x1

    iput v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aem:I

    .line 567
    sget-object v3, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 570
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_hideWheelUntilFocused:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aen:Z

    .line 572
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_textLayout:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aeb:I

    .line 573
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_solidColor:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aed:I

    .line 575
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_selectionDivider:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 577
    if-eqz p3, :cond_0

    .line 578
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 579
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getLayoutDirection()I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 580
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 581
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getDrawableState()[I

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 584
    :cond_0
    iput-object p3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aee:Landroid/graphics/drawable/Drawable;

    .line 585
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_symbol:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aef:Landroid/graphics/drawable/Drawable;

    .line 588
    const/high16 p3, 0x40000000    # 2.0f

    .line 590
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    .line 588
    invoke-static {v0, p3, p4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    .line 591
    sget p4, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_selectionDividerHeight:I

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aeg:I

    .line 594
    const/high16 p3, 0x42400000    # 48.0f

    .line 596
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    .line 594
    invoke-static {v0, p3, p4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    .line 597
    sget p4, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_selectionDividersDistance:I

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adB:I

    .line 600
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_text_layout_margin:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adA:I

    .line 602
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_internalMinHeight:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinHeight:I

    .line 605
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_internalMaxHeight:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxHeight:I

    .line 607
    iget p3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinHeight:I

    if-eq p3, v2, :cond_2

    iget p3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxHeight:I

    if-eq p3, v2, :cond_2

    iget p3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinHeight:I

    iget p4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxHeight:I

    if-gt p3, p4, :cond_1

    goto :goto_0

    .line 609
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minHeight > maxHeight"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 612
    :cond_2
    :goto_0
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_internalMinWidth:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinWidth:I

    .line 615
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_internalMaxWidth:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxWidth:I

    .line 617
    iget p3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinWidth:I

    if-eq p3, v2, :cond_4

    iget p3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxWidth:I

    if-eq p3, v2, :cond_4

    iget p3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinWidth:I

    iget p4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxWidth:I

    if-gt p3, p4, :cond_3

    goto :goto_1

    .line 619
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minWidth > maxWidth"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 622
    :cond_4
    :goto_1
    iget p3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxWidth:I

    if-ne p3, v2, :cond_5

    move p3, v0

    goto :goto_2

    :cond_5
    move p3, v1

    :goto_2
    iput-boolean p3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adC:Z

    .line 624
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_android_textSize:I

    const/16 p4, 0x14

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextSize:I

    .line 625
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_np_selectedTextSize:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adD:I

    .line 627
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XNumberPicker_android_textColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextColors:Landroid/content/res/ColorStateList;

    .line 628
    iget-object p3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextColors:Landroid/content/res/ColorStateList;

    if-nez p3, :cond_6

    .line 629
    const p3, 0x106000c

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p3

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextColors:Landroid/content/res/ColorStateList;

    .line 631
    :cond_6
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 633
    new-instance p2, Lcom/xiaopeng/xui/widget/XNumberPicker$f;

    invoke-direct {p2, p0}, Lcom/xiaopeng/xui/widget/XNumberPicker$f;-><init>(Lcom/xiaopeng/xui/widget/XNumberPicker;)V

    iput-object p2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->ael:Lcom/xiaopeng/xui/widget/XNumberPicker$f;

    .line 640
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setWillNotDraw(Z)V

    .line 643
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 644
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTouchSlop:I

    .line 645
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinimumFlingVelocity:I

    .line 646
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaximumFlingVelocity:I

    .line 650
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 651
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 652
    iget p2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aeb:I

    packed-switch p2, :pswitch_data_0

    goto :goto_3

    .line 660
    :pswitch_0
    sget-object p2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_3

    .line 657
    :pswitch_1
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 658
    goto :goto_3

    .line 654
    :pswitch_2
    sget-object p2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 655
    nop

    .line 663
    :goto_3
    iget p2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextSize:I

    iget p3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adD:I

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 664
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    .line 665
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 666
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/xiaopeng/xpui/R$string;->x_font_typeface_medium:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 667
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adO:Landroid/graphics/Paint;

    .line 670
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adT:Landroid/widget/Scroller;

    .line 671
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 p4, 0x40200000    # 2.5f

    invoke-direct {p3, p4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {p1, p2, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adU:Landroid/widget/Scroller;

    .line 674
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_7

    .line 675
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setImportantForAccessibility(I)V

    .line 679
    :cond_7
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getFocusable()I

    move-result p1

    const/16 p2, 0x10

    if-ne p1, p2, :cond_8

    .line 680
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setFocusable(I)V

    .line 681
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setFocusableInTouchMode(Z)V

    .line 684
    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/xiaopeng/xui/widget/XNumberPicker;)I
    .locals 0

    .line 66
    iget p0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aek:I

    return p0
.end method

.method static synthetic a(Lcom/xiaopeng/xui/widget/XNumberPicker;Z)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->bh(Z)V

    return-void
.end method

.method private a(ZJ)V
    .locals 1

    .line 1696
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adW:Lcom/xiaopeng/xui/widget/XNumberPicker$b;

    if-nez v0, :cond_0

    .line 1697
    new-instance v0, Lcom/xiaopeng/xui/widget/XNumberPicker$b;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/XNumberPicker$b;-><init>(Lcom/xiaopeng/xui/widget/XNumberPicker;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adW:Lcom/xiaopeng/xui/widget/XNumberPicker$b;

    goto :goto_0

    .line 1699
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adW:Lcom/xiaopeng/xui/widget/XNumberPicker$b;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1701
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adW:Lcom/xiaopeng/xui/widget/XNumberPicker$b;

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker$b;->a(Lcom/xiaopeng/xui/widget/XNumberPicker$b;Z)V

    .line 1702
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adW:Lcom/xiaopeng/xui/widget/XNumberPicker$b;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1703
    return-void
.end method

.method private a(Landroid/widget/Scroller;)Z
    .locals 5

    .line 724
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 725
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result p1

    sub-int/2addr v1, p1

    .line 726
    iget p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adS:I

    add-int/2addr p1, v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adP:I

    rem-int/2addr p1, v2

    .line 727
    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adR:I

    sub-int/2addr v2, p1

    .line 728
    const/4 p1, 0x0

    if-eqz v2, :cond_2

    .line 729
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adP:I

    div-int/lit8 v4, v4, 0x2

    if-le v3, v4, :cond_1

    .line 730
    if-lez v2, :cond_0

    .line 731
    iget v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adP:I

    sub-int/2addr v2, v3

    goto :goto_0

    .line 733
    :cond_0
    iget v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adP:I

    add-int/2addr v2, v3

    .line 736
    :cond_1
    :goto_0
    add-int/2addr v1, v2

    .line 737
    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->scrollBy(II)V

    .line 738
    return v0

    .line 740
    :cond_2
    return p1
.end method

.method static synthetic b(Lcom/xiaopeng/xui/widget/XNumberPicker;)I
    .locals 0

    .line 66
    iget p0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aej:I

    return p0
.end method

.method private b(Landroid/widget/Scroller;)V
    .locals 1

    .line 1576
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adT:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_0

    .line 1577
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->ru()Z

    .line 1578
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->eD(I)V

    .line 1580
    :cond_0
    return-void
.end method

.method private bh(Z)V
    .locals 13

    .line 1541
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adT:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->a(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1542
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adU:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->a(Landroid/widget/Scroller;)Z

    .line 1544
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adV:I

    .line 1545
    if-eqz p1, :cond_1

    .line 1546
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adT:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adP:I

    neg-int v5, p1

    const/16 v6, 0x12c

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1548
    :cond_1
    iget-object v7, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adT:Landroid/widget/Scroller;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adP:I

    const/16 v12, 0x12c

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1550
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->invalidate()V

    .line 1551
    return-void
.end method

.method static synthetic c(Lcom/xiaopeng/xui/widget/XNumberPicker;)J
    .locals 2

    .line 66
    iget-wide v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adL:J

    return-wide v0
.end method

.method private e(III)I
    .locals 1

    .line 1478
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1479
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1480
    const/4 p2, 0x0

    invoke-static {p1, p3, p2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->resolveSizeAndState(III)I

    move-result p1

    return p1

    .line 1482
    :cond_0
    return p2
.end method

.method private e([I)V
    .locals 3

    .line 1627
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ltz v0, :cond_0

    .line 1628
    const/4 v0, 0x0

    array-length v2, p1

    sub-int/2addr v2, v1

    invoke-static {p1, v1, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1629
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget v0, p1, v0

    add-int/2addr v0, v1

    .line 1630
    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aec:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adH:I

    if-le v0, v2, :cond_1

    .line 1631
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adG:I

    .line 1633
    :cond_1
    array-length v2, p1

    sub-int/2addr v2, v1

    aput v0, p1, v2

    .line 1634
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->eF(I)V

    .line 1635
    return-void
.end method

.method private eD(I)V
    .locals 1

    .line 1586
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_0

    .line 1587
    return-void

    .line 1589
    :cond_0
    iput p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mScrollState:I

    .line 1590
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adJ:Lcom/xiaopeng/xui/widget/XNumberPicker$d;

    if-eqz v0, :cond_1

    .line 1591
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adJ:Lcom/xiaopeng/xui/widget/XNumberPicker$d;

    invoke-interface {v0, p0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker$d;->a(Lcom/xiaopeng/xui/widget/XNumberPicker;I)V

    .line 1593
    :cond_1
    return-void
.end method

.method private eE(I)I
    .locals 3

    .line 1614
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adH:I

    if-le p1, v0, :cond_0

    .line 1615
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adG:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adH:I

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adH:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adG:I

    sub-int/2addr v1, v2

    rem-int/2addr p1, v1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 1616
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adG:I

    if-ge p1, v0, :cond_1

    .line 1617
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adH:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adG:I

    sub-int/2addr v1, p1

    iget p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adH:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adG:I

    sub-int/2addr p1, v2

    rem-int/2addr v1, p1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 1619
    :cond_1
    return p1
.end method

.method private eF(I)V
    .locals 3

    .line 1657
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adM:Landroid/util/SparseArray;

    .line 1658
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1659
    if-eqz v1, :cond_0

    .line 1660
    return-void

    .line 1662
    :cond_0
    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adG:I

    if-lt p1, v1, :cond_3

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adH:I

    if-le p1, v1, :cond_1

    goto :goto_0

    .line 1665
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adF:[Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1666
    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adG:I

    sub-int v1, p1, v1

    .line 1667
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adF:[Ljava/lang/String;

    aget-object v1, v2, v1

    .line 1668
    goto :goto_1

    .line 1669
    :cond_2
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->eG(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1663
    :cond_3
    :goto_0
    const-string v1, ""

    .line 1672
    :goto_1
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1673
    return-void
.end method

.method private eG(I)Ljava/lang/String;
    .locals 1

    .line 1676
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adK:Lcom/xiaopeng/xui/widget/XNumberPicker$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adK:Lcom/xiaopeng/xui/widget/XNumberPicker$c;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker$c;->format(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->eH(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private static eH(I)Ljava/lang/String;
    .locals 4

    .line 1919
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private f([I)V
    .locals 3

    .line 1642
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    .line 1643
    array-length v0, p1

    sub-int/2addr v0, v1

    invoke-static {p1, v2, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1644
    :cond_0
    aget v0, p1, v1

    sub-int/2addr v0, v1

    .line 1645
    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aec:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adG:I

    if-ge v0, v1, :cond_1

    .line 1646
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adH:I

    .line 1648
    :cond_1
    aput v0, p1, v2

    .line 1649
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->eF(I)V

    .line 1650
    return-void
.end method

.method private fling(I)V
    .locals 10

    .line 1599
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adV:I

    .line 1601
    if-lez p1, :cond_0

    .line 1602
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adT:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 1604
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adT:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1607
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->invalidate()V

    .line 1608
    return-void
.end method

.method public static getTwoDigitFormatter()Lcom/xiaopeng/xui/widget/XNumberPicker$c;
    .locals 1

    .line 187
    sget-object v0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adz:Lcom/xiaopeng/xui/widget/XNumberPicker$g;

    return-object v0
.end method

.method private makeMeasureSpec(II)I
    .locals 4

    .line 1449
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1450
    return p1

    .line 1452
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1453
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1454
    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    .line 1456
    return p1

    .line 1462
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown measure mode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1460
    :cond_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1

    .line 1458
    :cond_3
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1
.end method

.method private rl()V
    .locals 6

    .line 1096
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adC:Z

    if-nez v0, :cond_0

    .line 1097
    return-void

    .line 1099
    :cond_0
    nop

    .line 1100
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adF:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 1101
    const/4 v0, 0x0

    .line 1102
    move v2, v0

    move v0, v1

    :goto_0
    const/16 v3, 0x9

    if-gt v0, v3, :cond_2

    .line 1103
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adO:Landroid/graphics/Paint;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->eH(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 1104
    cmpl-float v4, v3, v2

    if-lez v4, :cond_1

    .line 1105
    nop

    .line 1102
    move v2, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1108
    :cond_2
    nop

    .line 1109
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adH:I

    .line 1110
    :goto_1
    if-lez v0, :cond_3

    .line 1111
    add-int/lit8 v1, v1, 0x1

    .line 1112
    div-int/lit8 v0, v0, 0xa

    goto :goto_1

    .line 1114
    :cond_3
    int-to-float v0, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 1115
    goto :goto_3

    .line 1116
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adF:[Ljava/lang/String;

    array-length v0, v0

    .line 1117
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adF:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_2
    if-ge v1, v2, :cond_6

    aget-object v4, v0, v1

    .line 1118
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adO:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 1119
    int-to-float v5, v3

    cmpl-float v5, v4, v5

    if-lez v5, :cond_5

    .line 1120
    float-to-int v3, v4

    .line 1117
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1125
    :cond_6
    move v0, v3

    :goto_3
    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxWidth:I

    if-eq v1, v0, :cond_8

    .line 1126
    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinWidth:I

    if-le v0, v1, :cond_7

    .line 1127
    iput v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxWidth:I

    goto :goto_4

    .line 1129
    :cond_7
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinWidth:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxWidth:I

    .line 1131
    :goto_4
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->invalidate()V

    .line 1133
    :cond_8
    return-void
.end method

.method private rm()V
    .locals 4

    .line 1177
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adH:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adG:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adN:[I

    array-length v2, v2

    const/4 v3, 0x0

    if-lt v0, v2, :cond_0

    .line 1178
    move v0, v1

    goto :goto_0

    .line 1177
    :cond_0
    nop

    .line 1178
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->ady:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aec:Z

    .line 1179
    return-void
.end method

.method private rn()V
    .locals 5

    .line 1491
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adM:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1492
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adN:[I

    .line 1493
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getValue()I

    move-result v1

    .line 1494
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adN:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 1495
    add-int/lit8 v3, v2, -0x2

    add-int/2addr v3, v1

    .line 1496
    iget-boolean v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aec:Z

    if-eqz v4, :cond_0

    .line 1497
    invoke-direct {p0, v3}, Lcom/xiaopeng/xui/widget/XNumberPicker;->eE(I)I

    move-result v3

    .line 1499
    :cond_0
    aput v3, v0, v2

    .line 1500
    aget v3, v0, v2

    invoke-direct {p0, v3}, Lcom/xiaopeng/xui/widget/XNumberPicker;->eF(I)V

    .line 1494
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1502
    :cond_1
    return-void
.end method

.method private ro()V
    .locals 4

    .line 1554
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->rn()V

    .line 1555
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adN:[I

    .line 1556
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextSize:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adD:I

    add-int/2addr v1, v2

    .line 1557
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v1, v2

    .line 1558
    array-length v0, v0

    .line 1559
    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adE:I

    .line 1560
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextSize:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adE:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adP:I

    .line 1561
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adD:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adE:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adQ:I

    .line 1563
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adE:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adR:I

    .line 1564
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adR:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adS:I

    .line 1565
    return-void
.end method

.method private rp()V
    .locals 2

    .line 1568
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 1569
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setFadingEdgeLength(I)V

    .line 1570
    return-void
.end method

.method private rq()V
    .locals 1

    .line 1709
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adW:Lcom/xiaopeng/xui/widget/XNumberPicker$b;

    if-eqz v0, :cond_0

    .line 1710
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adW:Lcom/xiaopeng/xui/widget/XNumberPicker$b;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1712
    :cond_0
    return-void
.end method

.method private rr()V
    .locals 3

    .line 1719
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adX:Lcom/xiaopeng/xui/widget/XNumberPicker$a;

    if-nez v0, :cond_0

    .line 1720
    new-instance v0, Lcom/xiaopeng/xui/widget/XNumberPicker$a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/XNumberPicker$a;-><init>(Lcom/xiaopeng/xui/widget/XNumberPicker;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adX:Lcom/xiaopeng/xui/widget/XNumberPicker$a;

    goto :goto_0

    .line 1722
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adX:Lcom/xiaopeng/xui/widget/XNumberPicker$a;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1724
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adX:Lcom/xiaopeng/xui/widget/XNumberPicker$a;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1725
    return-void
.end method

.method private rs()V
    .locals 1

    .line 1731
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adX:Lcom/xiaopeng/xui/widget/XNumberPicker$a;

    if-eqz v0, :cond_0

    .line 1732
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adX:Lcom/xiaopeng/xui/widget/XNumberPicker$a;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1734
    :cond_0
    return-void
.end method

.method private rt()V
    .locals 1

    .line 1740
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adW:Lcom/xiaopeng/xui/widget/XNumberPicker$b;

    if-eqz v0, :cond_0

    .line 1741
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adW:Lcom/xiaopeng/xui/widget/XNumberPicker$b;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1743
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adX:Lcom/xiaopeng/xui/widget/XNumberPicker$a;

    if-eqz v0, :cond_1

    .line 1744
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adX:Lcom/xiaopeng/xui/widget/XNumberPicker$a;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1746
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->ael:Lcom/xiaopeng/xui/widget/XNumberPicker$f;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XNumberPicker$f;->cancel()V

    .line 1747
    return-void
.end method

.method private ru()Z
    .locals 7

    .line 1813
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adR:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adS:I

    sub-int/2addr v0, v1

    .line 1814
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1815
    iput v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adV:I

    .line 1816
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adP:I

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_1

    .line 1817
    if-lez v0, :cond_0

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adP:I

    neg-int v1, v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adP:I

    :goto_0
    add-int/2addr v0, v1

    .line 1819
    :cond_1
    move v5, v0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adU:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x320

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1820
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->invalidate()V

    .line 1821
    const/4 v0, 0x1

    return v0

    .line 1823
    :cond_2
    return v1
.end method

.method private setValueInternal(IZ)V
    .locals 2

    .line 1511
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mValue:I

    if-ne v0, p1, :cond_0

    .line 1512
    return-void

    .line 1515
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aec:Z

    if-eqz v0, :cond_1

    .line 1516
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->eE(I)I

    move-result p1

    goto :goto_0

    .line 1518
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adG:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1519
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adH:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1521
    :goto_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mValue:I

    .line 1522
    iput p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mValue:I

    .line 1524
    if-eqz p2, :cond_2

    .line 1526
    invoke-static {}, Lcom/xiaopeng/xui/b/f;->qL()Lcom/xiaopeng/xui/b/f;

    move-result-object p2

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Lcom/xiaopeng/xui/b/f;->play(I)V

    .line 1527
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->y(II)V

    .line 1529
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->rn()V

    .line 1530
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->invalidate()V

    .line 1531
    return-void
.end method

.method private y(II)V
    .locals 1

    .line 1684
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adI:Lcom/xiaopeng/xui/widget/XNumberPicker$e;

    if-eqz p2, :cond_0

    .line 1685
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adI:Lcom/xiaopeng/xui/widget/XNumberPicker$e;

    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mValue:I

    invoke-interface {p2, p0, p1, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker$e;->onValueChange(Lcom/xiaopeng/xui/widget/XNumberPicker;II)V

    .line 1688
    :cond_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .line 934
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adT:Landroid/widget/Scroller;

    .line 935
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 936
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adU:Landroid/widget/Scroller;

    .line 937
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 938
    return-void

    .line 941
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 942
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 943
    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adV:I

    if-nez v2, :cond_1

    .line 944
    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adV:I

    .line 946
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adV:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lcom/xiaopeng/xui/widget/XNumberPicker;->scrollBy(II)V

    .line 947
    iput v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adV:I

    .line 948
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 949
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->b(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 951
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->invalidate()V

    .line 953
    :goto_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .line 1005
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    .line 995
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adS:I

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .line 1000
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adH:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adG:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adP:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 888
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 889
    const/16 v1, 0x17

    if-eq v0, v1, :cond_4

    const/16 v1, 0x42

    if-eq v0, v1, :cond_4

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 896
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_1

    goto :goto_2

    .line 910
    :pswitch_1
    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aem:I

    if-ne v1, v0, :cond_5

    .line 911
    const/4 p1, -0x1

    iput p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aem:I

    .line 912
    return v2

    .line 898
    :pswitch_2
    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aec:Z

    const/16 v3, 0x14

    if-nez v1, :cond_1

    if-ne v0, v3, :cond_0

    .line 899
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getMaxValue()I

    move-result v4

    if-ge v1, v4, :cond_5

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getMinValue()I

    move-result v4

    if-le v1, v4, :cond_5

    .line 900
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->requestFocus()Z

    .line 901
    iput v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aem:I

    .line 902
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->rt()V

    .line 903
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adT:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 904
    if-ne v0, v3, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->bh(Z)V

    .line 906
    :cond_3
    return v2

    .line 892
    :cond_4
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->rt()V

    .line 893
    nop

    .line 917
    :cond_5
    :goto_2
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 867
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 868
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 871
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->rt()V

    .line 874
    :goto_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 922
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 923
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 926
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->rt()V

    .line 929
    :goto_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawableStateChanged()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1331
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->drawableStateChanged()V

    .line 1333
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aee:Landroid/graphics/drawable/Drawable;

    .line 1334
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1335
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1336
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1338
    :cond_0
    return-void
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .line 1319
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getDisplayedValueForCurrentSelection()Ljava/lang/CharSequence;
    .locals 2

    .line 1309
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adM:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .line 1278
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adF:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .line 1244
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adH:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .line 1210
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adG:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1

    .line 1010
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aed:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .line 1314
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getValue()I
    .locals 1

    .line 1201
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .line 1143
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aec:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1343
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->jumpDrawablesToCurrentState()V

    .line 1345
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aee:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1346
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aee:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1348
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 879
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 880
    invoke-static {p1}, Lcom/xiaopeng/libtheme/ThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 881
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/xiaopeng/xpui/R$color;->x_number_picker_text_color:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextColors:Landroid/content/res/ColorStateList;

    .line 882
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->postInvalidate()V

    .line 884
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1324
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onDetachedFromWindow()V

    .line 1325
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->rt()V

    .line 1326
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1352
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aen:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1353
    :cond_0
    move v0, v2

    goto :goto_1

    .line 1352
    :cond_1
    :goto_0
    nop

    .line 1353
    move v0, v1

    .line 1354
    :goto_1
    iget v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adS:I

    int-to-float v3, v3

    .line 1357
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adN:[I

    .line 1358
    move v5, v3

    move v3, v2

    :goto_2
    array-length v6, v4

    const/4 v7, 0x2

    if-ge v3, v6, :cond_9

    .line 1359
    aget v6, v4, v3

    .line 1360
    iget-object v8, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adM:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1362
    if-eqz v0, :cond_7

    .line 1363
    const/high16 v8, 0x40000000    # 2.0f

    if-ne v3, v7, :cond_4

    .line 1364
    iget-object v9, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextColors:Landroid/content/res/ColorStateList;

    sget-object v10, Lcom/xiaopeng/xui/widget/XNumberPicker;->SELECTED_STATE_SET:[I

    const/high16 v11, -0x1000000

    invoke-virtual {v9, v10, v11}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v9

    .line 1365
    iget-object v10, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adO:Landroid/graphics/Paint;

    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 1366
    iget-object v9, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adO:Landroid/graphics/Paint;

    iget v10, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adD:I

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1367
    iget v9, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aeb:I

    if-eqz v9, :cond_3

    if-eq v9, v7, :cond_2

    .line 1375
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getRight()I

    move-result v7

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getLeft()I

    move-result v9

    sub-int/2addr v7, v9

    int-to-float v7, v7

    div-float/2addr v7, v8

    goto :goto_3

    .line 1372
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getRight()I

    move-result v7

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adA:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    .line 1373
    goto :goto_3

    .line 1369
    :cond_3
    iget v7, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adA:I

    int-to-float v7, v7

    .line 1370
    nop

    .line 1377
    :goto_3
    iget-object v8, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adO:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v5, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1378
    goto :goto_5

    .line 1379
    :cond_4
    iget-object v9, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v9}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v9

    .line 1380
    iget-object v10, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adO:Landroid/graphics/Paint;

    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 1381
    iget-object v9, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adO:Landroid/graphics/Paint;

    iget v10, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTextSize:I

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1382
    iget v9, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aeb:I

    if-eqz v9, :cond_6

    if-eq v9, v7, :cond_5

    .line 1391
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getRight()I

    move-result v7

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getLeft()I

    move-result v9

    sub-int/2addr v7, v9

    int-to-float v7, v7

    div-float/2addr v7, v8

    goto :goto_4

    .line 1387
    :cond_5
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getRight()I

    move-result v7

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adA:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    .line 1388
    goto :goto_4

    .line 1384
    :cond_6
    iget v7, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adA:I

    int-to-float v7, v7

    .line 1385
    nop

    .line 1393
    :goto_4
    iget-object v8, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adO:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v5, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1396
    :cond_7
    :goto_5
    if-ne v3, v1, :cond_8

    .line 1397
    iget v6, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adQ:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    goto :goto_6

    .line 1399
    :cond_8
    iget v6, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adP:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    .line 1358
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 1404
    :cond_9
    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aee:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 1406
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aej:I

    .line 1407
    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aeg:I

    add-int/2addr v1, v0

    .line 1409
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aee:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWidth:I

    invoke-virtual {v3, v2, v0, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1411
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aee:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1414
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aek:I

    .line 1415
    iget v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aeg:I

    sub-int v3, v0, v3

    .line 1416
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aee:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWidth:I

    invoke-virtual {v4, v2, v3, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1417
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aee:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1419
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aef:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 1420
    mul-int v0, v7, v1

    add-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x3

    .line 1421
    mul-int/2addr v3, v7

    add-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x3

    .line 1422
    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aeb:I

    if-eqz v2, :cond_b

    if-eq v2, v7, :cond_a

    goto :goto_7

    .line 1430
    :cond_a
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aef:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v3, v0, 0x6

    const/16 v4, 0x29

    const/16 v5, 0x23

    invoke-virtual {v2, v5, v0, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1431
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aef:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1432
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aef:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v2, v1, -0x6

    invoke-virtual {v0, v5, v2, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1433
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aef:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1434
    goto :goto_7

    .line 1424
    :cond_b
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aef:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWidth:I

    add-int/lit8 v3, v3, -0x6

    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWidth:I

    add-int/lit8 v5, v0, 0x6

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1425
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aef:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1426
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aef:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWidth:I

    add-int/lit8 v2, v2, -0x6

    add-int/lit8 v3, v1, -0x6

    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWidth:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1427
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aef:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1428
    nop

    .line 1439
    :cond_c
    :goto_7
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 745
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 746
    return v1

    .line 748
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 751
    if-nez v0, :cond_7

    .line 752
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->rt()V

    .line 753
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adY:F

    iput v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aea:F

    .line 754
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adZ:J

    .line 755
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aeh:Z

    .line 756
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aei:Z

    .line 757
    iget p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adY:F

    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aej:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    const/4 v0, 0x1

    if-gez p1, :cond_1

    .line 758
    iget p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mScrollState:I

    if-nez p1, :cond_2

    .line 759
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->ael:Lcom/xiaopeng/xui/widget/XNumberPicker$f;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XNumberPicker$f;->buttonPressDelayed(I)V

    goto :goto_0

    .line 762
    :cond_1
    iget p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adY:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aek:I

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_2

    .line 763
    iget p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mScrollState:I

    if-nez p1, :cond_2

    .line 764
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->ael:Lcom/xiaopeng/xui/widget/XNumberPicker$f;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker$f;->buttonPressDelayed(I)V

    .line 768
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 769
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adT:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_3

    .line 770
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adT:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 771
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adU:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 772
    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->eD(I)V

    goto :goto_1

    .line 773
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adU:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_4

    .line 774
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adT:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 775
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adU:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1

    .line 776
    :cond_4
    iget p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adY:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aej:I

    int-to-float v2, v2

    cmpg-float p1, p1, v2

    if-gez p1, :cond_5

    .line 777
    nop

    .line 778
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v2, p1

    .line 777
    invoke-direct {p0, v1, v2, v3}, Lcom/xiaopeng/xui/widget/XNumberPicker;->a(ZJ)V

    goto :goto_1

    .line 779
    :cond_5
    iget p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adY:F

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aek:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_6

    .line 780
    nop

    .line 781
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v1, p1

    .line 780
    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->a(ZJ)V

    goto :goto_1

    .line 783
    :cond_6
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aei:Z

    .line 784
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->rr()V

    .line 786
    :goto_1
    return v0

    .line 788
    :cond_7
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 689
    if-eqz p1, :cond_0

    .line 691
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->ro()V

    .line 692
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->rp()V

    .line 693
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getHeight()I

    move-result p1

    iget p2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adB:I

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iget p2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aeg:I

    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x5

    iput p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aej:I

    .line 695
    iget p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aej:I

    iget p2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aeg:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    iget p2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adB:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aek:I

    .line 698
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 703
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->makeMeasureSpec(II)I

    move-result v0

    .line 704
    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 705
    invoke-super {p0, v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onMeasure(II)V

    .line 707
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->e(III)I

    move-result p1

    .line 709
    iput p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mWidth:I

    .line 710
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->e(III)I

    move-result p2

    .line 712
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setMeasuredDimension(II)V

    .line 713
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 793
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 794
    return v1

    .line 796
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 797
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 799
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 800
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 801
    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 803
    :pswitch_0
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aeh:Z

    if-eqz v0, :cond_2

    .line 804
    goto/16 :goto_4

    .line 806
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 807
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mScrollState:I

    if-eq v0, v2, :cond_4

    .line 808
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adY:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 809
    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTouchSlop:I

    if-le v0, v1, :cond_3

    .line 810
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->rt()V

    .line 811
    invoke-direct {p0, v2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->eD(I)V

    .line 813
    :cond_3
    goto :goto_0

    .line 814
    :cond_4
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aea:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    .line 815
    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->scrollBy(II)V

    .line 816
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->invalidate()V

    .line 818
    :goto_0
    iput p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aea:F

    .line 820
    goto/16 :goto_4

    .line 822
    :pswitch_1
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->rs()V

    .line 823
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->rq()V

    .line 824
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->ael:Lcom/xiaopeng/xui/widget/XNumberPicker$f;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XNumberPicker$f;->cancel()V

    .line 825
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 826
    const/16 v3, 0x3e8

    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMaximumFlingVelocity:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 827
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 828
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mMinimumFlingVelocity:I

    const/4 v5, 0x2

    if-le v3, v4, :cond_5

    .line 829
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->fling(I)V

    .line 830
    invoke-direct {p0, v5}, Lcom/xiaopeng/xui/widget/XNumberPicker;->eD(I)V

    goto :goto_3

    .line 832
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 833
    int-to-float v3, v0

    iget v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    .line 834
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adZ:J

    sub-long/2addr v6, v8

    .line 835
    iget p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mTouchSlop:I

    if-gt v3, p1, :cond_9

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    int-to-long v3, p1

    cmp-long p1, v6, v3

    if-gez p1, :cond_9

    .line 836
    iget-boolean p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aei:Z

    if-eqz p1, :cond_6

    .line 837
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aei:Z

    .line 838
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->performClick()Z

    goto :goto_2

    .line 840
    :cond_6
    iget p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adP:I

    div-int/2addr v0, p1

    sub-int/2addr v0, v5

    .line 842
    if-lez v0, :cond_7

    .line 843
    invoke-direct {p0, v2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->bh(Z)V

    .line 844
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->ael:Lcom/xiaopeng/xui/widget/XNumberPicker$f;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XNumberPicker$f;->buttonTapped(I)V

    goto :goto_1

    .line 846
    :cond_7
    if-gez v0, :cond_8

    .line 847
    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->bh(Z)V

    .line 848
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->ael:Lcom/xiaopeng/xui/widget/XNumberPicker$f;

    invoke-virtual {p1, v5}, Lcom/xiaopeng/xui/widget/XNumberPicker$f;->buttonTapped(I)V

    .line 851
    :cond_8
    :goto_1
    goto :goto_2

    .line 853
    :cond_9
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->ru()Z

    .line 855
    :goto_2
    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->eD(I)V

    .line 857
    :goto_3
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 858
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 862
    :goto_4
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public performClick()Z
    .locals 1

    .line 1084
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public performLongClick()Z
    .locals 1

    .line 1089
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public scrollBy(II)V
    .locals 4

    .line 957
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adN:[I

    .line 958
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adS:I

    .line 959
    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aec:Z

    const/4 v2, 0x2

    if-nez v1, :cond_0

    if-lez p2, :cond_0

    aget v1, p1, v2

    iget v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adG:I

    if-gt v1, v3, :cond_0

    .line 961
    iget p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adR:I

    iput p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adS:I

    .line 962
    return-void

    .line 964
    :cond_0
    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aec:Z

    if-nez v1, :cond_1

    if-gez p2, :cond_1

    aget v1, p1, v2

    iget v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adH:I

    if-lt v1, v3, :cond_1

    .line 966
    iget p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adR:I

    iput p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adS:I

    .line 967
    return-void

    .line 969
    :cond_1
    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adS:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adS:I

    .line 970
    :goto_0
    iget p2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adS:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adR:I

    sub-int/2addr p2, v1

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adE:I

    const/4 v3, 0x1

    if-le p2, v1, :cond_3

    .line 971
    iget p2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adE:I

    mul-int/2addr p2, v2

    add-int/2addr p2, v3

    .line 972
    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adS:I

    sub-int/2addr v1, p2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adS:I

    .line 973
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->f([I)V

    .line 974
    aget p2, p1, v2

    invoke-direct {p0, p2, v3}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setValueInternal(IZ)V

    .line 975
    iget-boolean p2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aec:Z

    if-nez p2, :cond_2

    aget p2, p1, v2

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adG:I

    if-gt p2, v1, :cond_2

    .line 976
    iget p2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adR:I

    iput p2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adS:I

    .line 978
    :cond_2
    goto :goto_0

    .line 979
    :cond_3
    :goto_1
    iget p2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adS:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adR:I

    sub-int/2addr p2, v1

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adE:I

    neg-int v1, v1

    if-ge p2, v1, :cond_5

    .line 980
    iget p2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adE:I

    mul-int/2addr p2, v2

    add-int/2addr p2, v3

    .line 981
    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adS:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adS:I

    .line 982
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->e([I)V

    .line 983
    aget p2, p1, v2

    invoke-direct {p0, p2, v3}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setValueInternal(IZ)V

    .line 984
    iget-boolean p2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->aec:Z

    if-nez p2, :cond_4

    aget p2, p1, v2

    iget v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adH:I

    if-lt p2, v1, :cond_4

    .line 985
    iget p2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adR:I

    iput p2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adS:I

    .line 987
    :cond_4
    goto :goto_1

    .line 988
    :cond_5
    iget p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adS:I

    if-eq v0, p1, :cond_6

    .line 989
    iget p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adS:I

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->onScrollChanged(IIII)V

    .line 991
    :cond_6
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1

    .line 1291
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adF:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 1292
    return-void

    .line 1294
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adF:[Ljava/lang/String;

    .line 1295
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->rn()V

    .line 1296
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->rl()V

    .line 1297
    return-void
.end method

.method public setFormatter(Lcom/xiaopeng/xui/widget/XNumberPicker$c;)V
    .locals 1

    .line 1043
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adK:Lcom/xiaopeng/xui/widget/XNumberPicker$c;

    if-ne p1, v0, :cond_0

    .line 1044
    return-void

    .line 1046
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adK:Lcom/xiaopeng/xui/widget/XNumberPicker$c;

    .line 1047
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->rn()V

    .line 1048
    return-void
.end method

.method public setMaxValue(I)V
    .locals 1

    .line 1258
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adH:I

    if-ne v0, p1, :cond_0

    .line 1259
    return-void

    .line 1261
    :cond_0
    if-ltz p1, :cond_2

    .line 1264
    iput p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adH:I

    .line 1265
    iget p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adH:I

    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mValue:I

    if-ge p1, v0, :cond_1

    .line 1266
    iget p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adH:I

    iput p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mValue:I

    .line 1268
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->rm()V

    .line 1269
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->invalidate()V

    .line 1270
    return-void

    .line 1262
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxValue must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMinValue(I)V
    .locals 1

    .line 1224
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adG:I

    if-ne v0, p1, :cond_0

    .line 1225
    return-void

    .line 1227
    :cond_0
    if-ltz p1, :cond_2

    .line 1230
    iput p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adG:I

    .line 1231
    iget p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adG:I

    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mValue:I

    if-le p1, v0, :cond_1

    .line 1232
    iget p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adG:I

    iput p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->mValue:I

    .line 1234
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->rm()V

    .line 1235
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->invalidate()V

    .line 1236
    return-void

    .line 1228
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "minValue must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0

    .line 1192
    iput-wide p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adL:J

    .line 1193
    return-void
.end method

.method public setOnScrollListener(Lcom/xiaopeng/xui/widget/XNumberPicker$d;)V
    .locals 0

    .line 1028
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adJ:Lcom/xiaopeng/xui/widget/XNumberPicker$d;

    .line 1029
    return-void
.end method

.method public setOnValueChangedListener(Lcom/xiaopeng/xui/widget/XNumberPicker$e;)V
    .locals 0

    .line 1019
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->adI:Lcom/xiaopeng/xui/widget/XNumberPicker$e;

    .line 1020
    return-void
.end method

.method public setValue(I)V
    .locals 1

    .line 1079
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setValueInternal(IZ)V

    .line 1080
    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 0

    .line 1164
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker;->ady:Z

    .line 1165
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->rm()V

    .line 1167
    return-void
.end method
