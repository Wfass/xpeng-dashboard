.class Lcom/google/common/collect/RegularImmutableMultiset$a;
.super Ljava/lang/Object;
.source "RegularImmutableMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RegularImmutableMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final a:[Ljava/lang/Object;

.field final b:[I


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multiset;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset<",
            "*>;)V"
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 109
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/RegularImmutableMultiset$a;->a:[Ljava/lang/Object;

    .line 110
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/common/collect/RegularImmutableMultiset$a;->b:[I

    .line 112
    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Multiset$a;

    .line 113
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableMultiset$a;->a:[Ljava/lang/Object;

    invoke-interface {v1}, Lcom/google/common/collect/Multiset$a;->c()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    .line 114
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableMultiset$a;->b:[I

    invoke-interface {v1}, Lcom/google/common/collect/Multiset$a;->b()I

    move-result v1

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
