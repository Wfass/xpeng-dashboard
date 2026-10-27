.class Laid$1;
.super Ljava/lang/Object;
.source "AospPlaybackViewModel.java"

# interfaces
.implements Landroidx/lifecycle/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laid;
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
.field final synthetic a:Laid;


# direct methods
.method constructor <init>(Laid;)V
    .locals 0

    .line 133
    iput-object p1, p0, Laid$1;->a:Laid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/car/media/common/source/a$b;)V
    .locals 1

    .line 136
    iget-object v0, p0, Laid$1;->a:Laid;

    invoke-static {v0}, Laid;->a(Laid;)Laid$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Laid$b;->a(Lcom/android/car/media/common/source/a$b;)V

    return-void
.end method

.method public synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 133
    check-cast p1, Lcom/android/car/media/common/source/a$b;

    invoke-virtual {p0, p1}, Laid$1;->a(Lcom/android/car/media/common/source/a$b;)V

    return-void
.end method
