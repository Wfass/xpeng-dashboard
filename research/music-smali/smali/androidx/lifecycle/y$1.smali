.class final Landroidx/lifecycle/y$1;
.super Ljava/lang/Object;
.source "Transformations.java"

# interfaces
.implements Landroidx/lifecycle/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/y;->a(Landroidx/lifecycle/LiveData;Lz;)Landroidx/lifecycle/LiveData;
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
.field final synthetic a:Landroidx/lifecycle/p;

.field final synthetic b:Lz;


# direct methods
.method constructor <init>(Landroidx/lifecycle/p;Lz;)V
    .locals 0

    .line 73
    iput-object p1, p0, Landroidx/lifecycle/y$1;->a:Landroidx/lifecycle/p;

    iput-object p2, p0, Landroidx/lifecycle/y$1;->b:Lz;

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

    .line 76
    iget-object v0, p0, Landroidx/lifecycle/y$1;->a:Landroidx/lifecycle/p;

    iget-object v1, p0, Landroidx/lifecycle/y$1;->b:Lz;

    invoke-interface {v1, p1}, Lz;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/p;->b(Ljava/lang/Object;)V

    return-void
.end method
