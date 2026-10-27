.class public Lahz;
.super Ljava/lang/Object;
.source "LiveDataFunctions.java"


# direct methods
.method public static a(Landroidx/lifecycle/LiveData;Ljava/lang/Object;Lz;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;TR;",
            "Lz<",
            "TT;TR;>;)",
            "Landroidx/lifecycle/LiveData<",
            "TR;>;"
        }
    .end annotation

    .line 86
    new-instance v0, L-$$Lambda$ahz$xj9AxIWGhq81PXY1SkjaN6FJLCA;

    invoke-direct {v0, p1, p2}, L-$$Lambda$ahz$xj9AxIWGhq81PXY1SkjaN6FJLCA;-><init>(Ljava/lang/Object;Lz;)V

    invoke-static {p0, v0}, Landroidx/lifecycle/y;->a(Landroidx/lifecycle/LiveData;Lz;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroidx/lifecycle/LiveData;Lz;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;",
            "Lz<",
            "TT;TR;>;)",
            "Landroidx/lifecycle/LiveData<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 77
    invoke-static {p0, v0, p1}, Lahz;->a(Landroidx/lifecycle/LiveData;Ljava/lang/Object;Lz;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Object;)Landroidx/lifecycle/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Landroidx/lifecycle/r<",
            "TT;>;"
        }
    .end annotation

    .line 66
    new-instance v0, Landroidx/lifecycle/r;

    invoke-direct {v0}, Landroidx/lifecycle/r;-><init>()V

    .line 67
    invoke-virtual {v0, p0}, Landroidx/lifecycle/r;->b(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static synthetic a(Ljava/lang/Object;Lz;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p2, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    invoke-interface {p1, p2}, Lz;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static synthetic lambda$xj9AxIWGhq81PXY1SkjaN6FJLCA(Ljava/lang/Object;Lz;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lahz;->a(Ljava/lang/Object;Lz;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
