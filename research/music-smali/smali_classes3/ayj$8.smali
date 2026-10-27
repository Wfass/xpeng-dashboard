.class Layj$8;
.super Ljava/lang/Object;
.source "PlaybackViewModel.java"

# interfaces
.implements Lz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Layj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz<",
        "Layj$d;",
        "Landroidx/lifecycle/LiveData<",
        "Laie;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Layj;


# direct methods
.method constructor <init>(Layj;)V
    .locals 0

    .line 580
    iput-object p1, p0, Layj$8;->a:Layj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Layj$d;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Layj$d;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Laie;",
            ">;"
        }
    .end annotation

    .line 585
    new-instance p1, Laie;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1, v0, v1}, Laie;-><init>(JJ)V

    invoke-static {p1}, Lahz;->a(Ljava/lang/Object;)Landroidx/lifecycle/r;

    move-result-object p1

    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 580
    check-cast p1, Layj$d;

    invoke-virtual {p0, p1}, Layj$8;->a(Layj$d;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method
