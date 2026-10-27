.class public final Lkotlin/sequences/l;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Lkotlin/sequences/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/sequences/c<",
        "TR;>;"
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

.field private final b:Lcas;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcas<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/sequences/c;Lcas;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/c<",
            "+TT;>;",
            "Lcas<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    const-string v0, "sequence"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transformer"

    invoke-static {p2, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p1, p0, Lkotlin/sequences/l;->a:Lkotlin/sequences/c;

    iput-object p2, p0, Lkotlin/sequences/l;->b:Lcas;

    return-void
.end method

.method public static final synthetic a(Lkotlin/sequences/l;)Lkotlin/sequences/c;
    .locals 0

    .line 205
    iget-object p0, p0, Lkotlin/sequences/l;->a:Lkotlin/sequences/c;

    return-object p0
.end method

.method public static final synthetic b(Lkotlin/sequences/l;)Lcas;
    .locals 0

    .line 205
    iget-object p0, p0, Lkotlin/sequences/l;->b:Lcas;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TR;>;"
        }
    .end annotation

    .line 207
    new-instance v0, Lkotlin/sequences/l$a;

    invoke-direct {v0, p0}, Lkotlin/sequences/l$a;-><init>(Lkotlin/sequences/l;)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method
