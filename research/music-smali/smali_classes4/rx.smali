.class public Lrx;
.super Ljava/lang/Object;
.source "ClassReader.java"


# instance fields
.field public final a:[B

.field public final b:I

.field private final c:[I

.field private final d:[Ljava/lang/String;

.field private final e:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 9

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    .line 23
    new-array v1, v1, [B

    .line 25
    :cond_0
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_6

    .line 34
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 35
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lrx;->a:[B

    const/16 p1, 0x8

    .line 39
    invoke-direct {p0, p1}, Lrx;->a(I)I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lrx;->c:[I

    .line 40
    iget-object p1, p0, Lrx;->c:[I

    array-length p1, p1

    .line 41
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lrx;->d:[Ljava/lang/String;

    const/16 v0, 0xa

    const/4 v1, 0x1

    move v2, v0

    move v0, v1

    :goto_1
    if-ge v0, p1, :cond_5

    .line 45
    iget-object v3, p0, Lrx;->c:[I

    add-int/lit8 v5, v2, 0x1

    aput v5, v3, v0

    .line 47
    iget-object v3, p0, Lrx;->a:[B

    aget-byte v3, v3, v2

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    if-eq v3, v1, :cond_3

    const/16 v5, 0xf

    if-eq v3, v5, :cond_2

    const/16 v5, 0x12

    if-eq v3, v5, :cond_4

    if-eq v3, v8, :cond_4

    if-eq v3, v7, :cond_4

    if-eq v3, v6, :cond_1

    const/4 v5, 0x6

    if-eq v3, v5, :cond_1

    packed-switch v3, :pswitch_data_0

    move v6, v8

    goto :goto_2

    :cond_1
    const/16 v6, 0x9

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v6, v7

    goto :goto_2

    .line 66
    :cond_3
    invoke-direct {p0, v5}, Lrx;->a(I)I

    move-result v3

    add-int/lit8 v6, v3, 0x3

    if-le v6, v4, :cond_4

    move v4, v6

    :cond_4
    :goto_2
    :pswitch_0
    add-int/2addr v2, v6

    add-int/2addr v0, v1

    goto :goto_1

    .line 79
    :cond_5
    iput v4, p0, Lrx;->e:I

    .line 81
    iput v2, p0, Lrx;->b:I

    return-void

    :cond_6
    if-lez v2, :cond_0

    .line 31
    invoke-virtual {v0, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private a(I)I
    .locals 2

    .line 235
    iget-object v0, p0, Lrx;->a:[B

    .line 236
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    return p1
.end method

.method private a(Lsi;[CI)I
    .locals 9

    .line 161
    invoke-direct {p0, p3}, Lrx;->a(I)I

    move-result v0

    add-int/lit8 v1, p3, 0x2

    .line 162
    invoke-direct {p0, v1, p2}, Lrx;->a(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p3, 0x4

    .line 163
    invoke-direct {p0, v2, p2}, Lrx;->a(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, p3, 0x6

    .line 167
    invoke-direct {p0, v3}, Lrx;->a(I)I

    move-result v3

    add-int/lit8 p3, p3, 0x8

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-lez v3, :cond_1

    .line 170
    invoke-direct {p0, p3, p2}, Lrx;->a(I[C)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, p3, 0x2

    .line 171
    invoke-direct {p0, v7}, Lrx;->b(I)I

    move-result v7

    add-int/lit8 p3, p3, 0x6

    const-string v8, "Code"

    .line 175
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, p3

    :cond_0
    add-int/2addr p3, v7

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {p1, v0, v1, v2}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;)Lsd;

    move-result-object p1

    if-eqz p1, :cond_7

    if-eqz v5, :cond_7

    add-int/lit8 v0, v5, 0x4

    .line 186
    invoke-direct {p0, v0}, Lrx;->b(I)I

    move-result v0

    add-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v0

    .line 191
    invoke-direct {p0, v5}, Lrx;->a(I)I

    move-result v0

    add-int/lit8 v5, v5, 0x2

    :goto_1
    if-lez v0, :cond_2

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 200
    :cond_2
    invoke-direct {p0, v5}, Lrx;->a(I)I

    move-result v0

    add-int/lit8 v5, v5, 0x2

    move v1, v4

    :goto_2
    if-lez v0, :cond_5

    .line 203
    invoke-direct {p0, v5, p2}, Lrx;->a(I[C)Ljava/lang/String;

    move-result-object v2

    const-string v3, "LocalVariableTable"

    .line 204
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v2, v5, 0x6

    move v4, v2

    goto :goto_3

    :cond_3
    const-string v3, "LocalVariableTypeTable"

    .line 206
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v1, v5, 0x6

    :cond_4
    :goto_3
    add-int/lit8 v2, v5, 0x2

    .line 209
    invoke-direct {p0, v2}, Lrx;->b(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    add-int/2addr v5, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_5
    if-eqz v4, :cond_7

    if-eqz v1, :cond_6

    .line 215
    invoke-direct {p0, v1}, Lrx;->a(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    :goto_4
    if-lez v0, :cond_6

    add-int/lit8 v0, v0, -0x3

    goto :goto_4

    .line 222
    :cond_6
    invoke-direct {p0, v4}, Lrx;->a(I)I

    move-result v0

    add-int/lit8 v4, v4, 0x2

    :goto_5
    if-lez v0, :cond_7

    add-int/lit8 v1, v4, 0x8

    .line 225
    invoke-direct {p0, v1}, Lrx;->a(I)I

    move-result v1

    add-int/lit8 v2, v4, 0x4

    .line 226
    invoke-direct {p0, v2, p2}, Lrx;->a(I[C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lsd;->a(Ljava/lang/String;I)V

    add-int/lit8 v4, v4, 0xa

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_7
    return p3
.end method

.method private a(II[C)Ljava/lang/String;
    .locals 9

    add-int/2addr p2, p1

    .line 257
    iget-object v0, p0, Lrx;->a:[B

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    if-ge p1, p2, :cond_5

    add-int/lit8 v5, p1, 0x1

    .line 263
    aget-byte p1, v0, p1

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v3, :cond_2

    if-eq v3, v7, :cond_1

    if-eq v3, v6, :cond_0

    goto :goto_2

    :cond_0
    shl-int/lit8 v3, v4, 0x6

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v3

    :goto_1
    int-to-char p1, p1

    move v4, p1

    move v3, v7

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v2, 0x1

    shl-int/lit8 v6, v4, 0x6

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v6

    int-to-char p1, p1

    .line 279
    aput-char p1, p3, v2

    move v2, v3

    move v3, v1

    goto :goto_2

    :cond_2
    and-int/lit16 p1, p1, 0xff

    const/16 v8, 0x80

    if-ge p1, v8, :cond_3

    add-int/lit8 v6, v2, 0x1

    int-to-char p1, p1

    .line 268
    aput-char p1, p3, v2

    move v2, v6

    goto :goto_2

    :cond_3
    const/16 v3, 0xe0

    if-ge p1, v3, :cond_4

    const/16 v3, 0xbf

    if-le p1, v3, :cond_4

    and-int/lit8 p1, p1, 0x1f

    goto :goto_1

    :cond_4
    and-int/lit8 p1, p1, 0xf

    int-to-char p1, p1

    move v4, p1

    move v3, v6

    :goto_2
    move p1, v5

    goto :goto_0

    .line 289
    :cond_5
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object p1
.end method

.method private a(I[C)Ljava/lang/String;
    .locals 3

    .line 246
    invoke-direct {p0, p1}, Lrx;->a(I)I

    move-result p1

    .line 247
    iget-object v0, p0, Lrx;->d:[Ljava/lang/String;

    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    return-object v1

    .line 251
    :cond_0
    iget-object v1, p0, Lrx;->c:[I

    aget v1, v1, p1

    add-int/lit8 v2, v1, 0x2

    .line 252
    invoke-direct {p0, v1}, Lrx;->a(I)I

    move-result v1

    invoke-direct {p0, v2, v1, p2}, Lrx;->a(II[C)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    return-object p2
.end method

.method private b(I)I
    .locals 3

    .line 240
    iget-object v0, p0, Lrx;->a:[B

    .line 241
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x3

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    return p1
.end method


# virtual methods
.method public a(Lsi;)V
    .locals 7

    .line 85
    iget v0, p0, Lrx;->e:I

    new-array v0, v0, [C

    .line 103
    iget v1, p0, Lrx;->b:I

    add-int/lit8 v2, v1, 0x6

    .line 104
    invoke-direct {p0, v2}, Lrx;->a(I)I

    move-result v2

    add-int/lit8 v1, v1, 0x8

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 110
    :cond_0
    invoke-direct {p0, v1}, Lrx;->a(I)I

    move-result v2

    add-int/lit8 v3, v1, 0x2

    move v4, v3

    :goto_1
    if-lez v2, :cond_2

    add-int/lit8 v5, v4, 0x6

    .line 113
    invoke-direct {p0, v5}, Lrx;->a(I)I

    move-result v5

    add-int/lit8 v4, v4, 0x8

    :goto_2
    if-lez v5, :cond_1

    add-int/lit8 v6, v4, 0x2

    .line 116
    invoke-direct {p0, v6}, Lrx;->b(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x6

    add-int/2addr v4, v6

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 119
    :cond_2
    invoke-direct {p0, v4}, Lrx;->a(I)I

    move-result v2

    add-int/lit8 v4, v4, 0x2

    :goto_3
    if-lez v2, :cond_4

    add-int/lit8 v5, v4, 0x6

    .line 122
    invoke-direct {p0, v5}, Lrx;->a(I)I

    move-result v5

    add-int/lit8 v4, v4, 0x8

    :goto_4
    if-lez v5, :cond_3

    add-int/lit8 v6, v4, 0x2

    .line 125
    invoke-direct {p0, v6}, Lrx;->b(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x6

    add-int/2addr v4, v6

    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 129
    :cond_4
    invoke-direct {p0, v4}, Lrx;->a(I)I

    move-result v2

    add-int/lit8 v4, v4, 0x2

    :goto_5
    if-lez v2, :cond_5

    add-int/lit8 v5, v4, 0x2

    .line 132
    invoke-direct {p0, v5}, Lrx;->b(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x6

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 136
    :cond_5
    invoke-direct {p0, v1}, Lrx;->a(I)I

    move-result v1

    :goto_6
    if-lez v1, :cond_7

    add-int/lit8 v2, v3, 0x6

    .line 139
    invoke-direct {p0, v2}, Lrx;->a(I)I

    move-result v2

    add-int/lit8 v3, v3, 0x8

    :goto_7
    if-lez v2, :cond_6

    add-int/lit8 v4, v3, 0x2

    .line 142
    invoke-direct {p0, v4}, Lrx;->b(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x6

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 147
    :cond_7
    invoke-direct {p0, v3}, Lrx;->a(I)I

    move-result v1

    add-int/lit8 v3, v3, 0x2

    :goto_8
    if-lez v1, :cond_8

    .line 151
    invoke-direct {p0, p1, v0, v3}, Lrx;->a(Lsi;[CI)I

    move-result v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_8
    return-void
.end method
