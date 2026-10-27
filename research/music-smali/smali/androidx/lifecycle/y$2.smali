.class final Landroidx/lifecycle/y$2;
.super Ljava/lang/Object;
.source "Transformations.java"

# interfaces
.implements Landroidx/lifecycle/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/y;->b(Landroidx/lifecycle/LiveData;Lz;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/s<",
        "TX;>;"
    }
.end annotation


# instance fields
.field a:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "TY;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lz;

.field final synthetic c:Landroidx/lifecycle/p;


# direct methods
.method constructor <init>(Lz;Landroidx/lifecycle/p;)V
    .locals 0

    .line 138
    iput-object p1, p0, Landroidx/lifecycle/y$2;->b:Lz;

    iput-object p2, p0, Landroidx/lifecycle/y$2;->c:Landroidx/lifecycle/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;)V"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Landroidx/lifecycle/y$2;->b:Lz;

    invoke-interface {v0, p1}, Lz;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 144
    iget-object v0, p0, Landroidx/lifecycle/y$2;->a:Landroidx/lifecycle/LiveData;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 148
    iget-object v1, p0, Landroidx/lifecycle/y$2;->c:Landroidx/lifecycle/p;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/p;->a(Landroidx/lifecycle/LiveData;)V

    .line 150
    :cond_1
    iput-object p1, p0, Landroidx/lifecycle/y$2;->a:Landroidx/lifecycle/LiveData;

    .line 151
    iget-object p1, p0, Landroidx/lifecycle/y$2;->a:Landroidx/lifecycle/LiveData;

    if-eqz p1, :cond_2

    .line 152
    iget-object v0, p0, Landroidx/lifecycle/y$2;->c:Landroidx/lifecycle/p;

    new-instance v1, Landroidx/lifecycle/y$2$1;

    invoke-direct {v1, p0}, Landroidx/lifecycle/y$2$1;-><init>(Landroidx/lifecycle/y$2;)V

    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/p;->a(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/s;)V

    :cond_2
    return-void
.end method
