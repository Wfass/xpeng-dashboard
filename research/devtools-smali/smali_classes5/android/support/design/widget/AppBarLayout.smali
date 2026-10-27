.class public Landroid/support/design/widget/AppBarLayout;
.super Landroid/widget/LinearLayout;
.source "AppBarLayout.java"


# annotations
.annotation runtime Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;
    value = Landroid/support/design/widget/AppBarLayout$Behavior;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;,
        Landroid/support/design/widget/AppBarLayout$Behavior;,
        Landroid/support/design/widget/AppBarLayout$LayoutParams;,
        Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;
    }
.end annotation


# static fields
.field private static final INVALID_SCROLL_RANGE:I = -0x1

.field static final PENDING_ACTION_ANIMATE_ENABLED:I = 0x4

.field static final PENDING_ACTION_COLLAPSED:I = 0x2

.field static final PENDING_ACTION_EXPANDED:I = 0x1

.field static final PENDING_ACTION_FORCE:I = 0x8

.field static final PENDING_ACTION_NONE:I


# instance fields
.field private collapsed:Z

.field private collapsible:Z

.field private downPreScrollRange:I

.field private downScrollRange:I

.field private haveChildWithInterpolator:Z

.field private lastInsets:Landroid/support/v4/view/WindowInsetsCompat;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private pendingAction:I

.field private tmpStatesArray:[I

.field private totalScrollRange:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 154
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->totalScrollRange:I

    .line 133
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->downPreScrollRange:I

    .line 134
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->downScrollRange:I

    .line 138
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->pendingAction:I

    .line 155
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/AppBarLayout;->setOrientation(I)V

    .line 157
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 160
    invoke-static {p0}, Landroid/support/design/widget/ViewUtilsLollipop;->setBoundsViewOutlineProvider(Landroid/view/View;)V

    .line 164
    sget v1, Landroid/support/design/widget/R$style;->Widget_Design_AppBarLayout:I

    invoke-static {p0, p2, v0, v1}, Landroid/support/design/widget/ViewUtilsLollipop;->setStateListAnimatorFromAttrs(Landroid/view/View;Landroid/util/AttributeSet;II)V

    .line 168
    :cond_0
    sget-object v1, Landroid/support/design/widget/R$styleable;->AppBarLayout:[I

    sget v3, Landroid/support/design/widget/R$style;->Widget_Design_AppBarLayout:I

    .line 169
    invoke-static {p1, p2, v1, v0, v3}, Landroid/support/design/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 171
    sget p2, Landroid/support/design/widget/R$styleable;->AppBarLayout_android_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 172
    sget p2, Landroid/support/design/widget/R$styleable;->AppBarLayout_expanded:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 173
    sget p2, Landroid/support/design/widget/R$styleable;->AppBarLayout_expanded:I

    .line 174
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 173
    invoke-direct {p0, p2, v0, v0}, Landroid/support/design/widget/AppBarLayout;->setExpanded(ZZZ)V

    .line 178
    :cond_1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v2, :cond_2

    sget p2, Landroid/support/design/widget/R$styleable;->AppBarLayout_elevation:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 179
    sget p2, Landroid/support/design/widget/R$styleable;->AppBarLayout_elevation:I

    .line 180
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    .line 179
    invoke-static {p0, p2}, Landroid/support/design/widget/ViewUtilsLollipop;->setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V

    .line 182
    :cond_2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p2, v1, :cond_4

    .line 185
    sget p2, Landroid/support/design/widget/R$styleable;->AppBarLayout_android_keyboardNavigationCluster:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 186
    sget p2, Landroid/support/design/widget/R$styleable;->AppBarLayout_android_keyboardNavigationCluster:I

    .line 187
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 186
    invoke-virtual {p0, p2}, Landroid/support/design/widget/AppBarLayout;->setKeyboardNavigationCluster(Z)V

    .line 189
    :cond_3
    sget p2, Landroid/support/design/widget/R$styleable;->AppBarLayout_android_touchscreenBlocksFocus:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 190
    sget p2, Landroid/support/design/widget/R$styleable;->AppBarLayout_android_touchscreenBlocksFocus:I

    .line 191
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 190
    invoke-virtual {p0, p2}, Landroid/support/design/widget/AppBarLayout;->setTouchscreenBlocksFocus(Z)V

    .line 194
    :cond_4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 196
    new-instance p1, Landroid/support/design/widget/AppBarLayout$1;

    invoke-direct {p1, p0}, Landroid/support/design/widget/AppBarLayout$1;-><init>(Landroid/support/design/widget/AppBarLayout;)V

    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 204
    return-void
.end method

.method private invalidateScrollRanges()V
    .locals 1

    .line 271
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->totalScrollRange:I

    .line 272
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->downPreScrollRange:I

    .line 273
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->downScrollRange:I

    .line 274
    return-void
.end method

.method private setCollapsibleState(Z)Z
    .locals 1

    .line 528
    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->collapsible:Z

    if-eq v0, p1, :cond_0

    .line 529
    iput-boolean p1, p0, Landroid/support/design/widget/AppBarLayout;->collapsible:Z

    .line 530
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->refreshDrawableState()V

    .line 531
    const/4 p1, 0x1

    return p1

    .line 533
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private setExpanded(ZZZ)V
    .locals 1

    .line 316
    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 p2, 0x4

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    or-int/2addr p1, p2

    if-eqz p3, :cond_2

    const/16 v0, 0x8

    nop

    :cond_2
    or-int/2addr p1, v0

    iput p1, p0, Landroid/support/design/widget/AppBarLayout;->pendingAction:I

    .line 320
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->requestLayout()V

    .line 321
    return-void
.end method

.method private updateCollapsible()V
    .locals 4

    .line 259
    nop

    .line 260
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 261
    invoke-virtual {p0, v2}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->isCollapsible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 262
    nop

    .line 263
    nop

    .line 266
    const/4 v1, 0x1

    goto :goto_1

    .line 260
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 266
    :cond_1
    :goto_1
    invoke-direct {p0, v1}, Landroid/support/design/widget/AppBarLayout;->setCollapsibleState(Z)Z

    .line 267
    return-void
.end method


# virtual methods
.method public addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V
    .locals 1

    .line 213
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->listeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/AppBarLayout;->listeners:Ljava/util/List;

    .line 216
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 217
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_1
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 325
    instance-of p1, p1, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    return p1
.end method

.method dispatchOffsetUpdates(I)V
    .locals 3

    .line 474
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->listeners:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 475
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 476
    iget-object v2, p0, Landroid/support/design/widget/AppBarLayout;->listeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    .line 477
    if-eqz v2, :cond_0

    .line 478
    invoke-interface {v2, p0, p1}, Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;->onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V

    .line 475
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 482
    :cond_1
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .locals 3

    .line 330
    new-instance v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 105
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->generateDefaultLayoutParams()Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 105
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->generateDefaultLayoutParams()Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .locals 2

    .line 335
    new-instance v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .locals 2

    .line 340
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 341
    new-instance v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0

    .line 342
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 343
    new-instance v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 345
    :cond_1
    new-instance v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 105
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 105
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 105
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 105
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method getDownNestedPreScrollRange()I
    .locals 9

    .line 400
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->downPreScrollRange:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 402
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->downPreScrollRange:I

    return v0

    .line 405
    :cond_0
    nop

    .line 406
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ltz v0, :cond_5

    .line 407
    invoke-virtual {p0, v0}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 408
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 409
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 410
    iget v6, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 412
    and-int/lit8 v7, v6, 0x5

    const/4 v8, 0x5

    if-ne v7, v8, :cond_3

    .line 414
    iget v7, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    iget v4, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v4

    add-int/2addr v2, v7

    .line 416
    and-int/lit8 v4, v6, 0x8

    if-eqz v4, :cond_1

    .line 418
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 419
    :cond_1
    and-int/lit8 v4, v6, 0x2

    if-eqz v4, :cond_2

    .line 421
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v5, v3

    add-int/2addr v2, v5

    goto :goto_1

    .line 424
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v3

    sub-int/2addr v5, v3

    add-int/2addr v2, v5

    goto :goto_1

    .line 426
    :cond_3
    if-lez v2, :cond_4

    .line 429
    goto :goto_2

    .line 406
    :cond_4
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 432
    :cond_5
    :goto_2
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->downPreScrollRange:I

    return v0
.end method

.method getDownNestedScrollRange()I
    .locals 9

    .line 437
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->downScrollRange:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 439
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->downScrollRange:I

    return v0

    .line 442
    :cond_0
    nop

    .line 443
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    .line 444
    invoke-virtual {p0, v2}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 445
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 446
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 447
    iget v7, v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    iget v8, v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 449
    iget v5, v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 451
    and-int/lit8 v7, v5, 0x1

    if-eqz v7, :cond_2

    .line 453
    add-int/2addr v3, v6

    .line 455
    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 459
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v2

    add-int/2addr v0, v2

    sub-int/2addr v3, v0

    .line 460
    goto :goto_1

    .line 443
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 468
    :cond_2
    :goto_1
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->downScrollRange:I

    return v0
.end method

.method final getMinimumHeightForVisibleOverlappingContent()I
    .locals 3

    .line 485
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v0

    .line 486
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    .line 487
    if-eqz v1, :cond_0

    .line 489
    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    return v1

    .line 493
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v1

    .line 494
    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    sub-int/2addr v1, v2

    .line 495
    invoke-virtual {p0, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 496
    :goto_0
    if-eqz v1, :cond_2

    .line 497
    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    return v1

    .line 502
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method getPendingAction()I
    .locals 1

    .line 574
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->pendingAction:I

    return v0
.end method

.method public getTargetElevation()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 570
    const/4 v0, 0x0

    return v0
.end method

.method final getTopInset()I
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 583
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->lastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->lastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getTotalScrollRange()I
    .locals 9

    .line 358
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->totalScrollRange:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 359
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->totalScrollRange:I

    return v0

    .line 362
    :cond_0
    nop

    .line 363
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    .line 364
    invoke-virtual {p0, v2}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 365
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 366
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 367
    iget v7, v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 369
    and-int/lit8 v8, v7, 0x1

    if-eqz v8, :cond_2

    .line 371
    iget v8, v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v8

    iget v5, v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v5

    add-int/2addr v3, v6

    .line 373
    and-int/lit8 v5, v7, 0x2

    if-eqz v5, :cond_1

    .line 377
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v3, v0

    .line 378
    goto :goto_1

    .line 363
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 386
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->totalScrollRange:I

    return v0
.end method

.method getUpNestedPreScrollRange()I
    .locals 1

    .line 395
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    return v0
.end method

.method hasChildWithInterpolator()Z
    .locals 1

    .line 349
    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->haveChildWithInterpolator:Z

    return v0
.end method

.method hasScrollableChildren()Z
    .locals 1

    .line 390
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 3

    .line 507
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->tmpStatesArray:[I

    if-nez v0, :cond_0

    .line 511
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/design/widget/AppBarLayout;->tmpStatesArray:[I

    .line 513
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->tmpStatesArray:[I

    .line 514
    array-length v1, v0

    add-int/2addr p1, v1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 516
    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/support/design/widget/AppBarLayout;->collapsible:Z

    if-eqz v2, :cond_1

    sget v2, Landroid/support/design/widget/R$attr;->state_collapsible:I

    goto :goto_0

    :cond_1
    sget v2, Landroid/support/design/widget/R$attr;->state_collapsible:I

    neg-int v2, v2

    :goto_0
    aput v2, v0, v1

    .line 517
    const/4 v1, 0x1

    iget-boolean v2, p0, Landroid/support/design/widget/AppBarLayout;->collapsible:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/support/design/widget/AppBarLayout;->collapsed:Z

    if-eqz v2, :cond_2

    sget v2, Landroid/support/design/widget/R$attr;->state_collapsed:I

    goto :goto_1

    :cond_2
    sget v2, Landroid/support/design/widget/R$attr;->state_collapsed:I

    neg-int v2, v2

    :goto_1
    aput v2, v0, v1

    .line 519
    invoke-static {p1, v0}, Landroid/support/design/widget/AppBarLayout;->mergeDrawableStates([I[I)[I

    move-result-object p1

    return-object p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 240
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 241
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->invalidateScrollRanges()V

    .line 243
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/design/widget/AppBarLayout;->haveChildWithInterpolator:Z

    .line 244
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result p2

    :goto_0
    if-ge p1, p2, :cond_1

    .line 245
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 246
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 247
    invoke-virtual {p3}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    move-result-object p3

    .line 249
    if-eqz p3, :cond_0

    .line 250
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/design/widget/AppBarLayout;->haveChildWithInterpolator:Z

    .line 251
    goto :goto_1

    .line 244
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 255
    :cond_1
    :goto_1
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->updateCollapsible()V

    .line 256
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 234
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 235
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->invalidateScrollRanges()V

    .line 236
    return-void
.end method

.method onWindowInsetChanged(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 2

    .line 587
    nop

    .line 589
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    nop

    .line 595
    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout;->lastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-static {v1, v0}, Landroid/support/v4/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 596
    iput-object v0, p0, Landroid/support/design/widget/AppBarLayout;->lastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    .line 597
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->invalidateScrollRanges()V

    .line 600
    :cond_1
    return-object p1
.end method

.method public removeOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V
    .locals 1

    .line 227
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->listeners:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 228
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 230
    :cond_0
    return-void
.end method

.method resetPendingAction()V
    .locals 1

    .line 578
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->pendingAction:I

    .line 579
    return-void
.end method

.method setCollapsedState(Z)Z
    .locals 1

    .line 542
    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->collapsed:Z

    if-eq v0, p1, :cond_0

    .line 543
    iput-boolean p1, p0, Landroid/support/design/widget/AppBarLayout;->collapsed:Z

    .line 544
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->refreshDrawableState()V

    .line 545
    const/4 p1, 0x1

    return p1

    .line 547
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setExpanded(Z)V
    .locals 1

    .line 297
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/AppBarLayout;->setExpanded(ZZ)V

    .line 298
    return-void
.end method

.method public setExpanded(ZZ)V
    .locals 1

    .line 312
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/AppBarLayout;->setExpanded(ZZZ)V

    .line 313
    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 278
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 282
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 283
    return-void

    .line 279
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "AppBarLayout is always vertical and does not support horizontal orientation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTargetElevation(F)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 559
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 560
    invoke-static {p0, p1}, Landroid/support/design/widget/ViewUtilsLollipop;->setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V

    .line 562
    :cond_0
    return-void
.end method
