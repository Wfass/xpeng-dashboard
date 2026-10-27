.class final Lcby;
.super Lkotlin/collections/ao;
.source "ArrayIterators.kt"


# annotations
.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field private final a:[S

.field private b:I


# direct methods
.method public constructor <init>([S)V
    .locals 1

    const-string v0, "array"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Lkotlin/collections/ao;-><init>()V

    iput-object p1, p0, Lcby;->a:[S

    return-void
.end method


# virtual methods
.method public a()S
    .locals 3

    .line 25
    :try_start_0
    iget-object v0, p0, Lcby;->a:[S

    iget v1, p0, Lcby;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcby;->b:I

    aget-short v0, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    iget v1, p0, Lcby;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcby;->b:I

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hasNext()Z
    .locals 2

    .line 24
    iget v0, p0, Lcby;->b:I

    iget-object v1, p0, Lcby;->a:[S

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
