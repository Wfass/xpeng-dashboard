.class public abstract Lcim;
.super Lcil;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcim$a;,
        Lcim$b;
    }
.end annotation


# static fields
.field static final t:Z

.field static u:Ljava/lang/Class;


# instance fields
.field private final A:[[I

.field private final B:[I

.field private C:I

.field final m:Lcij;

.field final n:Lcim$b;

.field final o:Lcim$a;

.field final p:Lcim$a;

.field final q:I

.field r:I

.field s:I

.field private final v:Lcis;

.field private w:I

.field private x:I

.field private final y:I

.field private final z:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcim;->u:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "cim"

    invoke-static {v0}, Lcim;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcim;->u:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcim;->t:Z

    return-void
.end method

.method constructor <init>(Lcis;Lcij;IIIII)V
    .locals 4

    invoke-direct {p0, p5}, Lcil;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcim;->w:I

    iput v0, p0, Lcim;->x:I

    const/4 v1, 0x4

    const/16 v2, 0x80

    filled-new-array {v1, v2}, [I

    move-result-object v2

    const-class v3, I

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, p0, Lcim;->A:[[I

    const/16 v2, 0x10

    new-array v2, v2, [I

    iput-object v2, p0, Lcim;->B:[I

    iput v0, p0, Lcim;->r:I

    const/4 v2, -0x1

    iput v2, p0, Lcim;->s:I

    iput v0, p0, Lcim;->C:I

    iput-object p1, p0, Lcim;->v:Lcis;

    iput-object p2, p0, Lcim;->m:Lcij;

    iput p7, p0, Lcim;->q:I

    new-instance p1, Lcim$b;

    invoke-direct {p1, p0, p3, p4}, Lcim$b;-><init>(Lcim;II)V

    iput-object p1, p0, Lcim;->n:Lcim$b;

    new-instance p1, Lcim$a;

    invoke-direct {p1, p0, p5, p7}, Lcim$a;-><init>(Lcim;II)V

    iput-object p1, p0, Lcim;->o:Lcim$a;

    new-instance p1, Lcim$a;

    invoke-direct {p1, p0, p5, p7}, Lcim$a;-><init>(Lcim;II)V

    iput-object p1, p0, Lcim;->p:Lcim$a;

    add-int/lit8 p6, p6, -0x1

    invoke-static {p6}, Lcim;->b(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcim;->y:I

    iget p1, p0, Lcim;->y:I

    filled-new-array {v1, p1}, [I

    move-result-object p1

    const-class p2, I

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    iput-object p1, p0, Lcim;->z:[[I

    invoke-virtual {p0}, Lcim;->a()V

    return-void
.end method

.method public static a(Lcis;IIIIIIIII)Lcim;
    .locals 12

    move/from16 v0, p4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Lcio;

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v2 .. v11}, Lcio;-><init>(Lcis;IIIIIIII)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Lcin;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcin;-><init>(Lcis;IIIIIIII)V

    return-object v0
.end method

.method static a(Lcim;)Lcis;
    .locals 0

    iget-object p0, p0, Lcim;->v:Lcis;

    return-object p0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method private a(III)V
    .locals 5

    iget-object v0, p0, Lcim;->c:Lciq;

    invoke-virtual {v0}, Lciq;->d()V

    iget-object v0, p0, Lcim;->o:Lcim$a;

    invoke-virtual {v0, p2, p3}, Lcim$a;->a(II)V

    invoke-static {p1}, Lcim;->b(I)I

    move-result p3

    iget-object v0, p0, Lcim;->v:Lcis;

    iget-object v1, p0, Lcim;->j:[[S

    invoke-static {p2}, Lcim;->a(I)I

    move-result p2

    aget-object p2, v1, p2

    invoke-virtual {v0, p2, p3}, Lcis;->a([SI)V

    const/4 p2, 0x2

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-lt p3, v0, :cond_1

    ushr-int/lit8 v2, p3, 0x1

    sub-int/2addr v2, v1

    and-int/lit8 v3, p3, 0x1

    or-int/2addr v3, p2

    shl-int/2addr v3, v2

    sub-int v3, p1, v3

    const/16 v4, 0xe

    if-ge p3, v4, :cond_0

    iget-object v2, p0, Lcim;->v:Lcis;

    iget-object v4, p0, Lcim;->k:[[S

    sub-int/2addr p3, v0

    aget-object p3, v4, p3

    invoke-virtual {v2, p3, v3}, Lcis;->c([SI)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcim;->v:Lcis;

    ushr-int/lit8 v4, v3, 0x4

    sub-int/2addr v2, v0

    invoke-virtual {p3, v4, v2}, Lcis;->b(II)V

    iget-object p3, p0, Lcim;->v:Lcis;

    iget-object v0, p0, Lcim;->l:[S

    and-int/lit8 v2, v3, 0xf

    invoke-virtual {p3, v0, v2}, Lcis;->c([SI)V

    iget p3, p0, Lcim;->x:I

    sub-int/2addr p3, v1

    iput p3, p0, Lcim;->x:I

    :cond_1
    :goto_0
    iget-object p3, p0, Lcim;->b:[I

    const/4 v0, 0x3

    iget-object v2, p0, Lcim;->b:[I

    aget v2, v2, p2

    aput v2, p3, v0

    iget-object p3, p0, Lcim;->b:[I

    iget-object v0, p0, Lcim;->b:[I

    aget v0, v0, v1

    aput v0, p3, p2

    iget-object p2, p0, Lcim;->b:[I

    iget-object p3, p0, Lcim;->b:[I

    const/4 v0, 0x0

    aget p3, p3, v0

    aput p3, p2, v1

    iget-object p2, p0, Lcim;->b:[I

    aput p1, p2, v0

    iget p1, p0, Lcim;->w:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcim;->w:I

    return-void
.end method

.method public static b(I)I
    .locals 3

    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    return p0

    :cond_0
    const/16 v0, 0x1f

    const/high16 v1, -0x10000

    and-int/2addr v1, p0

    if-nez v1, :cond_1

    shl-int/lit8 v0, p0, 0x10

    const/16 v1, 0xf

    goto :goto_0

    :cond_1
    move v1, v0

    move v0, p0

    :goto_0
    const/high16 v2, -0x1000000

    and-int/2addr v2, v0

    if-nez v2, :cond_2

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, v1, -0x8

    :cond_2
    const/high16 v2, -0x10000000

    and-int/2addr v2, v0

    if-nez v2, :cond_3

    shl-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v1, -0x4

    :cond_3
    const/high16 v2, -0x40000000    # -2.0f

    and-int/2addr v2, v0

    if-nez v2, :cond_4

    shl-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, -0x2

    :cond_4
    const/high16 v2, -0x80000000

    and-int/2addr v0, v2

    if-nez v0, :cond_5

    add-int/lit8 v1, v1, -0x1

    :cond_5
    shl-int/lit8 v0, v1, 0x1

    add-int/lit8 v1, v1, -0x1

    ushr-int/2addr p0, v1

    and-int/lit8 p0, p0, 0x1

    add-int/2addr v0, p0

    return v0
.end method

.method private b(III)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcim;->v:Lcis;

    iget-object v2, p0, Lcim;->f:[S

    iget-object v3, p0, Lcim;->c:Lciq;

    invoke-virtual {v3}, Lciq;->b()I

    move-result v3

    invoke-virtual {p1, v2, v3, v0}, Lcis;->a([SII)V

    iget-object p1, p0, Lcim;->v:Lcis;

    iget-object v2, p0, Lcim;->i:[[S

    iget-object v3, p0, Lcim;->c:Lciq;

    invoke-virtual {v3}, Lciq;->b()I

    move-result v3

    aget-object v2, v2, v3

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v2, p3, v0}, Lcis;->a([SII)V

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcim;->b:[I

    aget v2, v2, p1

    iget-object v3, p0, Lcim;->v:Lcis;

    iget-object v4, p0, Lcim;->f:[S

    iget-object v5, p0, Lcim;->c:Lciq;

    invoke-virtual {v5}, Lciq;->b()I

    move-result v5

    invoke-virtual {v3, v4, v5, v1}, Lcis;->a([SII)V

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcim;->v:Lcis;

    iget-object v3, p0, Lcim;->g:[S

    iget-object v4, p0, Lcim;->c:Lciq;

    invoke-virtual {v4}, Lciq;->b()I

    move-result v4

    invoke-virtual {p1, v3, v4, v0}, Lcis;->a([SII)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcim;->v:Lcis;

    iget-object v4, p0, Lcim;->g:[S

    iget-object v5, p0, Lcim;->c:Lciq;

    invoke-virtual {v5}, Lciq;->b()I

    move-result v5

    invoke-virtual {v3, v4, v5, v1}, Lcis;->a([SII)V

    iget-object v3, p0, Lcim;->v:Lcis;

    iget-object v4, p0, Lcim;->h:[S

    iget-object v5, p0, Lcim;->c:Lciq;

    invoke-virtual {v5}, Lciq;->b()I

    move-result v5

    add-int/lit8 v6, p1, -0x2

    invoke-virtual {v3, v4, v5, v6}, Lcis;->a([SII)V

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne p1, v3, :cond_3

    iget-object p1, p0, Lcim;->b:[I

    iget-object v5, p0, Lcim;->b:[I

    aget v5, v5, v4

    aput v5, p1, v3

    :cond_3
    iget-object p1, p0, Lcim;->b:[I

    iget-object v3, p0, Lcim;->b:[I

    aget v3, v3, v1

    aput v3, p1, v4

    :goto_1
    iget-object p1, p0, Lcim;->b:[I

    iget-object v3, p0, Lcim;->b:[I

    aget v3, v3, v0

    aput v3, p1, v1

    iget-object p1, p0, Lcim;->b:[I

    aput v2, p1, v0

    :goto_2
    if-ne p2, v1, :cond_4

    iget-object p1, p0, Lcim;->c:Lciq;

    invoke-virtual {p1}, Lciq;->f()V

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcim;->p:Lcim$a;

    invoke-virtual {p1, p2, p3}, Lcim$a;->a(II)V

    iget-object p1, p0, Lcim;->c:Lciq;

    invoke-virtual {p1}, Lciq;->e()V

    :goto_3
    return-void
.end method

.method private i()Z
    .locals 6

    sget-boolean v0, Lcim;->t:Z

    const/4 v1, -0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcim;->s:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcim;->m:Lcij;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcij;->b(I)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcim;->c(I)V

    iget-object v3, p0, Lcim;->v:Lcis;

    iget-object v4, p0, Lcim;->d:[[S

    iget-object v5, p0, Lcim;->c:Lciq;

    invoke-virtual {v5}, Lciq;->b()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4, v2, v2}, Lcis;->a([SII)V

    iget-object v2, p0, Lcim;->n:Lcim$b;

    invoke-virtual {v2}, Lcim$b;->b()V

    iget v2, p0, Lcim;->s:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcim;->s:I

    sget-boolean v2, Lcim;->t:Z

    if-nez v2, :cond_4

    iget v2, p0, Lcim;->s:I

    if-ne v2, v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    :goto_1
    iget v1, p0, Lcim;->C:I

    add-int/2addr v1, v0

    iput v1, p0, Lcim;->C:I

    sget-boolean v1, Lcim;->t:Z

    if-nez v1, :cond_6

    iget v1, p0, Lcim;->C:I

    if-ne v1, v0, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    :goto_2
    return v0
.end method

.method private j()Z
    .locals 8

    iget-object v0, p0, Lcim;->m:Lcij;

    iget v1, p0, Lcim;->s:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcij;->b(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcim;->b()I

    move-result v0

    sget-boolean v3, Lcim;->t:Z

    if-nez v3, :cond_2

    iget v3, p0, Lcim;->s:I

    if-ltz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    :goto_0
    iget-object v3, p0, Lcim;->m:Lcij;

    invoke-virtual {v3}, Lcij;->f()I

    move-result v3

    iget v4, p0, Lcim;->s:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcim;->a:I

    and-int/2addr v3, v4

    iget v4, p0, Lcim;->r:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5

    sget-boolean v4, Lcim;->t:Z

    if-nez v4, :cond_4

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    :goto_1
    iget-object v4, p0, Lcim;->v:Lcis;

    iget-object v5, p0, Lcim;->d:[[S

    iget-object v6, p0, Lcim;->c:Lciq;

    invoke-virtual {v6}, Lciq;->b()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5, v3, v1}, Lcis;->a([SII)V

    iget-object v1, p0, Lcim;->n:Lcim$b;

    invoke-virtual {v1}, Lcim$b;->c()V

    goto :goto_4

    :cond_5
    iget-object v4, p0, Lcim;->v:Lcis;

    iget-object v5, p0, Lcim;->d:[[S

    iget-object v6, p0, Lcim;->c:Lciq;

    invoke-virtual {v6}, Lciq;->b()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5, v3, v2}, Lcis;->a([SII)V

    iget v4, p0, Lcim;->r:I

    const/4 v5, 0x4

    if-ge v4, v5, :cond_8

    sget-boolean v1, Lcim;->t:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcim;->m:Lcij;

    iget v4, p0, Lcim;->s:I

    neg-int v4, v4

    iget-object v5, p0, Lcim;->b:[I

    iget v6, p0, Lcim;->r:I

    aget v5, v5, v6

    invoke-virtual {v1, v4, v5, v0}, Lcij;->a(III)I

    move-result v1

    if-ne v1, v0, :cond_6

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7
    :goto_2
    iget-object v1, p0, Lcim;->v:Lcis;

    iget-object v4, p0, Lcim;->e:[S

    iget-object v5, p0, Lcim;->c:Lciq;

    invoke-virtual {v5}, Lciq;->b()I

    move-result v5

    invoke-virtual {v1, v4, v5, v2}, Lcis;->a([SII)V

    iget v1, p0, Lcim;->r:I

    invoke-direct {p0, v1, v0, v3}, Lcim;->b(III)V

    goto :goto_4

    :cond_8
    sget-boolean v6, Lcim;->t:Z

    if-nez v6, :cond_a

    iget-object v6, p0, Lcim;->m:Lcij;

    iget v7, p0, Lcim;->s:I

    neg-int v7, v7

    sub-int/2addr v4, v5

    invoke-virtual {v6, v7, v4, v0}, Lcij;->a(III)I

    move-result v4

    if-ne v4, v0, :cond_9

    goto :goto_3

    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_a
    :goto_3
    iget-object v4, p0, Lcim;->v:Lcis;

    iget-object v6, p0, Lcim;->e:[S

    iget-object v7, p0, Lcim;->c:Lciq;

    invoke-virtual {v7}, Lciq;->b()I

    move-result v7

    invoke-virtual {v4, v6, v7, v1}, Lcis;->a([SII)V

    iget v1, p0, Lcim;->r:I

    sub-int/2addr v1, v5

    invoke-direct {p0, v1, v0, v3}, Lcim;->a(III)V

    :goto_4
    iget v1, p0, Lcim;->s:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcim;->s:I

    iget v1, p0, Lcim;->C:I

    add-int/2addr v1, v0

    iput v1, p0, Lcim;->C:I

    return v2
.end method

.method private k()V
    .locals 14

    const/16 v0, 0x80

    iput v0, p0, Lcim;->w:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0xe

    const/4 v4, 0x4

    if-ge v2, v4, :cond_3

    move v5, v1

    :goto_1
    iget v6, p0, Lcim;->y:I

    if-ge v5, v6, :cond_0

    iget-object v6, p0, Lcim;->z:[[I

    aget-object v6, v6, v2

    iget-object v7, p0, Lcim;->j:[[S

    aget-object v7, v7, v2

    invoke-static {v7, v5}, Lcis;->b([SI)I

    move-result v7

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    :goto_2
    iget v5, p0, Lcim;->y:I

    if-ge v3, v5, :cond_1

    ushr-int/lit8 v5, v3, 0x1

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v4

    iget-object v6, p0, Lcim;->z:[[I

    aget-object v6, v6, v2

    aget v7, v6, v3

    invoke-static {v5}, Lcis;->a(I)I

    move-result v5

    add-int/2addr v7, v5

    aput v7, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    move v3, v1

    :goto_3
    if-ge v3, v4, :cond_2

    iget-object v5, p0, Lcim;->A:[[I

    aget-object v5, v5, v2

    iget-object v6, p0, Lcim;->z:[[I

    aget-object v6, v6, v2

    aget v6, v6, v3

    aput v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v4

    move v5, v2

    :goto_4
    if-ge v2, v3, :cond_6

    ushr-int/lit8 v6, v2, 0x1

    add-int/lit8 v6, v6, -0x1

    and-int/lit8 v7, v2, 0x1

    or-int/lit8 v7, v7, 0x2

    shl-int v6, v7, v6

    iget-object v7, p0, Lcim;->k:[[S

    add-int/lit8 v8, v2, -0x4

    aget-object v7, v7, v8

    array-length v7, v7

    move v9, v5

    move v5, v1

    :goto_5
    if-ge v5, v7, :cond_5

    sub-int v10, v9, v6

    iget-object v11, p0, Lcim;->k:[[S

    aget-object v11, v11, v8

    invoke-static {v11, v10}, Lcis;->d([SI)I

    move-result v10

    move v11, v1

    :goto_6
    if-ge v11, v4, :cond_4

    iget-object v12, p0, Lcim;->A:[[I

    aget-object v12, v12, v11

    iget-object v13, p0, Lcim;->z:[[I

    aget-object v13, v13, v11

    aget v13, v13, v2

    add-int/2addr v13, v10

    aput v13, v12, v9

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_4
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v2, v2, 0x1

    move v5, v9

    goto :goto_4

    :cond_6
    sget-boolean v1, Lcim;->t:Z

    if-nez v1, :cond_8

    if-ne v5, v0, :cond_7

    goto :goto_7

    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_8
    :goto_7
    return-void
.end method

.method private l()V
    .locals 4

    const/16 v0, 0x10

    iput v0, p0, Lcim;->x:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcim;->B:[I

    iget-object v3, p0, Lcim;->l:[S

    invoke-static {v3, v1}, Lcis;->d([SI)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method a(IIII)I
    .locals 1

    iget-object v0, p0, Lcim;->o:Lcim$a;

    invoke-virtual {v0, p3, p4}, Lcim$a;->b(II)I

    move-result p4

    add-int/2addr p1, p4

    invoke-static {p3}, Lcim;->a(I)I

    move-result p3

    const/16 p4, 0x80

    if-ge p2, p4, :cond_0

    iget-object p4, p0, Lcim;->A:[[I

    aget-object p3, p4, p3

    aget p2, p3, p2

    add-int/2addr p1, p2

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcim;->b(I)I

    move-result p4

    iget-object v0, p0, Lcim;->z:[[I

    aget-object p3, v0, p3

    aget p3, p3, p4

    iget-object p4, p0, Lcim;->B:[I

    and-int/lit8 p2, p2, 0xf

    aget p2, p4, p2

    add-int/2addr p3, p2

    add-int/2addr p1, p3

    :goto_0
    return p1
.end method

.method a(IILciq;I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    iget-object p2, p0, Lcim;->f:[S

    invoke-virtual {p3}, Lciq;->b()I

    move-result v2

    aget-short p2, p2, v2

    invoke-static {p2, v0}, Lcis;->a(II)I

    move-result p2

    iget-object v0, p0, Lcim;->i:[[S

    invoke-virtual {p3}, Lciq;->b()I

    move-result p3

    aget-object p3, v0, p3

    aget-short p3, p3, p4

    invoke-static {p3, v1}, Lcis;->a(II)I

    move-result p3

    add-int/2addr p2, p3

    :goto_0
    add-int/2addr p1, p2

    goto :goto_1

    :cond_0
    iget-object p4, p0, Lcim;->f:[S

    invoke-virtual {p3}, Lciq;->b()I

    move-result v2

    aget-short p4, p4, v2

    invoke-static {p4, v1}, Lcis;->a(II)I

    move-result p4

    add-int/2addr p1, p4

    if-ne p2, v1, :cond_1

    iget-object p2, p0, Lcim;->g:[S

    invoke-virtual {p3}, Lciq;->b()I

    move-result p3

    aget-short p2, p2, p3

    invoke-static {p2, v0}, Lcis;->a(II)I

    move-result p2

    goto :goto_0

    :cond_1
    iget-object p4, p0, Lcim;->g:[S

    invoke-virtual {p3}, Lciq;->b()I

    move-result v0

    aget-short p4, p4, v0

    invoke-static {p4, v1}, Lcis;->a(II)I

    move-result p4

    iget-object v0, p0, Lcim;->h:[S

    invoke-virtual {p3}, Lciq;->b()I

    move-result p3

    aget-short p3, v0, p3

    add-int/lit8 p2, p2, -0x2

    invoke-static {p3, p2}, Lcis;->a(II)I

    move-result p2

    add-int/2addr p4, p2

    add-int/2addr p1, p4

    :goto_1
    return p1
.end method

.method a(ILciq;)I
    .locals 1

    iget-object v0, p0, Lcim;->e:[S

    invoke-virtual {p2}, Lciq;->b()I

    move-result p2

    aget-short p2, v0, p2

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcis;->a(II)I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method

.method a(ILciq;I)I
    .locals 2

    iget-object v0, p0, Lcim;->f:[S

    invoke-virtual {p2}, Lciq;->b()I

    move-result v1

    aget-short v0, v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcis;->a(II)I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcim;->i:[[S

    invoke-virtual {p2}, Lciq;->b()I

    move-result p2

    aget-object p2, v0, p2

    aget-short p2, p2, p3

    invoke-static {p2, v1}, Lcis;->a(II)I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method

.method a(Lciq;I)I
    .locals 1

    iget-object v0, p0, Lcim;->d:[[S

    invoke-virtual {p1}, Lciq;->b()I

    move-result p1

    aget-object p1, v0, p1

    aget-short p1, p1, p2

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcis;->a(II)I

    move-result p1

    return p1
.end method

.method public a()V
    .locals 2

    invoke-super {p0}, Lcil;->a()V

    iget-object v0, p0, Lcim;->n:Lcim$b;

    invoke-virtual {v0}, Lcim$b;->a()V

    iget-object v0, p0, Lcim;->o:Lcim$a;

    invoke-virtual {v0}, Lcim$a;->a()V

    iget-object v0, p0, Lcim;->p:Lcim$a;

    invoke-virtual {v0}, Lcim$a;->a()V

    const/4 v0, 0x0

    iput v0, p0, Lcim;->w:I

    iput v0, p0, Lcim;->x:I

    iget v0, p0, Lcim;->C:I

    iget v1, p0, Lcim;->s:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcim;->C:I

    const/4 v0, -0x1

    iput v0, p0, Lcim;->s:I

    return-void
.end method

.method abstract b()I
.end method

.method b(IILciq;I)I
    .locals 1

    invoke-virtual {p0, p3, p4}, Lcim;->a(Lciq;I)I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lcim;->b(ILciq;)I

    move-result v0

    invoke-virtual {p0, v0, p1, p3, p4}, Lcim;->a(IILciq;I)I

    move-result p1

    iget-object p3, p0, Lcim;->p:Lcim$a;

    invoke-virtual {p3, p2, p4}, Lcim$a;->b(II)I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method

.method b(ILciq;)I
    .locals 1

    iget-object v0, p0, Lcim;->e:[S

    invoke-virtual {p2}, Lciq;->b()I

    move-result p2

    aget-short p2, v0, p2

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcis;->a(II)I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method

.method public c()Lcij;
    .locals 1

    iget-object v0, p0, Lcim;->m:Lcij;

    return-object v0
.end method

.method c(I)V
    .locals 1

    iget v0, p0, Lcim;->s:I

    add-int/2addr v0, p1

    iput v0, p0, Lcim;->s:I

    iget-object v0, p0, Lcim;->m:Lcij;

    invoke-virtual {v0, p1}, Lcij;->a(I)V

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcim;->C:I

    return v0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcim;->C:I

    return-void
.end method

.method public f()Z
    .locals 3

    iget-object v0, p0, Lcim;->m:Lcij;

    invoke-virtual {v0}, Lcij;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcim;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcim;->C:I

    const v2, 0x1ffeef

    if-gt v0, v2, :cond_1

    iget-object v0, p0, Lcim;->v:Lcis;

    invoke-virtual {v0}, Lcis;->b()I

    move-result v0

    const v2, 0xffe6

    if-gt v0, v2, :cond_1

    invoke-direct {p0}, Lcim;->j()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method g()Lcik;
    .locals 2

    iget v0, p0, Lcim;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcim;->s:I

    iget-object v0, p0, Lcim;->m:Lcij;

    invoke-virtual {v0}, Lcij;->a()Lcik;

    move-result-object v0

    sget-boolean v1, Lcim;->t:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcim;->m:Lcij;

    invoke-virtual {v1, v0}, Lcij;->a(Lcik;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method h()V
    .locals 1

    iget v0, p0, Lcim;->w:I

    if-gtz v0, :cond_0

    invoke-direct {p0}, Lcim;->k()V

    :cond_0
    iget v0, p0, Lcim;->x:I

    if-gtz v0, :cond_1

    invoke-direct {p0}, Lcim;->l()V

    :cond_1
    iget-object v0, p0, Lcim;->o:Lcim$a;

    invoke-virtual {v0}, Lcim$a;->b()V

    iget-object v0, p0, Lcim;->p:Lcim$a;

    invoke-virtual {v0}, Lcim$a;->b()V

    return-void
.end method
