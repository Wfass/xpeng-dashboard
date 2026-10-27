.class public Laxr;
.super Ljava/lang/Object;
.source "LiveDataUtils.java"


# direct methods
.method public static a(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/s;)V
    .locals 2

    const-wide/16 v0, 0x1388

    .line 13
    invoke-static {p0, p1, v0, v1}, Laxr;->a(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/s;J)V

    return-void
.end method

.method public static a(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/s;J)V
    .locals 1

    .line 17
    new-instance v0, Laxr$1;

    invoke-direct {v0, p0, p1}, Laxr$1;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/s;)V

    invoke-static {v0, p2, p3}, Lbql;->b(Ljava/lang/Runnable;J)V

    return-void
.end method
