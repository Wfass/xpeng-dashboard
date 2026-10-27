.class public Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
.super Lcom/google/android/material/button/MaterialButton;
.source "ExtendedFloatingActionButton.java"

# interfaces
.implements Landroidx/coordinatorlayout/widget/CoordinatorLayout$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;,
        Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$a;
    }
.end annotation


# static fields
.field static final b:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final c:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final e:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final f:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:I


# instance fields
.field protected a:Landroid/content/res/ColorStateList;

.field private h:I

.field private final i:Lcom/google/android/material/floatingactionbutton/d;

.field private final j:Lcom/google/android/material/floatingactionbutton/d;

.field private final k:Lcom/google/android/material/floatingactionbutton/d;

.field private final l:Lcom/google/android/material/floatingactionbutton/d;

.field private final m:I

.field private n:I

.field private o:I

.field private final p:Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$b<",
            "Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;",
            ">;"
        }
    .end annotation
.end field

.field private q:Z

.field private r:Z

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 76
    sget v0, Laiv$k;->Widget_MaterialComponents_ExtendedFloatingActionButton_Icon:I

    sput v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->g:I

    .line 708
    new-instance v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$2;

    const-class v1, Ljava/lang/Float;

    const-string v2, "width"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->b:Landroid/util/Property;

    .line 727
    new-instance v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;

    const-class v1, Ljava/lang/Float;

    const-string v2, "height"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->c:Landroid/util/Property;

    .line 746
    new-instance v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;

    const-class v1, Ljava/lang/Float;

    const-string v2, "paddingStart"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->e:Landroid/util/Property;

    .line 769
    new-instance v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$5;

    const-class v1, Ljava/lang/Float;

    const-string v2, "paddingEnd"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->f:Landroid/util/Property;

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Lcom/google/android/material/floatingactionbutton/d;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->i:Lcom/google/android/material/floatingactionbutton/d;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/d;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$a;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->a(Lcom/google/android/material/floatingactionbutton/d;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$a;)V

    return-void
.end method

.method private a(Lcom/google/android/material/floatingactionbutton/d;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$a;)V
    .locals 2

    .line 634
    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 638
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 640
    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/d;->a()V

    .line 641
    invoke-interface {p1, p2}, Lcom/google/android/material/floatingactionbutton/d;->a(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$a;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 645
    invoke-virtual {p0, v0, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->measure(II)V

    .line 646
    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/d;->c()Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 647
    new-instance v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/d;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$a;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 672
    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/d;->d()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/Animator$AnimatorListener;

    .line 673
    invoke-virtual {v0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 676
    :cond_2
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Lcom/google/android/material/floatingactionbutton/d;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->l:Lcom/google/android/material/floatingactionbutton/d;

    return-object p0
.end method

.method private b()V
    .locals 1

    .line 274
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->a:Landroid/content/res/ColorStateList;

    return-void
.end method

.method static synthetic c(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Lcom/google/android/material/floatingactionbutton/d;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->j:Lcom/google/android/material/floatingactionbutton/d;

    return-object p0
.end method

.method private c()Z
    .locals 4

    .line 680
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 682
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->h:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 685
    :cond_1
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->h:I

    if-eq v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method static synthetic d(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Lcom/google/android/material/floatingactionbutton/d;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->k:Lcom/google/android/material/floatingactionbutton/d;

    return-object p0
.end method

.method private d()Z
    .locals 1

    .line 700
    invoke-static {p0}, Lgj;->B(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->s:Z

    if-eqz v0, :cond_1

    .line 701
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$b<",
            "Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;",
            ">;"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->p:Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;

    return-object v0
.end method

.method getCollapsedPadding()I
    .locals 2

    .line 800
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getCollapsedSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getIconSize()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method getCollapsedSize()I
    .locals 2

    .line 794
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->m:I

    if-gez v0, :cond_0

    .line 795
    invoke-static {p0}, Lgj;->j(Landroid/view/View;)I

    move-result v0

    invoke-static {p0}, Lgj;->k(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getIconSize()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getExtendMotionSpec()Lajd;
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->j:Lcom/google/android/material/floatingactionbutton/d;

    invoke-interface {v0}, Lcom/google/android/material/floatingactionbutton/d;->b()Lajd;

    move-result-object v0

    return-object v0
.end method

.method public getHideMotionSpec()Lajd;
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->l:Lcom/google/android/material/floatingactionbutton/d;

    invoke-interface {v0}, Lcom/google/android/material/floatingactionbutton/d;->b()Lajd;

    move-result-object v0

    return-object v0
.end method

.method public getShowMotionSpec()Lajd;
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->k:Lcom/google/android/material/floatingactionbutton/d;

    invoke-interface {v0}, Lcom/google/android/material/floatingactionbutton/d;->b()Lajd;

    move-result-object v0

    return-object v0
.end method

.method public getShrinkMotionSpec()Lajd;
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->i:Lcom/google/android/material/floatingactionbutton/d;

    invoke-interface {v0}, Lcom/google/android/material/floatingactionbutton/d;->b()Lajd;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 287
    invoke-super {p0}, Lcom/google/android/material/button/MaterialButton;->onAttachedToWindow()V

    .line 289
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 290
    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->q:Z

    .line 291
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->i:Lcom/google/android/material/floatingactionbutton/d;

    invoke-interface {v0}, Lcom/google/android/material/floatingactionbutton/d;->a()V

    :cond_0
    return-void
.end method

.method public setAnimateShowBeforeLayout(Z)V
    .locals 0

    .line 330
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->s:Z

    return-void
.end method

.method public setExtendMotionSpec(Lajd;)V
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->j:Lcom/google/android/material/floatingactionbutton/d;

    invoke-interface {v0, p1}, Lcom/google/android/material/floatingactionbutton/d;->a(Lajd;)V

    return-void
.end method

.method public setExtendMotionSpecResource(I)V
    .locals 1

    .line 603
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lajd;->a(Landroid/content/Context;I)Lajd;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setExtendMotionSpec(Lajd;)V

    return-void
.end method

.method public setExtended(Z)V
    .locals 1

    .line 306
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->q:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 310
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->j:Lcom/google/android/material/floatingactionbutton/d;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->i:Lcom/google/android/material/floatingactionbutton/d;

    .line 311
    :goto_0
    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/d;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 315
    :cond_2
    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/d;->a()V

    return-void
.end method

.method public setHideMotionSpec(Lajd;)V
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->l:Lcom/google/android/material/floatingactionbutton/d;

    invoke-interface {v0, p1}, Lcom/google/android/material/floatingactionbutton/d;->a(Lajd;)V

    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .locals 1

    .line 579
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lajd;->a(Landroid/content/Context;I)Lajd;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setHideMotionSpec(Lajd;)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .line 344
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/button/MaterialButton;->setPadding(IIII)V

    .line 345
    iget-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->q:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->r:Z

    if-nez p1, :cond_0

    .line 346
    invoke-static {p0}, Lgj;->j(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->n:I

    .line 347
    invoke-static {p0}, Lgj;->k(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->o:I

    :cond_0
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0

    .line 335
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/button/MaterialButton;->setPaddingRelative(IIII)V

    .line 336
    iget-boolean p2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->q:Z

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->r:Z

    if-nez p2, :cond_0

    .line 337
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->n:I

    .line 338
    iput p3, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->o:I

    :cond_0
    return-void
.end method

.method public setShowMotionSpec(Lajd;)V
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->k:Lcom/google/android/material/floatingactionbutton/d;

    invoke-interface {v0, p1}, Lcom/google/android/material/floatingactionbutton/d;->a(Lajd;)V

    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .locals 1

    .line 555
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lajd;->a(Landroid/content/Context;I)Lajd;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setShowMotionSpec(Lajd;)V

    return-void
.end method

.method public setShrinkMotionSpec(Lajd;)V
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->i:Lcom/google/android/material/floatingactionbutton/d;

    invoke-interface {v0, p1}, Lcom/google/android/material/floatingactionbutton/d;->a(Lajd;)V

    return-void
.end method

.method public setShrinkMotionSpecResource(I)V
    .locals 1

    .line 629
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lajd;->a(Landroid/content/Context;I)Lajd;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setShrinkMotionSpec(Lajd;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 263
    invoke-super {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    .line 264
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->b()V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 269
    invoke-super {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 270
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->b()V

    return-void
.end method
