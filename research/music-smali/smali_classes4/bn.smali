.class public Lbn;
.super Lbk;
.source "VirtualLayout.java"


# instance fields
.field protected a:Lbq$a;

.field aA:Lbq$b;

.field private aB:I

.field private aC:I

.field private aD:I

.field private aE:I

.field private aF:I

.field private aG:I

.field private aH:I

.field private aI:I

.field private aJ:Z

.field private aK:I

.field private aL:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lbk;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lbn;->aB:I

    .line 31
    iput v0, p0, Lbn;->aC:I

    .line 32
    iput v0, p0, Lbn;->aD:I

    .line 33
    iput v0, p0, Lbn;->aE:I

    .line 34
    iput v0, p0, Lbn;->aF:I

    .line 35
    iput v0, p0, Lbn;->aG:I

    .line 36
    iput v0, p0, Lbn;->aH:I

    .line 37
    iput v0, p0, Lbn;->aI:I

    .line 39
    iput-boolean v0, p0, Lbn;->aJ:Z

    .line 40
    iput v0, p0, Lbn;->aK:I

    .line 41
    iput v0, p0, Lbn;->aL:I

    .line 43
    new-instance v0, Lbq$a;

    invoke-direct {v0}, Lbq$a;-><init>()V

    iput-object v0, p0, Lbn;->a:Lbq$a;

    const/4 v0, 0x0

    .line 204
    iput-object v0, p0, Lbn;->aA:Lbq$b;

    return-void
.end method


# virtual methods
.method public a(Lbg;)V
    .locals 0

    .line 128
    invoke-virtual {p0}, Lbn;->i()V

    return-void
.end method

.method protected a(Z)V
    .locals 0

    .line 111
    iput-boolean p1, p0, Lbn;->aJ:Z

    return-void
.end method

.method public a(Ljava/util/HashSet;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lbf;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 225
    :goto_0
    iget v2, p0, Lbn;->az:I

    if-ge v1, v2, :cond_1

    .line 226
    iget-object v2, p0, Lbn;->ay:[Lbf;

    aget-object v2, v2, v1

    .line 227
    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public b()I
    .locals 1

    .line 98
    iget v0, p0, Lbn;->aB:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 100
    iget v0, p0, Lbn;->aC:I

    return v0
.end method

.method public f()I
    .locals 1

    .line 102
    iget v0, p0, Lbn;->aH:I

    return v0
.end method

.method public g()I
    .locals 1

    .line 104
    iget v0, p0, Lbn;->aI:I

    return v0
.end method

.method public h()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lbn;->aJ:Z

    return v0
.end method

.method public i()V
    .locals 3

    const/4 v0, 0x0

    .line 132
    :goto_0
    iget v1, p0, Lbn;->az:I

    if-ge v0, v1, :cond_1

    .line 133
    iget-object v1, p0, Lbn;->ay:[Lbf;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 135
    invoke-virtual {v1, v2}, Lbf;->b(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
