.class public Landroid/support/design/widget/AppBarLayout$LayoutParams;
.super Landroid/widget/LinearLayout$LayoutParams;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/AppBarLayout$LayoutParams$ScrollFlags;
    }
.end annotation


# static fields
.field static final COLLAPSIBLE_FLAGS:I = 0xa

.field static final FLAG_QUICK_RETURN:I = 0x5

.field static final FLAG_SNAP:I = 0x11

.field public static final SCROLL_FLAG_ENTER_ALWAYS:I = 0x4

.field public static final SCROLL_FLAG_ENTER_ALWAYS_COLLAPSED:I = 0x8

.field public static final SCROLL_FLAG_EXIT_UNTIL_COLLAPSED:I = 0x2

.field public static final SCROLL_FLAG_SCROLL:I = 0x1

.field public static final SCROLL_FLAG_SNAP:I = 0x10


# instance fields
.field scrollFlags:I

.field scrollInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 684
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 669
    const/4 p1, 0x1

    iput p1, p0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 685
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0

    .line 688
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 669
    const/4 p1, 0x1

    iput p1, p0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 689
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 673
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 669
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 674
    sget-object v0, Landroid/support/design/widget/R$styleable;->AppBarLayout_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 675
    sget v0, Landroid/support/design/widget/R$styleable;->AppBarLayout_Layout_layout_scrollFlags:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 676
    sget v0, Landroid/support/design/widget/R$styleable;->AppBarLayout_Layout_layout_scrollInterpolator:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    sget v0, Landroid/support/design/widget/R$styleable;->AppBarLayout_Layout_layout_scrollInterpolator:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 678
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->scrollInterpolator:Landroid/view/animation/Interpolator;

    .line 680
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 681
    return-void
.end method

.method public constructor <init>(Landroid/support/design/widget/AppBarLayout$LayoutParams;)V
    .locals 1
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .line 708
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 669
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 709
    iget v0, p1, Landroid/support/design/widget/AppBarLayout$LayoutParams;->scrollFlags:I

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 710
    iget-object p1, p1, Landroid/support/design/widget/AppBarLayout$LayoutParams;->scrollInterpolator:Landroid/view/animation/Interpolator;

    iput-object p1, p0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->scrollInterpolator:Landroid/view/animation/Interpolator;

    .line 711
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 692
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 669
    const/4 p1, 0x1

    iput p1, p0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 693
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 696
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 669
    const/4 p1, 0x1

    iput p1, p0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 697
    return-void
.end method

.method public constructor <init>(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 0
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .line 702
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 669
    const/4 p1, 0x1

    iput p1, p0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 703
    return-void
.end method


# virtual methods
.method public getScrollFlags()I
    .locals 1

    .line 734
    iget v0, p0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->scrollFlags:I

    return v0
.end method

.method public getScrollInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 756
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->scrollInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method isCollapsible()Z
    .locals 2

    .line 761
    iget v0, p0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->scrollFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->scrollFlags:I

    and-int/lit8 v0, v0, 0xa

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setScrollFlags(I)V
    .locals 0

    .line 723
    iput p1, p0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 724
    return-void
.end method

.method public setScrollInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 745
    iput-object p1, p0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->scrollInterpolator:Landroid/view/animation/Interpolator;

    .line 746
    return-void
.end method
