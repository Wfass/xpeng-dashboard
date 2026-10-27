.class public final Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$8;
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
        "Ljava/lang/Character;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field final synthetic $this_asList:[C


# direct methods
.method constructor <init>([C)V
    .locals 0

    iput-object p1, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$8;->$this_asList:[C

    .line 238
    invoke-direct {p0}, Lkotlin/collections/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(C)Z
    .locals 1

    .line 241
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$8;->$this_asList:[C

    invoke-static {v0, p1}, Lkotlin/collections/c;->a([CC)Z

    move-result p1

    return p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 238
    instance-of v0, p1, Ljava/lang/Character;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$8;->contains(C)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/lang/Character;
    .locals 1

    .line 242
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$8;->$this_asList:[C

    aget-char p1, v0, p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 238
    invoke-virtual {p0, p1}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$8;->get(I)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method

.method public getSize()I
    .locals 1

    .line 239
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$8;->$this_asList:[C

    array-length v0, v0

    return v0
.end method

.method public indexOf(C)I
    .locals 1

    .line 243
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$8;->$this_asList:[C

    invoke-static {v0, p1}, Lkotlin/collections/c;->b([CC)I

    move-result p1

    return p1
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 238
    instance-of v0, p1, Ljava/lang/Character;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$8;->indexOf(C)I

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 240
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$8;->$this_asList:[C

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lastIndexOf(C)I
    .locals 1

    .line 244
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$8;->$this_asList:[C

    invoke-static {v0, p1}, Lkotlin/collections/c;->c([CC)I

    move-result p1

    return p1
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 238
    instance-of v0, p1, Ljava/lang/Character;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$8;->lastIndexOf(C)I

    move-result p1

    return p1
.end method
