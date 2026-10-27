.class public final Lcom/google/zxing/common/a/a;
.super Ljava/lang/Object;
.source "GenericGF.java"


# static fields
.field public static final jo:Lcom/google/zxing/common/a/a;

.field public static final jp:Lcom/google/zxing/common/a/a;

.field public static final jq:Lcom/google/zxing/common/a/a;

.field public static final jr:Lcom/google/zxing/common/a/a;

.field public static final js:Lcom/google/zxing/common/a/a;

.field public static final jt:Lcom/google/zxing/common/a/a;

.field public static final ju:Lcom/google/zxing/common/a/a;

.field public static final jv:Lcom/google/zxing/common/a/a;


# instance fields
.field private final jA:I

.field private final jB:I

.field private final jw:[I

.field private final jx:[I

.field private final jy:Lcom/google/zxing/common/a/b;

.field private final jz:Lcom/google/zxing/common/a/b;

.field private final size:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 32
    new-instance v0, Lcom/google/zxing/common/a/a;

    const/4 v1, 0x1

    const/16 v2, 0x1069

    const/16 v3, 0x1000

    invoke-direct {v0, v2, v3, v1}, Lcom/google/zxing/common/a/a;-><init>(III)V

    sput-object v0, Lcom/google/zxing/common/a/a;->jo:Lcom/google/zxing/common/a/a;

    .line 33
    new-instance v0, Lcom/google/zxing/common/a/a;

    const/16 v2, 0x409

    const/16 v3, 0x400

    invoke-direct {v0, v2, v3, v1}, Lcom/google/zxing/common/a/a;-><init>(III)V

    sput-object v0, Lcom/google/zxing/common/a/a;->jp:Lcom/google/zxing/common/a/a;

    .line 34
    new-instance v0, Lcom/google/zxing/common/a/a;

    const/16 v2, 0x43

    const/16 v3, 0x40

    invoke-direct {v0, v2, v3, v1}, Lcom/google/zxing/common/a/a;-><init>(III)V

    sput-object v0, Lcom/google/zxing/common/a/a;->jq:Lcom/google/zxing/common/a/a;

    .line 35
    new-instance v0, Lcom/google/zxing/common/a/a;

    const/16 v2, 0x13

    const/16 v3, 0x10

    invoke-direct {v0, v2, v3, v1}, Lcom/google/zxing/common/a/a;-><init>(III)V

    sput-object v0, Lcom/google/zxing/common/a/a;->jr:Lcom/google/zxing/common/a/a;

    .line 36
    new-instance v0, Lcom/google/zxing/common/a/a;

    const/16 v2, 0x100

    const/16 v3, 0x11d

    const/4 v4, 0x0

    invoke-direct {v0, v3, v2, v4}, Lcom/google/zxing/common/a/a;-><init>(III)V

    sput-object v0, Lcom/google/zxing/common/a/a;->js:Lcom/google/zxing/common/a/a;

    .line 37
    new-instance v0, Lcom/google/zxing/common/a/a;

    const/16 v3, 0x12d

    invoke-direct {v0, v3, v2, v1}, Lcom/google/zxing/common/a/a;-><init>(III)V

    sput-object v0, Lcom/google/zxing/common/a/a;->jt:Lcom/google/zxing/common/a/a;

    .line 38
    sget-object v0, Lcom/google/zxing/common/a/a;->jt:Lcom/google/zxing/common/a/a;

    sput-object v0, Lcom/google/zxing/common/a/a;->ju:Lcom/google/zxing/common/a/a;

    .line 39
    sget-object v0, Lcom/google/zxing/common/a/a;->jq:Lcom/google/zxing/common/a/a;

    sput-object v0, Lcom/google/zxing/common/a/a;->jv:Lcom/google/zxing/common/a/a;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 4

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lcom/google/zxing/common/a/a;->jA:I

    .line 62
    iput p2, p0, Lcom/google/zxing/common/a/a;->size:I

    .line 63
    iput p3, p0, Lcom/google/zxing/common/a/a;->jB:I

    .line 65
    new-array p3, p2, [I

    iput-object p3, p0, Lcom/google/zxing/common/a/a;->jw:[I

    .line 66
    new-array p3, p2, [I

    iput-object p3, p0, Lcom/google/zxing/common/a/a;->jx:[I

    .line 67
    nop

    .line 68
    const/4 p3, 0x0

    const/4 v0, 0x1

    move v1, p3

    move v2, v0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 69
    iget-object v3, p0, Lcom/google/zxing/common/a/a;->jw:[I

    aput v2, v3, v1

    .line 70
    mul-int/lit8 v2, v2, 0x2

    .line 71
    if-lt v2, p2, :cond_0

    .line 72
    xor-int/2addr v2, p1

    .line 73
    add-int/lit8 v3, p2, -0x1

    and-int/2addr v2, v3

    .line 68
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    :cond_1
    move p1, p3

    :goto_1
    add-int/lit8 v1, p2, -0x1

    if-ge p1, v1, :cond_2

    .line 77
    iget-object v1, p0, Lcom/google/zxing/common/a/a;->jx:[I

    iget-object v2, p0, Lcom/google/zxing/common/a/a;->jw:[I

    aget v2, v2, p1

    aput p1, v1, v2

    .line 76
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 80
    :cond_2
    new-instance p1, Lcom/google/zxing/common/a/b;

    new-array p2, v0, [I

    aput p3, p2, p3

    invoke-direct {p1, p0, p2}, Lcom/google/zxing/common/a/b;-><init>(Lcom/google/zxing/common/a/a;[I)V

    iput-object p1, p0, Lcom/google/zxing/common/a/a;->jy:Lcom/google/zxing/common/a/b;

    .line 81
    new-instance p1, Lcom/google/zxing/common/a/b;

    new-array p2, v0, [I

    aput v0, p2, p3

    invoke-direct {p1, p0, p2}, Lcom/google/zxing/common/a/b;-><init>(Lcom/google/zxing/common/a/a;[I)V

    iput-object p1, p0, Lcom/google/zxing/common/a/a;->jz:Lcom/google/zxing/common/a/b;

    .line 82
    return-void
.end method

.method static h(II)I
    .locals 0

    .line 113
    xor-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method bq(I)I
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/google/zxing/common/a/a;->jw:[I

    aget p1, v0, p1

    return p1
.end method

.method br(I)I
    .locals 1

    .line 127
    if-eqz p1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/google/zxing/common/a/a;->jx:[I

    aget p1, v0, p1

    return p1

    .line 128
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method bs(I)I
    .locals 3

    .line 137
    if-eqz p1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/google/zxing/common/a/a;->jw:[I

    iget v1, p0, Lcom/google/zxing/common/a/a;->size:I

    iget-object v2, p0, Lcom/google/zxing/common/a/a;->jx:[I

    aget p1, v2, p1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    aget p1, v0, v1

    return p1

    .line 138
    :cond_0
    new-instance p1, Ljava/lang/ArithmeticException;

    invoke-direct {p1}, Ljava/lang/ArithmeticException;-><init>()V

    throw p1
.end method

.method cl()Lcom/google/zxing/common/a/b;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/google/zxing/common/a/a;->jy:Lcom/google/zxing/common/a/b;

    return-object v0
.end method

.method public cm()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/google/zxing/common/a/a;->jB:I

    return v0
.end method

.method g(II)Lcom/google/zxing/common/a/b;
    .locals 1

    .line 96
    if-ltz p1, :cond_1

    .line 99
    if-nez p2, :cond_0

    .line 100
    iget-object p1, p0, Lcom/google/zxing/common/a/a;->jy:Lcom/google/zxing/common/a/b;

    return-object p1

    .line 102
    :cond_0
    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [I

    .line 103
    const/4 v0, 0x0

    aput p2, p1, v0

    .line 104
    new-instance p2, Lcom/google/zxing/common/a/b;

    invoke-direct {p2, p0, p1}, Lcom/google/zxing/common/a/b;-><init>(Lcom/google/zxing/common/a/a;[I)V

    return-object p2

    .line 97
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method i(II)I
    .locals 2

    .line 147
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/common/a/a;->jw:[I

    iget-object v1, p0, Lcom/google/zxing/common/a/a;->jx:[I

    aget p1, v1, p1

    iget-object v1, p0, Lcom/google/zxing/common/a/a;->jx:[I

    aget p2, v1, p2

    add-int/2addr p1, p2

    iget p2, p0, Lcom/google/zxing/common/a/a;->size:I

    add-int/lit8 p2, p2, -0x1

    rem-int/2addr p1, p2

    aget p1, v0, p1

    return p1

    .line 148
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GF(0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/zxing/common/a/a;->jA:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/zxing/common/a/a;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
