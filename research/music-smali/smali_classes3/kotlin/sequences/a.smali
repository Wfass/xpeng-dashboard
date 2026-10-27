.class public final Lkotlin/sequences/a;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Lkotlin/sequences/b;
.implements Lkotlin/sequences/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/sequences/b<",
        "TT;>;",
        "Lkotlin/sequences/c<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field private final a:Lkotlin/sequences/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/sequences/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:I


# direct methods
.method public constructor <init>(Lkotlin/sequences/c;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/c<",
            "+TT;>;I)V"
        }
    .end annotation

    const-string v0, "sequence"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    iput-object p1, p0, Lkotlin/sequences/a;->a:Lkotlin/sequences/c;

    .line 480
    iput p2, p0, Lkotlin/sequences/a;->b:I

    .line 483
    iget p1, p0, Lkotlin/sequences/a;->b:I

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "count must be non-negative, but was "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lkotlin/sequences/a;->b:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static final synthetic a(Lkotlin/sequences/a;)Lkotlin/sequences/c;
    .locals 0

    .line 478
    iget-object p0, p0, Lkotlin/sequences/a;->a:Lkotlin/sequences/c;

    return-object p0
.end method

.method public static final synthetic b(Lkotlin/sequences/a;)I
    .locals 0

    .line 478
    iget p0, p0, Lkotlin/sequences/a;->b:I

    return p0
.end method


# virtual methods
.method public a()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 489
    new-instance v0, Lkotlin/sequences/a$a;

    invoke-direct {v0, p0}, Lkotlin/sequences/a$a;-><init>(Lkotlin/sequences/a;)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public a(I)Lkotlin/sequences/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlin/sequences/c<",
            "TT;>;"
        }
    .end annotation

    .line 486
    iget v0, p0, Lkotlin/sequences/a;->b:I

    add-int/2addr v0, p1

    if-gez v0, :cond_0

    new-instance v0, Lkotlin/sequences/a;

    move-object v1, p0

    check-cast v1, Lkotlin/sequences/c;

    invoke-direct {v0, v1, p1}, Lkotlin/sequences/a;-><init>(Lkotlin/sequences/c;I)V

    move-object p1, v0

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/sequences/a;

    iget-object v1, p0, Lkotlin/sequences/a;->a:Lkotlin/sequences/c;

    invoke-direct {p1, v1, v0}, Lkotlin/sequences/a;-><init>(Lkotlin/sequences/c;I)V

    :goto_0
    check-cast p1, Lkotlin/sequences/c;

    return-object p1
.end method
