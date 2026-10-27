.class public Landroid/support/design/widget/AppBarLayout$Behavior;
.super Landroid/support/design/widget/HeaderBehavior;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;,
        Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/HeaderBehavior<",
        "Landroid/support/design/widget/AppBarLayout;",
        ">;"
    }
.end annotation


# static fields
.field private static final INVALID_POSITION:I = -0x1

.field private static final MAX_OFFSET_ANIMATION_DURATION:I = 0x258


# instance fields
.field private lastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private lastStartedType:I

.field private offsetAnimator:Landroid/animation/ValueAnimator;

.field private offsetDelta:I

.field private offsetToChildIndexOnLayout:I

.field private offsetToChildIndexOnLayoutIsMinHeight:Z

.field private offsetToChildIndexOnLayoutPerc:F

.field private onDragCallback:Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 801
    invoke-direct {p0}, Landroid/support/design/widget/HeaderBehavior;-><init>()V

    .line 794
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->offsetToChildIndexOnLayout:I

    .line 801
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 804
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/HeaderBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 794
    const/4 p1, -0x1

    iput p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->offsetToChildIndexOnLayout:I

    .line 805
    return-void
.end method

.method static synthetic access$000(Landroid/support/design/widget/AppBarLayout$Behavior;)I
    .locals 0

    .line 770
    iget p0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->offsetDelta:I

    return p0
.end method

.method private animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V
    .locals 3

    .line 922
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    sub-int/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 925
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    .line 926
    const/4 v1, 0x0

    cmpl-float v1, p4, v1

    if-lez v1, :cond_0

    .line 927
    const/4 v1, 0x3

    const/high16 v2, 0x447a0000    # 1000.0f

    int-to-float v0, v0

    div-float/2addr v0, p4

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p4

    mul-int/2addr v1, p4

    goto :goto_0

    .line 929
    :cond_0
    int-to-float p4, v0

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p4, v0

    .line 930
    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p4, v0

    const/high16 v0, 0x43160000    # 150.0f

    mul-float/2addr p4, v0

    float-to-int v1, p4

    .line 933
    :goto_0
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/support/design/widget/AppBarLayout$Behavior;->animateOffsetWithDuration(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;II)V

    .line 934
    return-void
.end method

.method private animateOffsetWithDuration(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;II)V
    .locals 3

    .line 941
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    .line 942
    if-ne v0, p3, :cond_1

    .line 943
    iget-object p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 944
    iget-object p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 946
    :cond_0
    return-void

    .line 949
    :cond_1
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_2

    .line 950
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    .line 951
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Landroid/support/design/animation/AnimationUtils;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 952
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/support/design/widget/AppBarLayout$Behavior$1;

    invoke-direct {v2, p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$Behavior$1;-><init>(Landroid/support/design/widget/AppBarLayout$Behavior;Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 961
    :cond_2
    iget-object p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 964
    :goto_0
    iget-object p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    const/16 p2, 0x258

    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 965
    iget-object p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    const/4 p2, 0x2

    new-array p2, p2, [I

    const/4 p4, 0x0

    aput v0, p2, p4

    const/4 p4, 0x1

    aput p3, p2, p4

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 966
    iget-object p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 967
    return-void
.end method

.method private static checkFlag(II)Z
    .locals 0

    .line 1023
    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static getAppBarChildOnOffset(Landroid/support/design/widget/AppBarLayout;I)Landroid/view/View;
    .locals 4

    .line 1314
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 1315
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1316
    invoke-virtual {p0, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1317
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 1318
    return-object v2

    .line 1315
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1321
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getChildIndexOnOffset(Landroid/support/design/widget/AppBarLayout;I)I
    .locals 5

    .line 970
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 971
    invoke-virtual {p1, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 972
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    neg-int v4, p2

    if-gt v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    if-lt v2, v4, :cond_0

    .line 973
    return v1

    .line 970
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 976
    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private interpolateOffset(Landroid/support/design/widget/AppBarLayout;I)I
    .locals 8

    .line 1208
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1210
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    .line 1211
    invoke-virtual {p1, v3}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1212
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 1213
    invoke-virtual {v5}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v6

    .line 1215
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    if-lt v0, v7, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v7

    if-gt v0, v7, :cond_3

    .line 1216
    if-eqz v6, :cond_4

    .line 1217
    nop

    .line 1218
    invoke-virtual {v5}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v1

    .line 1219
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_0

    .line 1221
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v7, v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v7

    iget v5, v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v5

    add-int/2addr v2, v3

    .line 1223
    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 1226
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v2, v1

    .line 1230
    :cond_0
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1231
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result p1

    sub-int/2addr v2, p1

    .line 1234
    :cond_1
    if-lez v2, :cond_2

    .line 1235
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr v0, p1

    .line 1236
    int-to-float p1, v2

    int-to-float v0, v0

    div-float/2addr v0, p1

    .line 1239
    invoke-interface {v6, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr p1, v0

    .line 1237
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 1242
    invoke-static {p2}, Ljava/lang/Integer;->signum(I)I

    move-result p2

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v0, p1

    mul-int/2addr p2, v0

    return p2

    .line 1244
    :cond_2
    goto :goto_1

    .line 1210
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1252
    :cond_4
    :goto_1
    return p2
.end method

.method private shouldJumpElevationState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)Z
    .locals 4

    .line 1299
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->getDependents(Landroid/view/View;)Ljava/util/List;

    move-result-object p1

    .line 1300
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 1301
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1302
    nop

    .line 1303
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1304
    invoke-virtual {v2}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v2

    .line 1306
    instance-of v3, v2, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;

    if-eqz v3, :cond_1

    .line 1307
    check-cast v2, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;

    invoke-virtual {v2}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->getOverlayTop()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 1300
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1310
    :cond_2
    return v0
.end method

.method private snapToChildIfNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V
    .locals 7

    .line 980
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    .line 981
    invoke-direct {p0, p2, v0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getChildIndexOnOffset(Landroid/support/design/widget/AppBarLayout;I)I

    move-result v1

    .line 982
    if-ltz v1, :cond_5

    .line 983
    invoke-virtual {p2, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 984
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 985
    invoke-virtual {v3}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v3

    .line 987
    and-int/lit8 v4, v3, 0x11

    const/16 v5, 0x11

    if-ne v4, v5, :cond_5

    .line 989
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    neg-int v4, v4

    .line 990
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v5

    neg-int v5, v5

    .line 992
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v1, v6, :cond_0

    .line 994
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v1

    add-int/2addr v5, v1

    .line 997
    :cond_0
    const/4 v1, 0x2

    invoke-static {v3, v1}, Landroid/support/design/widget/AppBarLayout$Behavior;->checkFlag(II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 999
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    add-int/2addr v5, v2

    goto :goto_0

    .line 1000
    :cond_1
    const/4 v6, 0x5

    invoke-static {v3, v6}, Landroid/support/design/widget/AppBarLayout$Behavior;->checkFlag(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1004
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v5

    .line 1005
    if-ge v0, v2, :cond_2

    .line 1006
    nop

    .line 1012
    move v4, v2

    goto :goto_0

    .line 1008
    :cond_2
    nop

    .line 1012
    move v5, v2

    :cond_3
    :goto_0
    add-int v2, v5, v4

    div-int/2addr v2, v1

    if-ge v0, v2, :cond_4

    .line 1013
    move v4, v5

    .line 1016
    :cond_4
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-static {v4, v0, v1}, Landroid/support/design/widget/MathUtils;->constrain(III)I

    move-result v0

    const/4 v1, 0x0

    .line 1013
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V

    .line 1020
    :cond_5
    return-void
.end method

.method private stopNestedScrollIfNeeded(ILandroid/support/design/widget/AppBarLayout;Landroid/view/View;I)V
    .locals 1

    .line 883
    const/4 v0, 0x1

    if-ne p4, v0, :cond_2

    .line 884
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result p4

    .line 885
    if-gez p1, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    if-lez p1, :cond_2

    .line 886
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result p1

    neg-int p1, p1

    if-ne p4, p1, :cond_2

    .line 887
    :cond_1
    invoke-static {p3, v0}, Landroid/support/v4/view/ViewCompat;->stopNestedScroll(Landroid/view/View;I)V

    .line 890
    :cond_2
    return-void
.end method

.method private updateAppBarLayoutDrawableState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIZ)V
    .locals 5

    .line 1261
    invoke-static {p2, p3}, Landroid/support/design/widget/AppBarLayout$Behavior;->getAppBarChildOnOffset(Landroid/support/design/widget/AppBarLayout;I)Landroid/view/View;

    move-result-object v0

    .line 1262
    if-eqz v0, :cond_4

    .line 1263
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 1264
    invoke-virtual {v1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v1

    .line 1265
    nop

    .line 1267
    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 1268
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    .line 1270
    const/4 v4, 0x1

    if-lez p4, :cond_1

    and-int/lit8 p4, v1, 0xc

    if-eqz p4, :cond_1

    .line 1277
    neg-int p3, p3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p4

    sub-int/2addr p4, v2

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v0

    sub-int/2addr p4, v0

    if-lt p3, p4, :cond_0

    .line 1285
    :goto_0
    move v3, v4

    goto :goto_1

    .line 1277
    :cond_0
    goto :goto_1

    .line 1278
    :cond_1
    and-int/lit8 p4, v1, 0x2

    if-eqz p4, :cond_2

    .line 1281
    neg-int p3, p3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p4

    sub-int/2addr p4, v2

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v0

    sub-int/2addr p4, v0

    if-lt p3, p4, :cond_2

    goto :goto_0

    .line 1285
    :cond_2
    :goto_1
    invoke-virtual {p2, v3}, Landroid/support/design/widget/AppBarLayout;->setCollapsedState(Z)Z

    move-result p3

    .line 1287
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-lt p4, v0, :cond_4

    if-nez p5, :cond_3

    if-eqz p3, :cond_4

    .line 1288
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$Behavior;->shouldJumpElevationState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1291
    :cond_3
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->jumpDrawablesToCurrentState()V

    .line 1294
    :cond_4
    return-void
.end method


# virtual methods
.method canDragView(Landroid/support/design/widget/AppBarLayout;)Z
    .locals 2

    .line 1114
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->onDragCallback:Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;

    if-eqz v0, :cond_0

    .line 1116
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->onDragCallback:Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;->canDrag(Landroid/support/design/widget/AppBarLayout;)Z

    move-result p1

    return p1

    .line 1120
    :cond_0
    iget-object p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->lastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 1122
    iget-object p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->lastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 1123
    if-eqz p1, :cond_1

    .line 1124
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    .line 1125
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1123
    :goto_0
    return v0

    .line 1128
    :cond_2
    return v0
.end method

.method bridge synthetic canDragView(Landroid/view/View;)Z
    .locals 0

    .line 770
    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout$Behavior;->canDragView(Landroid/support/design/widget/AppBarLayout;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getLeftAndRightOffset()I
    .locals 1

    .line 770
    invoke-super {p0}, Landroid/support/design/widget/HeaderBehavior;->getLeftAndRightOffset()I

    move-result v0

    return v0
.end method

.method getMaxDragOffset(Landroid/support/design/widget/AppBarLayout;)I
    .locals 0

    .line 1140
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result p1

    neg-int p1, p1

    return p1
.end method

.method bridge synthetic getMaxDragOffset(Landroid/view/View;)I
    .locals 0

    .line 770
    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout$Behavior;->getMaxDragOffset(Landroid/support/design/widget/AppBarLayout;)I

    move-result p1

    return p1
.end method

.method getScrollRangeForDragFling(Landroid/support/design/widget/AppBarLayout;)I
    .locals 0

    .line 1145
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    return p1
.end method

.method bridge synthetic getScrollRangeForDragFling(Landroid/view/View;)I
    .locals 0

    .line 770
    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout$Behavior;->getScrollRangeForDragFling(Landroid/support/design/widget/AppBarLayout;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getTopAndBottomOffset()I
    .locals 1

    .line 770
    invoke-super {p0}, Landroid/support/design/widget/HeaderBehavior;->getTopAndBottomOffset()I

    move-result v0

    return v0
.end method

.method getTopBottomOffsetForScrollingSibling()I
    .locals 2

    .line 1326
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->offsetDelta:I

    add-int/2addr v0, v1

    return v0
.end method

.method isOffsetAnimatorRunning()Z
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 1204
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V
    .locals 0

    .line 1135
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$Behavior;->snapToChildIfNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    .line 1136
    return-void
.end method

.method bridge synthetic onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0

    .line 770
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$Behavior;->onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    return-void
.end method

.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)Z
    .locals 7

    .line 1057
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/HeaderBehavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result p3

    .line 1063
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getPendingAction()I

    move-result v0

    .line 1064
    iget v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->offsetToChildIndexOnLayout:I

    const/4 v2, 0x0

    if-ltz v1, :cond_1

    and-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_1

    .line 1065
    iget v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->offsetToChildIndexOnLayout:I

    invoke-virtual {p2, v0}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1066
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    neg-int v1, v1

    .line 1067
    iget-boolean v3, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->offsetToChildIndexOnLayoutIsMinHeight:Z

    if-eqz v3, :cond_0

    .line 1068
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v3

    add-int/2addr v0, v3

    add-int/2addr v1, v0

    goto :goto_0

    .line 1070
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->offsetToChildIndexOnLayoutPerc:F

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v1, v0

    .line 1072
    :goto_0
    invoke-virtual {p0, p1, p2, v1}, Landroid/support/design/widget/AppBarLayout$Behavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    .line 1073
    goto :goto_3

    :cond_1
    if-eqz v0, :cond_6

    .line 1074
    and-int/lit8 v1, v0, 0x4

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 1075
    move v1, v3

    goto :goto_1

    .line 1074
    :cond_2
    nop

    .line 1075
    move v1, v2

    :goto_1
    and-int/lit8 v4, v0, 0x2

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 1076
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v0

    neg-int v0, v0

    .line 1077
    if-eqz v1, :cond_3

    .line 1078
    invoke-direct {p0, p1, p2, v0, v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V

    goto :goto_2

    .line 1080
    :cond_3
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/design/widget/AppBarLayout$Behavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    .line 1082
    :goto_2
    goto :goto_3

    :cond_4
    and-int/2addr v0, v3

    if-eqz v0, :cond_6

    .line 1083
    if-eqz v1, :cond_5

    .line 1084
    invoke-direct {p0, p1, p2, v2, v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V

    goto :goto_3

    .line 1086
    :cond_5
    invoke-virtual {p0, p1, p2, v2}, Landroid/support/design/widget/AppBarLayout$Behavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    .line 1092
    :cond_6
    :goto_3
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->resetPendingAction()V

    .line 1093
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->offsetToChildIndexOnLayout:I

    .line 1097
    nop

    .line 1098
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    neg-int v1, v1

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/MathUtils;->constrain(III)I

    move-result v0

    .line 1097
    invoke-virtual {p0, v0}, Landroid/support/design/widget/AppBarLayout$Behavior;->setTopAndBottomOffset(I)Z

    .line 1103
    nop

    .line 1104
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1103
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Landroid/support/design/widget/AppBarLayout$Behavior;->updateAppBarLayoutDrawableState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIZ)V

    .line 1107
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/support/design/widget/AppBarLayout;->dispatchOffsetUpdates(I)V

    .line 1109
    return p3
.end method

.method public bridge synthetic onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0

    .line 770
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/AppBarLayout$Behavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)Z

    move-result p1

    return p1
.end method

.method public onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIII)Z
    .locals 6

    .line 1034
    nop

    .line 1035
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1036
    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 1041
    nop

    .line 1045
    const/4 p5, 0x0

    invoke-static {p5, p5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1041
    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    .line 1047
    const/4 p1, 0x1

    return p1

    .line 1051
    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/support/design/widget/HeaderBehavior;->onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 7

    .line 770
    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/support/design/widget/AppBarLayout$Behavior;->onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIII)Z

    move-result p1

    return p1
.end method

.method public onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;II[II)V
    .locals 7

    .line 845
    if-eqz p5, :cond_1

    .line 848
    if-gez p5, :cond_0

    .line 850
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result p4

    neg-int p4, p4

    .line 851
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v0

    add-int/2addr v0, p4

    .line 857
    :goto_0
    move v5, p4

    move v6, v0

    goto :goto_1

    .line 854
    :cond_0
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result p4

    neg-int p4, p4

    .line 855
    const/4 v0, 0x0

    goto :goto_0

    .line 857
    :goto_1
    if-eq v5, v6, :cond_1

    .line 858
    const/4 p4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p5

    invoke-virtual/range {v1 .. v6}, Landroid/support/design/widget/AppBarLayout$Behavior;->scroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result p1

    aput p1, p6, p4

    .line 859
    invoke-direct {p0, p5, p2, p3, p7}, Landroid/support/design/widget/AppBarLayout$Behavior;->stopNestedScrollIfNeeded(ILandroid/support/design/widget/AppBarLayout;Landroid/view/View;I)V

    .line 862
    :cond_1
    return-void
.end method

.method public bridge synthetic onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 8

    .line 770
    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/support/design/widget/AppBarLayout$Behavior;->onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;II[II)V

    return-void
.end method

.method public onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;IIIII)V
    .locals 6

    .line 874
    if-gez p7, :cond_0

    .line 877
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result p4

    neg-int v4, p4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p7

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->scroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    .line 878
    invoke-direct {p0, p7, p2, p3, p8}, Landroid/support/design/widget/AppBarLayout$Behavior;->stopNestedScrollIfNeeded(ILandroid/support/design/widget/AppBarLayout;Landroid/view/View;I)V

    .line 880
    :cond_0
    return-void
.end method

.method public bridge synthetic onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII)V
    .locals 9

    .line 770
    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/support/design/widget/AppBarLayout$Behavior;->onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;IIIII)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/os/Parcelable;)V
    .locals 1

    .line 1356
    instance-of v0, p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;

    if-eqz v0, :cond_0

    .line 1357
    check-cast p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;

    .line 1358
    invoke-virtual {p3}, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Landroid/support/design/widget/HeaderBehavior;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 1359
    iget p1, p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildIndex:I

    iput p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->offsetToChildIndexOnLayout:I

    .line 1360
    iget p1, p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildPercentageShown:F

    iput p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->offsetToChildIndexOnLayoutPerc:F

    .line 1361
    iget-boolean p1, p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    iput-boolean p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->offsetToChildIndexOnLayoutIsMinHeight:Z

    .line 1362
    goto :goto_0

    .line 1363
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/HeaderBehavior;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 1364
    const/4 p1, -0x1

    iput p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->offsetToChildIndexOnLayout:I

    .line 1366
    :goto_0
    return-void
.end method

.method public bridge synthetic onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 0

    .line 770
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/AppBarLayout$Behavior;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)Landroid/os/Parcelable;
    .locals 7

    .line 1331
    invoke-super {p0, p1, p2}, Landroid/support/design/widget/HeaderBehavior;->onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object p1

    .line 1332
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v0

    .line 1335
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 1336
    invoke-virtual {p2, v3}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1337
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v0

    .line 1339
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/2addr v6, v0

    if-gtz v6, :cond_1

    if-ltz v5, :cond_1

    .line 1340
    new-instance v0, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;

    invoke-direct {v0, p1}, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1341
    iput v3, v0, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildIndex:I

    .line 1342
    nop

    .line 1343
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result p2

    add-int/2addr p1, p2

    if-ne v5, p1, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    iput-boolean v2, v0, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    .line 1344
    int-to-float p1, v5

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, v0, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildPercentageShown:F

    .line 1345
    return-object v0

    .line 1335
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1350
    :cond_2
    return-object p1
.end method

.method public bridge synthetic onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 0

    .line 770
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$Behavior;->onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method

.method public onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 817
    and-int/lit8 p4, p5, 0x2

    if-eqz p4, :cond_0

    .line 819
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->hasScrollableChildren()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 820
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result p1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result p2

    if-gt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 822
    :goto_0
    if-eqz p1, :cond_1

    iget-object p2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_1

    .line 824
    iget-object p2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 828
    :cond_1
    const/4 p2, 0x0

    iput-object p2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->lastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 831
    iput p6, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->lastStartedType:I

    .line 833
    return p1
.end method

.method public bridge synthetic onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 7

    .line 770
    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/support/design/widget/AppBarLayout$Behavior;->onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;I)V
    .locals 1

    .line 899
    iget v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->lastStartedType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    .line 901
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$Behavior;->snapToChildIfNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    .line 905
    :cond_1
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->lastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 906
    return-void
.end method

.method public bridge synthetic onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 770
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/design/widget/AppBarLayout$Behavior;->onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public setDragCallback(Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;)V
    .locals 0
    .param p1    # Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 914
    iput-object p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->onDragCallback:Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;

    .line 915
    return-void
.end method

.method setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;III)I
    .locals 8

    .line 1155
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    .line 1156
    nop

    .line 1158
    const/4 v1, 0x0

    if-eqz p4, :cond_3

    if-lt v0, p4, :cond_3

    if-gt v0, p5, :cond_3

    .line 1161
    invoke-static {p3, p4, p5}, Landroid/support/design/widget/MathUtils;->constrain(III)I

    move-result v5

    .line 1162
    if-eq v0, v5, :cond_4

    .line 1163
    nop

    .line 1164
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->hasChildWithInterpolator()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1165
    invoke-direct {p0, p2, v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->interpolateOffset(Landroid/support/design/widget/AppBarLayout;I)I

    move-result p3

    goto :goto_0

    .line 1168
    :cond_0
    move p3, v5

    :goto_0
    invoke-virtual {p0, p3}, Landroid/support/design/widget/AppBarLayout$Behavior;->setTopAndBottomOffset(I)Z

    move-result p4

    .line 1171
    sub-int v1, v0, v5

    .line 1173
    sub-int p3, v5, p3

    iput p3, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->offsetDelta:I

    .line 1175
    if-nez p4, :cond_1

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->hasChildWithInterpolator()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1180
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->dispatchDependentViewsChanged(Landroid/view/View;)V

    .line 1184
    :cond_1
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/support/design/widget/AppBarLayout;->dispatchOffsetUpdates(I)V

    .line 1187
    if-ge v5, v0, :cond_2

    const/4 p3, -0x1

    :goto_1
    move v6, p3

    goto :goto_2

    :cond_2
    const/4 p3, 0x1

    goto :goto_1

    :goto_2
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Landroid/support/design/widget/AppBarLayout$Behavior;->updateAppBarLayoutDrawableState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIZ)V

    .line 1193
    goto :goto_3

    .line 1196
    :cond_3
    iput v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->offsetDelta:I

    .line 1199
    :cond_4
    :goto_3
    return v1
.end method

.method bridge synthetic setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 6

    .line 770
    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;III)I

    move-result p1

    return p1
.end method

.method public bridge synthetic setLeftAndRightOffset(I)Z
    .locals 0

    .line 770
    invoke-super {p0, p1}, Landroid/support/design/widget/HeaderBehavior;->setLeftAndRightOffset(I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setTopAndBottomOffset(I)Z
    .locals 0

    .line 770
    invoke-super {p0, p1}, Landroid/support/design/widget/HeaderBehavior;->setTopAndBottomOffset(I)Z

    move-result p1

    return p1
.end method
