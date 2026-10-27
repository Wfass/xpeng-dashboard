.class public Lbl;
.super Ljava/lang/Object;
.source "Optimizer.java"


# static fields
.field static a:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    .line 52
    new-array v0, v0, [Z

    sput-object v0, Lbl;->a:[Z

    return-void
.end method

.method static a(Lbg;Laf;Lbf;)V
    .locals 5

    const/4 v0, -0x1

    .line 65
    iput v0, p2, Lbf;->l:I

    .line 66
    iput v0, p2, Lbf;->m:I

    .line 67
    iget-object v0, p0, Lbg;->K:[Lbf$a;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v2, Lbf$a;->WRAP_CONTENT:Lbf$a;

    const/4 v3, 0x2

    if-eq v0, v2, :cond_0

    iget-object v0, p2, Lbf;->K:[Lbf$a;

    aget-object v0, v0, v1

    sget-object v1, Lbf$a;->MATCH_PARENT:Lbf$a;

    if-ne v0, v1, :cond_0

    .line 70
    iget-object v0, p2, Lbf;->A:Lbe;

    iget v0, v0, Lbe;->d:I

    .line 71
    invoke-virtual {p0}, Lbg;->F()I

    move-result v1

    iget-object v2, p2, Lbf;->C:Lbe;

    iget v2, v2, Lbe;->d:I

    sub-int/2addr v1, v2

    .line 73
    iget-object v2, p2, Lbf;->A:Lbe;

    iget-object v4, p2, Lbf;->A:Lbe;

    invoke-virtual {p1, v4}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v4

    iput-object v4, v2, Lbe;->f:Laj;

    .line 74
    iget-object v2, p2, Lbf;->C:Lbe;

    iget-object v4, p2, Lbf;->C:Lbe;

    invoke-virtual {p1, v4}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v4

    iput-object v4, v2, Lbe;->f:Laj;

    .line 75
    iget-object v2, p2, Lbf;->A:Lbe;

    iget-object v2, v2, Lbe;->f:Laj;

    invoke-virtual {p1, v2, v0}, Laf;->a(Laj;I)V

    .line 76
    iget-object v2, p2, Lbf;->C:Lbe;

    iget-object v2, v2, Lbe;->f:Laj;

    invoke-virtual {p1, v2, v1}, Laf;->a(Laj;I)V

    .line 77
    iput v3, p2, Lbf;->l:I

    .line 78
    invoke-virtual {p2, v0, v1}, Lbf;->f(II)V

    .line 80
    :cond_0
    iget-object v0, p0, Lbg;->K:[Lbf$a;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v2, Lbf$a;->WRAP_CONTENT:Lbf$a;

    if-eq v0, v2, :cond_3

    iget-object v0, p2, Lbf;->K:[Lbf$a;

    aget-object v0, v0, v1

    sget-object v1, Lbf$a;->MATCH_PARENT:Lbf$a;

    if-ne v0, v1, :cond_3

    .line 83
    iget-object v0, p2, Lbf;->B:Lbe;

    iget v0, v0, Lbe;->d:I

    .line 84
    invoke-virtual {p0}, Lbg;->G()I

    move-result p0

    iget-object v1, p2, Lbf;->D:Lbe;

    iget v1, v1, Lbe;->d:I

    sub-int/2addr p0, v1

    .line 86
    iget-object v1, p2, Lbf;->B:Lbe;

    iget-object v2, p2, Lbf;->B:Lbe;

    invoke-virtual {p1, v2}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v2

    iput-object v2, v1, Lbe;->f:Laj;

    .line 87
    iget-object v1, p2, Lbf;->D:Lbe;

    iget-object v2, p2, Lbf;->D:Lbe;

    invoke-virtual {p1, v2}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v2

    iput-object v2, v1, Lbe;->f:Laj;

    .line 88
    iget-object v1, p2, Lbf;->B:Lbe;

    iget-object v1, v1, Lbe;->f:Laj;

    invoke-virtual {p1, v1, v0}, Laf;->a(Laj;I)V

    .line 89
    iget-object v1, p2, Lbf;->D:Lbe;

    iget-object v1, v1, Lbe;->f:Laj;

    invoke-virtual {p1, v1, p0}, Laf;->a(Laj;I)V

    .line 90
    iget v1, p2, Lbf;->W:I

    if-gtz v1, :cond_1

    invoke-virtual {p2}, Lbf;->B()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 91
    :cond_1
    iget-object v1, p2, Lbf;->E:Lbe;

    iget-object v2, p2, Lbf;->E:Lbe;

    invoke-virtual {p1, v2}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v2

    iput-object v2, v1, Lbe;->f:Laj;

    .line 92
    iget-object v1, p2, Lbf;->E:Lbe;

    iget-object v1, v1, Lbe;->f:Laj;

    iget v2, p2, Lbf;->W:I

    add-int/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Laf;->a(Laj;I)V

    .line 94
    :cond_2
    iput v3, p2, Lbf;->m:I

    .line 95
    invoke-virtual {p2, v0, p0}, Lbf;->g(II)V

    :cond_3
    return-void
.end method

.method public static final a(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
