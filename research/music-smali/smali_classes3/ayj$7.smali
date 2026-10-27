.class Layj$7;
.super Ljava/lang/Object;
.source "PlaybackViewModel.java"

# interfaces
.implements Landroidx/lifecycle/s;


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
        "Landroidx/lifecycle/s<",
        "Lcom/android/car/media/common/source/a$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Layj;


# direct methods
.method constructor <init>(Layj;)V
    .locals 0

    .line 553
    iput-object p1, p0, Layj$7;->a:Layj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/car/media/common/source/a$b;)V
    .locals 1

    .line 556
    iget-object v0, p0, Layj$7;->a:Layj;

    invoke-static {v0}, Layj;->b(Layj;)Layj$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Layj$b;->a(Lcom/android/car/media/common/source/a$b;)V

    return-void
.end method

.method public synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 553
    check-cast p1, Lcom/android/car/media/common/source/a$b;

    invoke-virtual {p0, p1}, Layj$7;->a(Lcom/android/car/media/common/source/a$b;)V

    return-void
.end method
