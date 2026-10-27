.class public abstract Lcom/xiaopeng/commonfunc/utils/tftp/g;
.super Lcom/xiaopeng/commonfunc/utils/tftp/j;
.source "TFTPOptionsRequestPacket.java"


# static fields
.field private static final pJ:[B

.field private static final pK:[B


# instance fields
.field protected pL:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaopeng/commonfunc/utils/tftp/g;->pJ:[B

    .line 31
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/xiaopeng/commonfunc/utils/tftp/g;->pK:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x62t
        0x6ct
        0x6bt
        0x73t
        0x69t
        0x7at
        0x65t
    .end array-data

    :array_1
    .array-data 1
        0x74t
        0x73t
        0x69t
        0x7at
        0x65t
    .end array-data
.end method

.method constructor <init>(Ljava/net/InetAddress;IIILjava/lang/String;JI)V
    .locals 7

    .line 39
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/xiaopeng/commonfunc/utils/tftp/j;-><init>(Ljava/net/InetAddress;IIILjava/lang/String;I)V

    .line 41
    iput-wide p6, p0, Lcom/xiaopeng/commonfunc/utils/tftp/g;->pL:J

    .line 42
    return-void
.end method

.method private eO()[B
    .locals 8

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/g;->pS:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 68
    sget-object v1, Lcom/xiaopeng/commonfunc/utils/tftp/g;->pP:[[B

    iget v2, p0, Lcom/xiaopeng/commonfunc/utils/tftp/g;->pR:I

    aget-object v1, v1, v2

    array-length v1, v1

    .line 70
    sget-object v2, Lcom/xiaopeng/commonfunc/utils/tftp/g;->pJ:[B

    array-length v2, v2

    .line 73
    iget v3, p0, Lcom/xiaopeng/commonfunc/utils/tftp/g;->pM:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 75
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    .line 77
    sget-object v5, Lcom/xiaopeng/commonfunc/utils/tftp/g;->pK:[B

    array-length v5, v5

    .line 78
    iget-wide v6, p0, Lcom/xiaopeng/commonfunc/utils/tftp/g;->pL:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    .line 80
    const/4 v7, 0x2

    add-int/2addr v7, v0

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v7, v1

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v7, v4

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v7, v5

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v7, v6

    add-int/lit8 v7, v7, 0x1

    .line 83
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 84
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 85
    iget v2, p0, Lcom/xiaopeng/commonfunc/utils/tftp/g;->_type:I

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 86
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/utils/tftp/g;->pS:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 87
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 88
    sget-object v2, Lcom/xiaopeng/commonfunc/utils/tftp/g;->pP:[[B

    iget v4, p0, Lcom/xiaopeng/commonfunc/utils/tftp/g;->pR:I

    aget-object v2, v2, v4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 89
    sget-object v2, Lcom/xiaopeng/commonfunc/utils/tftp/g;->pJ:[B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 90
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 91
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 92
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 94
    sget-object v2, Lcom/xiaopeng/commonfunc/utils/tftp/g;->pK:[B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 95
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 97
    iget-wide v2, p0, Lcom/xiaopeng/commonfunc/utils/tftp/g;->pL:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 98
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 100
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(Ljava/net/DatagramPacket;[B)Ljava/net/DatagramPacket;
    .locals 3

    .line 52
    invoke-direct {p0}, Lcom/xiaopeng/commonfunc/utils/tftp/g;->eO()[B

    move-result-object v0

    .line 54
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p2, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 56
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/utils/tftp/g;->pO:Ljava/net/InetAddress;

    invoke-virtual {p1, v1}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 57
    iget v1, p0, Lcom/xiaopeng/commonfunc/utils/tftp/g;->pN:I

    invoke-virtual {p1, v1}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 58
    invoke-virtual {p1, p2}, Ljava/net/DatagramPacket;->setData([B)V

    .line 59
    array-length p2, v0

    invoke-virtual {p1, p2}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 61
    return-object p1
.end method
