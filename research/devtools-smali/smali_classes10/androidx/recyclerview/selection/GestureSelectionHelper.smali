.class final Landroidx/recyclerview/selection/GestureSelectionHelper;
.super Ljava/lang/Object;
.source "GestureSelectionHelper.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/selection/GestureSelectionHelper$RecyclerViewDelegate;,
        Landroidx/recyclerview/selection/GestureSelectionHelper$ViewDelegate;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GestureSelectionHelper"


# instance fields
.field private final mDetailsLookup:Landroidx/recyclerview/selection/ItemDetailsLookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/selection/ItemDetailsLookup<",
            "*>;"
        }
    .end annotation
.end field

.field private mLastInterceptedPoint:Landroid/graphics/Point;

.field private mLastStartedItemPos:I

.field private final mLock:Landroidx/recyclerview/selection/OperationMonitor;

.field private final mScroller:Landroidx/recyclerview/selection/AutoScroller;

.field private final mSelectionMgr:Landroidx/recyclerview/selection/SelectionTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/selection/SelectionTracker<",
            "*>;"
        }
    .end annotation
.end field

.field private mStarted:Z

.field private final mView:Landroidx/recyclerview/selection/GestureSelectionHelper$ViewDelegate;


# direct methods
.method constructor <init>(Landroidx/recyclerview/selection/SelectionTracker;Landroidx/recyclerview/selection/ItemDetailsLookup;Landroidx/recyclerview/selection/GestureSelectionHelper$ViewDelegate;Landroidx/recyclerview/selection/AutoScroller;Landroidx/recyclerview/selection/OperationMonitor;)V
    .locals 3
    .param p1    # Landroidx/recyclerview/selection/SelectionTracker;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/selection/ItemDetailsLookup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/selection/GestureSelectionHelper$ViewDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/selection/AutoScroller;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroidx/recyclerview/selection/OperationMonitor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/selection/SelectionTracker<",
            "*>;",
            "Landroidx/recyclerview/selection/ItemDetailsLookup<",
            "*>;",
            "Landroidx/recyclerview/selection/GestureSelectionHelper$ViewDelegate;",
            "Landroidx/recyclerview/selection/AutoScroller;",
            "Landroidx/recyclerview/selection/OperationMonitor;",
            ")V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/selection/GestureSelectionHelper;->mLastStartedItemPos:I

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/selection/GestureSelectionHelper;->mStarted:Z

    .line 64
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 65
    if-eqz p2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 66
    if-eqz p3, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 67
    if-eqz p4, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    move v2, v0

    :goto_3
    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 68
    if-eqz p5, :cond_4

    move v0, v1

    nop

    :cond_4
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 70
    iput-object p1, p0, Landroidx/recyclerview/selection/GestureSelectionHelper;->mSelectionMgr:Landroidx/recyclerview/selection/SelectionTracker;

    .line 71
    iput-object p2, p0, Landroidx/recyclerview/selection/GestureSelectionHelper;->mDetailsLookup:Landroidx/recyclerview/selection/ItemDetailsLookup;

    .line 72
    iput-object p3, p0, Landroidx/recyclerview/selection/GestureSelectionHelper;->mView:Landroidx/recyclerview/selection/GestureSelectionHelper$ViewDelegate;

    .line 73
    iput-object p4, p0, Landroidx/recyclerview/selection/GestureSelectionHelper;->mScroller:Landroidx/recyclerview/selection/AutoScroller;

    .line 74
    iput-object p5, p0, Landroidx/recyclerview/selection/GestureSelectionHelper;->mLock:Landroidx/recyclerview/selection/OperationMonitor;

    .line 75
    return-void
.end method

.method static synthetic access$000(FF)F
    .locals 0

    .line 39
    invoke-static {p0, p1}, Landroidx/recyclerview/selection/GestureSelectionHelper;->getInboundY(FF)F

    move-result p0

    return p0
.end method

.method static create(Landroidx/recyclerview/selection/SelectionTracker;Landroidx/recyclerview/selection/ItemDetailsLookup;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/selection/AutoScroller;Landroidx/recyclerview/selection/OperationMonitor;)Landroidx/recyclerview/selection/GestureSelectionHelper;
    .locals 7
    .param p0    # Landroidx/recyclerview/selection/SelectionTracker;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/recyclerview/selection/ItemDetailsLookup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/selection/AutoScroller;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/selection/OperationMonitor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/selection/SelectionTracker<",
            "*>;",
            "Landroidx/recyclerview/selection/ItemDetailsLookup<",
            "*>;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Landroidx/recyclerview/selection/AutoScroller;",
            "Landroidx/recyclerview/selection/OperationMonitor;",
            ")",
            "Landroidx/recyclerview/selection/GestureSelectionHelper;"
        }
    .end annotation

    .line 228
    new-instance v6, Landroidx/recyclerview/selection/GestureSelectionHelper;

    new-instance v3, Landroidx/recyclerview/selection/GestureSelectionHelper$RecyclerViewDelegate;

    invoke-direct {v3, p2}, Landroidx/recyclerview/selection/GestureSelectionHelper$RecyclerViewDelegate;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/recyclerview/selection/GestureSelectionHelper;-><init>(Landroidx/recyclerview/selection/SelectionTracker;Landroidx/recyclerview/selection/ItemDetailsLookup;Landroidx/recyclerview/selection/GestureSelectionHelper$ViewDelegate;Landroidx/recyclerview/selection/AutoScroller;Landroidx/recyclerview/selection/OperationMonitor;)V

    return-object v6
.end method

.method private endSelection()V
    .locals 1

    .line 178
    iget-boolean v0, p0, Landroidx/recyclerview/selection/GestureSelectionHelper;->mStarted:Z

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 180
    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/selection/GestureSelectionHelper;->mLastStartedItemPos:I

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/selection/GestureSelectionHelper;->mStarted:Z

    .line 182
    iget-object v0, p0, Landroidx/recyclerview/selection/GestureSelectionHelper;->mScroller:Landroidx/recyclerview/selection/AutoScroller;

    invoke-virtual {v0}, Landroidx/recyclerview/selection/AutoScroller;->reset()V

    .line 183
    iget-object v0, p0, Landroidx/recyclerview/selection/GestureSelectionHelper;->mLock:Landroidx/recyclerview/selection/OperationMonitor;

    invoke-virtual {v0}, Landroidx/recyclerview/selection/OperationMonitor;->stop()V

    .line 184
    return-void
.end method

.method private extendSelection(I)V
    .locals 1

    .line 215
    iget-object v0, p0, Landroidx/recyclerview/selection/GestureSelectionHelper;->mSelectionMgr:Landroidx/recyclerview/selection/SelectionTracker;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/selection/SelectionTracker;->extendProvisionalRange(I)V

    .line 216
    return-void
.end method

.method private static getInboundY(FF)F
    .locals 2

    .line 203
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    .line 204
    return v0

    .line 205
    :cond_0
    cmpl-float v0, p1, p0

    if-lez v0, :cond_1

    .line 206
    return p0

    .line 208
    :cond_1
    return p1
.end method

.method private handleCancelEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 173
    iget-object p1, p0, Landroidx/recyclerview/selection/GestureSelectionHelper;->mSelectionMgr:Landroidx/recyclerview/selection/SelectionTracker;

    invoke-virtual {p1}, Landroidx/recyclerview/selection/SelectionTracker;->clearProvisionalSelection()V

    .line 174
    invoke-direct {p0}, Landroidx/recyclerview/selection/GestureSelectionHelper;->endSelection()V

    .line 175
    return-void
.end method

.method private handleInterceptedDownEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 151
    iget-object v0, p0, Landroidx/recyclerview/selection/GestureSelectionHelper;->mDetailsLookup:Landroidx/recyclerview/selection/ItemDetailsLookup;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/selection/ItemDetailsLookup;->getItemDetails(Landroid/view/MotionEvent;)Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 152
    return v1

    .line 154
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/selection/GestureSelectionHelper;->mView:Landroidx/recyclerview/selection/GestureSelectionHelper$ViewDelegate;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/selection/GestureSelectionHelper$ViewDelegate;->getItemUnder(Landroid/view/MotionEvent;)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/selection/GestureSelectionHelper;->mLastStartedItemPos:I

    .line 155
    iget p1, p0, Landroidx/recyclerview/selection/GestureSelectionHelper;->mLastStartedItemPos:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method private handleMoveEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 189
    invoke-static {p1}, Landroidx/recyclerview/selection/MotionEvents;->getOrigin(Landroid/view/MotionEvent;)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/selection/GestureSelectionHelper;->mLastInterceptedPoint:Landroid/graphics/Point;

    .line 191
    iget-object v0, p0, Landroidx/recyclerview/selection/GestureSelectionHelper;->mView:Landroidx/recyclerview/selection/GestureSelectionHelper$ViewDelegate;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/selection/GestureSelectionHelper$ViewDelegate;->getLastGlidedItemPosition(Landroid/view/MotionEvent;)I

    move-result p1

    .line 192
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 193
    invoke-direct {p0, p1}, Landroidx/recyclerview/selection/GestureSelectionHelper;->extendSelection(I)V

    .line 196
    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/selection/GestureSelectionHelper;->mScroller:Landroidx/recyclerview/selection/AutoScroller;

    iget-object v0, p0, Landroidx/recyclerview/selection/GestureSelectionHelper;->mLastInterceptedPoint:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/selection/AutoScroller;->scroll(Landroid/graphics/Point;)V

    .line 197
    return-void
.end method

.method private handleUpEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 162
    iget-object p1, p0, Landroidx/recyclerview/selection/GestureSelectionHelper;->mSelectionMgr:Landroidx/recyclerview/selection/SelectionTracker;

    invoke-virtual {p1}, Landroidx/recyclerview/selection/SelectionTracker;->mergeProvisionalSelection()V

    .line 163
    invoke-direct {p0}, Landroidx/recyclerview/selection/GestureSelectionHelper;->endSelection()V

    .line 164
    iget p1, p0, Landroidx/recyclerview/selection/GestureSelectionHelper;->mLastStartedItemPos:I

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 165
    iget-object p1, p0, Landroidx/recyclerview/selection/GestureSelectionHelper;->mSelectionMgr:Landroidx/recyclerview/selection/SelectionTracker;

    iget v0, p0, Landroidx/recyclerview/selection/GestureSelectionHelper;->mLastStartedItemPos:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/selection/SelectionTracker;->startRange(I)V

    .line 167
    :cond_0
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 106
    invoke-static {p2}, Landroidx/recyclerview/selection/MotionEvents;->isMouseEvent(Landroid/view/MotionEvent;)Z

    .line 110
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    .line 120
    const/4 p1, 0x0

    return p1

    .line 117
    :cond_0
    iget-boolean p1, p0, Landroidx/recyclerview/selection/GestureSelectionHelper;->mStarted:Z

    return p1

    .line 115
    :cond_1
    invoke-direct {p0, p2}, Landroidx/recyclerview/selection/GestureSelectionHelper;->handleInterceptedDownEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 144
    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 126
    iget-boolean p1, p0, Landroidx/recyclerview/selection/GestureSelectionHelper;->mStarted:Z

    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 128
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 136
    :pswitch_0
    invoke-direct {p0, p2}, Landroidx/recyclerview/selection/GestureSelectionHelper;->handleCancelEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 130
    :pswitch_1
    invoke-direct {p0, p2}, Landroidx/recyclerview/selection/GestureSelectionHelper;->handleMoveEvent(Landroid/view/MotionEvent;)V

    .line 131
    goto :goto_0

    .line 133
    :pswitch_2
    invoke-direct {p0, p2}, Landroidx/recyclerview/selection/GestureSelectionHelper;->handleUpEvent(Landroid/view/MotionEvent;)V

    .line 134
    nop

    .line 139
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method start()V
    .locals 2

    .line 81
    iget-boolean v0, p0, Landroidx/recyclerview/selection/GestureSelectionHelper;->mStarted:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 85
    iget v0, p0, Landroidx/recyclerview/selection/GestureSelectionHelper;->mLastStartedItemPos:I

    if-gez v0, :cond_0

    .line 86
    const-string v0, "GestureSelectionHelper"

    const-string v1, "Illegal state. Can\'t start without valid mLastStartedItemPos."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/selection/GestureSelectionHelper;->mSelectionMgr:Landroidx/recyclerview/selection/SelectionTracker;

    invoke-virtual {v0}, Landroidx/recyclerview/selection/SelectionTracker;->isRangeActive()Z

    move-result v0

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 97
    iget-object v0, p0, Landroidx/recyclerview/selection/GestureSelectionHelper;->mLock:Landroidx/recyclerview/selection/OperationMonitor;

    invoke-virtual {v0}, Landroidx/recyclerview/selection/OperationMonitor;->checkStopped()V

    .line 99
    iput-boolean v1, p0, Landroidx/recyclerview/selection/GestureSelectionHelper;->mStarted:Z

    .line 100
    iget-object v0, p0, Landroidx/recyclerview/selection/GestureSelectionHelper;->mLock:Landroidx/recyclerview/selection/OperationMonitor;

    invoke-virtual {v0}, Landroidx/recyclerview/selection/OperationMonitor;->start()V

    .line 101
    return-void
.end method
