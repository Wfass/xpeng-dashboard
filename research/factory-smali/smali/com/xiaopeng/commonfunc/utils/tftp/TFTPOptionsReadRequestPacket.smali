.class public Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsReadRequestPacket;
.super Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsRequestPacket;
.source "TFTPOptionsReadRequestPacket.java"


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;IILjava/lang/String;JI)V
    .locals 9
    .param p1, "destination"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "segmentSize"    # I
    .param p4, "filename"    # Ljava/lang/String;
    .param p5, "fileSize"    # J
    .param p7, "mode"    # I

    .line 40
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    move-wide v6, p5

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsRequestPacket;-><init>(Ljava/net/InetAddress;IIILjava/lang/String;JI)V

    .line 41
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsRequestPacket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " RRQ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsReadRequestPacket;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsReadRequestPacket;->getMode()I

    move-result v1

    invoke-static {v1}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTP;->getModeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
