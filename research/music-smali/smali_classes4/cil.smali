.class abstract Lcil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcil$a;,
        Lcil$b;
    }
.end annotation


# instance fields
.field final a:I

.field final b:[I

.field final c:Lciq;

.field final d:[[S

.field final e:[S

.field final f:[S

.field final g:[S

.field final h:[S

.field final i:[[S

.field final j:[[S

.field final k:[[S

.field final l:[S


# direct methods
.method constructor <init>(I)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Lcil;->b:[I

    new-instance v1, Lciq;

    invoke-direct {v1}, Lciq;-><init>()V

    iput-object v1, p0, Lcil;->c:Lciq;

    const/16 v1, 0x10

    const/16 v2, 0xc

    filled-new-array {v2, v1}, [I

    move-result-object v3

    const-class v4, S

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[S

    iput-object v3, p0, Lcil;->d:[[S

    new-array v3, v2, [S

    iput-object v3, p0, Lcil;->e:[S

    new-array v3, v2, [S

    iput-object v3, p0, Lcil;->f:[S

    new-array v3, v2, [S

    iput-object v3, p0, Lcil;->g:[S

    new-array v3, v2, [S

    iput-object v3, p0, Lcil;->h:[S

    filled-new-array {v2, v1}, [I

    move-result-object v2

    const-class v3, S

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[S

    iput-object v2, p0, Lcil;->i:[[S

    const/16 v2, 0x40

    filled-new-array {v0, v2}, [I

    move-result-object v2

    const-class v3, S

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[S

    iput-object v2, p0, Lcil;->j:[[S

    const/16 v2, 0xa

    new-array v2, v2, [[S

    const/4 v3, 0x2

    new-array v4, v3, [S

    const/4 v5, 0x0

    aput-object v4, v2, v5

    new-array v4, v3, [S

    const/4 v5, 0x1

    aput-object v4, v2, v5

    new-array v4, v0, [S

    aput-object v4, v2, v3

    new-array v3, v0, [S

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const/16 v3, 0x8

    new-array v4, v3, [S

    aput-object v4, v2, v0

    new-array v0, v3, [S

    const/4 v4, 0x5

    aput-object v0, v2, v4

    new-array v0, v1, [S

    const/4 v4, 0x6

    aput-object v0, v2, v4

    new-array v0, v1, [S

    const/4 v4, 0x7

    aput-object v0, v2, v4

    const/16 v0, 0x20

    new-array v4, v0, [S

    aput-object v4, v2, v3

    new-array v0, v0, [S

    const/16 v3, 0x9

    aput-object v0, v2, v3

    iput-object v2, p0, Lcil;->k:[[S

    new-array v0, v1, [S

    iput-object v0, p0, Lcil;->l:[S

    shl-int p1, v5, p1

    sub-int/2addr p1, v5

    iput p1, p0, Lcil;->a:I

    return-void
.end method

.method static final a(I)I
    .locals 1

    const/4 v0, 0x6

    if-ge p0, v0, :cond_0

    add-int/lit8 p0, p0, -0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method


# virtual methods
.method a()V
    .locals 4

    iget-object v0, p0, Lcil;->b:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    iget-object v0, p0, Lcil;->c:Lciq;

    invoke-virtual {v0}, Lciq;->a()V

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcil;->d:[[S

    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v2, v2, v0

    invoke-static {v2}, Lcir;->a([S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcil;->e:[S

    invoke-static {v0}, Lcir;->a([S)V

    iget-object v0, p0, Lcil;->f:[S

    invoke-static {v0}, Lcir;->a([S)V

    iget-object v0, p0, Lcil;->g:[S

    invoke-static {v0}, Lcir;->a([S)V

    iget-object v0, p0, Lcil;->h:[S

    invoke-static {v0}, Lcir;->a([S)V

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcil;->i:[[S

    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v2, v2, v0

    invoke-static {v2}, Lcir;->a([S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_2
    iget-object v2, p0, Lcil;->j:[[S

    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v2, v2, v0

    invoke-static {v2}, Lcir;->a([S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    iget-object v0, p0, Lcil;->k:[[S

    array-length v2, v0

    if-ge v1, v2, :cond_3

    aget-object v0, v0, v1

    invoke-static {v0}, Lcir;->a([S)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcil;->l:[S

    invoke-static {v0}, Lcir;->a([S)V

    return-void
.end method
