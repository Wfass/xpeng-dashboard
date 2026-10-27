.class public Lcom/xiaopeng/factory/utils/ScpUtil;
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

.field public static final HOST_AVM:Ljava/lang/String; = "172.20.1.57"

.field public static final HOST_ICM:Ljava/lang/String; = "172.20.1.40"

.field public static final HOST_NCM_ICM:Ljava/lang/String; = "[fe80::22ff:fe44:6688%xpusb0]"

.field public static final HOST_QNX:Ljava/lang/String; = "172.20.1.40"

.field public static final HOST_TBOX:Ljava/lang/String; = "192.168.225.1"

.field private static final PATH_SCP_BIN:Ljava/lang/String; = "/system/bin/scp"

.field private static final QNX_VAR_FOLDER:Ljava/lang/String; = "/var/"

.field public static final SCP_CMD_SUCCESS_RESULT:Ljava/lang/String; = "Exit status 0"

.field private static final SHELL_COMMAND_PS_GREP:Ljava/lang/String; = "ps -elf | grep "

.field public static final SSH_AVM_USER:Ljava/lang/String; = "xp"

.field public static final SSH_ROOT_USER:Ljava/lang/String; = "root"

.field private static final TAG:Ljava/lang/String; = "ScpUtil"

.field public static final TBOX_SCP_PUBKEY:Ljava/lang/String; = "/data/etc/ssh/id_rsa_tbox"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static composeSshCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "sshCmd"    # Ljava/lang/String;
    .param p1, "remoteCmd"    # Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static genScpFromServerCmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "user"    # Ljava/lang/String;
    .param p1, "hostIp"    # Ljava/lang/String;
    .param p2, "srcLogPath"    # Ljava/lang/String;
    .param p3, "destLogPath"    # Ljava/lang/String;
    .param p4, "publicKey"    # Ljava/lang/String;

    .line 81
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/system/bin/scp"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, " -v -o StrictHostKeyChecking=no -r "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-static {p4}, Lcom/xiaopeng/factory/utils/FileUtil;->isExistFilePath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    const-string v1, " -i "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 82
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_2
    :goto_0
    const-string v0, "ScpUtil"

    const-string v1, "path is empty"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public static genScpFromServerCmd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "user"    # Ljava/lang/String;
    .param p1, "hostIp"    # Ljava/lang/String;
    .param p2, "srcLogPath"    # [Ljava/lang/String;
    .param p3, "destLogPath"    # Ljava/lang/String;

    .line 57
    array-length v0, p2

    if-lez v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/system/bin/scp"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, " -v -o StrictHostKeyChecking=no -r "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p2, v2

    .line 66
    .local v3, "srcLog":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "@"

    .line 67
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    .line 69
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    .line 71
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .end local v3    # "srcLog":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 58
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_2
    :goto_1
    const-string v0, "ScpUtil"

    const-string v1, "srcLogPath is empty"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
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

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/system/bin/scp"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, " -v -o StrictHostKeyChecking=no "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-static {p4}, Lcom/xiaopeng/factory/utils/FileUtil;->isExistFilePath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    const-string v1, " -i "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
