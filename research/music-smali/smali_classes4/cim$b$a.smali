.class Lcim$b$a;
.super Lcil$b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcim$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final b:Lcim$b;


# direct methods
.method private constructor <init>(Lcim$b;)V
    .locals 0

    iput-object p1, p0, Lcim$b$a;->b:Lcim$b;

    invoke-direct {p0, p1}, Lcil$b$a;-><init>(Lcil$b;)V

    return-void
.end method

.method constructor <init>(Lcim$b;Lcim$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcim$b$a;-><init>(Lcim$b;)V

    return-void
.end method


# virtual methods
.method a(I)I
    .locals 4

    or-int/lit16 p1, p1, 0x100

    const/4 v0, 0x0

    :cond_0
    ushr-int/lit8 v1, p1, 0x8

    ushr-int/lit8 v2, p1, 0x7

    and-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcim$b$a;->a:[S

    aget-short v1, v3, v1

    invoke-static {v1, v2}, Lcis;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    shl-int/lit8 p1, p1, 0x1

    const/high16 v1, 0x10000

    if-lt p1, v1, :cond_0

    return v0
.end method

.method a(II)I
    .locals 5

    const/16 v0, 0x100

    or-int/2addr p1, v0

    const/4 v1, 0x0

    :cond_0
    shl-int/lit8 p2, p2, 0x1

    and-int v2, p2, v0

    add-int/2addr v2, v0

    ushr-int/lit8 v3, p1, 0x8

    add-int/2addr v2, v3

    ushr-int/lit8 v3, p1, 0x7

    and-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcim$b$a;->a:[S

    aget-short v2, v4, v2

    invoke-static {v2, v3}, Lcis;->a(II)I

    move-result v2

    add-int/2addr v1, v2

    shl-int/lit8 p1, p1, 0x1

    xor-int v2, p2, p1

    not-int v2, v2

    and-int/2addr v0, v2

    const/high16 v2, 0x10000

    if-lt p1, v2, :cond_0

    return v1
.end method

.method b()V
    .locals 8

    iget-object v0, p0, Lcim$b$a;->b:Lcim$b;

    invoke-static {v0}, Lcim$b;->a(Lcim$b;)Lcim;

    move-result-object v0

    iget-object v0, v0, Lcim;->m:Lcij;

    iget-object v1, p0, Lcim$b$a;->b:Lcim$b;

    invoke-static {v1}, Lcim$b;->a(Lcim$b;)Lcim;

    move-result-object v1

    iget v1, v1, Lcim;->s:I

    invoke-virtual {v0, v1}, Lcij;->c(I)I

    move-result v0

    const/16 v1, 0x100

    or-int/2addr v0, v1

    iget-object v2, p0, Lcim$b$a;->b:Lcim$b;

    invoke-static {v2}, Lcim$b;->a(Lcim$b;)Lcim;

    move-result-object v2

    iget-object v2, v2, Lcim;->c:Lciq;

    invoke-virtual {v2}, Lciq;->g()Z

    move-result v2

    const/high16 v3, 0x10000

    if-eqz v2, :cond_1

    :cond_0
    ushr-int/lit8 v1, v0, 0x8

    ushr-int/lit8 v2, v0, 0x7

    and-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Lcim$b$a;->b:Lcim$b;

    invoke-static {v4}, Lcim$b;->a(Lcim$b;)Lcim;

    move-result-object v4

    invoke-static {v4}, Lcim;->a(Lcim;)Lcis;

    move-result-object v4

    iget-object v5, p0, Lcim$b$a;->a:[S

    invoke-virtual {v4, v5, v1, v2}, Lcis;->a([SII)V

    shl-int/lit8 v0, v0, 0x1

    if-lt v0, v3, :cond_0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcim$b$a;->b:Lcim$b;

    invoke-static {v2}, Lcim$b;->a(Lcim$b;)Lcim;

    move-result-object v2

    iget-object v2, v2, Lcim;->m:Lcij;

    iget-object v4, p0, Lcim$b$a;->b:Lcim$b;

    invoke-static {v4}, Lcim$b;->a(Lcim$b;)Lcim;

    move-result-object v4

    iget-object v4, v4, Lcim;->b:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcim$b$a;->b:Lcim$b;

    invoke-static {v5}, Lcim$b;->a(Lcim$b;)Lcim;

    move-result-object v5

    iget v5, v5, Lcim;->s:I

    add-int/2addr v4, v5

    invoke-virtual {v2, v4}, Lcij;->c(I)I

    move-result v2

    :cond_2
    shl-int/lit8 v2, v2, 0x1

    and-int v4, v2, v1

    add-int/2addr v4, v1

    ushr-int/lit8 v5, v0, 0x8

    add-int/2addr v4, v5

    ushr-int/lit8 v5, v0, 0x7

    and-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lcim$b$a;->b:Lcim$b;

    invoke-static {v6}, Lcim$b;->a(Lcim$b;)Lcim;

    move-result-object v6

    invoke-static {v6}, Lcim;->a(Lcim;)Lcis;

    move-result-object v6

    iget-object v7, p0, Lcim$b$a;->a:[S

    invoke-virtual {v6, v7, v4, v5}, Lcis;->a([SII)V

    shl-int/lit8 v0, v0, 0x1

    xor-int v4, v2, v0

    not-int v4, v4

    and-int/2addr v1, v4

    if-lt v0, v3, :cond_2

    :goto_0
    iget-object v0, p0, Lcim$b$a;->b:Lcim$b;

    invoke-static {v0}, Lcim$b;->a(Lcim$b;)Lcim;

    move-result-object v0

    iget-object v0, v0, Lcim;->c:Lciq;

    invoke-virtual {v0}, Lciq;->c()V

    return-void
.end method
