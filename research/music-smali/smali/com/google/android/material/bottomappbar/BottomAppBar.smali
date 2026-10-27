.class public Lcom/google/android/material/bottomappbar/BottomAppBar;
.super Landroidx/appcompat/widget/Toolbar;
.source "BottomAppBar.java"

# interfaces
.implements Landroidx/coordinatorlayout/widget/CoordinatorLayout$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;,
        Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;,
        Lcom/google/android/material/bottomappbar/BottomAppBar$a;
    }
.end annotation


# static fields
.field private static final g:I


# instance fields
.field e:Landroid/animation/AnimatorListenerAdapter;

.field f:Lajg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lajg<",
            "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
            ">;"
        }
    .end annotation
.end field

.field private final h:I

.field private final i:Lakk;

.field private j:Landroid/animation/Animator;

.field private k:Landroid/animation/Animator;

.field private l:I

.field private m:I

.field private n:Z

.field private o:I

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/bottomappbar/BottomAppBar$a;",
            ">;"
        }
    .end annotation
.end field

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

.field private u:I

.field private v:I

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 110
    sget v0, Laiv$k;->Widget_MaterialComponents_BottomAppBar:I

    sput v0, Lcom/google/android/material/bottomappbar/BottomAppBar;->g:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/bottomappbar/BottomAppBar;I)F
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->e(I)F

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->j:Landroid/animation/Animator;

    return-object p1
.end method

.method private a(IZ)V
    .locals 3

    .line 659
    invoke-static {p0}, Lgj;->B(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 660
    iput-boolean v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->r:Z

    .line 663
    iget p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->q:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->b(I)V

    return-void

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->k:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 668
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 671
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 674
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->q()Z

    move-result v2

    if-nez v2, :cond_2

    move p1, v1

    move p2, p1

    .line 679
    :cond_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->a(IZLjava/util/List;)V

    .line 681
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 682
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 683
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->k:Landroid/animation/Animator;

    .line 684
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->k:Landroid/animation/Animator;

    new-instance p2, Lcom/google/android/material/bottomappbar/BottomAppBar$3;

    invoke-direct {p2, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$3;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 698
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->k:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private a(IZLjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 706
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getActionMenuView()Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 713
    new-array v2, v1, [F

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    aput v3, v2, v4

    const-string v5, "alpha"

    invoke-static {v0, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 716
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getTranslationX()F

    move-result v6

    .line 717
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->a(Landroidx/appcompat/widget/ActionMenuView;IZ)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    .line 720
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v3

    if-lez v6, :cond_1

    .line 722
    new-array v3, v1, [F

    const/4 v6, 0x0

    aput v6, v3, v4

    invoke-static {v0, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 724
    new-instance v5, Lcom/google/android/material/bottomappbar/BottomAppBar$4;

    invoke-direct {v5, p0, v0, p1, p2}, Lcom/google/android/material/bottomappbar/BottomAppBar$4;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V

    invoke-virtual {v3, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 743
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v5, 0x96

    .line 744
    invoke-virtual {p1, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 p2, 0x2

    .line 745
    new-array p2, p2, [Landroid/animation/Animator;

    aput-object v3, p2, v4

    aput-object v2, p2, v1

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 746
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 747
    :cond_1
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getAlpha()F

    move-result p1

    cmpg-float p1, p1, v3

    if-gez p1, :cond_2

    .line 750
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Landroidx/appcompat/widget/ActionMenuView;IZZ)V
    .locals 1

    .line 807
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/material/bottomappbar/BottomAppBar$5;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V

    if-eqz p4, :cond_0

    .line 817
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 819
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->s()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZZ)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/bottomappbar/BottomAppBar;->a(Landroidx/appcompat/widget/ActionMenuView;IZZ)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/bottomappbar/BottomAppBar;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->a(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    return-void
.end method

.method private a(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 1

    .line 928
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->e:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b(Landroid/animation/Animator$AnimatorListener;)V

    .line 929
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$6;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$6;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a(Landroid/animation/Animator$AnimatorListener;)V

    .line 942
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->f:Lajg;

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a(Lajg;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/bottomappbar/BottomAppBar;Z)Z
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->r:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->k:Landroid/animation/Animator;

    return-object p1
.end method

.method private b(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 653
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->o()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [F

    invoke-direct {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->e(I)F

    move-result p1

    const/4 v2, 0x0

    aput p1, v1, v2

    const-string p1, "translationX"

    invoke-static {v0, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    .line 654
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 655
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(Landroidx/appcompat/widget/ActionMenuView;IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 789
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->a(Landroidx/appcompat/widget/ActionMenuView;IZZ)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->m()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->n()V

    return-void
.end method

.method static synthetic d(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .locals 0

    .line 108
    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->q:I

    return p0
.end method

.method private d(I)V
    .locals 3

    .line 554
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->l:I

    if-eq v0, p1, :cond_3

    invoke-static {p0}, Lgj;->B(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->j:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 559
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 562
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 564
    iget v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->m:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 565
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->b(ILjava/util/List;)V

    goto :goto_0

    .line 567
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->a(ILjava/util/List;)V

    .line 570
    :goto_0
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 571
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 572
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->j:Landroid/animation/Animator;

    .line 573
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->j:Landroid/animation/Animator;

    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$1;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 586
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->j:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_3
    :goto_1
    return-void
.end method

.method private e(I)F
    .locals 3

    .line 759
    invoke-static {p0}, Lcom/google/android/material/internal/u;->a(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    if-eqz v0, :cond_0

    .line 761
    iget p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->w:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->v:I

    .line 762
    :goto_0
    iget v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->h:I

    add-int/2addr v2, p1

    .line 763
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p1, v2

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    :cond_1
    mul-int/2addr p1, v1

    int-to-float p1, p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic e(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->o()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/material/bottomappbar/BottomAppBar;)F
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX()F

    move-result p0

    return p0
.end method

.method static synthetic g(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getBottomInset()I

    move-result p0

    return p0
.end method

.method private getActionMenuView()Landroidx/appcompat/widget/ActionMenuView;
    .locals 3

    const/4 v0, 0x0

    .line 775
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 776
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 777
    instance-of v2, v1, Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v2, :cond_0

    .line 778
    check-cast v1, Landroidx/appcompat/widget/ActionMenuView;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getBottomInset()I
    .locals 1

    .line 946
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->u:I

    return v0
.end method

.method private getFabTranslationX()F
    .locals 1

    .line 770
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->l:I

    invoke-direct {p0, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->e(I)F

    move-result v0

    return v0
.end method

.method private getFabTranslationY()F
    .locals 1

    .line 755
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/bottomappbar/a;->b()F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method private getLeftInset()I
    .locals 1

    .line 954
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->w:I

    return v0
.end method

.method private getRightInset()I
    .locals 1

    .line 950
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->v:I

    return v0
.end method

.method private getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/a;
    .locals 1

    .line 892
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->i:Lakk;

    .line 893
    invoke-virtual {v0}, Lakk;->M()Lakp;

    move-result-object v0

    invoke-virtual {v0}, Lakp;->k()Laki;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomappbar/a;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getLeftInset()I

    move-result p0

    return p0
.end method

.method static synthetic i(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getRightInset()I

    move-result p0

    return p0
.end method

.method static synthetic j(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .locals 0

    .line 108
    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->h:I

    return p0
.end method

.method static synthetic k(Lcom/google/android/material/bottomappbar/BottomAppBar;)Landroid/view/View;
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->p()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private m()V
    .locals 2

    .line 522
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->o:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->o:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->p:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 524
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/bottomappbar/BottomAppBar$a;

    .line 525
    invoke-interface {v1, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$a;->a(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private n()V
    .locals 2

    .line 531
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->o:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->o:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->p:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/bottomappbar/BottomAppBar$a;

    .line 534
    invoke-interface {v1, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$a;->b(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private o()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .locals 2

    .line 591
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->p()Landroid/view/View;

    move-result-object v0

    .line 592
    instance-of v1, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private p()Landroid/view/View;
    .locals 4

    .line 597
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 602
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->d(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 603
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 604
    instance-of v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-nez v3, :cond_2

    instance-of v3, v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    if-eqz v3, :cond_1

    :cond_2
    return-object v2

    :cond_3
    return-object v1
.end method

.method private q()Z
    .locals 1

    .line 613
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->o()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 614
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private r()V
    .locals 1

    .line 864
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->k:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 865
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 867
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->j:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 868
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    return-void
.end method

.method private s()V
    .locals 3

    .line 898
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/a;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomappbar/a;->b(F)V

    .line 899
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->p()Landroid/view/View;

    move-result-object v0

    .line 900
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->i:Lakk;

    iget-boolean v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->s:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->q()Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lakk;->p(F)V

    if-eqz v0, :cond_1

    .line 902
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 903
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :cond_1
    return-void
.end method

.method private t()V
    .locals 3

    .line 908
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getActionMenuView()Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 911
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->k:Landroid/animation/Animator;

    if-nez v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 912
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setAlpha(F)V

    .line 913
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->q()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 914
    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->b(Landroidx/appcompat/widget/ActionMenuView;IZ)V

    goto :goto_0

    .line 916
    :cond_0
    iget v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->l:I

    iget-boolean v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->s:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->b(Landroidx/appcompat/widget/ActionMenuView;IZ)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected a(Landroidx/appcompat/widget/ActionMenuView;IZ)I
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_8

    if-nez p3, :cond_0

    goto/16 :goto_6

    .line 837
    :cond_0
    invoke-static {p0}, Lcom/google/android/material/internal/u;->a(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 838
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getMeasuredWidth()I

    move-result p3

    goto :goto_0

    :cond_1
    move p3, v1

    :goto_0
    move v2, p3

    move p3, v1

    .line 841
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getChildCount()I

    move-result v3

    if-ge p3, v3, :cond_5

    .line 842
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 844
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v4, v4, Landroidx/appcompat/widget/Toolbar$b;

    if-eqz v4, :cond_2

    .line 845
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/Toolbar$b;

    iget v4, v4, Landroidx/appcompat/widget/Toolbar$b;->a:I

    const v5, 0x800007

    and-int/2addr v4, v5

    const v5, 0x800003

    if-ne v4, v5, :cond_2

    move v4, v0

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    if-eqz v4, :cond_4

    if-eqz p2, :cond_3

    .line 851
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_3

    .line 852
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_4
    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    .line 856
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuView;->getRight()I

    move-result p1

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuView;->getLeft()I

    move-result p1

    :goto_4
    if-eqz p2, :cond_7

    .line 857
    iget p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->v:I

    goto :goto_5

    :cond_7
    iget p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->w:I

    neg-int p2, p2

    :goto_5
    add-int/2addr p1, p2

    sub-int/2addr v2, p1

    return v2

    :cond_8
    :goto_6
    return v1
.end method

.method protected a(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 626
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->o()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 628
    invoke-virtual {p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 632
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->m()V

    .line 634
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar$2;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;I)V

    invoke-virtual {p2, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 500
    iput v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->q:I

    .line 501
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 502
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->a(I)V

    :cond_0
    return-void
.end method

.method public b(II)V
    .locals 0

    .line 366
    iput p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->q:I

    const/4 p2, 0x1

    .line 367
    iput-boolean p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->r:Z

    .line 368
    iget-boolean p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->s:Z

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->a(IZ)V

    .line 369
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->d(I)V

    .line 370
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->l:I

    return-void
.end method

.method c(I)Z
    .locals 1

    int-to-float p1, p1

    .line 544
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/bottomappbar/a;->a()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 545
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomappbar/a;->a(F)V

    .line 546
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->i:Lakk;

    invoke-virtual {p1}, Lakk;->invalidateSelf()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getBackgroundTint()Landroid/content/res/ColorStateList;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->i:Lakk;

    invoke-virtual {v0}, Lakk;->P()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getBehavior()Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    move-result-object v0

    return-object v0
.end method

.method public getBehavior()Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
    .locals 1

    .line 970
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->t:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    if-nez v0, :cond_0

    .line 971
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    invoke-direct {v0}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->t:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    .line 973
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->t:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    return-object v0
.end method

.method public getCradleVerticalOffset()F
    .locals 1

    .line 439
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/bottomappbar/a;->b()F

    move-result v0

    return v0
.end method

.method public getFabAlignmentMode()I
    .locals 1

    .line 338
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->l:I

    return v0
.end method

.method public getFabAnimationMode()I
    .locals 1

    .line 379
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->m:I

    return v0
.end method

.method public getFabCradleMargin()F
    .locals 1

    .line 406
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/bottomappbar/a;->c()F

    move-result v0

    return v0
.end method

.method public getFabCradleRoundedCornerRadius()F
    .locals 1

    .line 422
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/bottomappbar/a;->d()F

    move-result v0

    return v0
.end method

.method public getHideOnScroll()Z
    .locals 1

    .line 461
    iget-boolean v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->n:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 978
    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onAttachedToWindow()V

    .line 980
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->i:Lakk;

    invoke-static {p0, v0}, Lakl;->a(Landroid/view/View;Lakk;)V

    .line 984
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 985
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 874
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/Toolbar;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 881
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->r()V

    .line 883
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->s()V

    .line 887
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->t()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1130
    instance-of v0, p1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;

    if-nez v0, :cond_0

    .line 1131
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 1134
    :cond_0
    check-cast p1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;

    .line 1135
    invoke-virtual {p1}, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1136
    iget v0, p1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;->a:I

    iput v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->l:I

    .line 1137
    iget-boolean p1, p1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;->b:Z

    iput-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->s:Z

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1121
    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1122
    new-instance v1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;

    invoke-direct {v1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1123
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->l:I

    iput v0, v1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;->a:I

    .line 1124
    iget-boolean v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->s:Z

    iput-boolean v0, v1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;->b:Z

    return-object v1
.end method

.method public setBackgroundTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->i:Lakk;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCradleVerticalOffset(F)V
    .locals 1

    .line 448
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getCradleVerticalOffset()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 449
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomappbar/a;->c(F)V

    .line 450
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->i:Lakk;

    invoke-virtual {p1}, Lakk;->invalidateSelf()V

    .line 451
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->s()V

    :cond_0
    return-void
.end method

.method public setElevation(F)V
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->i:Lakk;

    invoke-virtual {v0, p1}, Lakk;->r(F)V

    .line 487
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->i:Lakk;

    .line 488
    invoke-virtual {p1}, Lakk;->Y()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->i:Lakk;

    invoke-virtual {v0}, Lakk;->ab()I

    move-result v0

    sub-int/2addr p1, v0

    .line 489
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getBehavior()Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->a(Landroid/view/View;I)V

    return-void
.end method

.method public setFabAlignmentMode(I)V
    .locals 1

    const/4 v0, 0x0

    .line 349
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->b(II)V

    return-void
.end method

.method public setFabAnimationMode(I)V
    .locals 0

    .line 390
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->m:I

    return-void
.end method

.method public setFabCradleMargin(F)V
    .locals 1

    .line 413
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabCradleMargin()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 414
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomappbar/a;->d(F)V

    .line 415
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->i:Lakk;

    invoke-virtual {p1}, Lakk;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setFabCradleRoundedCornerRadius(F)V
    .locals 1

    .line 427
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabCradleRoundedCornerRadius()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 428
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomappbar/a;->e(F)V

    .line 429
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->i:Lakk;

    invoke-virtual {p1}, Lakk;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setHideOnScroll(Z)V
    .locals 0

    .line 470
    iput-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->n:Z

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method
