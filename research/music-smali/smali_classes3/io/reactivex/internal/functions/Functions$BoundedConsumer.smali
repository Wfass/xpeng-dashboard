.class public Lio/reactivex/internal/functions/Functions$BoundedConsumer;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/functions/Functions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BoundedConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lchk;",
        ">;"
    }
.end annotation


# instance fields
.field final bufferSize:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 759
    iput p1, p0, Lio/reactivex/internal/functions/Functions$BoundedConsumer;->bufferSize:I

    return-void
.end method


# virtual methods
.method public accept(Lchk;)V
    .locals 2

    .line 764
    iget v0, p0, Lio/reactivex/internal/functions/Functions$BoundedConsumer;->bufferSize:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lchk;->request(J)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 754
    check-cast p1, Lchk;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/functions/Functions$BoundedConsumer;->accept(Lchk;)V

    return-void
.end method
