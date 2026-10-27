.class Lcim$a;
.super Lcil$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final e:[I

.field private final f:[[I

.field private final g:Lcim;


# direct methods
.method constructor <init>(Lcim;II)V
    .locals 1

    iput-object p1, p0, Lcim$a;->g:Lcim;

    invoke-direct {p0, p1}, Lcil$a;-><init>(Lcil;)V

    const/4 p1, 0x1

    shl-int p2, p1, p2

    new-array v0, p2, [I

    iput-object v0, p0, Lcim$a;->e:[I

    add-int/lit8 p3, p3, -0x2

    add-int/2addr p3, p1

    const/16 p1, 0x10

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    filled-new-array {p2, p1}, [I

    move-result-object p1

    const-class p2, I

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    iput-object p1, p0, Lcim$a;->f:[[I

    return-void
.end method

.method private a(I)V
    .locals 9

    iget-object v0, p0, Lcim$a;->a:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    invoke-static {v0, v1}, Lcis;->a(II)I

    move-result v0

    move v2, v1

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcim$a;->f:[[I

    aget-object v3, v3, p1

    iget-object v4, p0, Lcim$a;->b:[[S

    aget-object v4, v4, p1

    invoke-static {v4, v2}, Lcis;->b([SI)I

    move-result v4

    add-int/2addr v4, v0

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcim$a;->a:[S

    aget-short v0, v0, v1

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcis;->a(II)I

    move-result v0

    iget-object v5, p0, Lcim$a;->a:[S

    aget-short v5, v5, v4

    invoke-static {v5, v1}, Lcis;->a(II)I

    move-result v1

    :goto_1
    const/16 v5, 0x10

    if-ge v2, v5, :cond_1

    iget-object v5, p0, Lcim$a;->f:[[I

    aget-object v5, v5, p1

    add-int v6, v0, v1

    iget-object v7, p0, Lcim$a;->c:[[S

    aget-object v7, v7, p1

    add-int/lit8 v8, v2, -0x8

    invoke-static {v7, v8}, Lcis;->b([SI)I

    move-result v7

    add-int/2addr v6, v7

    aput v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcim$a;->a:[S

    aget-short v1, v1, v4

    invoke-static {v1, v4}, Lcis;->a(II)I

    move-result v1

    :goto_2
    iget-object v4, p0, Lcim$a;->f:[[I

    aget-object v5, v4, p1

    array-length v5, v5

    if-ge v2, v5, :cond_2

    aget-object v4, v4, p1

    add-int v5, v0, v1

    iget-object v6, p0, Lcim$a;->d:[S

    add-int/lit8 v7, v2, -0x8

    sub-int/2addr v7, v3

    invoke-static {v6, v7}, Lcis;->b([SI)I

    move-result v6

    add-int/2addr v5, v6

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    invoke-super {p0}, Lcil$a;->a()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcim$a;->e:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method a(II)V
    .locals 5

    add-int/lit8 p1, p1, -0x2

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcim$a;->g:Lcim;

    invoke-static {v0}, Lcim;->a(Lcim;)Lcis;

    move-result-object v0

    iget-object v3, p0, Lcim$a;->a:[S

    invoke-virtual {v0, v3, v1, v1}, Lcis;->a([SII)V

    iget-object v0, p0, Lcim$a;->g:Lcim;

    invoke-static {v0}, Lcim;->a(Lcim;)Lcis;

    move-result-object v0

    iget-object v1, p0, Lcim$a;->b:[[S

    aget-object v1, v1, p2

    invoke-virtual {v0, v1, p1}, Lcis;->a([SI)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcim$a;->g:Lcim;

    invoke-static {v3}, Lcim;->a(Lcim;)Lcis;

    move-result-object v3

    iget-object v4, p0, Lcim$a;->a:[S

    invoke-virtual {v3, v4, v1, v2}, Lcis;->a([SII)V

    add-int/lit8 p1, p1, -0x8

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcim$a;->g:Lcim;

    invoke-static {v0}, Lcim;->a(Lcim;)Lcis;

    move-result-object v0

    iget-object v3, p0, Lcim$a;->a:[S

    invoke-virtual {v0, v3, v2, v1}, Lcis;->a([SII)V

    iget-object v0, p0, Lcim$a;->g:Lcim;

    invoke-static {v0}, Lcim;->a(Lcim;)Lcis;

    move-result-object v0

    iget-object v1, p0, Lcim$a;->c:[[S

    aget-object v1, v1, p2

    invoke-virtual {v0, v1, p1}, Lcis;->a([SI)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcim$a;->g:Lcim;

    invoke-static {v1}, Lcim;->a(Lcim;)Lcis;

    move-result-object v1

    iget-object v3, p0, Lcim$a;->a:[S

    invoke-virtual {v1, v3, v2, v2}, Lcis;->a([SII)V

    iget-object v1, p0, Lcim$a;->g:Lcim;

    invoke-static {v1}, Lcim;->a(Lcim;)Lcis;

    move-result-object v1

    iget-object v3, p0, Lcim$a;->d:[S

    sub-int/2addr p1, v0

    invoke-virtual {v1, v3, p1}, Lcis;->a([SI)V

    :goto_0
    iget-object p1, p0, Lcim$a;->e:[I

    aget v0, p1, p2

    sub-int/2addr v0, v2

    aput v0, p1, p2

    return-void
.end method

.method b(II)I
    .locals 1

    iget-object v0, p0, Lcim$a;->f:[[I

    aget-object p2, v0, p2

    add-int/lit8 p1, p1, -0x2

    aget p1, p2, p1

    return p1
.end method

.method b()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcim$a;->e:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget v2, v1, v0

    if-gtz v2, :cond_0

    const/16 v2, 0x20

    aput v2, v1, v0

    invoke-direct {p0, v0}, Lcim$a;->a(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
