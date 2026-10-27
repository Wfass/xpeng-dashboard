.class public Lcom/xiaopeng/musicradio/playercomponent/big/view/e;
.super Landroid/transition/Transition;
.source "MusicChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/playercomponent/big/view/e$a;
    }
.end annotation


# static fields
.field private static final d:[Ljava/lang/String;

.field private static final e:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/xiaopeng/musicradio/playercomponent/big/view/e$a;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/xiaopeng/musicradio/playercomponent/big/view/e$a;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static k:Landroid/animation/RectEvaluator;


# instance fields
.field a:[I

.field b:Z

.field c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "android:changeBounds:bounds"

    const-string v1, "android:changeBounds:clip"

    const-string v2, "android:changeBounds:parent"

    const-string v3, "android:changeBounds:windowX"

    const-string v4, "android:changeBounds:windowY"

    .line 63
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/e;->d:[Ljava/lang/String;

    .line 71
    new-instance v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/e$1;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "boundsOrigin"

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/playercomponent/big/view/e$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/e;->e:Landroid/util/Property;

    .line 89
    new-instance v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/e$2;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "topLeft"

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/playercomponent/big/view/e$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/e;->f:Landroid/util/Property;

    .line 102
    new-instance v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/e$3;

    const-class v1, Landroid/graphics/PointF;

    const-string v3, "bottomRight"

    invoke-direct {v0, v1, v3}, Lcom/xiaopeng/musicradio/playercomponent/big/view/e$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/e;->g:Landroid/util/Property;

    .line 115
    new-instance v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/e$4;

    const-class v1, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v3}, Lcom/xiaopeng/musicradio/playercomponent/big/view/e$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/e;->h:Landroid/util/Property;

    .line 132
    new-instance v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/e$5;

    const-class v1, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/playercomponent/big/view/e$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/e;->i:Landroid/util/Property;

    .line 149
    new-instance v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/e$6;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "position"

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/playercomponent/big/view/e$6;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/e;->j:Landroid/util/Property;

    .line 171
    new-instance v0, Landroid/animation/RectEvaluator;

    invoke-direct {v0}, Landroid/animation/RectEvaluator;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/e;->k:Landroid/animation/RectEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 173
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    const/4 v0, 0x2

    .line 166
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/e;->a:[I

    const/4 v0, 0x0

    .line 167
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/e;->b:Z

    .line 168
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/e;->c:Z

    return-void
.end method

.method static a(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 3

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    .line 366
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    .line 367
    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method private a(Landroid/transition/TransitionValues;)V
    .locals 7

    .line 234
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 236
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_2

    .line 237
    :cond_0
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    .line 238
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v3, "android:changeBounds:bounds"

    .line 237
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const-string v3, "android:changeBounds:parent"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/e;->c:Z

    if-eqz v1, :cond_1

    .line 241
    iget-object v1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/e;->a:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 242
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/e;->a:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android:changeBounds:windowX"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/e;->a:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android:changeBounds:windowY"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_1
    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/e;->b:Z

    if-eqz v1, :cond_2

    .line 246
    iget-object p1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    const-string v1, "android:changeBounds:clip"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;)Z
    .locals 5

    .line 263
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/e;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 264
    new-array v2, v0, [Ljava/lang/Class;

    const-class v3, Landroid/view/View;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/R$bool;

    aput-object v3, v2, v1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v3, "getMatchedTransitionValues"

    invoke-static {p0, v3, v2, v0}, Lcom/xiaopeng/musicradio/utils/bf;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/transition/TransitionValues;

    if-nez v0, :cond_1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_0

    .line 268
    :cond_1
    iget-object p1, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    if-ne p2, p1, :cond_0

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0

    .line 258
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/e;->a(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0

    .line 253
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/e;->a(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 8

    const/4 p1, 0x0

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto/16 :goto_0

    .line 281
    :cond_0
    iget-object v0, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 282
    iget-object v1, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:parent"

    .line 283
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 284
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    if-nez v1, :cond_1

    goto/16 :goto_0

    .line 288
    :cond_1
    iget-object v2, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 289
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/e;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 290
    iget-object p2, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v0, "android:changeBounds:bounds"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    .line 291
    iget-object p3, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    .line 292
    iget v0, p2, Landroid/graphics/Rect;->left:I

    .line 293
    iget v1, p3, Landroid/graphics/Rect;->left:I

    .line 294
    iget v3, p2, Landroid/graphics/Rect;->top:I

    .line 295
    iget v4, p3, Landroid/graphics/Rect;->top:I

    .line 296
    iget v5, p2, Landroid/graphics/Rect;->right:I

    .line 297
    iget v5, p3, Landroid/graphics/Rect;->right:I

    .line 298
    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    .line 299
    iget v5, p3, Landroid/graphics/Rect;->bottom:I

    .line 301
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/ViewGroup;

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    .line 302
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 303
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 304
    new-instance v7, Lcom/xiaopeng/musicradio/playercomponent/big/view/e$7;

    invoke-direct {v7, p0, v5}, Lcom/xiaopeng/musicradio/playercomponent/big/view/e$7;-><init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/e;Landroid/view/ViewGroup;)V

    .line 331
    invoke-virtual {p0, v7}, Lcom/xiaopeng/musicradio/playercomponent/big/view/e;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 334
    :cond_2
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v2, v0, v3, v5, v7}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 335
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/e;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v5

    int-to-float v0, v0

    int-to-float v3, v3

    int-to-float v1, v1

    int-to-float v4, v4

    invoke-virtual {v5, v0, v3, v1, v4}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v0

    .line 337
    sget-object v1, Lcom/xiaopeng/musicradio/playercomponent/big/view/e;->j:Landroid/util/Property;

    invoke-static {v2, v1, p1, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 340
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/4 v3, 0x0

    add-float/2addr v1, v3

    div-float/2addr v0, v1

    .line 341
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p3, v3

    div-float/2addr p2, p3

    const/4 p3, 0x2

    .line 342
    new-array v1, p3, [F

    const/4 v3, 0x0

    aput v0, v1, v3

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, v1, v6

    const-string v4, "android:changeBounds:scaleX"

    invoke-static {v4, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 343
    new-array v4, p3, [F

    aput p2, v4, v3

    aput v0, v4, v6

    const-string p2, "android:changeBounds:scaleY"

    invoke-static {p2, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    .line 344
    new-array p3, p3, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, p3, v3

    aput-object p2, p3, v6

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 345
    new-instance p3, Lcom/xiaopeng/musicradio/playercomponent/big/view/e$8;

    invoke-direct {p3, p0, v2}, Lcom/xiaopeng/musicradio/playercomponent/big/view/e$8;-><init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/e;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 355
    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/playercomponent/big/view/e;->a(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object p1

    :cond_3
    :goto_0
    return-object p1
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .line 183
    sget-object v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/e;->d:[Ljava/lang/String;

    return-object v0
.end method
