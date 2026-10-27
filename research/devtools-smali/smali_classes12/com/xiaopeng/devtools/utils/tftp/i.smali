.class public final Lcom/xiaopeng/devtools/utils/tftp/i;
.super Lcom/xiaopeng/devtools/utils/tftp/j;
.source "TFTPReadRequestPacket.java"


# direct methods
.method constructor <init>(ILjava/net/DatagramPacket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/devtools/utils/tftp/TFTPPacketException;
        }
    .end annotation

    .line 73
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/xiaopeng/devtools/utils/tftp/j;-><init>(IILjava/net/DatagramPacket;)V

    .line 74
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/xiaopeng/devtools/utils/tftp/j;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " RRQ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/utils/tftp/i;->eP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/utils/tftp/i;->getMode()I

    move-result v1

    invoke-static {v1}, Lcom/xiaopeng/devtools/utils/tftp/a;->bJ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
