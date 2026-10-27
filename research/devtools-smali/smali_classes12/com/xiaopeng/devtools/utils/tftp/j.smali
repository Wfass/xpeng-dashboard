.class public abstract Lcom/xiaopeng/devtools/utils/tftp/j;
.super Lcom/xiaopeng/devtools/utils/tftp/h;
.source "TFTPRequestPacket.java"


# static fields
.field protected static final pP:[[B

.field static final pQ:[Ljava/lang/String;


# instance fields
.field protected pR:I

.field protected pS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 56
    const-string v0, "netascii"

    const-string v1, "octet"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/devtools/utils/tftp/j;->pQ:[Ljava/lang/String;

    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/xiaopeng/devtools/utils/tftp/j;->pP:[[B

    return-void

    nop

    :array_0
    .array-data 1
        0x6et
        0x65t
        0x74t
        0x61t
        0x73t
        0x63t
        0x69t
        0x69t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x6ft
        0x63t
        0x74t
        0x65t
        0x74t
        0x0t
    .end array-data
.end method

.method constructor <init>(IILjava/net/DatagramPacket;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/devtools/utils/tftp/TFTPPacketException;
        }
    .end annotation

    .line 109
    invoke-virtual {p3}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p3}, Ljava/net/DatagramPacket;->getPort()I

    move-result v1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/xiaopeng/devtools/utils/tftp/h;-><init>(ILjava/net/InetAddress;II)V

    .line 111
    iput p2, p0, Lcom/xiaopeng/devtools/utils/tftp/j;->pM:I

    .line 113
    invoke-virtual {p3}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object p1

    .line 115
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/utils/tftp/j;->getType()I

    move-result p2

    const/4 v0, 0x1

    aget-byte v1, p1, v0

    if-ne p2, v1, :cond_6

    .line 119
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    const/4 v1, 0x2

    .line 122
    invoke-virtual {p3}, Ljava/net/DatagramPacket;->getLength()I

    move-result p3

    .line 124
    :goto_0
    if-ge v1, p3, :cond_0

    aget-byte v2, p1, v1

    if-eqz v2, :cond_0

    .line 125
    aget-byte v2, p1, v1

    int-to-char v2, v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/devtools/utils/tftp/j;->pS:Ljava/lang/String;

    .line 131
    if-ge v1, p3, :cond_5

    .line 135
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 136
    add-int/2addr v1, v0

    .line 137
    :goto_1
    if-ge v1, p3, :cond_1

    aget-byte v0, p1, v1

    if-eqz v0, :cond_1

    .line 138
    aget-byte v0, p1, v1

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 142
    :cond_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 143
    sget-object p2, Lcom/xiaopeng/devtools/utils/tftp/j;->pQ:[Ljava/lang/String;

    array-length p2, p2

    .line 145
    nop

    .line 146
    move p3, v2

    :goto_2
    if-ge p3, p2, :cond_3

    .line 147
    sget-object v0, Lcom/xiaopeng/devtools/utils/tftp/j;->pQ:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    nop

    .line 149
    nop

    .line 153
    move v2, p3

    goto :goto_3

    .line 146
    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 153
    :cond_3
    :goto_3
    iput v2, p0, Lcom/xiaopeng/devtools/utils/tftp/j;->pR:I

    .line 155
    if-ge p3, p2, :cond_4

    .line 161
    return-void

    .line 156
    :cond_4
    new-instance p2, Lcom/xiaopeng/devtools/utils/tftp/TFTPPacketException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unrecognized TFTP transfer mode: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/xiaopeng/devtools/utils/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 132
    :cond_5
    new-instance p1, Lcom/xiaopeng/devtools/utils/tftp/TFTPPacketException;

    const-string p2, "Bad filename and mode format."

    invoke-direct {p1, p2}, Lcom/xiaopeng/devtools/utils/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 116
    :cond_6
    new-instance p1, Lcom/xiaopeng/devtools/utils/tftp/TFTPPacketException;

    const-string p2, "TFTP operator code does not match type."

    invoke-direct {p1, p2}, Lcom/xiaopeng/devtools/utils/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Ljava/net/InetAddress;IIILjava/lang/String;I)V
    .locals 0

    .line 89
    invoke-direct {p0, p3, p1, p2, p4}, Lcom/xiaopeng/devtools/utils/tftp/h;-><init>(ILjava/net/InetAddress;II)V

    .line 91
    iput-object p5, p0, Lcom/xiaopeng/devtools/utils/tftp/j;->pS:Ljava/lang/String;

    .line 92
    iput p6, p0, Lcom/xiaopeng/devtools/utils/tftp/j;->pR:I

    .line 93
    iput p4, p0, Lcom/xiaopeng/devtools/utils/tftp/j;->pM:I

    .line 94
    return-void
.end method


# virtual methods
.method a(Ljava/net/DatagramPacket;[B)Ljava/net/DatagramPacket;
    .locals 5

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/devtools/utils/tftp/j;->pS:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 180
    sget-object v1, Lcom/xiaopeng/devtools/utils/tftp/j;->pP:[[B

    iget v2, p0, Lcom/xiaopeng/devtools/utils/tftp/j;->pR:I

    aget-object v1, v1, v2

    array-length v1, v1

    .line 182
    const/4 v2, 0x0

    aput-byte v2, p2, v2

    .line 183
    iget v3, p0, Lcom/xiaopeng/devtools/utils/tftp/j;->_type:I

    int-to-byte v3, v3

    const/4 v4, 0x1

    aput-byte v3, p2, v4

    .line 184
    iget-object v3, p0, Lcom/xiaopeng/devtools/utils/tftp/j;->pS:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v2, p2, v4, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 185
    add-int/lit8 v3, v0, 0x2

    aput-byte v2, p2, v3

    .line 186
    sget-object v3, Lcom/xiaopeng/devtools/utils/tftp/j;->pP:[[B

    iget v4, p0, Lcom/xiaopeng/devtools/utils/tftp/j;->pR:I

    aget-object v3, v3, v4

    add-int/lit8 v4, v0, 0x3

    invoke-static {v3, v2, p2, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 189
    iget-object v2, p0, Lcom/xiaopeng/devtools/utils/tftp/j;->pO:Ljava/net/InetAddress;

    invoke-virtual {p1, v2}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 190
    iget v2, p0, Lcom/xiaopeng/devtools/utils/tftp/j;->pN:I

    invoke-virtual {p1, v2}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 191
    invoke-virtual {p1, p2}, Ljava/net/DatagramPacket;->setData([B)V

    .line 192
    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 194
    return-object p1
.end method

.method public final eP()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/devtools/utils/tftp/j;->pS:Ljava/lang/String;

    return-object v0
.end method

.method public final getMode()I
    .locals 1

    .line 233
    iget v0, p0, Lcom/xiaopeng/devtools/utils/tftp/j;->pR:I

    return v0
.end method
