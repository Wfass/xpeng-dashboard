.class final Lkotlin/ranges/i;
.super Ljava/lang/Object;
.source "UIntRange.kt"

# interfaces
.implements Lccm;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccm;",
        "Ljava/util/Iterator<",
        "Lkotlin/r;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field private final a:I

.field private b:Z

.field private final c:I

.field private d:I


# direct methods
.method private constructor <init>(III)V
    .locals 2

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput p2, p0, Lkotlin/ranges/i;->a:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p3, :cond_0

    .line 127
    invoke-static {p1, p2}, Lkotlin/x;->a(II)I

    move-result p2

    if-gtz p2, :cond_1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lkotlin/x;->a(II)I

    move-result p2

    if-ltz p2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lkotlin/ranges/i;->b:Z

    .line 128
    invoke-static {p3}, Lkotlin/r;->c(I)I

    move-result p2

    iput p2, p0, Lkotlin/ranges/i;->c:I

    .line 129
    iget-boolean p2, p0, Lkotlin/ranges/i;->b:Z

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    iget p1, p0, Lkotlin/ranges/i;->a:I

    :goto_1
    iput p1, p0, Lkotlin/ranges/i;->d:I

    return-void
.end method

.method public synthetic constructor <init>(IIILccc;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lkotlin/ranges/i;-><init>(III)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 134
    iget v0, p0, Lkotlin/ranges/i;->d:I

    .line 135
    iget v1, p0, Lkotlin/ranges/i;->a:I

    if-ne v0, v1, :cond_1

    .line 136
    iget-boolean v1, p0, Lkotlin/ranges/i;->b:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 137
    iput-boolean v1, p0, Lkotlin/ranges/i;->b:Z

    goto :goto_0

    .line 136
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 139
    :cond_1
    iget v1, p0, Lkotlin/ranges/i;->c:I

    add-int/2addr v1, v0

    invoke-static {v1}, Lkotlin/r;->c(I)I

    move-result v1

    iput v1, p0, Lkotlin/ranges/i;->d:I

    :goto_0
    return v0
.end method

.method public hasNext()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lkotlin/ranges/i;->b:Z

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .line 124
    invoke-virtual {p0}, Lkotlin/ranges/i;->a()I

    move-result v0

    invoke-static {v0}, Lkotlin/r;->d(I)Lkotlin/r;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
