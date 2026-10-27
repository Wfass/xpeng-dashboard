.class Landroidx/lifecycle/y$2$1;
.super Ljava/lang/Object;
.source "Transformations.java"

# interfaces
.implements Landroidx/lifecycle/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/y$2;->onChanged(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/s<",
        "TY;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/lifecycle/y$2;


# direct methods
.method constructor <init>(Landroidx/lifecycle/y$2;)V
    .locals 0

    .line 152
    iput-object p1, p0, Landroidx/lifecycle/y$2$1;->a:Landroidx/lifecycle/y$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TY;)V"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Landroidx/lifecycle/y$2$1;->a:Landroidx/lifecycle/y$2;

    iget-object v0, v0, Landroidx/lifecycle/y$2;->c:Landroidx/lifecycle/p;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/p;->b(Ljava/lang/Object;)V

    return-void
.end method
