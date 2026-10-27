.class final Lcom/google/common/collect/ba;
.super Ljava/lang/Object;
.source "Serialization.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ba$a;
    }
.end annotation


# direct methods
.method static a(Ljava/io/ObjectInputStream;)I
    .locals 0

    .line 47
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p0

    return p0
.end method

.method static a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/ba$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ba$a<",
            "TT;>;"
        }
    .end annotation

    .line 187
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 188
    new-instance p1, Lcom/google/common/collect/ba$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/google/common/collect/ba$a;-><init>(Ljava/lang/reflect/Field;Lcom/google/common/collect/ba$1;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 190
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method static a(Lcom/google/common/collect/Multiset;Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset<",
            "TE;>;",
            "Ljava/io/ObjectInputStream;",
            ")V"
        }
    .end annotation

    .line 113
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 114
    invoke-static {p0, p1, v0}, Lcom/google/common/collect/ba;->a(Lcom/google/common/collect/Multiset;Ljava/io/ObjectInputStream;I)V

    return-void
.end method

.method static a(Lcom/google/common/collect/Multiset;Ljava/io/ObjectInputStream;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset<",
            "TE;>;",
            "Ljava/io/ObjectInputStream;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 127
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 128
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 129
    invoke-interface {p0, v1, v2}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;I)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static a(Lcom/google/common/collect/Multiset;Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset<",
            "TE;>;",
            "Ljava/io/ObjectOutputStream;",
            ")V"
        }
    .end annotation

    .line 99
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 100
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 101
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$a;

    .line 102
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$a;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 103
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$a;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
