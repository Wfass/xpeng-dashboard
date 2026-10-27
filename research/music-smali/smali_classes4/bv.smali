.class Lbv;
.super Lbu;
.source "DimensionDependency.java"


# instance fields
.field public m:I


# direct methods
.method public constructor <init>(Lce;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lbu;-><init>(Lce;)V

    .line 25
    instance-of p1, p1, Lca;

    if-eqz p1, :cond_0

    .line 26
    sget-object p1, Lbu$a;->HORIZONTAL_DIMENSION:Lbu$a;

    iput-object p1, p0, Lbv;->e:Lbu$a;

    goto :goto_0

    .line 28
    :cond_0
    sget-object p1, Lbu$a;->VERTICAL_DIMENSION:Lbu$a;

    iput-object p1, p0, Lbv;->e:Lbu$a;

    :goto_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 33
    iget-boolean v0, p0, Lbv;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lbv;->j:Z

    .line 37
    iput p1, p0, Lbv;->g:I

    .line 38
    iget-object p1, p0, Lbv;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbs;

    .line 39
    invoke-interface {v0, v0}, Lbs;->a(Lbs;)V

    goto :goto_0

    :cond_1
    return-void
.end method
