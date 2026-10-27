.class public Landroidx/lifecycle/y;
.super Ljava/lang/Object;
.source "Transformations.java"


# direct methods
.method public static a(Landroidx/lifecycle/LiveData;Lz;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData<",
            "TX;>;",
            "Lz<",
            "TX;TY;>;)",
            "Landroidx/lifecycle/LiveData<",
            "TY;>;"
        }
    .end annotation

    .line 72
    new-instance v0, Landroidx/lifecycle/p;

    invoke-direct {v0}, Landroidx/lifecycle/p;-><init>()V

    .line 73
    new-instance v1, Landroidx/lifecycle/y$1;

    invoke-direct {v1, v0, p1}, Landroidx/lifecycle/y$1;-><init>(Landroidx/lifecycle/p;Lz;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/p;->a(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/s;)V

    return-object v0
.end method

.method public static b(Landroidx/lifecycle/LiveData;Lz;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData<",
            "TX;>;",
            "Lz<",
            "TX;",
            "Landroidx/lifecycle/LiveData<",
            "TY;>;>;)",
            "Landroidx/lifecycle/LiveData<",
            "TY;>;"
        }
    .end annotation

    .line 137
    new-instance v0, Landroidx/lifecycle/p;

    invoke-direct {v0}, Landroidx/lifecycle/p;-><init>()V

    .line 138
    new-instance v1, Landroidx/lifecycle/y$2;

    invoke-direct {v1, p1, v0}, Landroidx/lifecycle/y$2;-><init>(Lz;Landroidx/lifecycle/p;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/p;->a(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/s;)V

    return-object v0
.end method
