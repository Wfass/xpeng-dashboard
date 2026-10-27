.class public final Lkotlin/collections/AbstractMap$values$1;
.super Lkotlin/collections/AbstractCollection;
.source "AbstractMap.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/collections/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/collections/AbstractCollection<",
        "TV;>;"
    }
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field final synthetic this$0:Lkotlin/collections/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/b<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/collections/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/collections/b<",
            "TK;+TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/collections/AbstractMap$values$1;->this$0:Lkotlin/collections/b;

    .line 121
    invoke-direct {p0}, Lkotlin/collections/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 122
    iget-object v0, p0, Lkotlin/collections/AbstractMap$values$1;->this$0:Lkotlin/collections/b;

    invoke-virtual {v0, p1}, Lkotlin/collections/b;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getSize()I
    .locals 1

    .line 132
    iget-object v0, p0, Lkotlin/collections/AbstractMap$values$1;->this$0:Lkotlin/collections/b;

    invoke-virtual {v0}, Lkotlin/collections/b;->size()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lkotlin/collections/AbstractMap$values$1;->this$0:Lkotlin/collections/b;

    invoke-virtual {v0}, Lkotlin/collections/b;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 126
    new-instance v1, Lkotlin/collections/AbstractMap$values$1$a;

    invoke-direct {v1, v0}, Lkotlin/collections/AbstractMap$values$1$a;-><init>(Ljava/util/Iterator;)V

    check-cast v1, Ljava/util/Iterator;

    return-object v1
.end method
