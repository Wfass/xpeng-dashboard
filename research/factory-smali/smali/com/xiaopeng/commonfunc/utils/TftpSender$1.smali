.class Lcom/xiaopeng/commonfunc/utils/TftpSender$1;
.super Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;
.source "TftpSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/commonfunc/utils/TftpSender;->sendFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;-><init>()V

    return-void
.end method


# virtual methods
.method protected trace(Ljava/lang/String;Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;)V
    .locals 3
    .param p1, "direction"    # Ljava/lang/String;
    .param p2, "packet"    # Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;

    .line 31
    const-string v0, "TftpSender"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", packet:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    return-void
.end method
