.class public Lcom/xiaopeng/xui/utils/XTouchUtils;
.super Ljava/lang/Object;
.source "XTouchUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchResDelegate;,
        Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchDelegate;,
        Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchDelegateParent;,
        Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParamsParent;,
        Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams;,
        Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;,
        Lcom/xiaopeng/xui/utils/XTouchUtils$Type;,
        Lcom/xiaopeng/xui/utils/XTouchUtils$AnimationTouch;,
        Lcom/xiaopeng/xui/utils/XTouchUtils$AnimationType;
    }
.end annotation


# static fields
.field public static final ANIMATION:I = 0x1

.field public static final ANIMATOR:I = 0x2

.field public static final ANIM_ALPHA:I = 0x2

.field public static final ANIM_DOWN:I = 0x1

.field public static final ANIM_SCALE:I = 0x1

.field public static final ANIM_SCALE_X:I = 0x3

.field public static final ANIM_SCALE_Y:I = 0x4

.field public static final ANIM_UP:I = 0x2

.field public static final DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 55
    new-instance v0, Lbtn;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1, v3}, Lbtn;-><init>(FFFF)V

    sput-object v0, Lcom/xiaopeng/xui/utils/XTouchUtils;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1700(Landroid/view/View;IIZ)V
    .locals 0

    .line 31
    invoke-static {p0, p1, p2, p3}, Lcom/xiaopeng/xui/utils/XTouchUtils;->enlargeTouchDelegate(Landroid/view/View;IIZ)V

    return-void
.end method

.method public static enlargeTouchDelegate(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x1

    .line 539
    invoke-static {p0, p1, p1, v0}, Lcom/xiaopeng/xui/utils/XTouchUtils;->enlargeTouchDelegate(Landroid/view/View;IIZ)V

    return-void
.end method

.method public static enlargeTouchDelegate(Landroid/view/View;II)V
    .locals 1

    const/4 v0, 0x1

    .line 543
    invoke-static {p0, p1, p2, v0}, Lcom/xiaopeng/xui/utils/XTouchUtils;->enlargeTouchDelegate(Landroid/view/View;IIZ)V

    return-void
.end method

.method private static enlargeTouchDelegate(Landroid/view/View;IIZ)V
    .locals 8

    .line 547
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 549
    new-instance v7, Lcom/xiaopeng/xui/utils/XTouchUtils$1;

    move-object v1, v7

    move-object v2, p0

    move v3, p2

    move v4, p1

    move-object v5, v0

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xui/utils/XTouchUtils$1;-><init>(Landroid/view/View;IILandroid/view/View;Z)V

    invoke-virtual {v0, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static getDefaultAlphaTouchParam(Landroid/view/View;)Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;
    .locals 2

    .line 83
    new-instance v0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;

    invoke-direct {v0}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;-><init>()V

    const/4 v1, 0x2

    .line 84
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->setAnimationType(I)Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;

    move-result-object v0

    const/4 v1, 0x0

    .line 85
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->setStartValue(F)Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 86
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->setEndValue(F)Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;

    move-result-object v0

    const/16 v1, 0x64

    .line 87
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->setDuration(I)Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xui/utils/XTouchUtils;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 88
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;

    move-result-object v0

    .line 89
    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->setTarget(Landroid/view/View;)Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;

    move-result-object p0

    .line 90
    invoke-virtual {p0}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->build()Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultScaleTouchParam(Landroid/view/View;)Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;
    .locals 2

    .line 71
    new-instance v0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;

    invoke-direct {v0}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;-><init>()V

    const/4 v1, 0x1

    .line 72
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->setAnimationType(I)Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 73
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->setStartValue(F)Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    .line 74
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->setEndValue(F)Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;

    move-result-object v0

    const/16 v1, 0x64

    .line 75
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->setDuration(I)Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xui/utils/XTouchUtils;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 76
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;

    move-result-object v0

    .line 77
    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->setTarget(Landroid/view/View;)Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;

    move-result-object p0

    .line 78
    invoke-virtual {p0}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->build()Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;

    move-result-object p0

    return-object p0
.end method

.method public static getTouchResParam(Landroid/view/View;II)Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams;
    .locals 1

    .line 95
    new-instance v0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams$TouchResParamsBulider;

    invoke-direct {v0}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams$TouchResParamsBulider;-><init>()V

    .line 96
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams$TouchResParamsBulider;->setDownRes(I)Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams$TouchResParamsBulider;

    move-result-object p1

    .line 97
    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams$TouchResParamsBulider;->setUpRes(I)Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams$TouchResParamsBulider;

    move-result-object p1

    .line 98
    invoke-virtual {p1, p0}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams$TouchResParamsBulider;->setTarget(Landroid/view/View;)Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams$TouchResParamsBulider;

    move-result-object p0

    .line 99
    invoke-virtual {p0}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams$TouchResParamsBulider;->build()Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams;

    move-result-object p0

    return-object p0
.end method

.method public static wrapTouchAnim(Landroid/view/View;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;",
            ">;)V"
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getTouchDelegate()Landroid/view/TouchDelegate;

    move-result-object v0

    .line 64
    instance-of v1, v0, Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchDelegate;

    if-eqz v1, :cond_0

    .line 65
    check-cast v0, Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchDelegate;->getDelegate()Landroid/view/TouchDelegate;

    move-result-object v0

    .line 67
    :cond_0
    new-instance v1, Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchDelegate;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, v0, p1}, Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;Landroid/view/TouchDelegate;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method

.method public static wrapTouchAnimRes(Landroid/view/View;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams;",
            ">;)V"
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getTouchDelegate()Landroid/view/TouchDelegate;

    move-result-object v0

    .line 105
    instance-of v1, v0, Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchDelegate;

    if-eqz v1, :cond_0

    .line 106
    check-cast v0, Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchDelegate;->getDelegate()Landroid/view/TouchDelegate;

    move-result-object v0

    .line 108
    :cond_0
    new-instance v1, Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchResDelegate;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, v0, p1}, Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchResDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;Landroid/view/TouchDelegate;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method
