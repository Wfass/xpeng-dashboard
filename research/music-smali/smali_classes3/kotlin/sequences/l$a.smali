.class public final Lkotlin/sequences/l$a;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Lccm;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/sequences/l;->a()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccm;",
        "Ljava/util/Iterator<",
        "TR;>;"
    }
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field final synthetic a:Lkotlin/sequences/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/sequences/l<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/sequences/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/l<",
            "TT;TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/sequences/l$a;->a:Lkotlin/sequences/l;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    invoke-static {p1}, Lkotlin/sequences/l;->a(Lkotlin/sequences/l;)Lkotlin/sequences/c;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/sequences/c;->a()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lkotlin/sequences/l$a;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 214
    iget-object v0, p0, Lkotlin/sequences/l$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lkotlin/sequences/l$a;->a:Lkotlin/sequences/l;

    invoke-static {v0}, Lkotlin/sequences/l;->b(Lkotlin/sequences/l;)Lcas;

    move-result-object v0

    iget-object v1, p0, Lkotlin/sequences/l$a;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcas;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
