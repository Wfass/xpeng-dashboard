.class public final Lcom/google/common/collect/ab$a;
.super Lcom/google/common/collect/ImmutableMultimap$a;
.source "ImmutableListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMultimap$a<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 137
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMultimap$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ab$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/common/collect/ab$a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 142
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ImmutableMultimap$a;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$a;

    return-object p0
.end method

.method public a()Lcom/google/common/collect/ab;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ab<",
            "TK;TV;>;"
        }
    .end annotation

    .line 219
    invoke-super {p0}, Lcom/google/common/collect/ImmutableMultimap$a;->b()Lcom/google/common/collect/ImmutableMultimap;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ab;

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$a;
    .locals 0

    .line 132
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ab$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ab$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b()Lcom/google/common/collect/ImmutableMultimap;
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/google/common/collect/ab$a;->a()Lcom/google/common/collect/ab;

    move-result-object v0

    return-object v0
.end method
