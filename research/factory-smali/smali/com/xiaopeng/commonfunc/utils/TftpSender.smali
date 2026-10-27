.class public Lcom/xiaopeng/commonfunc/utils/TftpSender;
.super Ljava/lang/Object;
.source "TftpSender.java"


# static fields
.field public static final HOST_TBOX:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "TftpSender"

.field public static final TBOX_LOG_PATH:Ljava/lang/String; = "/mnt/sdcard/tftpboot/dlt.tar.gz"

.field public static final TBOX_SUPPORT_SSH:Z

.field private static final TIMEOUT:I = 0x2710

.field private static final verbose:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-string v0, "TBOX_CAN_DATA_SERVER_IP"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Case;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/utils/TftpSender;->HOST_TBOX:Ljava/lang/String;

    .line 19
    const-string v0, "TBOX_SUPPORT_SSH"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Case;->getEnabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/commonfunc/utils/TftpSender;->TBOX_SUPPORT_SSH:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static receiveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "remoteFileName"    # Ljava/lang/String;
    .param p1, "localFileName"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;

    .line 73
    const-string v0, "TftpSender"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receiveFile remoteFileName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " localFileName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " host = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    new-instance v0, Lcom/xiaopeng/commonfunc/utils/TftpSender$2;

    invoke-direct {v0}, Lcom/xiaopeng/commonfunc/utils/TftpSender$2;-><init>()V

    .line 85
    .local v0, "tftp":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->setDefaultTimeout(I)V

    .line 86
    const/4 v1, 0x0

    .line 88
    .local v1, "output":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v7, v2

    .line 90
    .local v7, "file":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    move-object v8, v2

    .line 96
    .end local v1    # "output":Ljava/io/FileOutputStream;
    .local v8, "output":Ljava/io/FileOutputStream;
    nop

    .line 99
    :try_start_1
    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->open()V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_4

    .line 104
    nop

    .line 107
    const/4 v3, 0x1

    const/16 v6, 0x2000

    move-object v1, v0

    move-object v2, p0

    move-object v4, v8

    move-object v5, p2

    :try_start_2
    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->close()V

    .line 117
    nop

    .line 118
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Error: error closing file."

    invoke-static {v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 124
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 123
    :goto_0
    goto :goto_1

    .line 115
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 111
    :catch_1
    move-exception v1

    .line 112
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_4
    const-string v2, "Error: I/O exception occurred while receiving file."

    invoke-static {v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 115
    .end local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->close()V

    .line 117
    nop

    .line 118
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 108
    :catch_2
    move-exception v1

    .line 109
    .local v1, "e":Ljava/net/UnknownHostException;
    :try_start_6
    const-string v2, "Error: could not resolve hostname."

    invoke-static {v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 115
    .end local v1    # "e":Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->close()V

    .line 117
    nop

    .line 118
    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    .line 125
    :goto_1
    return-void

    .line 115
    :goto_2
    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->close()V

    .line 117
    nop

    .line 118
    :try_start_8
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    .line 120
    :catch_3
    move-exception v2

    .line 121
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "Error: error closing file."

    invoke-static {v3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/String;)V

    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 123
    :goto_3
    throw v1

    .line 100
    :catch_4
    move-exception v1

    .line 101
    .local v1, "e":Ljava/net/SocketException;
    const-string v2, "Error: could not open local UDP socket."

    invoke-static {v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v1}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 103
    return-void

    .line 91
    .end local v8    # "output":Ljava/io/FileOutputStream;
    .local v1, "output":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v2

    .line 92
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->close()V

    .line 93
    const-string v3, "Error: could not open local file for writing."

    invoke-static {v3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public static sendFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "localFileName"    # Ljava/lang/String;
    .param p1, "remoteFileName"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/xiaopeng/commonfunc/utils/TftpSender$1;

    invoke-direct {v0}, Lcom/xiaopeng/commonfunc/utils/TftpSender$1;-><init>()V

    .line 37
    .local v0, "tftp":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->setDefaultTimeout(I)V

    .line 44
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move-object v7, v1

    .line 49
    .local v7, "input":Ljava/io/FileInputStream;
    nop

    .line 48
    nop

    .line 53
    :try_start_1
    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->open()V

    .line 54
    const/4 v3, 0x1

    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    const/16 v6, 0x2000

    move-object v1, v0

    move-object v2, p1

    move-object v4, v7

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->close()V

    .line 65
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 68
    goto :goto_0

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "TftpSender"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 69
    .end local v1    # "e":Ljava/io/IOException;
    nop

    .line 70
    :goto_0
    return-void

    .line 63
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 58
    :catch_1
    move-exception v1

    .line 59
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_3
    const-string v2, "TftpSender"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 60
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 55
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 56
    .local v1, "e":Ljava/net/UnknownHostException;
    const-string v2, "TftpSender"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 57
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 63
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :goto_1
    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->close()V

    .line 65
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 68
    goto :goto_2

    .line 66
    :catch_3
    move-exception v2

    .line 67
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "TftpSender"

    invoke-static {v3, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 68
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    throw v1

    .line 45
    .end local v7    # "input":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    .line 46
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->close()V

    .line 47
    const-string v2, "TftpSender"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 48
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
