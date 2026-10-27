.class public final Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsWriteRequestPacket;
.super Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsRequestPacket;
.source "TFTPOptionsWriteRequestPacket.java"


# direct methods
.method constructor <init>(ILjava/net/DatagramPacket;)V
    .locals 1
    .param p1, "segmentSize"    # I
    .param p2, "datagram"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException;
        }
    .end annotation

    .line 73
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsRequestPacket;-><init>(IILjava/net/DatagramPacket;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;IILjava/lang/String;JI)V
    .locals 9
    .param p1, "destination"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "segmentSize"    # I
    .param p4, "filename"    # Ljava/lang/String;
    .param p5, "fileSize"    # J
    .param p7, "mode"    # I

    .line 59
    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    move-wide v6, p5

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsRequestPacket;-><init>(Ljava/net/InetAddress;IIILjava/lang/String;JI)V

    .line 60
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsRequestPacket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WRQ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsWriteRequestPacket;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsWriteRequestPacket;->getMode()I

    move-result v1

    invoke-static {v1}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTP;->getModeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
