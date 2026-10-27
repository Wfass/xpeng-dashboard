.class public final Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$1;
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
        "Lkotlin/r;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field final synthetic $this_asList:[I


# direct methods
.method constructor <init>([I)V
    .locals 0

    iput-object p1, p0, Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$1;->$this_asList:[I

    .line 74
    invoke-direct {p0}, Lkotlin/collections/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 74
    instance-of v0, p1, Lkotlin/r;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lkotlin/r;

    invoke-virtual {p1}, Lkotlin/r;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$1;->contains-WZ4Q5Ns(I)Z

    move-result p1

    return p1
.end method

.method public contains-WZ4Q5Ns(I)Z
    .locals 1

    .line 77
    iget-object v0, p0, Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$1;->$this_asList:[I

    invoke-static {v0, p1}, Lkotlin/UIntArray;->contains-WZ4Q5Ns([II)Z

    move-result p1

    return p1
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 74
    invoke-virtual {p0, p1}, Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$1;->get-pVg5ArA(I)I

    move-result p1

    invoke-static {p1}, Lkotlin/r;->d(I)Lkotlin/r;

    move-result-object p1

    return-object p1
.end method

.method public get-pVg5ArA(I)I
    .locals 1

    .line 78
    iget-object v0, p0, Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$1;->$this_asList:[I

    invoke-static {v0, p1}, Lkotlin/UIntArray;->get-pVg5ArA([II)I

    move-result p1

    return p1
.end method

.method public getSize()I
    .locals 1

    .line 75
    iget-object v0, p0, Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$1;->$this_asList:[I

    invoke-static {v0}, Lkotlin/UIntArray;->getSize-impl([I)I

    move-result v0

    return v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 74
    instance-of v0, p1, Lkotlin/r;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lkotlin/r;

    invoke-virtual {p1}, Lkotlin/r;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$1;->indexOf-WZ4Q5Ns(I)I

    move-result p1

    return p1
.end method

.method public indexOf-WZ4Q5Ns(I)I
    .locals 1

    .line 79
    iget-object v0, p0, Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$1;->$this_asList:[I

    invoke-static {v0, p1}, Lkotlin/collections/c;->b([II)I

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$1;->$this_asList:[I

    invoke-static {v0}, Lkotlin/UIntArray;->isEmpty-impl([I)Z

    move-result v0

    return v0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 74
    instance-of v0, p1, Lkotlin/r;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lkotlin/r;

    invoke-virtual {p1}, Lkotlin/r;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$1;->lastIndexOf-WZ4Q5Ns(I)I

    move-result p1

    return p1
.end method

.method public lastIndexOf-WZ4Q5Ns(I)I
    .locals 1

    .line 80
    iget-object v0, p0, Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$1;->$this_asList:[I

    invoke-static {v0, p1}, Lkotlin/collections/c;->c([II)I

    move-result p1

    return p1
.end method
