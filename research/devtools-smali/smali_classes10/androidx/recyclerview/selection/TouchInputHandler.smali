.class final Landroidx/recyclerview/selection/TouchInputHandler;
.super Landroidx/recyclerview/selection/MotionInputHandler;
.source "TouchInputHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/selection/MotionInputHandler<",
        "TK;>;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "TouchInputDelegate"


# instance fields
.field private final mDetailsLookup:Landroidx/recyclerview/selection/ItemDetailsLookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/selection/ItemDetailsLookup<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final mGestureStarter:Ljava/lang/Runnable;

.field private final mHapticPerformer:Ljava/lang/Runnable;

.field private final mOnDragInitiatedListener:Landroidx/recyclerview/selection/OnDragInitiatedListener;

.field private final mOnItemActivatedListener:Landroidx/recyclerview/selection/OnItemActivatedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/selection/OnItemActivatedListener<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final mSelectionPredicate:Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/recyclerview/selection/SelectionTracker;Landroidx/recyclerview/selection/ItemKeyProvider;Landroidx/recyclerview/selection/ItemDetailsLookup;Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;Ljava/lang/Runnable;Landroidx/recyclerview/selection/OnDragInitiatedListener;Landroidx/recyclerview/selection/OnItemActivatedListener;Landroidx/recyclerview/selection/FocusDelegate;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/selection/SelectionTracker;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/selection/ItemKeyProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/selection/ItemDetailsLookup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroidx/recyclerview/selection/OnDragInitiatedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroidx/recyclerview/selection/OnItemActivatedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroidx/recyclerview/selection/FocusDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/selection/SelectionTracker<",
            "TK;>;",
            "Landroidx/recyclerview/selection/ItemKeyProvider<",
            "TK;>;",
            "Landroidx/recyclerview/selection/ItemDetailsLookup<",
            "TK;>;",
            "Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate<",
            "TK;>;",
            "Ljava/lang/Runnable;",
            "Landroidx/recyclerview/selection/OnDragInitiatedListener;",
            "Landroidx/recyclerview/selection/OnItemActivatedListener<",
            "TK;>;",
            "Landroidx/recyclerview/selection/FocusDelegate<",
            "TK;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2, p8}, Landroidx/recyclerview/selection/MotionInputHandler;-><init>(Landroidx/recyclerview/selection/SelectionTracker;Landroidx/recyclerview/selection/ItemKeyProvider;Landroidx/recyclerview/selection/FocusDelegate;)V

    .line 61
    const/4 p1, 0x0

    const/4 p2, 0x1

    if-eqz p3, :cond_0

    move p8, p2

    goto :goto_0

    :cond_0
    move p8, p1

    :goto_0
    invoke-static {p8}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 62
    if-eqz p4, :cond_1

    move p8, p2

    goto :goto_1

    :cond_1
    move p8, p1

    :goto_1
    invoke-static {p8}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 63
    if-eqz p5, :cond_2

    move p8, p2

    goto :goto_2

    :cond_2
    move p8, p1

    :goto_2
    invoke-static {p8}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 64
    if-eqz p7, :cond_3

    move p8, p2

    goto :goto_3

    :cond_3
    move p8, p1

    :goto_3
    invoke-static {p8}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 65
    if-eqz p6, :cond_4

    move p8, p2

    goto :goto_4

    :cond_4
    move p8, p1

    :goto_4
    invoke-static {p8}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 66
    if-eqz p9, :cond_5

    move p1, p2

    nop

    :cond_5
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 68
    iput-object p3, p0, Landroidx/recyclerview/selection/TouchInputHandler;->mDetailsLookup:Landroidx/recyclerview/selection/ItemDetailsLookup;

    .line 69
    iput-object p4, p0, Landroidx/recyclerview/selection/TouchInputHandler;->mSelectionPredicate:Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;

    .line 70
    iput-object p5, p0, Landroidx/recyclerview/selection/TouchInputHandler;->mGestureStarter:Ljava/lang/Runnable;

    .line 71
    iput-object p7, p0, Landroidx/recyclerview/selection/TouchInputHandler;->mOnItemActivatedListener:Landroidx/recyclerview/selection/OnItemActivatedListener;

    .line 72
    iput-object p6, p0, Landroidx/recyclerview/selection/TouchInputHandler;->mOnDragInitiatedListener:Landroidx/recyclerview/selection/OnDragInitiatedListener;

    .line 73
    iput-object p9, p0, Landroidx/recyclerview/selection/TouchInputHandler;->mHapticPerformer:Ljava/lang/Runnable;

    .line 74
    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 111
    iget-object v0, p0, Landroidx/recyclerview/selection/TouchInputHandler;->mDetailsLookup:Landroidx/recyclerview/selection/ItemDetailsLookup;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/selection/ItemDetailsLookup;->overItemWithSelectionKey(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/selection/TouchInputHandler;->mDetailsLookup:Landroidx/recyclerview/selection/ItemDetailsLookup;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/selection/ItemDetailsLookup;->getItemDetails(Landroid/view/MotionEvent;)Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;

    move-result-object v0

    .line 118
    if-nez v0, :cond_1

    .line 119
    return-void

    .line 122
    :cond_1
    const/4 v1, 0x0

    .line 124
    invoke-virtual {p0, p1}, Landroidx/recyclerview/selection/TouchInputHandler;->isRangeExtension(Landroid/view/MotionEvent;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 125
    invoke-virtual {p0, v0}, Landroidx/recyclerview/selection/TouchInputHandler;->extendSelectionRange(Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;)V

    .line 126
    goto :goto_0

    .line 128
    :cond_2
    iget-object v2, p0, Landroidx/recyclerview/selection/TouchInputHandler;->mSelectionTracker:Landroidx/recyclerview/selection/SelectionTracker;

    invoke-virtual {v0}, Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;->getSelectionKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/recyclerview/selection/SelectionTracker;->isSelected(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Landroidx/recyclerview/selection/TouchInputHandler;->mSelectionPredicate:Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;

    .line 129
    invoke-virtual {v0}, Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;->getSelectionKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;->canSetStateForKey(Ljava/lang/Object;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 132
    invoke-virtual {p0, v0}, Landroidx/recyclerview/selection/TouchInputHandler;->selectItem(Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 135
    iget-object p1, p0, Landroidx/recyclerview/selection/TouchInputHandler;->mSelectionPredicate:Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;

    invoke-virtual {p1}, Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;->canSelectMultiple()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 136
    iget-object p1, p0, Landroidx/recyclerview/selection/TouchInputHandler;->mGestureStarter:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 138
    :cond_3
    goto :goto_0

    .line 148
    :cond_4
    move v3, v1

    goto :goto_0

    .line 143
    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/selection/TouchInputHandler;->mOnDragInitiatedListener:Landroidx/recyclerview/selection/OnDragInitiatedListener;

    invoke-interface {v0, p1}, Landroidx/recyclerview/selection/OnDragInitiatedListener;->onDragInitiated(Landroid/view/MotionEvent;)Z

    .line 144
    nop

    .line 148
    :goto_0
    if-eqz v3, :cond_6

    .line 149
    iget-object p1, p0, Landroidx/recyclerview/selection/TouchInputHandler;->mHapticPerformer:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 151
    :cond_6
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 78
    iget-object v0, p0, Landroidx/recyclerview/selection/TouchInputHandler;->mDetailsLookup:Landroidx/recyclerview/selection/ItemDetailsLookup;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/selection/ItemDetailsLookup;->overItemWithSelectionKey(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 80
    iget-object p1, p0, Landroidx/recyclerview/selection/TouchInputHandler;->mSelectionTracker:Landroidx/recyclerview/selection/SelectionTracker;

    invoke-virtual {p1}, Landroidx/recyclerview/selection/SelectionTracker;->clearSelection()Z

    .line 81
    return v1

    .line 84
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/selection/TouchInputHandler;->mDetailsLookup:Landroidx/recyclerview/selection/ItemDetailsLookup;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/selection/ItemDetailsLookup;->getItemDetails(Landroid/view/MotionEvent;)Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;

    move-result-object v0

    .line 86
    if-nez v0, :cond_1

    .line 87
    return v1

    .line 90
    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/selection/TouchInputHandler;->mSelectionTracker:Landroidx/recyclerview/selection/SelectionTracker;

    invoke-virtual {v1}, Landroidx/recyclerview/selection/SelectionTracker;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 91
    invoke-virtual {p0, p1}, Landroidx/recyclerview/selection/TouchInputHandler;->isRangeExtension(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 92
    invoke-virtual {p0, v0}, Landroidx/recyclerview/selection/TouchInputHandler;->extendSelectionRange(Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;)V

    goto :goto_0

    .line 93
    :cond_2
    iget-object p1, p0, Landroidx/recyclerview/selection/TouchInputHandler;->mSelectionTracker:Landroidx/recyclerview/selection/SelectionTracker;

    invoke-virtual {v0}, Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;->getSelectionKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/selection/SelectionTracker;->isSelected(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 94
    iget-object p1, p0, Landroidx/recyclerview/selection/TouchInputHandler;->mSelectionTracker:Landroidx/recyclerview/selection/SelectionTracker;

    invoke-virtual {v0}, Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;->getSelectionKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/selection/SelectionTracker;->deselect(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    :cond_3
    invoke-virtual {p0, v0}, Landroidx/recyclerview/selection/TouchInputHandler;->selectItem(Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;)Z

    .line 99
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 104
    :cond_4
    invoke-virtual {v0, p1}, Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;->inSelectionHotspot(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 105
    invoke-virtual {p0, v0}, Landroidx/recyclerview/selection/TouchInputHandler;->selectItem(Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;)Z

    move-result p1

    goto :goto_1

    :cond_5
    iget-object v1, p0, Landroidx/recyclerview/selection/TouchInputHandler;->mOnItemActivatedListener:Landroidx/recyclerview/selection/OnItemActivatedListener;

    .line 106
    invoke-interface {v1, v0, p1}, Landroidx/recyclerview/selection/OnItemActivatedListener;->onItemActivated(Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;Landroid/view/MotionEvent;)Z

    move-result p1

    :goto_1
    return p1
.end method
