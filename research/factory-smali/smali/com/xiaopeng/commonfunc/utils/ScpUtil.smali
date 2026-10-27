.class public Lcom/xiaopeng/commonfunc/utils/ScpUtil;
.super Ljava/lang/Object;
.source "ScpUtil.java"


# static fields
.field private static final CMD_FILE_SYNC:Ljava/lang/String; = "test_remote_send DLT_SYNC"

.field private static final CMD_MODEM_LOG_START:Ljava/lang/String; = "xp_modem_manager_test_1 -m"

.field private static final CMD_MODEM_LOG_STOP:Ljava/lang/String; = "xp_modem_manager_test_1 -M"

.field private static final CMD_NOFITY_ROUTE_STATE:Ljava/lang/String; = "touch /tmp/noSecurity"

.field private static final CMD_SSH_ICM:Ljava/lang/String; = "/system/bin/ssh -v -o StrictHostKeyChecking=no root@172.20.1.40"

.field private static final CMD_SSH_QNX:Ljava/lang/String; = "/system/bin/ssh -v -o StrictHostKeyChecking=no root@172.20.1.40"

.field private static final CMD_SSH_TBOX:Ljava/lang/String; = "/system/bin/ssh -v -o StrictHostKeyChecking=no root@192.168.225.1"

.field public static final FILE_SCP_PUBKEY:Ljava/lang/String; = "/data/etc/ssh/id_rsa"

.field public static final HOST_AVM:Ljava/lang/String; = "172.20.1.57"

.field public static final HOST_ETH_TBOX:Ljava/lang/String; = "172.20.1.44"

.field public static final HOST_ICM:Ljava/lang/String; = "172.20.1.40"

.field public static final HOST_NCM_ICM:Ljava/lang/String; = "[fe80::22ff:fe44:6688%xpusb0]"

.field public static final HOST_QNX:Ljava/lang/String; = "172.20.1.40"

.field public static final HOST_TBOX:Ljava/lang/String;

.field private static final PATH_SCP_BIN:Ljava/lang/String; = "/system/bin/scp"

.field private static final PATH_SSH_BIN:Ljava/lang/String; = "/system/bin/ssh"

.field private static final QNX_VAR_FOLDER:Ljava/lang/String; = "/var/"

.field public static final SCP_CMD_SUCCESS_RESULT:Ljava/lang/String; = "Exit status 0"

.field private static final SHELL_COMMAND_PS_GREP:Ljava/lang/String; = "ps -elf | grep "

.field private static final SHELL_COMMAND_RM:Ljava/lang/String; = "rm -f "

.field private static final SHELL_COMPRESS_GZ:Ljava/lang/String; = "tar -cvzf "

.field public static final SSH_AVM_USER:Ljava/lang/String; = "xp"

.field public static final SSH_ROOT_USER:Ljava/lang/String; = "root"

.field public static final SSH_XP_USER:Ljava/lang/String; = "xptest"

.field private static final TAG:Ljava/lang/String; = "ScpUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-string v0, "TBOX_CAN_DATA_SERVER_IP"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Case;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/utils/ScpUtil;->HOST_TBOX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static composeSshCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "user"    # Ljava/lang/String;
    .param p1, "hostIp"    # Ljava/lang/String;
    .param p2, "remoteCmd"    # Ljava/lang/String;
    .param p3, "publicKey"    # Ljava/lang/String;

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/system/bin/ssh"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, " -v -o StrictHostKeyChecking=no "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-static {p3}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->isExistFilePath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    const-string v1, " -i "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static genCheckModemStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "user"    # Ljava/lang/String;
    .param p1, "hostIp"    # Ljava/lang/String;
    .param p2, "publicKey"    # Ljava/lang/String;

    .line 178
    const-string v0, "ps -elf | grep diag_mdlog"

    invoke-static {p0, p1, v0, p2}, Lcom/xiaopeng/commonfunc/utils/ScpUtil;->composeSshCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static genCompressFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "user"    # Ljava/lang/String;
    .param p1, "hostIp"    # Ljava/lang/String;
    .param p2, "publicKey"    # Ljava/lang/String;
    .param p3, "destPath"    # Ljava/lang/String;
    .param p4, "srcPath"    # [Ljava/lang/String;

    .line 183
    if-eqz p4, :cond_2

    array-length v0, p4

    if-lez v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 188
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p4

    if-ge v1, v2, :cond_1

    .line 190
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    aget-object v2, p4, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tar -cvzf "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1, p2}, Lcom/xiaopeng/commonfunc/utils/ScpUtil;->composeSshCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 184
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_2
    :goto_1
    const-string v0, "ScpUtil"

    const-string v1, "srcPath or destPath is empty"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method public static genNotifyTboxRouteReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "user"    # Ljava/lang/String;
    .param p1, "hostIp"    # Ljava/lang/String;
    .param p2, "publicKey"    # Ljava/lang/String;

    .line 174
    const-string v0, "touch /tmp/noSecurity"

    invoke-static {p0, p1, v0, p2}, Lcom/xiaopeng/commonfunc/utils/ScpUtil;->composeSshCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static genQnxDf()Ljava/lang/String;
    .locals 2

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/system/bin/ssh -v -o StrictHostKeyChecking=no root@172.20.1.40"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "df -h"

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static genQnxMkDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "folder"    # Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/system/bin/ssh -v -o StrictHostKeyChecking=no root@172.20.1.40"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mkdir "

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static genQnxRmDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "folder"    # Ljava/lang/String;

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/system/bin/ssh -v -o StrictHostKeyChecking=no root@172.20.1.40"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "rm -rf "

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static genRemoveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "user"    # Ljava/lang/String;
    .param p1, "hostIp"    # Ljava/lang/String;
    .param p2, "destPath"    # Ljava/lang/String;
    .param p3, "publicKey"    # Ljava/lang/String;

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rm -f "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lcom/xiaopeng/commonfunc/utils/ScpUtil;->composeSshCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static genScpFromServerCmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "user"    # Ljava/lang/String;
    .param p1, "hostIp"    # Ljava/lang/String;
    .param p2, "srcLogPath"    # Ljava/lang/String;
    .param p3, "destLogPath"    # Ljava/lang/String;
    .param p4, "publicKey"    # Ljava/lang/String;

    .line 94
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/system/bin/scp"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, " -v -o StrictHostKeyChecking=no -r "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-static {p4}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->isExistFilePath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    const-string v1, " -i "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 95
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_2
    :goto_0
    const-string v0, "ScpUtil"

    const-string v1, "path is empty"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public static genScpFromServerCmd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "user"    # Ljava/lang/String;
    .param p1, "hostIp"    # Ljava/lang/String;
    .param p2, "srcLogPath"    # [Ljava/lang/String;
    .param p3, "destLogPath"    # Ljava/lang/String;
    .param p4, "publicKey"    # Ljava/lang/String;

    .line 64
    array-length v0, p2

    if-lez v0, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/system/bin/scp"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, " -v -o StrictHostKeyChecking=no -r "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-static {p4}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->isExistFilePath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    const-string v1, " -i "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :cond_1
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p2, v2

    .line 79
    .local v3, "srcLog":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "@"

    .line 80
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    .line 82
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    .line 84
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .end local v3    # "srcLog":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 65
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_3
    :goto_1
    const-string v0, "ScpUtil"

    const-string v1, "srcLogPath is empty"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public static genScpToServerCmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "user"    # Ljava/lang/String;
    .param p1, "hostIp"    # Ljava/lang/String;
    .param p2, "srcPath"    # Ljava/lang/String;
    .param p3, "destPath"    # Ljava/lang/String;
    .param p4, "publicKey"    # Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/system/bin/scp"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, " -v -o StrictHostKeyChecking=no "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-static {p4}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->isExistFilePath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    const-string v1, " -i "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static genStartModemLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "user"    # Ljava/lang/String;
    .param p1, "hostIp"    # Ljava/lang/String;
    .param p2, "publicKey"    # Ljava/lang/String;

    .line 166
    const-string v0, "xp_modem_manager_test_1 -m"

    invoke-static {p0, p1, v0, p2}, Lcom/xiaopeng/commonfunc/utils/ScpUtil;->composeSshCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static genStopModemLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "user"    # Ljava/lang/String;
    .param p1, "hostIp"    # Ljava/lang/String;
    .param p2, "publicKey"    # Ljava/lang/String;

    .line 170
    const-string v0, "xp_modem_manager_test_1 -M"

    invoke-static {p0, p1, v0, p2}, Lcom/xiaopeng/commonfunc/utils/ScpUtil;->composeSshCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static genTboxDltSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "user"    # Ljava/lang/String;
    .param p1, "hostIp"    # Ljava/lang/String;
    .param p2, "publicKey"    # Ljava/lang/String;

    .line 162
    const-string v0, "test_remote_send DLT_SYNC"

    invoke-static {p0, p1, v0, p2}, Lcom/xiaopeng/commonfunc/utils/ScpUtil;->composeSshCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getQnxVarRestRoom()Ljava/lang/String;
    .locals 4

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "res":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/ScpUtil;->genQnxDf()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/var/"

    invoke-static {v1, v2}, Lcom/xiaopeng/commonfunc/utils/ProcessUtil;->execReturnLine(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "buff":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 156
    aget-object v0, v1, v3

    .line 158
    :cond_0
    return-object v0
.end method
