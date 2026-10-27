.class public Lorg/chromium/base/task/k;
.super Ljava/lang/Object;
.source "TaskTraits.java"


# static fields
.field public static final a:Lorg/chromium/base/task/k;

.field public static final b:Lorg/chromium/base/task/k;

.field public static final c:Lorg/chromium/base/task/k;

.field public static final d:Lorg/chromium/base/task/k;

.field public static final e:Lorg/chromium/base/task/k;

.field public static final f:Lorg/chromium/base/task/k;

.field public static final g:Lorg/chromium/base/task/k;

.field public static final h:Lorg/chromium/base/task/k;

.field public static final i:Lorg/chromium/base/task/k;

.field public static final j:Lorg/chromium/base/task/k;

.field public static final k:Lorg/chromium/base/task/k;

.field static final synthetic s:Z


# instance fields
.field l:Z

.field m:I

.field n:Z

.field o:Z

.field p:B

.field q:[B

.field r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 15
    const-class v0, Lorg/chromium/base/task/k;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sput-boolean v0, Lorg/chromium/base/task/k;->s:Z

    .line 31
    new-instance v0, Lorg/chromium/base/task/k;

    invoke-direct {v0}, Lorg/chromium/base/task/k;-><init>()V

    const/4 v2, 0x0

    .line 32
    invoke-virtual {v0, v2}, Lorg/chromium/base/task/k;->a(I)Lorg/chromium/base/task/k;

    move-result-object v0

    sput-object v0, Lorg/chromium/base/task/k;->a:Lorg/chromium/base/task/k;

    .line 36
    sget-object v0, Lorg/chromium/base/task/k;->a:Lorg/chromium/base/task/k;

    invoke-virtual {v0}, Lorg/chromium/base/task/k;->a()Lorg/chromium/base/task/k;

    move-result-object v0

    sput-object v0, Lorg/chromium/base/task/k;->b:Lorg/chromium/base/task/k;

    .line 45
    new-instance v0, Lorg/chromium/base/task/k;

    invoke-direct {v0}, Lorg/chromium/base/task/k;-><init>()V

    .line 46
    invoke-virtual {v0, v1}, Lorg/chromium/base/task/k;->a(I)Lorg/chromium/base/task/k;

    move-result-object v0

    sput-object v0, Lorg/chromium/base/task/k;->c:Lorg/chromium/base/task/k;

    .line 49
    sget-object v0, Lorg/chromium/base/task/k;->c:Lorg/chromium/base/task/k;

    invoke-virtual {v0}, Lorg/chromium/base/task/k;->a()Lorg/chromium/base/task/k;

    move-result-object v0

    sput-object v0, Lorg/chromium/base/task/k;->d:Lorg/chromium/base/task/k;

    .line 53
    new-instance v0, Lorg/chromium/base/task/k;

    invoke-direct {v0}, Lorg/chromium/base/task/k;-><init>()V

    const/4 v3, 0x2

    .line 54
    invoke-virtual {v0, v3}, Lorg/chromium/base/task/k;->a(I)Lorg/chromium/base/task/k;

    move-result-object v0

    sput-object v0, Lorg/chromium/base/task/k;->e:Lorg/chromium/base/task/k;

    .line 57
    sget-object v0, Lorg/chromium/base/task/k;->e:Lorg/chromium/base/task/k;

    invoke-virtual {v0}, Lorg/chromium/base/task/k;->a()Lorg/chromium/base/task/k;

    move-result-object v0

    sput-object v0, Lorg/chromium/base/task/k;->f:Lorg/chromium/base/task/k;

    .line 61
    new-instance v0, Lorg/chromium/base/task/k;

    invoke-direct {v0}, Lorg/chromium/base/task/k;-><init>()V

    sput-object v0, Lorg/chromium/base/task/k;->g:Lorg/chromium/base/task/k;

    .line 63
    sget-object v0, Lorg/chromium/base/task/k;->g:Lorg/chromium/base/task/k;

    iput-boolean v1, v0, Lorg/chromium/base/task/k;->r:Z

    .line 71
    new-instance v0, Lorg/chromium/base/task/k;

    invoke-direct {v0}, Lorg/chromium/base/task/k;-><init>()V

    invoke-virtual {v0}, Lorg/chromium/base/task/k;->b()Lorg/chromium/base/task/k;

    move-result-object v0

    sput-object v0, Lorg/chromium/base/task/k;->h:Lorg/chromium/base/task/k;

    .line 72
    sget-object v0, Lorg/chromium/base/task/k;->h:Lorg/chromium/base/task/k;

    .line 73
    invoke-virtual {v0, v3}, Lorg/chromium/base/task/k;->a(I)Lorg/chromium/base/task/k;

    move-result-object v0

    sput-object v0, Lorg/chromium/base/task/k;->i:Lorg/chromium/base/task/k;

    .line 74
    sget-object v0, Lorg/chromium/base/task/k;->h:Lorg/chromium/base/task/k;

    .line 75
    invoke-virtual {v0, v1}, Lorg/chromium/base/task/k;->a(I)Lorg/chromium/base/task/k;

    move-result-object v0

    sput-object v0, Lorg/chromium/base/task/k;->j:Lorg/chromium/base/task/k;

    .line 76
    sget-object v0, Lorg/chromium/base/task/k;->h:Lorg/chromium/base/task/k;

    .line 77
    invoke-virtual {v0, v2}, Lorg/chromium/base/task/k;->a(I)Lorg/chromium/base/task/k;

    move-result-object v0

    sput-object v0, Lorg/chromium/base/task/k;->k:Lorg/chromium/base/task/k;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 91
    iput v0, p0, Lorg/chromium/base/task/k;->m:I

    return-void
.end method

.method private constructor <init>(Lorg/chromium/base/task/k;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iget-boolean v0, p1, Lorg/chromium/base/task/k;->l:Z

    iput-boolean v0, p0, Lorg/chromium/base/task/k;->l:Z

    .line 96
    iget v0, p1, Lorg/chromium/base/task/k;->m:I

    iput v0, p0, Lorg/chromium/base/task/k;->m:I

    .line 97
    iget-boolean v0, p1, Lorg/chromium/base/task/k;->n:Z

    iput-boolean v0, p0, Lorg/chromium/base/task/k;->n:Z

    .line 98
    iget-boolean v0, p1, Lorg/chromium/base/task/k;->o:Z

    iput-boolean v0, p0, Lorg/chromium/base/task/k;->o:Z

    .line 99
    iget-byte v0, p1, Lorg/chromium/base/task/k;->p:B

    iput-byte v0, p0, Lorg/chromium/base/task/k;->p:B

    .line 100
    iget-object p1, p1, Lorg/chromium/base/task/k;->q:[B

    iput-object p1, p0, Lorg/chromium/base/task/k;->q:[B

    return-void
.end method


# virtual methods
.method public a()Lorg/chromium/base/task/k;
    .locals 2

    .line 118
    new-instance v0, Lorg/chromium/base/task/k;

    invoke-direct {v0, p0}, Lorg/chromium/base/task/k;-><init>(Lorg/chromium/base/task/k;)V

    const/4 v1, 0x1

    .line 119
    iput-boolean v1, v0, Lorg/chromium/base/task/k;->n:Z

    return-object v0
.end method

.method public a(I)Lorg/chromium/base/task/k;
    .locals 2

    .line 104
    new-instance v0, Lorg/chromium/base/task/k;

    invoke-direct {v0, p0}, Lorg/chromium/base/task/k;-><init>(Lorg/chromium/base/task/k;)V

    const/4 v1, 0x1

    .line 105
    iput-boolean v1, v0, Lorg/chromium/base/task/k;->l:Z

    .line 106
    iput p1, v0, Lorg/chromium/base/task/k;->m:I

    return-object v0
.end method

.method public b()Lorg/chromium/base/task/k;
    .locals 2

    .line 124
    new-instance v0, Lorg/chromium/base/task/k;

    invoke-direct {v0, p0}, Lorg/chromium/base/task/k;-><init>(Lorg/chromium/base/task/k;)V

    const/4 v1, 0x1

    .line 125
    iput-boolean v1, v0, Lorg/chromium/base/task/k;->o:Z

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 133
    iget-byte v0, p0, Lorg/chromium/base/task/k;->p:B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 166
    :cond_0
    instance-of v1, p1, Lorg/chromium/base/task/k;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 167
    check-cast p1, Lorg/chromium/base/task/k;

    .line 168
    iget-boolean v1, p0, Lorg/chromium/base/task/k;->l:Z

    iget-boolean v3, p1, Lorg/chromium/base/task/k;->l:Z

    if-ne v1, v3, :cond_1

    iget v1, p0, Lorg/chromium/base/task/k;->m:I

    iget v3, p1, Lorg/chromium/base/task/k;->m:I

    if-ne v1, v3, :cond_1

    iget-byte v1, p0, Lorg/chromium/base/task/k;->p:B

    iget-byte v3, p1, Lorg/chromium/base/task/k;->p:B

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lorg/chromium/base/task/k;->q:[B

    iget-object p1, p1, Lorg/chromium/base/task/k;->q:[B

    .line 170
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 179
    iget-boolean v0, p0, Lorg/chromium/base/task/k;->l:Z

    xor-int/lit8 v0, v0, 0x1

    const/16 v1, 0x47b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 180
    iget v0, p0, Lorg/chromium/base/task/k;->m:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 181
    iget-boolean v0, p0, Lorg/chromium/base/task/k;->n:Z

    xor-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 182
    iget-boolean v0, p0, Lorg/chromium/base/task/k;->o:Z

    xor-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 183
    iget-byte v0, p0, Lorg/chromium/base/task/k;->p:B

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 184
    iget-object v0, p0, Lorg/chromium/base/task/k;->q:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 185
    iget-boolean v0, p0, Lorg/chromium/base/task/k;->r:Z

    xor-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    return v1
.end method
