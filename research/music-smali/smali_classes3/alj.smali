.class public final Lalj;
.super Ljava/lang/Object;
.source "GenericGF.java"


# static fields
.field public static final a:Lalj;

.field public static final b:Lalj;

.field public static final c:Lalj;

.field public static final d:Lalj;

.field public static final e:Lalj;

.field public static final f:Lalj;

.field public static final g:Lalj;

.field public static final h:Lalj;


# instance fields
.field private final i:[I

.field private final j:[I

.field private final k:Lalk;

.field private final l:Lalk;

.field private final m:I

.field private final n:I

.field private final o:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 33
    new-instance v0, Lalj;

    const/4 v1, 0x1

    const/16 v2, 0x1069

    const/16 v3, 0x1000

    invoke-direct {v0, v2, v3, v1}, Lalj;-><init>(III)V

    sput-object v0, Lalj;->a:Lalj;

    .line 34
    new-instance v0, Lalj;

    const/16 v2, 0x409

    const/16 v3, 0x400

    invoke-direct {v0, v2, v3, v1}, Lalj;-><init>(III)V

    sput-object v0, Lalj;->b:Lalj;

    .line 35
    new-instance v0, Lalj;

    const/16 v2, 0x43

    const/16 v3, 0x40

    invoke-direct {v0, v2, v3, v1}, Lalj;-><init>(III)V

    sput-object v0, Lalj;->c:Lalj;

    .line 36
    new-instance v0, Lalj;

    const/16 v2, 0x13

    const/16 v3, 0x10

    invoke-direct {v0, v2, v3, v1}, Lalj;-><init>(III)V

    sput-object v0, Lalj;->d:Lalj;

    .line 37
    new-instance v0, Lalj;

    const/16 v2, 0x100

    const/16 v3, 0x11d

    const/4 v4, 0x0

    invoke-direct {v0, v3, v2, v4}, Lalj;-><init>(III)V

    sput-object v0, Lalj;->e:Lalj;

    .line 38
    new-instance v0, Lalj;

    const/16 v3, 0x12d

    invoke-direct {v0, v3, v2, v1}, Lalj;-><init>(III)V

    sput-object v0, Lalj;->f:Lalj;

    .line 39
    sget-object v0, Lalj;->f:Lalj;

    sput-object v0, Lalj;->g:Lalj;

    .line 40
    sget-object v0, Lalj;->c:Lalj;

    sput-object v0, Lalj;->h:Lalj;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 4

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Lalj;->n:I

    .line 63
    iput p2, p0, Lalj;->m:I

    .line 64
    iput p3, p0, Lalj;->o:I

    .line 66
    new-array p3, p2, [I

    iput-object p3, p0, Lalj;->i:[I

    .line 67
    new-array p3, p2, [I

    iput-object p3, p0, Lalj;->j:[I

    const/4 p3, 0x0

    const/4 v0, 0x1

    move v1, p3

    move v2, v0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 70
    iget-object v3, p0, Lalj;->i:[I

    aput v2, v3, v1

    mul-int/lit8 v2, v2, 0x2

    if-lt v2, p2, :cond_0

    xor-int/2addr v2, p1

    add-int/lit8 v3, p2, -0x1

    and-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move p1, p3

    :goto_1
    add-int/lit8 v1, p2, -0x1

    if-ge p1, v1, :cond_2

    .line 78
    iget-object v1, p0, Lalj;->j:[I

    iget-object v2, p0, Lalj;->i:[I

    aget v2, v2, p1

    aput p1, v1, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 81
    :cond_2
    new-instance p1, Lalk;

    new-array p2, v0, [I

    aput p3, p2, p3

    invoke-direct {p1, p0, p2}, Lalk;-><init>(Lalj;[I)V

    iput-object p1, p0, Lalj;->k:Lalk;

    .line 82
    new-instance p1, Lalk;

    new-array p2, v0, [I

    aput v0, p2, p3

    invoke-direct {p1, p0, p2}, Lalk;-><init>(Lalj;[I)V

    iput-object p1, p0, Lalj;->l:Lalk;

    return-void
.end method

.method static b(II)I
    .locals 0

    xor-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method a(I)I
    .locals 1

    .line 121
    iget-object v0, p0, Lalj;->i:[I

    aget p1, v0, p1

    return p1
.end method

.method a()Lalk;
    .locals 1

    .line 86
    iget-object v0, p0, Lalj;->k:Lalk;

    return-object v0
.end method

.method a(II)Lalk;
    .locals 1

    if-ltz p1, :cond_1

    if-nez p2, :cond_0

    .line 101
    iget-object p1, p0, Lalj;->k:Lalk;

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 103
    new-array p1, p1, [I

    const/4 v0, 0x0

    .line 104
    aput p2, p1, v0

    .line 105
    new-instance p2, Lalk;

    invoke-direct {p2, p0, p1}, Lalk;-><init>(Lalj;[I)V

    return-object p2

    .line 98
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public b()I
    .locals 1

    .line 159
    iget v0, p0, Lalj;->o:I

    return v0
.end method

.method b(I)I
    .locals 1

    if-eqz p1, :cond_0

    .line 131
    iget-object v0, p0, Lalj;->j:[I

    aget p1, v0, p1

    return p1

    .line 129
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method c(I)I
    .locals 3

    if-eqz p1, :cond_0

    .line 141
    iget-object v0, p0, Lalj;->i:[I

    iget v1, p0, Lalj;->m:I

    iget-object v2, p0, Lalj;->j:[I

    aget p1, v2, p1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    aget p1, v0, v1

    return p1

    .line 139
    :cond_0
    new-instance p1, Ljava/lang/ArithmeticException;

    invoke-direct {p1}, Ljava/lang/ArithmeticException;-><init>()V

    throw p1
.end method

.method c(II)I
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Lalj;->i:[I

    iget-object v1, p0, Lalj;->j:[I

    aget p1, v1, p1

    aget p2, v1, p2

    add-int/2addr p1, p2

    iget p2, p0, Lalj;->m:I

    add-int/lit8 p2, p2, -0x1

    rem-int/2addr p1, p2

    aget p1, v0, p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GF(0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lalj;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lalj;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
