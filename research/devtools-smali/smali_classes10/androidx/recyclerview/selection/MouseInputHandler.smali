.class final Landroidx/recyclerview/selection/MouseInputHandler;
.super Landroidx/recyclerview/selection/MotionInputHandler;
.source "MouseInputHandler.java"


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
.field private static final TAG:Ljava/lang/String; = "MouseInputDelegate"


# instance fields
.field private final mDetailsLookup:Landroidx/recyclerview/selection/ItemDetailsLookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/selection/ItemDetailsLookup<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final mFocusDelegate:Landroidx/recyclerview/selection/FocusDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/selection/FocusDelegate<",
            "TK;>;"
        }
    .end annotation
.end field

.field private mHandledOnDown:Z

.field private mHandledTapUp:Z

.field private final mOnContextClickListener:Landroidx/recyclerview/selection/OnContextClickListener;

.field private final mOnItemActivatedListener:Landroidx/recyclerview/selection/OnItemActivatedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/selection/OnItemActivatedListener<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/recyclerview/selection/SelectionTracker;Landroidx/recyclerview/selection/ItemKeyProvider;Landroidx/recyclerview/selection/ItemDetailsLookup;Landroidx/recyclerview/selection/OnContextClickListener;Landroidx/recyclerview/selection/OnItemActivatedListener;Landroidx/recyclerview/selection/FocusDelegate;)V
    .locals 1
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
    .param p4    # Landroidx/recyclerview/selection/OnContextClickListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroidx/recyclerview/selection/OnItemActivatedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroidx/recyclerview/selection/FocusDelegate;
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
            "Landroidx/recyclerview/selection/OnContextClickListener;",
            "Landroidx/recyclerview/selection/OnItemActivatedListener<",
            "TK;>;",
            "Landroidx/recyclerview/selection/FocusDelegate<",
            "TK;>;)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2, p6}, Landroidx/recyclerview/selection/MotionInputHandler;-><init>(Landroidx/recyclerview/selection/SelectionTracker;Landroidx/recyclerview/selection/ItemKeyProvider;Landroidx/recyclerview/selection/FocusDelegate;)V

    .line 61
    const/4 p1, 0x0

    const/4 p2, 0x1

    if-eqz p3, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 62
    if-eqz p4, :cond_1

    move v0, p2

    goto :goto_1

    :cond_1
    move v0, p1

    :goto_1
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 63
    if-eqz p5, :cond_2

    move p1, p2

    nop

    :cond_2
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 65
    iput-object p3, p0, Landroidx/recyclerview/selection/MouseInputHandler;->mDetailsLookup:Landroidx/recyclerview/selection/ItemDetailsLookup;

    .line 66
    iput-object p4, p0, Landroidx/recyclerview/selection/MouseInputHandler;->mOnContextClickListener:Landroidx/recyclerview/selection/OnContextClickListener;

    .line 67
    iput-object p5, p0, Landroidx/recyclerview/selection/MouseInputHandler;->mOnItemActivatedListener:Landroidx/recyclerview/selection/OnItemActivatedListener;

    .line 68
    iput-object p6, p0, Landroidx/recyclerview/selection/MouseInputHandler;->mFocusDelegate:Landroidx/recyclerview/selection/FocusDelegate;

    .line 69
    return-void
.end method

.method private onItemClick(Landroid/view/MotionEvent;Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;)V
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails<",
            "TK;>;)V"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Landroidx/recyclerview/selection/MouseInputHandler;->mSelectionTracker:Landroidx/recyclerview/selection/SelectionTracker;

    invoke-virtual {v0}, Landroidx/recyclerview/selection/SelectionTracker;->hasSelection()Z

    move-result v0

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 127
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 129
    invoke-virtual {p0, p1}, Landroidx/recyclerview/selection/MouseInputHandler;->isRangeExtension(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {p0, p2}, Landroidx/recyclerview/selection/MouseInputHandler;->extendSelectionRange(Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;)V

    goto :goto_1

    .line 132
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/selection/MouseInputHandler;->shouldClearSelection(Landroid/view/MotionEvent;Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Landroidx/recyclerview/selection/MouseInputHandler;->mSelectionTracker:Landroidx/recyclerview/selection/SelectionTracker;

    invoke-virtual {v0}, Landroidx/recyclerview/selection/SelectionTracker;->clearSelection()Z

    .line 135
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/selection/MouseInputHandler;->mSelectionTracker:Landroidx/recyclerview/selection/SelectionTracker;

    invoke-virtual {p2}, Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;->getSelectionKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/selection/SelectionTracker;->isSelected(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 136
    iget-object p1, p0, Landroidx/recyclerview/selection/MouseInputHandler;->mSelectionTracker:Landroidx/recyclerview/selection/SelectionTracker;

    invoke-virtual {p2}, Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;->getSelectionKey()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/selection/SelectionTracker;->deselect(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 137
    iget-object p1, p0, Landroidx/recyclerview/selection/MouseInputHandler;->mFocusDelegate:Landroidx/recyclerview/selection/FocusDelegate;

    invoke-virtual {p1}, Landroidx/recyclerview/selection/FocusDelegate;->clearFocus()V

    goto :goto_1

    .line 140
    :cond_3
    invoke-direct {p0, p2, p1}, Landroidx/recyclerview/selection/MouseInputHandler;->selectOrFocusItem(Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;Landroid/view/MotionEvent;)V

    .line 143
    :cond_4
    :goto_1
    return-void
.end method

.method private onRightClick(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 203
    iget-object v0, p0, Landroidx/recyclerview/selection/MouseInputHandler;->mDetailsLookup:Landroidx/recyclerview/selection/ItemDetailsLookup;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/selection/ItemDetailsLookup;->overItemWithSelectionKey(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Landroidx/recyclerview/selection/MouseInputHandler;->mDetailsLookup:Landroidx/recyclerview/selection/ItemDetailsLookup;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/selection/ItemDetailsLookup;->getItemDetails(Landroid/view/MotionEvent;)Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/selection/MouseInputHandler;->mSelectionTracker:Landroidx/recyclerview/selection/SelectionTracker;

    invoke-virtual {v0}, Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;->getSelectionKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/selection/SelectionTracker;->isSelected(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 206
    iget-object v1, p0, Landroidx/recyclerview/selection/MouseInputHandler;->mSelectionTracker:Landroidx/recyclerview/selection/SelectionTracker;

    invoke-virtual {v1}, Landroidx/recyclerview/selection/SelectionTracker;->clearSelection()Z

    .line 207
    invoke-virtual {p0, v0}, Landroidx/recyclerview/selection/MouseInputHandler;->selectItem(Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;)Z

    .line 214
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/selection/MouseInputHandler;->mOnContextClickListener:Landroidx/recyclerview/selection/OnContextClickListener;

    invoke-interface {v0, p1}, Landroidx/recyclerview/selection/OnContextClickListener;->onContextClick(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method private selectOrFocusItem(Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails<",
            "TK;>;",
            "Landroid/view/MotionEvent;",
            ")V"
        }
    .end annotation

    .line 218
    invoke-virtual {p1, p2}, Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;->inSelectionHotspot(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroidx/recyclerview/selection/MotionEvents;->isCtrlKeyPressed(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/selection/MouseInputHandler;->focusItem(Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;)Z

    goto :goto_1

    .line 219
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/selection/MouseInputHandler;->selectItem(Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;)Z

    .line 223
    :goto_1
    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/selection/MouseInputHandler;->mHandledTapUp:Z

    .line 188
    iget-object v1, p0, Landroidx/recyclerview/selection/MouseInputHandler;->mDetailsLookup:Landroidx/recyclerview/selection/ItemDetailsLookup;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/selection/ItemDetailsLookup;->overItemWithSelectionKey(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    return v0

    .line 193
    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/selection/MotionEvents;->isTertiaryMouseButtonPressed(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    return v0

    .line 198
    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/selection/MouseInputHandler;->mDetailsLookup:Landroidx/recyclerview/selection/ItemDetailsLookup;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/selection/ItemDetailsLookup;->getItemDetails(Landroid/view/MotionEvent;)Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;

    move-result-object v1

    .line 199
    if-eqz v1, :cond_2

    iget-object v2, p0, Landroidx/recyclerview/selection/MouseInputHandler;->mOnItemActivatedListener:Landroidx/recyclerview/selection/OnItemActivatedListener;

    invoke-interface {v2, v1, p1}, Landroidx/recyclerview/selection/OnItemActivatedListener;->onItemActivated(Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    nop

    :cond_2
    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 74
    invoke-static {p1}, Landroidx/recyclerview/selection/MotionEvents;->isAltKeyPressed(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroidx/recyclerview/selection/MotionEvents;->isPrimaryMouseButtonPressed(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/selection/MotionEvents;->isSecondaryMouseButtonPressed(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/selection/MouseInputHandler;->mHandledOnDown:Z

    .line 77
    invoke-direct {p0, p1}, Landroidx/recyclerview/selection/MouseInputHandler;->onRightClick(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 80
    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 88
    invoke-static {p2}, Landroidx/recyclerview/selection/MotionEvents;->isTouchpadScroll(Landroid/view/MotionEvent;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 147
    iget-boolean v0, p0, Landroidx/recyclerview/selection/MouseInputHandler;->mHandledTapUp:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 152
    iput-boolean v1, p0, Landroidx/recyclerview/selection/MouseInputHandler;->mHandledTapUp:Z

    .line 153
    return v1

    .line 156
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/selection/MouseInputHandler;->mSelectionTracker:Landroidx/recyclerview/selection/SelectionTracker;

    invoke-virtual {v0}, Landroidx/recyclerview/selection/SelectionTracker;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    return v1

    .line 160
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/selection/MouseInputHandler;->mDetailsLookup:Landroidx/recyclerview/selection/ItemDetailsLookup;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/selection/ItemDetailsLookup;->overItem(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 162
    return v1

    .line 165
    :cond_2
    invoke-static {p1}, Landroidx/recyclerview/selection/MotionEvents;->isTertiaryMouseButtonPressed(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 167
    return v1

    .line 170
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/selection/MouseInputHandler;->mDetailsLookup:Landroidx/recyclerview/selection/ItemDetailsLookup;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/selection/ItemDetailsLookup;->getItemDetails(Landroid/view/MotionEvent;)Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;->hasSelectionKey()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 175
    :cond_4
    iget-object v1, p0, Landroidx/recyclerview/selection/MouseInputHandler;->mFocusDelegate:Landroidx/recyclerview/selection/FocusDelegate;

    invoke-virtual {v1}, Landroidx/recyclerview/selection/FocusDelegate;->hasFocusedItem()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p1}, Landroidx/recyclerview/selection/MotionEvents;->isShiftKeyPressed(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 176
    iget-object p1, p0, Landroidx/recyclerview/selection/MouseInputHandler;->mSelectionTracker:Landroidx/recyclerview/selection/SelectionTracker;

    iget-object v1, p0, Landroidx/recyclerview/selection/MouseInputHandler;->mFocusDelegate:Landroidx/recyclerview/selection/FocusDelegate;

    invoke-virtual {v1}, Landroidx/recyclerview/selection/FocusDelegate;->getFocusedPosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/selection/SelectionTracker;->startRange(I)V

    .line 177
    iget-object p1, p0, Landroidx/recyclerview/selection/MouseInputHandler;->mSelectionTracker:Landroidx/recyclerview/selection/SelectionTracker;

    invoke-virtual {v0}, Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;->getPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/selection/SelectionTracker;->extendRange(I)V

    goto :goto_0

    .line 179
    :cond_5
    invoke-direct {p0, v0, p1}, Landroidx/recyclerview/selection/MouseInputHandler;->selectOrFocusItem(Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;Landroid/view/MotionEvent;)V

    .line 181
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 172
    :cond_6
    :goto_1
    return v1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 96
    iget-boolean v0, p0, Landroidx/recyclerview/selection/MouseInputHandler;->mHandledOnDown:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 98
    iput-boolean v1, p0, Landroidx/recyclerview/selection/MouseInputHandler;->mHandledOnDown:Z

    .line 99
    return v1

    .line 102
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/selection/MouseInputHandler;->mDetailsLookup:Landroidx/recyclerview/selection/ItemDetailsLookup;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/selection/ItemDetailsLookup;->overItemWithSelectionKey(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    iget-object p1, p0, Landroidx/recyclerview/selection/MouseInputHandler;->mSelectionTracker:Landroidx/recyclerview/selection/SelectionTracker;

    invoke-virtual {p1}, Landroidx/recyclerview/selection/SelectionTracker;->clearSelection()Z

    .line 105
    iget-object p1, p0, Landroidx/recyclerview/selection/MouseInputHandler;->mFocusDelegate:Landroidx/recyclerview/selection/FocusDelegate;

    invoke-virtual {p1}, Landroidx/recyclerview/selection/FocusDelegate;->clearFocus()V

    .line 106
    return v1

    .line 109
    :cond_1
    invoke-static {p1}, Landroidx/recyclerview/selection/MotionEvents;->isTertiaryMouseButtonPressed(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    return v1

    .line 114
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/selection/MouseInputHandler;->mSelectionTracker:Landroidx/recyclerview/selection/SelectionTracker;

    invoke-virtual {v0}, Landroidx/recyclerview/selection/SelectionTracker;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    iget-object v0, p0, Landroidx/recyclerview/selection/MouseInputHandler;->mDetailsLookup:Landroidx/recyclerview/selection/ItemDetailsLookup;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/selection/ItemDetailsLookup;->getItemDetails(Landroid/view/MotionEvent;)Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/selection/MouseInputHandler;->onItemClick(Landroid/view/MotionEvent;Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;)V

    .line 116
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/selection/MouseInputHandler;->mHandledTapUp:Z

    .line 117
    return p1

    .line 120
    :cond_3
    return v1
.end method
