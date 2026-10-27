.class public final Lkotlin/collections/AbstractMap$keys$1;
.super Lkotlin/collections/AbstractSet;
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
        "Lkotlin/collections/AbstractSet<",
        "TK;>;"
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

    iput-object p1, p0, Lkotlin/collections/AbstractMap$keys$1;->this$0:Lkotlin/collections/b;

    .line 85
    invoke-direct {p0}, Lkotlin/collections/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 86
    iget-object v0, p0, Lkotlin/collections/AbstractMap$keys$1;->this$0:Lkotlin/collections/b;

    invoke-virtual {v0, p1}, Lkotlin/collections/b;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getSize()I
    .locals 1

    .line 96
    iget-object v0, p0, Lkotlin/collections/AbstractMap$keys$1;->this$0:Lkotlin/collections/b;

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
            "TK;>;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lkotlin/collections/AbstractMap$keys$1;->this$0:Lkotlin/collections/b;

    invoke-virtual {v0}, Lkotlin/collections/b;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 90
    new-instance v1, Lkotlin/collections/AbstractMap$keys$1$a;

    invoke-direct {v1, v0}, Lkotlin/collections/AbstractMap$keys$1$a;-><init>(Ljava/util/Iterator;)V

    check-cast v1, Ljava/util/Iterator;

    return-object v1
.end method
