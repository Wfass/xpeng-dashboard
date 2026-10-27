.class final Lkotlin/ranges/j;
.super Ljava/lang/Object;
.source "ULongRange.kt"

# interfaces
.implements Lccm;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccm;",
        "Ljava/util/Iterator<",
        "Lkotlin/s;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field private final a:J

.field private b:Z

.field private final c:J

.field private d:J


# direct methods
.method private constructor <init>(JJJ)V
    .locals 3

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-wide p3, p0, Lkotlin/ranges/j;->a:J

    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    .line 127
    invoke-static {p1, p2, p3, p4}, Lkotlin/x;->a(JJ)I

    move-result p3

    if-gtz p3, :cond_1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lkotlin/x;->a(JJ)I

    move-result p3

    if-ltz p3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lkotlin/ranges/j;->b:Z

    .line 128
    invoke-static {p5, p6}, Lkotlin/s;->c(J)J

    move-result-wide p3

    iput-wide p3, p0, Lkotlin/ranges/j;->c:J

    .line 129
    iget-boolean p3, p0, Lkotlin/ranges/j;->b:Z

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    iget-wide p1, p0, Lkotlin/ranges/j;->a:J

    :goto_1
    iput-wide p1, p0, Lkotlin/ranges/j;->d:J

    return-void
.end method

.method public synthetic constructor <init>(JJJLccc;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lkotlin/ranges/j;-><init>(JJJ)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    .line 134
    iget-wide v0, p0, Lkotlin/ranges/j;->d:J

    .line 135
    iget-wide v2, p0, Lkotlin/ranges/j;->a:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 136
    iget-boolean v2, p0, Lkotlin/ranges/j;->b:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 137
    iput-boolean v2, p0, Lkotlin/ranges/j;->b:Z

    goto :goto_0

    .line 136
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 139
    :cond_1
    iget-wide v2, p0, Lkotlin/ranges/j;->c:J

    add-long/2addr v2, v0

    invoke-static {v2, v3}, Lkotlin/s;->c(J)J

    move-result-wide v2

    iput-wide v2, p0, Lkotlin/ranges/j;->d:J

    :goto_0
    return-wide v0
.end method

.method public hasNext()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lkotlin/ranges/j;->b:Z

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 2

    .line 124
    invoke-virtual {p0}, Lkotlin/ranges/j;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/s;->d(J)Lkotlin/s;

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
