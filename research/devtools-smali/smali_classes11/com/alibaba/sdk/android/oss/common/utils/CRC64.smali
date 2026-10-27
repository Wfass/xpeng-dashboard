.class public Lcom/alibaba/sdk/android/oss/common/utils/CRC64;
.super Ljava/lang/Object;
.source "CRC64.java"

# interfaces
.implements Ljava/util/zip/Checksum;


# static fields
.field private static final GF2_DIM:I = 0x40

.field private static final POLY:J = -0x3693a86a2878f0beL

.field private static final table:[[J


# instance fields
.field private value:J


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 19
    const/16 v0, 0x100

    const/16 v1, 0x8

    filled-new-array {v1, v0}, [I

    move-result-object v2

    const-class v3, J

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[J

    sput-object v2, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->table:[[J

    .line 21
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v0, :cond_2

    .line 22
    int-to-long v5, v3

    .line 23
    move-wide v6, v5

    move v5, v2

    :goto_1
    if-ge v5, v1, :cond_1

    .line 24
    const-wide/16 v8, 0x1

    and-long v10, v6, v8

    cmp-long v8, v10, v8

    if-nez v8, :cond_0

    .line 25
    ushr-long/2addr v6, v4

    const-wide v8, -0x3693a86a2878f0beL    # -5.0564049839430436E45

    xor-long/2addr v6, v8

    goto :goto_2

    .line 27
    :cond_0
    ushr-long/2addr v6, v4

    .line 23
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 30
    :cond_1
    sget-object v4, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->table:[[J

    aget-object v4, v4, v2

    aput-wide v6, v4, v3

    .line 21
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 34
    :cond_2
    move v3, v2

    :goto_3
    if-ge v3, v0, :cond_4

    .line 35
    sget-object v5, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->table:[[J

    aget-object v5, v5, v2

    aget-wide v5, v5, v3

    .line 36
    move-wide v6, v5

    move v5, v4

    :goto_4
    if-ge v5, v1, :cond_3

    .line 37
    sget-object v8, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->table:[[J

    aget-object v8, v8, v2

    const-wide/16 v9, 0xff

    and-long/2addr v9, v6

    long-to-int v9, v9

    aget-wide v8, v8, v9

    ushr-long/2addr v6, v1

    xor-long/2addr v6, v8

    .line 38
    sget-object v8, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->table:[[J

    aget-object v8, v8, v5

    aput-wide v6, v8, v3

    .line 36
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 34
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 41
    :cond_4
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->value:J

    .line 51
    return-void
.end method

.method public static combine(JJJ)J
    .locals 15

    .line 77
    const-wide/16 v0, 0x0

    cmp-long v4, p4, v0

    if-nez v4, :cond_0

    .line 78
    return-wide p0

    .line 82
    :cond_0
    const/16 v6, 0x40

    new-array v7, v6, [J

    .line 83
    new-array v8, v6, [J

    .line 86
    const/4 v9, 0x0

    const-wide v10, -0x3693a86a2878f0beL    # -5.0564049839430436E45

    aput-wide v10, v8, v9

    .line 88
    nop

    .line 89
    const/4 v9, 0x1

    const-wide/16 v10, 0x1

    move v12, v9

    move-wide v13, v10

    :goto_0
    if-ge v12, v6, :cond_1

    .line 90
    aput-wide v13, v8, v12

    .line 91
    shl-long/2addr v13, v9

    .line 89
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 95
    :cond_1
    invoke-static {v7, v8}, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->gf2MatrixSquare([J[J)V

    .line 98
    invoke-static {v8, v7}, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->gf2MatrixSquare([J[J)V

    .line 102
    nop

    .line 103
    nop

    .line 106
    move-wide v4, p0

    move-wide/from16 v2, p4

    :cond_2
    invoke-static {v7, v8}, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->gf2MatrixSquare([J[J)V

    .line 107
    and-long v12, v2, v10

    cmp-long v6, v12, v10

    if-nez v6, :cond_3

    .line 108
    invoke-static {v7, v4, v5}, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->gf2MatrixTimes([JJ)J

    move-result-wide v4

    .line 109
    :cond_3
    ushr-long/2addr v2, v9

    .line 112
    cmp-long v6, v2, v0

    if-nez v6, :cond_4

    .line 113
    goto :goto_1

    .line 116
    :cond_4
    invoke-static {v8, v7}, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->gf2MatrixSquare([J[J)V

    .line 117
    and-long v12, v2, v10

    cmp-long v6, v12, v10

    if-nez v6, :cond_5

    .line 118
    invoke-static {v8, v4, v5}, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->gf2MatrixTimes([JJ)J

    move-result-wide v4

    .line 119
    :cond_5
    ushr-long/2addr v2, v9

    .line 122
    cmp-long v6, v2, v0

    if-nez v6, :cond_2

    .line 125
    :goto_1
    xor-long v0, v4, p2

    .line 126
    return-wide v0
.end method

.method private static gf2MatrixSquare([J[J)V
    .locals 3

    .line 66
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    .line 67
    aget-wide v1, p1, v0

    invoke-static {p1, v1, v2}, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->gf2MatrixTimes([JJ)J

    move-result-wide v1

    aput-wide v1, p0, v0

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method

.method private static gf2MatrixTimes([JJ)J
    .locals 9

    .line 54
    nop

    .line 55
    nop

    .line 56
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v4, v2

    move-wide v2, v0

    :goto_0
    cmp-long v5, p1, v0

    if-eqz v5, :cond_1

    .line 57
    const-wide/16 v5, 0x1

    and-long v7, p1, v5

    cmp-long v5, v7, v5

    if-nez v5, :cond_0

    .line 58
    aget-wide v5, p0, v4

    xor-long/2addr v2, v5

    .line 59
    :cond_0
    const/4 v5, 0x1

    ushr-long/2addr p1, v5

    .line 60
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 62
    :cond_1
    return-wide v2
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .line 133
    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->value:J

    return-wide v0
.end method

.method public reset()V
    .locals 2

    .line 138
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->value:J

    .line 139
    return-void
.end method

.method public update(I)V
    .locals 2

    .line 143
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 144
    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 145
    array-length p1, v0

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->update([BI)V

    .line 146
    return-void
.end method

.method public update([BI)V
    .locals 1

    .line 152
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->update([BII)V

    .line 153
    return-void
.end method

.method public update([BII)V
    .locals 12

    .line 158
    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->value:J

    not-long v0, v0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->value:J

    .line 162
    nop

    .line 163
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    const-wide/16 v3, 0xff

    if-lt p3, v2, :cond_0

    .line 164
    sget-object v5, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->table:[[J

    const/4 v6, 0x7

    aget-object v5, v5, v6

    iget-wide v6, p0, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->value:J

    and-long/2addr v6, v3

    aget-byte v8, p1, p2

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    xor-long/2addr v6, v8

    long-to-int v6, v6

    aget-wide v5, v5, v6

    sget-object v7, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->table:[[J

    const/4 v8, 0x6

    aget-object v7, v7, v8

    iget-wide v8, p0, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->value:J

    ushr-long/2addr v8, v2

    and-long/2addr v8, v3

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v10, v2

    xor-long/2addr v8, v10

    long-to-int v2, v8

    aget-wide v7, v7, v2

    xor-long/2addr v5, v7

    sget-object v2, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->table:[[J

    const/4 v7, 0x5

    aget-object v2, v2, v7

    iget-wide v7, p0, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->value:J

    const/16 v9, 0x10

    ushr-long/2addr v7, v9

    and-long/2addr v7, v3

    add-int/lit8 v9, p2, 0x2

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    int-to-long v9, v9

    xor-long/2addr v7, v9

    long-to-int v7, v7

    aget-wide v7, v2, v7

    xor-long/2addr v5, v7

    sget-object v2, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->table:[[J

    const/4 v7, 0x4

    aget-object v2, v2, v7

    iget-wide v7, p0, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->value:J

    const/16 v9, 0x18

    ushr-long/2addr v7, v9

    and-long/2addr v7, v3

    add-int/lit8 v9, p2, 0x3

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    int-to-long v9, v9

    xor-long/2addr v7, v9

    long-to-int v7, v7

    aget-wide v7, v2, v7

    xor-long/2addr v5, v7

    sget-object v2, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->table:[[J

    const/4 v7, 0x3

    aget-object v2, v2, v7

    iget-wide v7, p0, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->value:J

    const/16 v9, 0x20

    ushr-long/2addr v7, v9

    and-long/2addr v7, v3

    add-int/lit8 v9, p2, 0x4

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    int-to-long v9, v9

    xor-long/2addr v7, v9

    long-to-int v7, v7

    aget-wide v7, v2, v7

    xor-long/2addr v5, v7

    sget-object v2, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->table:[[J

    const/4 v7, 0x2

    aget-object v2, v2, v7

    iget-wide v7, p0, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->value:J

    const/16 v9, 0x28

    ushr-long/2addr v7, v9

    and-long/2addr v7, v3

    add-int/lit8 v9, p2, 0x5

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    int-to-long v9, v9

    xor-long/2addr v7, v9

    long-to-int v7, v7

    aget-wide v7, v2, v7

    xor-long/2addr v5, v7

    sget-object v2, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->table:[[J

    aget-object v1, v2, v1

    iget-wide v7, p0, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->value:J

    const/16 v2, 0x30

    ushr-long/2addr v7, v2

    and-long v2, v7, v3

    add-int/lit8 v4, p2, 0x6

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v7, v4

    xor-long/2addr v2, v7

    long-to-int v2, v2

    aget-wide v1, v1, v2

    xor-long/2addr v1, v5

    sget-object v3, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->table:[[J

    aget-object v0, v3, v0

    iget-wide v3, p0, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->value:J

    const/16 v5, 0x38

    ushr-long/2addr v3, v5

    add-int/lit8 v5, p2, 0x7

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    xor-long/2addr v3, v5

    long-to-int v3, v3

    aget-wide v3, v0, v3

    xor-long v0, v1, v3

    iput-wide v0, p0, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->value:J

    .line 172
    add-int/lit8 p2, p2, 0x8

    .line 173
    add-int/lit8 p3, p3, -0x8

    goto/16 :goto_0

    .line 177
    :cond_0
    :goto_1
    if-lez p3, :cond_1

    .line 178
    sget-object v5, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->table:[[J

    aget-object v5, v5, v0

    iget-wide v6, p0, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->value:J

    aget-byte v8, p1, p2

    int-to-long v8, v8

    xor-long/2addr v6, v8

    and-long/2addr v6, v3

    long-to-int v6, v6

    aget-wide v5, v5, v6

    iget-wide v7, p0, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->value:J

    ushr-long/2addr v7, v2

    xor-long/2addr v5, v7

    iput-wide v5, p0, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->value:J

    .line 179
    add-int/2addr p2, v1

    .line 180
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    .line 183
    :cond_1
    iget-wide p1, p0, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->value:J

    not-long p1, p1

    iput-wide p1, p0, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->value:J

    .line 184
    return-void
.end method
