.class final Landroidx/recyclerview/selection/ToolHandlerRegistry;
.super Ljava/lang/Object;
.source "ToolHandlerRegistry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final NUM_INPUT_TYPES:I = 0x5


# instance fields
.field private final mDefault:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const/4 v5, 0x2

    aput-object v3, v1, v5

    const/4 v5, 0x3

    aput-object v3, v1, v5

    const/4 v5, 0x4

    aput-object v3, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroidx/recyclerview/selection/ToolHandlerRegistry;->mHandlers:Ljava/util/List;

    .line 49
    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-static {v4}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 50
    iput-object p1, p0, Landroidx/recyclerview/selection/ToolHandlerRegistry;->mDefault:Ljava/lang/Object;

    .line 53
    :goto_1
    if-ge v2, v0, :cond_1

    .line 54
    iget-object p1, p0, Landroidx/recyclerview/selection/ToolHandlerRegistry;->mHandlers:Ljava/util/List;

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 56
    :cond_1
    return-void
.end method


# virtual methods
.method get(Landroid/view/MotionEvent;)Ljava/lang/Object;
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            ")TT;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Landroidx/recyclerview/selection/ToolHandlerRegistry;->mHandlers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 72
    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/selection/ToolHandlerRegistry;->mDefault:Ljava/lang/Object;

    :goto_0
    return-object p1
.end method

.method set(ILjava/lang/Object;)V
    .locals 3
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    const/4 v2, 0x4

    if-gt p1, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 65
    iget-object v2, p0, Landroidx/recyclerview/selection/ToolHandlerRegistry;->mHandlers:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    move v0, v1

    nop

    :cond_1
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 67
    iget-object v0, p0, Landroidx/recyclerview/selection/ToolHandlerRegistry;->mHandlers:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method
