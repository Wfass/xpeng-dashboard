.class Landroidx/transition/TransitionSet$TransitionSetListener;
.super Landroidx/transition/TransitionListenerAdapter;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/TransitionSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransitionSetListener"
.end annotation


# instance fields
.field mTransitionSet:Landroidx/transition/TransitionSet;


# direct methods
.method constructor <init>(Landroidx/transition/TransitionSet;)V
    .locals 0
    .param p1, "transitionSet"    # Landroidx/transition/TransitionSet;

    .line 421
    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    .line 422
    iput-object p1, p0, Landroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroidx/transition/TransitionSet;

    .line 423
    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 435
    iget-object v0, p0, Landroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroidx/transition/TransitionSet;

    invoke-static {v0}, Landroidx/transition/TransitionSet;->access$106(Landroidx/transition/TransitionSet;)I

    .line 436
    iget-object v0, p0, Landroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroidx/transition/TransitionSet;

    invoke-static {v0}, Landroidx/transition/TransitionSet;->access$100(Landroidx/transition/TransitionSet;)I

    move-result v0

    if-nez v0, :cond_0

    .line 438
    iget-object v0, p0, Landroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroidx/transition/TransitionSet;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/transition/TransitionSet;->access$002(Landroidx/transition/TransitionSet;Z)Z

    .line 439
    iget-object v0, p0, Landroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroidx/transition/TransitionSet;

    invoke-virtual {v0}, Landroidx/transition/TransitionSet;->end()V

    .line 441
    :cond_0
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    .line 442
    return-void
.end method

.method public onTransitionStart(Landroidx/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 427
    iget-object v0, p0, Landroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroidx/transition/TransitionSet;

    invoke-static {v0}, Landroidx/transition/TransitionSet;->access$000(Landroidx/transition/TransitionSet;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 428
    iget-object v0, p0, Landroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroidx/transition/TransitionSet;

    invoke-virtual {v0}, Landroidx/transition/TransitionSet;->start()V

    .line 429
    iget-object v0, p0, Landroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroidx/transition/TransitionSet;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/transition/TransitionSet;->access$002(Landroidx/transition/TransitionSet;Z)Z

    .line 431
    :cond_0
    return-void
.end method
