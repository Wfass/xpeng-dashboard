.class public Lcom/xiaopeng/commonfunc/utils/p;
.super Ljava/lang/Object;
.source "TftpSender.java"


# static fields
.field public static final ps:Ljava/lang/String;

.field public static final pt:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-string v0, "TBOX_CAN_DATA_SERVER_IP"

    invoke-static {v0}, Lcom/xiaopeng/a/a$a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/utils/p;->ps:Ljava/lang/String;

    .line 19
    const-string v0, "TBOX_SUPPORT_SSH"

    invoke-static {v0}, Lcom/xiaopeng/a/a$a;->dZ(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/commonfunc/utils/p;->pt:Z

    return-void
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

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

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    new-instance v0, Lcom/xiaopeng/commonfunc/utils/p$1;

    invoke-direct {v0}, Lcom/xiaopeng/commonfunc/utils/p$1;-><init>()V

    .line 85
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/xiaopeng/commonfunc/utils/tftp/c;->fu(I)V

    .line 86
    nop

    .line 88
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 96
    nop

    .line 99
    :try_start_1
    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/utils/tftp/c;->open()V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_4

    .line 104
    nop

    .line 107
    const/4 v4, 0x1

    const/16 v7, 0x2000

    move-object v2, v0

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    :try_start_2
    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/commonfunc/utils/tftp/c;->a(Ljava/lang/String;ILjava/io/OutputStream;Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/utils/tftp/c;->close()V

    .line 117
    nop

    .line 118
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception p0

    .line 121
    const-string p1, "Error: error closing file."

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/c;->e(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaopeng/lib/utils/c;->e(Ljava/lang/String;)V

    .line 124
    goto :goto_1

    .line 123
    :goto_0
    goto :goto_1

    .line 115
    :catchall_0
    move-exception p0

    goto :goto_2

    .line 111
    :catch_1
    move-exception p0

    .line 112
    :try_start_4
    const-string p2, "Error: I/O exception occurred while receiving file."

    invoke-static {p2}, Lcom/xiaopeng/lib/utils/c;->e(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaopeng/lib/utils/c;->e(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 115
    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/utils/tftp/c;->close()V

    .line 117
    nop

    .line 118
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 108
    :catch_2
    move-exception p0

    .line 109
    :try_start_6
    const-string p2, "Error: could not resolve hostname."

    invoke-static {p2}, Lcom/xiaopeng/lib/utils/c;->e(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaopeng/lib/utils/c;->e(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 115
    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/utils/tftp/c;->close()V

    .line 117
    nop

    .line 118
    :try_start_7
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    .line 125
    :goto_1
    return-void

    .line 115
    :goto_2
    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/utils/tftp/c;->close()V

    .line 117
    nop

    .line 118
    :try_start_8
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    .line 120
    :catch_3
    move-exception p1

    .line 121
    const-string p2, "Error: error closing file."

    invoke-static {p2}, Lcom/xiaopeng/lib/utils/c;->e(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/c;->e(Ljava/lang/String;)V

    nop

    .line 123
    :goto_3
    throw p0

    .line 100
    :catch_4
    move-exception p0

    .line 101
    const-string p1, "Error: could not open local UDP socket."

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/c;->e(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaopeng/lib/utils/c;->e(Ljava/lang/String;)V

    .line 103
    return-void

    .line 91
    :catch_5
    move-exception p0

    .line 92
    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/utils/tftp/c;->close()V

    .line 93
    const-string p1, "Error: could not open local file for writing."

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/c;->e(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaopeng/lib/utils/c;->e(Ljava/lang/String;)V

    .line 95
    return-void
.end method
