.class public abstract Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
.super Ljava/lang/Object;
.source "TFTPPacket.java"


# static fields
.field public static final ACKNOWLEDGEMENT:I = 0x4

.field public static final DATA:I = 0x3

.field public static final DEFAULT_SEGMENT_SIZE:I = 0x200

.field public static final ERROR:I = 0x5

.field static final MIN_PACKET_SIZE:I = 0x4

.field public static final OPTIONS_ACKNOWLEDGEMENT:I = 0x6

.field public static final READ_REQUEST:I = 0x1

.field public static final WRITE_REQUEST:I = 0x2


# instance fields
.field _address:Ljava/net/InetAddress;

.field _port:I

.field _segmentSize:I

.field _type:I


# direct methods
.method constructor <init>(ILjava/net/InetAddress;I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "address"    # Ljava/net/InetAddress;
    .param p3, "port"    # I

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput p1, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;->_type:I

    .line 118
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;->_address:Ljava/net/InetAddress;

    .line 119
    iput p3, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;->_port:I

    .line 120
    return-void
.end method

.method constructor <init>(ILjava/net/InetAddress;II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "address"    # Ljava/net/InetAddress;
    .param p3, "port"    # I
    .param p4, "segmentSize"    # I

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput p1, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;->_type:I

    .line 124
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;->_address:Ljava/net/InetAddress;

    .line 125
    iput p3, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;->_port:I

    .line 126
    iput p4, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;->_segmentSize:I

    .line 127
    return-void
.end method

.method public static final newTFTPPacket(Ljava/net/DatagramPacket;)Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .locals 5
    .param p0, "datagram"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException;
        }
    .end annotation

    .line 144
    const/4 v0, 0x0

    .line 146
    .local v0, "packet":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 151
    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    .line 153
    .local v1, "data":[B
    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v3

    sub-int/2addr v3, v2

    .line 155
    .local v3, "segmentSize":I
    const/4 v2, 0x1

    aget-byte v2, v1, v2

    packed-switch v2, :pswitch_data_0

    .line 173
    new-instance v2, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException;

    const-string v4, "Bad packet.  Invalid TFTP operator code."

    invoke-direct {v2, v4}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 170
    :pswitch_0
    new-instance v2, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPErrorPacket;

    invoke-direct {v2, p0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPErrorPacket;-><init>(Ljava/net/DatagramPacket;)V

    move-object v0, v2

    .line 171
    goto :goto_0

    .line 167
    :pswitch_1
    new-instance v2, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;

    invoke-direct {v2, p0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;-><init>(Ljava/net/DatagramPacket;)V

    move-object v0, v2

    .line 168
    goto :goto_0

    .line 163
    :pswitch_2
    new-instance v2, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;

    invoke-direct {v2, p0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;-><init>(Ljava/net/DatagramPacket;)V

    move-object v0, v2

    .line 164
    goto :goto_0

    .line 160
    :pswitch_3
    new-instance v2, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPWriteRequestPacket;

    invoke-direct {v2, v3, p0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPWriteRequestPacket;-><init>(ILjava/net/DatagramPacket;)V

    move-object v0, v2

    .line 161
    goto :goto_0

    .line 157
    :pswitch_4
    new-instance v2, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPReadRequestPacket;

    invoke-direct {v2, v3, p0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPReadRequestPacket;-><init>(ILjava/net/DatagramPacket;)V

    move-object v0, v2

    .line 158
    nop

    .line 177
    :goto_0
    return-object v0

    .line 147
    .end local v1    # "data":[B
    .end local v3    # "segmentSize":I
    :cond_0
    new-instance v1, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException;

    const-string v2, "Bad packet. Datagram data length is too short."

    invoke-direct {v1, v2}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method abstract _newDatagram(Ljava/net/DatagramPacket;[B)Ljava/net/DatagramPacket;
.end method

.method public final getAddress()Ljava/net/InetAddress;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;->_address:Ljava/net/InetAddress;

    return-object v0
.end method

.method public final getPort()I
    .locals 1

    .line 240
    iget v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;->_port:I

    return v0
.end method

.method public final getType()I
    .locals 1

    .line 213
    iget v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;->_type:I

    return v0
.end method

.method public abstract newDatagram()Ljava/net/DatagramPacket;
.end method

.method public final setAddress(Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "address"    # Ljava/net/InetAddress;

    .line 230
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;->_address:Ljava/net/InetAddress;

    .line 231
    return-void
.end method

.method public final setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .line 248
    iput p1, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;->_port:I

    .line 249
    return-void
.end method

.method public setSegmentSize(I)V
    .locals 0
    .param p1, "size"    # I

    .line 252
    iput p1, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;->_segmentSize:I

    .line 253
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;->_address:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;->_port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;->_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;->_segmentSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
