.class public final Lkotlin/sequences/g$a;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Lkotlin/sequences/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/sequences/g;->a(Lcbd;)Lkotlin/sequences/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/sequences/c<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field final synthetic a:Lcbd;


# direct methods
.method public constructor <init>(Lcbd;)V
    .locals 0

    iput-object p1, p0, Lkotlin/sequences/g$a;->a:Lcbd;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

    .line 681
    iget-object v0, p0, Lkotlin/sequences/g$a;->a:Lcbd;

    invoke-static {v0}, Lkotlin/sequences/f;->b(Lcbd;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
