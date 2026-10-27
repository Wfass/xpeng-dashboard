.class public final Lcom/google/android/material/internal/StateListAnimator;
.super Ljava/lang/Object;
.source "StateListAnimator.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/StateListAnimator$Tuple;
    }
.end annotation


# instance fields
.field private final animationListener:Landroid/animation/Animator$AnimatorListener;

.field private lastMatch:Lcom/google/android/material/internal/StateListAnimator$Tuple;

.field runningAnimator:Landroid/animation/ValueAnimator;

.field private final tuples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/internal/StateListAnimator$Tuple;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->tuples:Ljava/util/ArrayList;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->lastMatch:Lcom/google/android/material/internal/StateListAnimator$Tuple;

    .line 35
    iput-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    .line 37
    new-instance v0, Lcom/google/android/material/internal/StateListAnimator$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/StateListAnimator$1;-><init>(Lcom/google/android/material/internal/StateListAnimator;)V

    iput-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->animationListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method private cancel()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    .line 95
    :cond_0
    return-void
.end method

.method private start(Lcom/google/android/material/internal/StateListAnimator$Tuple;)V
    .locals 1
    .param p1, "match"    # Lcom/google/android/material/internal/StateListAnimator$Tuple;

    .line 86
    iget-object v0, p1, Lcom/google/android/material/internal/StateListAnimator$Tuple;->animator:Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    .line 87
    iget-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 88
    return-void
.end method


# virtual methods
.method public addState([ILandroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "specs"    # [I
    .param p2, "animator"    # Landroid/animation/ValueAnimator;

    .line 55
    new-instance v0, Lcom/google/android/material/internal/StateListAnimator$Tuple;

    invoke-direct {v0, p1, p2}, Lcom/google/android/material/internal/StateListAnimator$Tuple;-><init>([ILandroid/animation/ValueAnimator;)V

    .line 56
    .local v0, "tuple":Lcom/google/android/material/internal/StateListAnimator$Tuple;
    iget-object v1, p0, Lcom/google/android/material/internal/StateListAnimator;->animationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 57
    iget-object v1, p0, Lcom/google/android/material/internal/StateListAnimator;->tuples:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public jumpToCurrentState()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    .line 107
    :cond_0
    return-void
.end method

.method public setState([I)V
    .locals 5
    .param p1, "state"    # [I

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "match":Lcom/google/android/material/internal/StateListAnimator$Tuple;
    iget-object v1, p0, Lcom/google/android/material/internal/StateListAnimator;->tuples:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 64
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 65
    iget-object v3, p0, Lcom/google/android/material/internal/StateListAnimator;->tuples:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/internal/StateListAnimator$Tuple;

    .line 66
    .local v3, "tuple":Lcom/google/android/material/internal/StateListAnimator$Tuple;
    iget-object v4, v3, Lcom/google/android/material/internal/StateListAnimator$Tuple;->specs:[I

    invoke-static {v4, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 67
    move-object v0, v3

    .line 68
    goto :goto_1

    .line 64
    .end local v3    # "tuple":Lcom/google/android/material/internal/StateListAnimator$Tuple;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    .end local v2    # "i":I
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/google/android/material/internal/StateListAnimator;->lastMatch:Lcom/google/android/material/internal/StateListAnimator$Tuple;

    if-ne v0, v2, :cond_2

    .line 72
    return-void

    .line 74
    :cond_2
    iget-object v2, p0, Lcom/google/android/material/internal/StateListAnimator;->lastMatch:Lcom/google/android/material/internal/StateListAnimator$Tuple;

    if-eqz v2, :cond_3

    .line 75
    invoke-direct {p0}, Lcom/google/android/material/internal/StateListAnimator;->cancel()V

    .line 78
    :cond_3
    iput-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->lastMatch:Lcom/google/android/material/internal/StateListAnimator$Tuple;

    .line 80
    if-eqz v0, :cond_4

    .line 81
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/StateListAnimator;->start(Lcom/google/android/material/internal/StateListAnimator$Tuple;)V

    .line 83
    :cond_4
    return-void
.end method
