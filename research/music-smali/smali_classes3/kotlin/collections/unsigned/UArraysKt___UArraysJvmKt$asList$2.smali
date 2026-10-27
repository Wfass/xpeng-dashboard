.class public final Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$2;
.super Lkotlin/collections/AbstractList;
.source "_UArraysJvm.kt"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/collections/unsigned/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/collections/AbstractList<",
        "Lkotlin/s;",
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

    iput-object p1, p0, Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$2;->$this_asList:[J

    .line 90
    invoke-direct {p0}, Lkotlin/collections/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    .line 90
    instance-of v0, p1, Lkotlin/s;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lkotlin/s;

    invoke-virtual {p1}, Lkotlin/s;->a()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$2;->contains-VKZWuLQ(J)Z

    move-result p1

    return p1
.end method

.method public contains-VKZWuLQ(J)Z
    .locals 1

    .line 93
    iget-object v0, p0, Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$2;->$this_asList:[J

    invoke-static {v0, p1, p2}, Lkotlin/ULongArray;->contains-VKZWuLQ([JJ)Z

    move-result p1

    return p1
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .locals 2

    .line 90
    invoke-virtual {p0, p1}, Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$2;->get-s-VKNKU(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/s;->d(J)Lkotlin/s;

    move-result-object p1

    return-object p1
.end method

.method public get-s-VKNKU(I)J
    .locals 2

    .line 94
    iget-object v0, p0, Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$2;->$this_asList:[J

    invoke-static {v0, p1}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSize()I
    .locals 1

    .line 91
    iget-object v0, p0, Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$2;->$this_asList:[J

    invoke-static {v0}, Lkotlin/ULongArray;->getSize-impl([J)I

    move-result v0

    return v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 2

    .line 90
    instance-of v0, p1, Lkotlin/s;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lkotlin/s;

    invoke-virtual {p1}, Lkotlin/s;->a()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$2;->indexOf-VKZWuLQ(J)I

    move-result p1

    return p1
.end method

.method public indexOf-VKZWuLQ(J)I
    .locals 1

    .line 95
    iget-object v0, p0, Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$2;->$this_asList:[J

    invoke-static {v0, p1, p2}, Lkotlin/collections/c;->b([JJ)I

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 92
    iget-object v0, p0, Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$2;->$this_asList:[J

    invoke-static {v0}, Lkotlin/ULongArray;->isEmpty-impl([J)Z

    move-result v0

    return v0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 2

    .line 90
    instance-of v0, p1, Lkotlin/s;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lkotlin/s;

    invoke-virtual {p1}, Lkotlin/s;->a()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$2;->lastIndexOf-VKZWuLQ(J)I

    move-result p1

    return p1
.end method

.method public lastIndexOf-VKZWuLQ(J)I
    .locals 1

    .line 96
    iget-object v0, p0, Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$2;->$this_asList:[J

    invoke-static {v0, p1, p2}, Lkotlin/collections/c;->c([JJ)I

    move-result p1

    return p1
.end method
