.class public abstract Landroid/support/transition/VisibilityPropagation;
.super Landroid/support/transition/TransitionPropagation;
.source "VisibilityPropagation.java"


# static fields
.field private static final PROPNAME_VIEW_CENTER:Ljava/lang/String; = "android:visibilityPropagation:center"

.field private static final PROPNAME_VISIBILITY:Ljava/lang/String; = "android:visibilityPropagation:visibility"

.field private static final VISIBILITY_PROPAGATION_VALUES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    const-string v0, "android:visibilityPropagation:visibility"

    const-string v1, "android:visibilityPropagation:center"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/transition/VisibilityPropagation;->VISIBILITY_PROPAGATION_VALUES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/support/transition/TransitionPropagation;-><init>()V

    return-void
.end method

.method private static getViewCoordinate(Landroid/support/transition/TransitionValues;I)I
    .locals 2

    .line 106
    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 107
    return v0

    .line 110
    :cond_0
    iget-object p0, p0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:visibilityPropagation:center"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 111
    if-nez p0, :cond_1

    .line 112
    return v0

    .line 115
    :cond_1
    aget p0, p0, p1

    return p0
.end method


# virtual methods
.method public captureValues(Landroid/support/transition/TransitionValues;)V
    .locals 6

    .line 45
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 46
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 47
    if-nez v1, :cond_0

    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 50
    :cond_0
    iget-object v2, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibilityPropagation:visibility"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 52
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 53
    const/4 v3, 0x0

    aget v4, v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v4, v5

    aput v4, v2, v3

    .line 54
    aget v4, v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/2addr v5, v1

    add-int/2addr v4, v5

    aput v4, v2, v3

    .line 55
    const/4 v3, 0x1

    aget v4, v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v4, v5

    aput v4, v2, v3

    .line 56
    aget v4, v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/2addr v0, v1

    add-int/2addr v4, v0

    aput v4, v2, v3

    .line 57
    iget-object p1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v0, "android:visibilityPropagation:center"

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public getPropagationProperties()[Ljava/lang/String;
    .locals 1

    .line 62
    sget-object v0, Landroid/support/transition/VisibilityPropagation;->VISIBILITY_PROPAGATION_VALUES:[Ljava/lang/String;

    return-object v0
.end method

.method public getViewVisibility(Landroid/support/transition/TransitionValues;)I
    .locals 2

    .line 73
    const/16 v0, 0x8

    if-nez p1, :cond_0

    .line 74
    return v0

    .line 76
    :cond_0
    iget-object p1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:visibilityPropagation:visibility"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 77
    if-nez p1, :cond_1

    .line 78
    return v0

    .line 80
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getViewX(Landroid/support/transition/TransitionValues;)I
    .locals 1

    .line 91
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/transition/VisibilityPropagation;->getViewCoordinate(Landroid/support/transition/TransitionValues;I)I

    move-result p1

    return p1
.end method

.method public getViewY(Landroid/support/transition/TransitionValues;)I
    .locals 1

    .line 102
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/support/transition/VisibilityPropagation;->getViewCoordinate(Landroid/support/transition/TransitionValues;I)I

    move-result p1

    return p1
.end method
