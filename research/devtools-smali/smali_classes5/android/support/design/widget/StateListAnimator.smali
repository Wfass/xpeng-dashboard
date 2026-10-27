.class final Landroid/support/design/widget/StateListAnimator;
.super Ljava/lang/Object;
.source "StateListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/StateListAnimator$Tuple;
    }
.end annotation


# instance fields
.field private final animationListener:Landroid/animation/Animator$AnimatorListener;

.field private lastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

.field runningAnimator:Landroid/animation/ValueAnimator;

.field private final tuples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/design/widget/StateListAnimator$Tuple;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/StateListAnimator;->tuples:Ljava/util/ArrayList;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/StateListAnimator;->lastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

    .line 30
    iput-object v0, p0, Landroid/support/design/widget/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    .line 32
    new-instance v0, Landroid/support/design/widget/StateListAnimator$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/StateListAnimator$1;-><init>(Landroid/support/design/widget/StateListAnimator;)V

    iput-object v0, p0, Landroid/support/design/widget/StateListAnimator;->animationListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method private cancel()V
    .locals 1

    .line 86
    iget-object v0, p0, Landroid/support/design/widget/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Landroid/support/design/widget/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    .line 90
    :cond_0
    return-void
.end method

.method private start(Landroid/support/design/widget/StateListAnimator$Tuple;)V
    .locals 0

    .line 81
    iget-object p1, p1, Landroid/support/design/widget/StateListAnimator$Tuple;->animator:Landroid/animation/ValueAnimator;

    iput-object p1, p0, Landroid/support/design/widget/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    .line 82
    iget-object p1, p0, Landroid/support/design/widget/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 83
    return-void
.end method


# virtual methods
.method public addState([ILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 50
    new-instance v0, Landroid/support/design/widget/StateListAnimator$Tuple;

    invoke-direct {v0, p1, p2}, Landroid/support/design/widget/StateListAnimator$Tuple;-><init>([ILandroid/animation/ValueAnimator;)V

    .line 51
    iget-object p1, p0, Landroid/support/design/widget/StateListAnimator;->animationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 52
    iget-object p1, p0, Landroid/support/design/widget/StateListAnimator;->tuples:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public jumpToCurrentState()V
    .locals 1

    .line 98
    iget-object v0, p0, Landroid/support/design/widget/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Landroid/support/design/widget/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    .line 102
    :cond_0
    return-void
.end method

.method setState([I)V
    .locals 4

    .line 57
    nop

    .line 58
    iget-object v0, p0, Landroid/support/design/widget/StateListAnimator;->tuples:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 59
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 60
    iget-object v2, p0, Landroid/support/design/widget/StateListAnimator;->tuples:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/StateListAnimator$Tuple;

    .line 61
    iget-object v3, v2, Landroid/support/design/widget/StateListAnimator$Tuple;->specs:[I

    invoke-static {v3, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    nop

    .line 63
    goto :goto_1

    .line 59
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget-object p1, p0, Landroid/support/design/widget/StateListAnimator;->lastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

    if-ne v2, p1, :cond_2

    .line 67
    return-void

    .line 69
    :cond_2
    iget-object p1, p0, Landroid/support/design/widget/StateListAnimator;->lastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

    if-eqz p1, :cond_3

    .line 70
    invoke-direct {p0}, Landroid/support/design/widget/StateListAnimator;->cancel()V

    .line 73
    :cond_3
    iput-object v2, p0, Landroid/support/design/widget/StateListAnimator;->lastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

    .line 75
    if-eqz v2, :cond_4

    .line 76
    invoke-direct {p0, v2}, Landroid/support/design/widget/StateListAnimator;->start(Landroid/support/design/widget/StateListAnimator$Tuple;)V

    .line 78
    :cond_4
    return-void
.end method
