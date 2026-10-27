.class final Lcom/google/common/collect/SortedMultisets;
.super Ljava/lang/Object;
.source "SortedMultisets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/SortedMultisets$NavigableElementSet;,
        Lcom/google/common/collect/SortedMultisets$ElementSet;
    }
.end annotation


# direct methods
.method static synthetic a(Lcom/google/common/collect/Multiset$a;)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-static {p0}, Lcom/google/common/collect/SortedMultisets;->c(Lcom/google/common/collect/Multiset$a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/google/common/collect/Multiset$a;)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-static {p0}, Lcom/google/common/collect/SortedMultisets;->d(Lcom/google/common/collect/Multiset$a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static c(Lcom/google/common/collect/Multiset$a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset$a<",
            "TE;>;)TE;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 165
    invoke-interface {p0}, Lcom/google/common/collect/Multiset$a;->c()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 163
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method private static d(Lcom/google/common/collect/Multiset$a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset$a<",
            "TE;>;)TE;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 169
    :cond_0
    invoke-interface {p0}, Lcom/google/common/collect/Multiset$a;->c()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method
