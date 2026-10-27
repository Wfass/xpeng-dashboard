.class Lhg$2;
.super Ljava/lang/Object;
.source "ExploreByTouchHelper.java"

# interfaces
.implements Lhh$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhh$b<",
        "Landroidx/collection/f<",
        "Lgu;",
        ">;",
        "Lgu;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/collection/f;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/f<",
            "Lgu;",
            ">;)I"
        }
    .end annotation

    .line 358
    invoke-virtual {p1}, Landroidx/collection/f;->b()I

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 349
    check-cast p1, Landroidx/collection/f;

    invoke-virtual {p0, p1}, Lhg$2;->a(Landroidx/collection/f;)I

    move-result p1

    return p1
.end method

.method public a(Landroidx/collection/f;I)Lgu;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/f<",
            "Lgu;",
            ">;I)",
            "Lgu;"
        }
    .end annotation

    .line 353
    invoke-virtual {p1, p2}, Landroidx/collection/f;->e(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgu;

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    .line 349
    check-cast p1, Landroidx/collection/f;

    invoke-virtual {p0, p1, p2}, Lhg$2;->a(Landroidx/collection/f;I)Lgu;

    move-result-object p1

    return-object p1
.end method
