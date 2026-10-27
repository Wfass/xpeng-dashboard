.class public abstract Landroidx/recyclerview/selection/ItemDetailsLookup;
.super Ljava/lang/Object;
.source "ItemDetailsLookup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    return-void
.end method

.method private static hasPosition(Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;)Z
    .locals 1
    .param p0    # Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails<",
            "*>;)Z"
        }
    .end annotation

    .line 109
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;->getPosition()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static hasSelectionKey(Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;)Z
    .locals 0
    .param p0    # Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails<",
            "*>;)Z"
        }
    .end annotation

    .line 105
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;->getSelectionKey()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public abstract getItemDetails(Landroid/view/MotionEvent;)Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            ")",
            "Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails<",
            "TK;>;"
        }
    .end annotation
.end method

.method final getItemPosition(Landroid/view/MotionEvent;)I
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 98
    invoke-virtual {p0, p1}, Landroidx/recyclerview/selection/ItemDetailsLookup;->getItemDetails(Landroid/view/MotionEvent;)Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;

    move-result-object p1

    .line 99
    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p1}, Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;->getPosition()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method final inItemDragRegion(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 82
    invoke-virtual {p0, p1}, Landroidx/recyclerview/selection/ItemDetailsLookup;->overItem(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/selection/ItemDetailsLookup;->getItemDetails(Landroid/view/MotionEvent;)Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;->inDragRegion(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method final inItemSelectRegion(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 91
    invoke-virtual {p0, p1}, Landroidx/recyclerview/selection/ItemDetailsLookup;->overItem(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/selection/ItemDetailsLookup;->getItemDetails(Landroid/view/MotionEvent;)Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;->inSelectionHotspot(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method final overItem(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 65
    invoke-virtual {p0, p1}, Landroidx/recyclerview/selection/ItemDetailsLookup;->getItemPosition(Landroid/view/MotionEvent;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method final overItemWithSelectionKey(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 72
    invoke-virtual {p0, p1}, Landroidx/recyclerview/selection/ItemDetailsLookup;->overItem(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/selection/ItemDetailsLookup;->getItemDetails(Landroid/view/MotionEvent;)Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;

    move-result-object p1

    invoke-static {p1}, Landroidx/recyclerview/selection/ItemDetailsLookup;->hasSelectionKey(Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
