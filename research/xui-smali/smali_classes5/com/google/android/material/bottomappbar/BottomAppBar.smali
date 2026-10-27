.class public Lcom/google/android/material/bottomappbar/BottomAppBar;
.super Landroidx/appcompat/widget/Toolbar;
.source "BottomAppBar.java"


# annotations
.annotation runtime Landroidx/coordinatorlayout/widget/CoordinatorLayout$DefaultBehavior;
    value = Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;,
        Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;,
        Lcom/google/android/material/bottomappbar/BottomAppBar$FabAlignmentMode;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:J = 0x12cL

.field public static final FAB_ALIGNMENT_MODE_CENTER:I = 0x0

.field public static final FAB_ALIGNMENT_MODE_END:I = 0x1


# instance fields
.field private attachAnimator:Landroid/animation/Animator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private fabAlignmentMode:I

.field fabAnimationListener:Landroid/animation/AnimatorListenerAdapter;

.field private fabAttached:Z

.field private final fabOffsetEndMode:I

.field private hideOnScroll:Z

.field private final materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private menuAnimator:Landroid/animation/Animator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private modeAnimator:Landroid/animation/Animator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final topEdgeTreatment:Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 112
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 116
    sget v0, Lcom/google/android/material/R$attr;->bottomAppBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .line 120
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 594
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$7;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$7;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    iput-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    .line 122
    sget-object v0, Lcom/google/android/material/R$styleable;->BottomAppBar:[I

    sget v1, Lcom/google/android/material/R$style;->Widget_MaterialComponents_BottomAppBar:I

    .line 123
    invoke-static {p1, p2, v0, p3, v1}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 130
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/google/android/material/R$styleable;->BottomAppBar_backgroundTint:I

    .line 131
    invoke-static {p1, v0, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 133
    .local v1, "backgroundTint":Landroid/content/res/ColorStateList;
    sget v2, Lcom/google/android/material/R$styleable;->BottomAppBar_fabCradleDiameter:I

    .line 134
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    int-to-float v2, v2

    .line 135
    .local v2, "fabCradleDiameter":F
    sget v4, Lcom/google/android/material/R$styleable;->BottomAppBar_fabCradleRoundedCornerRadius:I

    .line 136
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    int-to-float v4, v4

    .line 137
    .local v4, "fabCornerRadius":F
    sget v5, Lcom/google/android/material/R$styleable;->BottomAppBar_fabCradleVerticalOffset:I

    .line 138
    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    int-to-float v5, v5

    .line 139
    .local v5, "fabVerticalOffset":F
    sget v6, Lcom/google/android/material/R$styleable;->BottomAppBar_fabAttached:I

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAttached:Z

    .line 140
    sget v6, Lcom/google/android/material/R$styleable;->BottomAppBar_fabAlignmentMode:I

    .line 141
    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    .line 142
    sget v6, Lcom/google/android/material/R$styleable;->BottomAppBar_hideOnScroll:I

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->hideOnScroll:Z

    .line 144
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 146
    nop

    .line 147
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/google/android/material/R$dimen;->mtrl_bottomappbar_fabOffsetEndMode:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabOffsetEndMode:I

    .line 149
    new-instance v3, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    invoke-direct {v3, v2, v4, v5}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;-><init>(FFF)V

    iput-object v3, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->topEdgeTreatment:Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    .line 151
    new-instance v3, Lcom/google/android/material/shape/ShapePathModel;

    invoke-direct {v3}, Lcom/google/android/material/shape/ShapePathModel;-><init>()V

    .line 152
    .local v3, "appBarModel":Lcom/google/android/material/shape/ShapePathModel;
    iget-object v6, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->topEdgeTreatment:Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    invoke-virtual {v3, v6}, Lcom/google/android/material/shape/ShapePathModel;->setTopEdge(Lcom/google/android/material/shape/EdgeTreatment;)V

    .line 153
    new-instance v6, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v6, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapePathModel;)V

    iput-object v6, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 154
    iget-object v6, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v6, v8}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStrokeWidth(F)V

    .line 155
    iget-object v6, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v6, v7}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowEnabled(Z)V

    .line 156
    iget-object v6, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setPaintStyle(Landroid/graphics/Paint$Style;)V

    .line 157
    iget-object v6, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-static {v6, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 158
    iget-object v6, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-static {p0, v6}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 159
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/bottomappbar/BottomAppBar;
    .param p1, "x1"    # Landroid/animation/Animator;

    .line 84
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 84
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->topEdgeTreatment:Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/material/bottomappbar/BottomAppBar;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/bottomappbar/BottomAppBar;
    .param p1, "x1"    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 84
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->addFabAnimationListeners(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 84
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->findDependentFab()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/material/bottomappbar/BottomAppBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 84
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->isAnimationRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 84
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setCutoutState()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/material/bottomappbar/BottomAppBar;)F
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 84
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationY()F

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/shape/MaterialShapeDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 84
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/bottomappbar/BottomAppBar;
    .param p1, "x1"    # Landroid/animation/Animator;

    .line 84
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/bottomappbar/BottomAppBar;
    .param p1, "x1"    # Landroidx/appcompat/widget/ActionMenuView;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/bottomappbar/BottomAppBar;->translateActionMenuView(Landroidx/appcompat/widget/ActionMenuView;IZ)V

    return-void
.end method

.method static synthetic access$502(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/bottomappbar/BottomAppBar;
    .param p1, "x1"    # Landroid/animation/Animator;

    .line 84
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->attachAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/android/material/bottomappbar/BottomAppBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 84
    iget-boolean v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAttached:Z

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/material/bottomappbar/BottomAppBar;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/bottomappbar/BottomAppBar;
    .param p1, "x1"    # Z

    .line 84
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->maybeAnimateAttachChange(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 84
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/material/bottomappbar/BottomAppBar;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/bottomappbar/BottomAppBar;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->maybeAnimateMenuView(IZ)V

    return-void
.end method

.method private addFabAnimationListeners(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 1
    .param p1, "fab"    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 610
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->removeFabAnimationListeners(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    .line 611
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->addOnHideAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 612
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->addOnShowAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 613
    return-void
.end method

.method private cancelAnimations()V
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->attachAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->attachAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 547
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 549
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    .line 550
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 552
    :cond_2
    return-void
.end method

.method private createCradleShapeAnimation(ZLjava/util/List;)V
    .locals 3
    .param p1, "showCradle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 427
    .local p2, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    if-eqz p1, :cond_0

    .line 428
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->topEdgeTreatment:Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->setHorizontalOffset(F)V

    .line 431
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 432
    invoke-virtual {v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getInterpolation()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 433
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/google/android/material/bottomappbar/BottomAppBar$6;

    invoke-direct {v1, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$6;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 440
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 441
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    return-void
.end method

.method private createCradleTranslationAnimation(ILjava/util/List;)V
    .locals 3
    .param p1, "targetMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 269
    .local p2, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    iget-boolean v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAttached:Z

    if-nez v0, :cond_0

    .line 270
    return-void

    .line 273
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->topEdgeTreatment:Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    .line 275
    invoke-virtual {v2}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->getHorizontalOffset()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX(I)I

    move-result v2

    int-to-float v2, v2

    aput v2, v0, v1

    .line 274
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 277
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/google/android/material/bottomappbar/BottomAppBar$2;

    invoke-direct {v1, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$2;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 285
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 286
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    return-void
.end method

.method private createFabTranslationXAnimation(ILjava/util/List;)V
    .locals 5
    .param p1, "targetMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 313
    .local p2, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    nop

    .line 314
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->findDependentFab()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    const-string v1, "translationX"

    const/4 v2, 0x1

    new-array v2, v2, [F

    invoke-direct {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX(I)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 315
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 316
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    return-void
.end method

.method private createFabTranslationYAnimation(ZLjava/util/List;)V
    .locals 5
    .param p1, "targetAttached"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 445
    .local p2, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->findDependentFab()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    .line 446
    .local v0, "fab":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    if-nez v0, :cond_0

    .line 447
    return-void

    .line 450
    :cond_0
    const-string v1, "translationY"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    .line 451
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationY(Z)F

    move-result v4

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 452
    .local v1, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 453
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    return-void
.end method

.method private createMenuViewTranslationAnimation(IZLjava/util/List;)V
    .locals 8
    .param p1, "targetMode"    # I
    .param p2, "targetAttached"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 356
    .local p3, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getActionMenuView()Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v0

    .line 359
    .local v0, "actionMenuView":Landroidx/appcompat/widget/ActionMenuView;
    if-nez v0, :cond_0

    .line 360
    return-void

    .line 363
    :cond_0
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 365
    .local v1, "fadeIn":Landroid/animation/Animator;
    iget-boolean v3, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAttached:Z

    if-nez v3, :cond_1

    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->isVisibleFab()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget v3, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    if-eq v3, v2, :cond_3

    if-ne p1, v2, :cond_2

    goto :goto_0

    .line 391
    :cond_2
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getAlpha()F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_4

    .line 394
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 368
    :cond_3
    :goto_0
    const-string v3, "alpha"

    new-array v4, v2, [F

    const/4 v6, 0x0

    aput v6, v4, v5

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 370
    .local v3, "fadeOut":Landroid/animation/Animator;
    new-instance v4, Lcom/google/android/material/bottomappbar/BottomAppBar$4;

    invoke-direct {v4, p0, v0, p1, p2}, Lcom/google/android/material/bottomappbar/BottomAppBar$4;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 387
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 388
    .local v4, "set":Landroid/animation/AnimatorSet;
    const-wide/16 v6, 0x96

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 389
    const/4 v6, 0x2

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v3, v6, v5

    aput-object v1, v6, v2

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 390
    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    .end local v3    # "fadeOut":Landroid/animation/Animator;
    .end local v4    # "set":Landroid/animation/AnimatorSet;
    nop

    .line 396
    :cond_4
    :goto_1
    return-void
.end method

.method private findDependentFab()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 291
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 293
    return-object v1

    .line 296
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependents(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 297
    .local v0, "dependents":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 298
    .local v3, "v":Landroid/view/View;
    instance-of v4, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v4, :cond_1

    .line 299
    move-object v1, v3

    check-cast v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    return-object v1

    .line 301
    .end local v3    # "v":Landroid/view/View;
    :cond_1
    goto :goto_0

    .line 303
    :cond_2
    return-object v1
.end method

.method private getActionMenuView()Landroidx/appcompat/widget/ActionMenuView;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 497
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 498
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 499
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v2, :cond_0

    .line 500
    move-object v2, v1

    check-cast v2, Landroidx/appcompat/widget/ActionMenuView;

    return-object v2

    .line 497
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 504
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getFabTranslationX()F
    .locals 1

    .line 492
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    invoke-direct {p0, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX(I)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private getFabTranslationX(I)I
    .locals 4
    .param p1, "fabAlignmentMode"    # I

    .line 485
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 486
    .local v0, "isRtl":Z
    :goto_0
    if-ne p1, v2, :cond_2

    .line 487
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v3, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabOffsetEndMode:I

    sub-int/2addr v1, v3

    if-eqz v0, :cond_1

    const/4 v2, -0x1

    nop

    :cond_1
    mul-int/2addr v1, v2

    nop

    .line 486
    :cond_2
    return v1
.end method

.method private getFabTranslationY()F
    .locals 1

    .line 481
    iget-boolean v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAttached:Z

    invoke-direct {p0, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationY(Z)F

    move-result v0

    return v0
.end method

.method private getFabTranslationY(Z)F
    .locals 9
    .param p1, "targetAttached"    # Z

    .line 457
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->findDependentFab()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    .line 458
    .local v0, "fab":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 459
    return v1

    .line 463
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 464
    .local v2, "fabContentRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContentRect(Landroid/graphics/Rect;)Z

    .line 466
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    .line 467
    .local v3, "fabHeight":F
    cmpl-float v1, v3, v1

    if-nez v1, :cond_1

    .line 469
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getMeasuredHeight()I

    move-result v1

    int-to-float v3, v1

    .line 471
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getHeight()I

    move-result v1

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    .line 472
    .local v1, "fabBottomShadow":F
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getHeight()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 474
    .local v4, "fabVerticalShadowPadding":F
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getCradleVerticalOffset()F

    move-result v5

    neg-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v3, v6

    add-float/2addr v5, v6

    add-float/2addr v5, v1

    .line 475
    .local v5, "attached":F
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getPaddingBottom()I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v4, v6

    .line 477
    .local v6, "detached":F
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getMeasuredHeight()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    if-eqz p1, :cond_2

    move v8, v5

    goto :goto_0

    :cond_2
    move v8, v6

    :goto_0
    add-float/2addr v7, v8

    return v7
.end method

.method private isAnimationRunning()Z
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->attachAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->attachAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    .line 556
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    .line 557
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 555
    :goto_0
    return v0
.end method

.method private isVisibleFab()Z
    .locals 2

    .line 307
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->findDependentFab()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    .line 308
    .local v0, "fab":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->isOrWillBeShown()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private maybeAnimateAttachChange(Z)V
    .locals 4
    .param p1, "targetAttached"    # Z

    .line 399
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    return-void

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->attachAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 404
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->attachAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 407
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->isVisibleFab()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->createCradleShapeAnimation(ZLjava/util/List;)V

    .line 410
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->createFabTranslationYAnimation(ZLjava/util/List;)V

    .line 412
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 413
    .local v1, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 414
    iput-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->attachAnimator:Landroid/animation/Animator;

    .line 415
    iget-object v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->attachAnimator:Landroid/animation/Animator;

    new-instance v3, Lcom/google/android/material/bottomappbar/BottomAppBar$5;

    invoke-direct {v3, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$5;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 422
    iget-object v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->attachAnimator:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 423
    return-void
.end method

.method private maybeAnimateMenuView(IZ)V
    .locals 4
    .param p1, "targetMode"    # I
    .param p2, "newFabAttached"    # Z

    .line 320
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 328
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->isVisibleFab()Z

    move-result v1

    if-nez v1, :cond_2

    .line 332
    const/4 p1, 0x0

    .line 333
    const/4 p2, 0x0

    .line 336
    :cond_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->createMenuViewTranslationAnimation(IZLjava/util/List;)V

    .line 338
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 339
    .local v1, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 340
    iput-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    .line 341
    iget-object v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    new-instance v3, Lcom/google/android/material/bottomappbar/BottomAppBar$3;

    invoke-direct {v3, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$3;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 348
    iget-object v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 349
    return-void
.end method

.method private maybeAnimateModeChange(I)V
    .locals 4
    .param p1, "targetMode"    # I

    .line 241
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    if-eq v0, p1, :cond_2

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 249
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->createCradleTranslationAnimation(ILjava/util/List;)V

    .line 252
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->createFabTranslationXAnimation(ILjava/util/List;)V

    .line 254
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 255
    .local v1, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 256
    iput-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    .line 257
    iget-object v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    new-instance v3, Lcom/google/android/material/bottomappbar/BottomAppBar$1;

    invoke-direct {v3, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$1;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 264
    iget-object v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 265
    return-void

    .line 242
    .end local v0    # "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .end local v1    # "set":Landroid/animation/AnimatorSet;
    :cond_2
    :goto_0
    return-void
.end method

.method private removeFabAnimationListeners(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 1
    .param p1, "fab"    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 616
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->removeOnHideAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 617
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->removeOnShowAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 618
    return-void
.end method

.method private setCutoutState()V
    .locals 4

    .line 572
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->topEdgeTreatment:Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->setHorizontalOffset(F)V

    .line 573
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->findDependentFab()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    .line 574
    .local v0, "fab":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-boolean v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAttached:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->isVisibleFab()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setInterpolation(F)V

    .line 575
    if-eqz v0, :cond_1

    .line 576
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationY()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setTranslationY(F)V

    .line 577
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setTranslationX(F)V

    .line 579
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getActionMenuView()Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v1

    .line 580
    .local v1, "actionMenuView":Landroidx/appcompat/widget/ActionMenuView;
    if-eqz v1, :cond_3

    .line 581
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/ActionMenuView;->setAlpha(F)V

    .line 582
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->isVisibleFab()Z

    move-result v2

    if-nez v2, :cond_2

    .line 583
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->translateActionMenuView(Landroidx/appcompat/widget/ActionMenuView;IZ)V

    goto :goto_1

    .line 585
    :cond_2
    iget v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    iget-boolean v3, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAttached:Z

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/material/bottomappbar/BottomAppBar;->translateActionMenuView(Landroidx/appcompat/widget/ActionMenuView;IZ)V

    .line 588
    :cond_3
    :goto_1
    return-void
.end method

.method private translateActionMenuView(Landroidx/appcompat/widget/ActionMenuView;IZ)V
    .locals 8
    .param p1, "actionMenuView"    # Landroidx/appcompat/widget/ActionMenuView;
    .param p2, "fabAlignmentMode"    # I
    .param p3, "fabAttached"    # Z

    .line 519
    const/4 v0, 0x0

    .line 520
    .local v0, "toolbarLeftContentEnd":I
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 523
    .local v1, "isRtl":Z
    :goto_0
    move v4, v0

    move v0, v2

    .local v0, "i":I
    .local v4, "toolbarLeftContentEnd":I
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getChildCount()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 524
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 525
    .local v5, "view":Landroid/view/View;
    nop

    .line 526
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v6, v6, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    if-eqz v6, :cond_1

    .line 527
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    iget v6, v6, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    const v7, 0x800007

    and-int/2addr v6, v7

    const v7, 0x800003

    if-ne v6, v7, :cond_1

    move v6, v3

    goto :goto_2

    :cond_1
    move v6, v2

    .line 530
    .local v6, "isAlignedToStart":Z
    :goto_2
    if-eqz v6, :cond_3

    .line 531
    if-eqz v1, :cond_2

    .line 532
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v7

    goto :goto_3

    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v7

    :goto_3
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 523
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "isAlignedToStart":Z
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 536
    .end local v0    # "i":I
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuView;->getRight()I

    move-result v0

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuView;->getLeft()I

    move-result v0

    .line 537
    .local v0, "end":I
    :goto_4
    sub-int v2, v4, v0

    .line 538
    .local v2, "offset":I
    if-ne p2, v3, :cond_6

    if-eqz p3, :cond_6

    int-to-float v3, v2

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    :goto_5
    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/ActionMenuView;->setTranslationX(F)V

    .line 540
    return-void
.end method


# virtual methods
.method public getCradleVerticalOffset()F
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->topEdgeTreatment:Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    invoke-virtual {v0}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->getCradleVerticalOffset()F

    move-result v0

    return v0
.end method

.method public getFabAlignmentMode()I
    .locals 1

    .line 167
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    return v0
.end method

.method public getHideOnScroll()Z
    .locals 1

    .line 218
    iget-boolean v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->hideOnScroll:Z

    return v0
.end method

.method public isFabAttached()Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAttached:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 562
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/Toolbar;->onLayout(ZIIII)V

    .line 565
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->cancelAnimations()V

    .line 567
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setCutoutState()V

    .line 568
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 736
    instance-of v0, p1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;

    if-nez v0, :cond_0

    .line 737
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 738
    return-void

    .line 740
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;

    .line 741
    .local v0, "savedState":Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;
    invoke-virtual {v0}, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroidx/appcompat/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 742
    iget v1, v0, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;->fabAlignmentMode:I

    iput v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    .line 743
    iget-boolean v1, v0, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;->fabAttached:Z

    iput-boolean v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAttached:Z

    .line 744
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 727
    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 728
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;

    invoke-direct {v1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 729
    .local v1, "savedState":Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;
    iget v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    iput v2, v1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;->fabAlignmentMode:I

    .line 730
    iget-boolean v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAttached:Z

    iput-boolean v2, v1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;->fabAttached:Z

    .line 731
    return-object v1
.end method

.method public replaceMenu(I)V
    .locals 1
    .param p1, "newMenu"    # I
        .annotation build Landroidx/annotation/MenuRes;
        .end annotation
    .end param

    .line 236
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 237
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->inflateMenu(I)V

    .line 238
    return-void
.end method

.method public setCradleVerticalOffset(I)V
    .locals 2
    .param p1, "verticalOffset"    # I

    .line 206
    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getCradleVerticalOffset()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->topEdgeTreatment:Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->setCradleVerticalOffset(F)V

    .line 208
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 210
    :cond_0
    return-void
.end method

.method public setFabAlignmentMode(I)V
    .locals 1
    .param p1, "fabAlignmentMode"    # I

    .line 178
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->maybeAnimateModeChange(I)V

    .line 179
    iget-boolean v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAttached:Z

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->maybeAnimateMenuView(IZ)V

    .line 180
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    .line 181
    return-void
.end method

.method public setFabAttached(Z)V
    .locals 1
    .param p1, "attached"    # Z

    .line 190
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->maybeAnimateAttachChange(Z)V

    .line 191
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->maybeAnimateMenuView(IZ)V

    .line 192
    iput-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAttached:Z

    .line 193
    return-void
.end method

.method public setHideOnScroll(Z)V
    .locals 0
    .param p1, "hide"    # Z

    .line 227
    iput-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->hideOnScroll:Z

    .line 228
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 628
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 623
    return-void
.end method
