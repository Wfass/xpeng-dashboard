.class public abstract Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;
.super Ljava/lang/Object;
.source "ItemDetailsLookup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/selection/ItemDetailsLookup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemDetails"
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

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isEqualTo(Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;)Z
    .locals 4
    .param p1    # Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 243
    invoke-virtual {p0}, Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;->getSelectionKey()Ljava/lang/Object;

    move-result-object v0

    .line 244
    nop

    .line 245
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 246
    invoke-virtual {p1}, Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;->getSelectionKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 250
    move v0, v2

    goto :goto_0

    .line 246
    :cond_0
    nop

    .line 250
    move v0, v1

    goto :goto_0

    .line 248
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;->getSelectionKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 250
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;->getPosition()I

    move-result v0

    invoke-virtual {p1}, Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;->getPosition()I

    move-result p1

    if-ne v0, p1, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 238
    instance-of v0, p1, Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;

    .line 239
    invoke-direct {p0, p1}, Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;->isEqualTo(Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract getPosition()I
.end method

.method public abstract getSelectionKey()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation
.end method

.method public hasSelectionKey()Z
    .locals 1

    .line 184
    invoke-virtual {p0}, Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;->getSelectionKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 255
    invoke-virtual {p0}, Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;->getPosition()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public inDragRegion(Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 233
    const/4 p1, 0x0

    return p1
.end method

.method public inSelectionHotspot(Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 205
    const/4 p1, 0x0

    return p1
.end method
