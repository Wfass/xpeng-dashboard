.class public final Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$4;
.super Lkotlin/collections/AbstractList;
.source "_ArraysJvm.kt"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/collections/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/collections/AbstractList<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field final synthetic $this_asList:[J


# direct methods
.method constructor <init>([J)V
    .locals 0

    iput-object p1, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$4;->$this_asList:[J

    .line 182
    invoke-direct {p0}, Lkotlin/collections/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(J)Z
    .locals 1

    .line 185
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$4;->$this_asList:[J

    invoke-static {v0, p1, p2}, Lkotlin/collections/c;->a([JJ)Z

    move-result p1

    return p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    .line 182
    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$4;->contains(J)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/lang/Long;
    .locals 2

    .line 186
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$4;->$this_asList:[J

    aget-wide v0, v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 182
    invoke-virtual {p0, p1}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$4;->get(I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getSize()I
    .locals 1

    .line 183
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$4;->$this_asList:[J

    array-length v0, v0

    return v0
.end method

.method public indexOf(J)I
    .locals 1

    .line 187
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$4;->$this_asList:[J

    invoke-static {v0, p1, p2}, Lkotlin/collections/c;->b([JJ)I

    move-result p1

    return p1
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 2

    .line 182
    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$4;->indexOf(J)I

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 184
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$4;->$this_asList:[J

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lastIndexOf(J)I
    .locals 1

    .line 188
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$4;->$this_asList:[J

    invoke-static {v0, p1, p2}, Lkotlin/collections/c;->c([JJ)I

    move-result p1

    return p1
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 2

    .line 182
    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$4;->lastIndexOf(J)I

    move-result p1

    return p1
.end method
