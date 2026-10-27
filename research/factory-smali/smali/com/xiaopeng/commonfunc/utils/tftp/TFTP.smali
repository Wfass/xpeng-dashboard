.class public Lcom/xiaopeng/commonfunc/utils/tftp/TFTP;
.super Lorg/apache/commons/net/DatagramSocketClient;
.source "TFTP.java"


# static fields
.field public static final ASCII_MODE:I = 0x0

.field public static final BINARY_MODE:I = 0x1

.field public static final DEFAULT_PORT:I = 0x45

.field public static final DEFAULT_TIMEOUT:I = 0xea60

.field public static final IMAGE_MODE:I = 0x1

.field public static final NETASCII_MODE:I = 0x0

.field public static final OCTET_MODE:I = 0x1

.field public static final SEGMENT_SEZE:I = 0x2000


# instance fields
.field private __receiveBuffer:[B

.field private __receiveDatagram:Ljava/net/DatagramPacket;

.field private __sendDatagram:Ljava/net/DatagramPacket;

.field _sendBuffer:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 106
    invoke-direct {p0}, Lorg/apache/commons/net/DatagramSocketClient;-><init>()V

    .line 107
    const v0, 0xea60

    invoke-virtual {p0, v0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTP;->setDefaultTimeout(I)V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTP;->__receiveBuffer:[B

    .line 109
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTP;->__receiveDatagram:Ljava/net/DatagramPacket;

    .line 110
    return-void
.end method

.method public static final getModeName(I)Ljava/lang/String;
    .locals 1
    .param p0, "mode"    # I

    .line 121
    sget-object v0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPRequestPacket;->_modeStrings:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method


# virtual methods
.method public final beginBufferedOps(I)V
    .locals 4
    .param p1, "segmentSize"    # I

    .line 239
    invoke-virtual {p0, p1}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTP;->getPacketSize(I)I

    move-result v0

    .line 241
    .local v0, "packetSize":I
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTP;->__receiveBuffer:[B

    .line 242
    new-instance v1, Ljava/net/DatagramPacket;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTP;->__receiveBuffer:[B

    iget-object v3, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTP;->__receiveBuffer:[B

    array-length v3, v3

    invoke-direct {v1, v2, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v1, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTP;->__receiveDatagram:Ljava/net/DatagramPacket;

    .line 244
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTP;->_sendBuffer:[B

    .line 245
    new-instance v1, Ljava/net/DatagramPacket;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTP;->_sendBuffer:[B

    iget-object v3, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTP;->_sendBuffer:[B

    array-length v3, v3

    invoke-direct {v1, v2, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v1, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTP;->__sendDatagram:Ljava/net/DatagramPacket;

    .line 247
    return-void
.end method

.method public final bufferedReceive()Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/InterruptedIOException;,
            Ljava/net/SocketException;,
            Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTP;->__receiveDatagram:Ljava/net/DatagramPacket;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTP;->__receiveBuffer:[B

    invoke-virtual {v0, v1}, Ljava/net/DatagramPacket;->setData([B)V

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTP;->__receiveDatagram:Ljava/net/DatagramPacket;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTP;->__receiveBuffer:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTP;->_socket_:Ljava/net/DatagramSocket;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTP;->__receiveDatagram:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTP;->__receiveDatagram:Ljava/net/DatagramPacket;

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;->newTFTPPacket(Ljava/net/DatagramPacket;)Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;

    move-result-object v0

    .line 201
    .local v0, "newTFTPPacket":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    const-string v1, "<"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTP;->trace(Ljava/lang/String;Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;)V

    .line 202
    return-object v0
.end method

.method public final bufferedSend(Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;)V
    .locals 3
    .param p1, "packet"    # Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    const-string v0, ">"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTP;->trace(Ljava/lang/String;Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;)V

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTP;->_socket_:Ljava/net/DatagramSocket;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTP;->__sendDatagram:Ljava/net/DatagramPacket;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTP;->_sendBuffer:[B

    invoke-virtual {p1, v1, v2}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;->_newDatagram(Ljava/net/DatagramPacket;[B)Ljava/net/DatagramPacket;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 227
    return-void
.end method

.method public final discardPackets(I)V
    .locals 4
    .param p1, "segmentSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    invoke-virtual {p0, p1}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTP;->getPacketSize(I)I

    move-result v0

    .line 147
    .local v0, "packetSize":I
    new-instance v1, Ljava/net/DatagramPacket;

    new-array v2, v0, [B

    invoke-direct {v1, v2, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 149
    .local v1, "datagram":Ljava/net/DatagramPacket;
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTP;->getSoTimeout()I

    move-result v2

    .line 150
    .local v2, "to":I
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTP;->setSoTimeout(I)V

    .line 154
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTP;->_socket_:Ljava/net/DatagramSocket;

    invoke-virtual {v3, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v3

    goto :goto_1

    .line 156
    :catch_1
    move-exception v3

    .line 160
    nop

    .line 162
    :goto_1
    invoke-virtual {p0, v2}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTP;->setSoTimeout(I)V

    .line 163
    return-void
.end method

.method public final endBufferedOps()V
    .locals 1

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTP;->__receiveBuffer:[B

    .line 254
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTP;->__receiveDatagram:Ljava/net/DatagramPacket;

    .line 255
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTP;->_sendBuffer:[B

    .line 256
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTP;->__sendDatagram:Ljava/net/DatagramPacket;

    .line 257
    return-void
.end method

.method getPacketSize(I)I
    .locals 1
    .param p1, "segmentSize"    # I

    .line 132
    add-int/lit8 v0, p1, 0x4

    return v0
.end method

.method public final receive(I)Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .locals 4
    .param p1, "segmentSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/InterruptedIOException;,
            Ljava/net/SocketException;,
            Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException;
        }
    .end annotation

    .line 291
    invoke-virtual {p0, p1}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTP;->getPacketSize(I)I

    move-result v0

    .line 293
    .local v0, "packetSize":I
    new-instance v1, Ljava/net/DatagramPacket;

    new-array v2, v0, [B

    invoke-direct {v1, v2, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 295
    .local v1, "packet":Ljava/net/DatagramPacket;
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTP;->_socket_:Ljava/net/DatagramSocket;

    invoke-virtual {v2, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 297
    invoke-static {v1}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;->newTFTPPacket(Ljava/net/DatagramPacket;)Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;

    move-result-object v2

    .line 298
    .local v2, "newTFTPPacket":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    const-string v3, "<"

    invoke-virtual {p0, v3, v2}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTP;->trace(Ljava/lang/String;Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;)V

    .line 299
    return-object v2
.end method

.method public final send(Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;)V
    .locals 2
    .param p1, "packet"    # Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    const-string v0, ">"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTP;->trace(Ljava/lang/String;Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;)V

    .line 268
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTP;->_socket_:Ljava/net/DatagramSocket;

    invoke-virtual {p1}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;->newDatagram()Ljava/net/DatagramPacket;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 269
    return-void
.end method

.method protected trace(Ljava/lang/String;Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;)V
    .locals 0
    .param p1, "direction"    # Ljava/lang/String;
    .param p2, "packet"    # Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;

    .line 313
    return-void
.end method
