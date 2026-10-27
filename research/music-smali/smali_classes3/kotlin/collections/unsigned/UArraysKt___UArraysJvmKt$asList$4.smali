.class public final Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$4;
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
        "Lkotlin/u;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field final synthetic $this_asList:[S


# direct methods
.method constructor <init>([S)V
    .locals 0

    iput-object p1, p0, Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$4;->$this_asList:[S

    .line 122
    invoke-direct {p0}, Lkotlin/collections/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 122
    instance-of v0, p1, Lkotlin/u;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lkotlin/u;

    invoke-virtual {p1}, Lkotlin/u;->a()S

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$4;->contains-xj2QHRw(S)Z

    move-result p1

    return p1
.end method

.method public contains-xj2QHRw(S)Z
    .locals 1

    .line 125
    iget-object v0, p0, Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$4;->$this_asList:[S

    invoke-static {v0, p1}, Lkotlin/UShortArray;->contains-xj2QHRw([SS)Z

    move-result p1

    return p1
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 122
    invoke-virtual {p0, p1}, Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$4;->get-Mh2AYeg(I)S

    move-result p1

    invoke-static {p1}, Lkotlin/u;->d(S)Lkotlin/u;

    move-result-object p1

    return-object p1
.end method

.method public get-Mh2AYeg(I)S
    .locals 1

    .line 126
    iget-object v0, p0, Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$4;->$this_asList:[S

    invoke-static {v0, p1}, Lkotlin/UShortArray;->get-Mh2AYeg([SI)S

    move-result p1

    return p1
.end method

.method public getSize()I
    .locals 1

    .line 123
    iget-object v0, p0, Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$4;->$this_asList:[S

    invoke-static {v0}, Lkotlin/UShortArray;->getSize-impl([S)I

    move-result v0

    return v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 122
    instance-of v0, p1, Lkotlin/u;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lkotlin/u;

    invoke-virtual {p1}, Lkotlin/u;->a()S

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$4;->indexOf-xj2QHRw(S)I

    move-result p1

    return p1
.end method

.method public indexOf-xj2QHRw(S)I
    .locals 1

    .line 127
    iget-object v0, p0, Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$4;->$this_asList:[S

    invoke-static {v0, p1}, Lkotlin/collections/c;->b([SS)I

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 124
    iget-object v0, p0, Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$4;->$this_asList:[S

    invoke-static {v0}, Lkotlin/UShortArray;->isEmpty-impl([S)Z

    move-result v0

    return v0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 122
    instance-of v0, p1, Lkotlin/u;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lkotlin/u;

    invoke-virtual {p1}, Lkotlin/u;->a()S

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$4;->lastIndexOf-xj2QHRw(S)I

    move-result p1

    return p1
.end method

.method public lastIndexOf-xj2QHRw(S)I
    .locals 1

    .line 128
    iget-object v0, p0, Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$4;->$this_asList:[S

    invoke-static {v0, p1}, Lkotlin/collections/c;->c([SS)I

    move-result p1

    return p1
.end method
