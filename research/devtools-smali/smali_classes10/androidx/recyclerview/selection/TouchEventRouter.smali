.class final Landroidx/recyclerview/selection/TouchEventRouter;
.super Ljava/lang/Object;
.source "TouchEventRouter.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TouchEventRouter"


# instance fields
.field private final mDelegates:Landroidx/recyclerview/selection/ToolHandlerRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/selection/ToolHandlerRegistry<",
            "Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mDetector:Landroid/view/GestureDetector;


# direct methods
.method constructor <init>(Landroid/view/GestureDetector;)V
    .locals 1
    .param p1    # Landroid/view/GestureDetector;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 56
    new-instance v0, Landroidx/recyclerview/selection/TouchEventRouter$1;

    invoke-direct {v0}, Landroidx/recyclerview/selection/TouchEventRouter$1;-><init>()V

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/selection/TouchEventRouter;-><init>(Landroid/view/GestureDetector;Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 77
    return-void
.end method

.method constructor <init>(Landroid/view/GestureDetector;Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V
    .locals 3
    .param p1    # Landroid/view/GestureDetector;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 49
    if-eqz p2, :cond_1

    move v0, v1

    nop

    :cond_1
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 51
    iput-object p1, p0, Landroidx/recyclerview/selection/TouchEventRouter;->mDetector:Landroid/view/GestureDetector;

    .line 52
    new-instance p1, Landroidx/recyclerview/selection/ToolHandlerRegistry;

    invoke-direct {p1, p2}, Landroidx/recyclerview/selection/ToolHandlerRegistry;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/recyclerview/selection/TouchEventRouter;->mDelegates:Landroidx/recyclerview/selection/ToolHandlerRegistry;

    .line 53
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 91
    iget-object v0, p0, Landroidx/recyclerview/selection/TouchEventRouter;->mDelegates:Landroidx/recyclerview/selection/ToolHandlerRegistry;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/selection/ToolHandlerRegistry;->get(Landroid/view/MotionEvent;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    invoke-interface {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result p1

    .line 96
    iget-object v0, p0, Landroidx/recyclerview/selection/TouchEventRouter;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p2

    or-int/2addr p1, p2

    .line 98
    return p1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 112
    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 103
    iget-object v0, p0, Landroidx/recyclerview/selection/TouchEventRouter;->mDelegates:Landroidx/recyclerview/selection/ToolHandlerRegistry;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/selection/ToolHandlerRegistry;->get(Landroid/view/MotionEvent;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    invoke-interface {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;->onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V

    .line 108
    iget-object p1, p0, Landroidx/recyclerview/selection/TouchEventRouter;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 109
    return-void
.end method

.method register(ILandroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V
    .locals 1
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 85
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 86
    iget-object v0, p0, Landroidx/recyclerview/selection/TouchEventRouter;->mDelegates:Landroidx/recyclerview/selection/ToolHandlerRegistry;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/selection/ToolHandlerRegistry;->set(ILjava/lang/Object;)V

    .line 87
    return-void
.end method
