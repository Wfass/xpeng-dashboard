.class public Lamn;
.super Ljava/lang/Object;
.source "DimensionStatus.java"


# static fields
.field public static final a:Lamn;

.field public static final b:Lamn;

.field public static final c:Lamn;

.field public static final d:Lamn;

.field public static final e:Lamn;

.field public static final f:Lamn;

.field public static final g:Lamn;

.field public static final h:Lamn;

.field public static final i:Lamn;

.field public static final j:Lamn;

.field public static final k:Lamn;

.field public static final l:Lamn;

.field public static final o:[Lamn;


# instance fields
.field public final m:I

.field public final n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 10
    new-instance v0, Lamn;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lamn;-><init>(IZ)V

    sput-object v0, Lamn;->a:Lamn;

    .line 11
    new-instance v0, Lamn;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v2}, Lamn;-><init>(IZ)V

    sput-object v0, Lamn;->b:Lamn;

    .line 12
    new-instance v0, Lamn;

    const/4 v3, 0x2

    invoke-direct {v0, v3, v1}, Lamn;-><init>(IZ)V

    sput-object v0, Lamn;->c:Lamn;

    .line 13
    new-instance v0, Lamn;

    const/4 v4, 0x3

    invoke-direct {v0, v4, v2}, Lamn;-><init>(IZ)V

    sput-object v0, Lamn;->d:Lamn;

    .line 14
    new-instance v0, Lamn;

    const/4 v5, 0x4

    invoke-direct {v0, v5, v1}, Lamn;-><init>(IZ)V

    sput-object v0, Lamn;->e:Lamn;

    .line 15
    new-instance v0, Lamn;

    const/4 v6, 0x5

    invoke-direct {v0, v6, v2}, Lamn;-><init>(IZ)V

    sput-object v0, Lamn;->f:Lamn;

    .line 16
    new-instance v0, Lamn;

    const/4 v7, 0x6

    invoke-direct {v0, v7, v1}, Lamn;-><init>(IZ)V

    sput-object v0, Lamn;->g:Lamn;

    .line 17
    new-instance v0, Lamn;

    const/4 v8, 0x7

    invoke-direct {v0, v8, v2}, Lamn;-><init>(IZ)V

    sput-object v0, Lamn;->h:Lamn;

    .line 18
    new-instance v0, Lamn;

    const/16 v9, 0x8

    invoke-direct {v0, v9, v1}, Lamn;-><init>(IZ)V

    sput-object v0, Lamn;->i:Lamn;

    .line 19
    new-instance v0, Lamn;

    const/16 v10, 0x9

    invoke-direct {v0, v10, v2}, Lamn;-><init>(IZ)V

    sput-object v0, Lamn;->j:Lamn;

    .line 20
    new-instance v0, Lamn;

    const/16 v11, 0xa

    invoke-direct {v0, v11, v1}, Lamn;-><init>(IZ)V

    sput-object v0, Lamn;->k:Lamn;

    .line 21
    new-instance v0, Lamn;

    invoke-direct {v0, v11, v2}, Lamn;-><init>(IZ)V

    sput-object v0, Lamn;->l:Lamn;

    const/16 v0, 0xc

    .line 26
    new-array v0, v0, [Lamn;

    sget-object v12, Lamn;->a:Lamn;

    aput-object v12, v0, v1

    sget-object v1, Lamn;->b:Lamn;

    aput-object v1, v0, v2

    sget-object v1, Lamn;->c:Lamn;

    aput-object v1, v0, v3

    sget-object v1, Lamn;->d:Lamn;

    aput-object v1, v0, v4

    sget-object v1, Lamn;->e:Lamn;

    aput-object v1, v0, v5

    sget-object v1, Lamn;->f:Lamn;

    aput-object v1, v0, v6

    sget-object v1, Lamn;->g:Lamn;

    aput-object v1, v0, v7

    sget-object v1, Lamn;->h:Lamn;

    aput-object v1, v0, v8

    sget-object v1, Lamn;->i:Lamn;

    aput-object v1, v0, v9

    sget-object v1, Lamn;->j:Lamn;

    aput-object v1, v0, v10

    sget-object v1, Lamn;->k:Lamn;

    aput-object v1, v0, v11

    sget-object v1, Lamn;->l:Lamn;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Lamn;->o:[Lamn;

    return-void
.end method

.method private constructor <init>(IZ)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lamn;->m:I

    .line 43
    iput-boolean p2, p0, Lamn;->n:Z

    return-void
.end method


# virtual methods
.method public a()Lamn;
    .locals 2

    .line 51
    iget-boolean v0, p0, Lamn;->n:Z

    if-eqz v0, :cond_1

    .line 52
    sget-object v0, Lamn;->o:[Lamn;

    iget v1, p0, Lamn;->m:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 53
    iget-boolean v1, v0, Lamn;->n:Z

    if-nez v1, :cond_0

    return-object v0

    .line 56
    :cond_0
    sget-object v0, Lamn;->a:Lamn;

    return-object v0

    :cond_1
    return-object p0
.end method

.method public a(Lamn;)Z
    .locals 2

    .line 78
    iget v0, p0, Lamn;->m:I

    iget v1, p1, Lamn;->m:I

    if-lt v0, v1, :cond_2

    iget-boolean v0, p0, Lamn;->n:Z

    if-eqz v0, :cond_0

    sget-object v0, Lamn;->j:Lamn;

    if-ne v0, p0, :cond_1

    :cond_0
    iget v0, p0, Lamn;->m:I

    iget p1, p1, Lamn;->m:I

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public b()Lamn;
    .locals 2

    .line 66
    iget-boolean v0, p0, Lamn;->n:Z

    if-nez v0, :cond_0

    .line 67
    sget-object v0, Lamn;->o:[Lamn;

    iget v1, p0, Lamn;->m:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    return-object p0
.end method
