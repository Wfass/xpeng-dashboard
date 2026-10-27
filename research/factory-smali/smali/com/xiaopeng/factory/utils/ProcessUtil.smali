.class public Lcom/xiaopeng/factory/utils/ProcessUtil;
.super Ljava/lang/Object;
.source "ProcessUtil.java"


# static fields
.field private static final DEFAULT_PING_PACKETS:I = 0x4

.field private static final I2CGET_COMMAND:Ljava/lang/String; = "i2cget -f -y "

.field public static final INSMOD_DRIVER_CMD:Ljava/lang/String; = "insmod"

.field public static final MODEM_LOG_COMMAND:Ljava/lang/String; = "qxdm -o /data/Log/log0/factory -t /dev/ttyUSB3 -c /system/etc/default.bin -s 500"

.field public static final MODEM_LOG_PROCESS:Ljava/lang/String; = "qxdm"

.field private static final PHYTOOL_COMMAND_GET_LINK_STAT:Ljava/lang/String; = "get link_stat"

.field private static final PHYTOOL_COMMAND_GET_MASTERSLAVE_MODE:Ljava/lang/String; = "get master"

.field private static final PHYTOOL_COMMAND_GET_SQI:Ljava/lang/String; = "get sqi"

.field private static final PHYTOOL_PROCESS:Ljava/lang/String; = "phytool"

.field private static final PING_COMMAND:Ljava/lang/String; = "ping -c "

.field public static final PING_PROCESS:Ljava/lang/String; = "ping"

.field private static final PING_TIMEOUT:I = 0x1388

.field private static final REGEX_PID_AGING_TEST:Ljava/lang/String; = "\\s+"

.field public static final RMMOD_DRIVER_CMD:Ljava/lang/String; = "rmmod"

.field private static final SHELL_COMMAND_BIN_SH:Ljava/lang/String; = "/bin/sh"

.field private static final SHELL_COMMAND_CTRL:Ljava/lang/String; = "-c"

.field private static final SHELL_COMMAND_KILL:Ljava/lang/String; = "kill -9 "

.field private static final SHELL_COMMAND_PS_GREP:Ljava/lang/String; = "ps -elf | grep "

.field private static final TAG:Ljava/lang/String; = "ProcessUtil"

.field public static final TESTWIFI_24B:Ljava/lang/String; = "b"

.field public static final TESTWIFI_24G:Ljava/lang/String; = "g"

.field public static final TESTWIFI_24N:Ljava/lang/String; = "n"

.field public static final TESTWIFI_PROCESS:Ljava/lang/String; = "test_wifi.sh"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changePemToPkcs12(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "keyPemPath"    # Ljava/lang/String;
    .param p1, "certPemPath"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "outPath"    # Ljava/lang/String;

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openssl pkcs12 -export -inkey "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -password pass:\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" -out "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/factory/utils/ProcessUtil;->runCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static execCommand(Ljava/lang/String;)Ljava/lang/Process;
    .locals 8
    .param p0, "cmd"    # Ljava/lang/String;

    .line 137
    const-string v0, "ProcessUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execCommand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, "process":Ljava/lang/Process;
    const/4 v1, 0x0

    .line 140
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    move-object v3, v2

    .line 142
    .local v3, "isr":Ljava/io/InputStreamReader;
    :try_start_0
    invoke-static {p0}, Lcom/xiaopeng/factory/utils/ProcessUtil;->execProcess(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    move-object v0, v4

    .line 143
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v3, v4

    .line 144
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v4

    .line 145
    move-object v4, v2

    .line 146
    .local v4, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    if-eqz v5, :cond_0

    .line 147
    const-string v5, "ProcessUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readLine(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    .end local v4    # "line":Ljava/lang/String;
    invoke-static {v3}, Lcom/xiaopeng/factory/utils/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 155
    invoke-static {v1}, Lcom/xiaopeng/factory/utils/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 156
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 159
    :cond_1
    return-object v0

    .line 154
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 150
    :catch_0
    move-exception v4

    .line 151
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    nop

    .line 154
    invoke-static {v3}, Lcom/xiaopeng/factory/utils/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 155
    invoke-static {v1}, Lcom/xiaopeng/factory/utils/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 156
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 152
    :cond_2
    return-object v2

    .line 154
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {v3}, Lcom/xiaopeng/factory/utils/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 155
    invoke-static {v1}, Lcom/xiaopeng/factory/utils/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 156
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    :cond_3
    throw v2
.end method

.method private static execProcess(Ljava/lang/String;)Ljava/lang/Process;
    .locals 5
    .param p0, "cmd"    # Ljava/lang/String;

    .line 123
    const/4 v0, 0x0

    .line 126
    .local v0, "process":Ljava/lang/Process;
    :try_start_0
    new-instance v1, Ljava/lang/ProcessBuilder;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "/bin/sh"

    aput-object v4, v2, v3

    const-string v3, "-c"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object p0, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 127
    .local v1, "processBuilder":Ljava/lang/ProcessBuilder;
    invoke-virtual {v1, v4}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 128
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2

    move-object v0, v2

    .line 129
    const-string v2, "ProcessUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "execProcess:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v1    # "processBuilder":Ljava/lang/ProcessBuilder;
    goto :goto_0

    .line 130
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 133
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-object v0
.end method

.method public static getPhyLinkStat()Ljava/lang/String;
    .locals 1

    .line 244
    const-string v0, "phytool get link_stat"

    invoke-static {v0}, Lcom/xiaopeng/factory/utils/ProcessUtil;->getShellCmdResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhyMasterSlaveMode()Ljava/lang/String;
    .locals 1

    .line 248
    const-string v0, "phytool get master"

    invoke-static {v0}, Lcom/xiaopeng/factory/utils/ProcessUtil;->getShellCmdResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhySqi()Ljava/lang/String;
    .locals 1

    .line 252
    const-string v0, "phytool get sqi"

    invoke-static {v0}, Lcom/xiaopeng/factory/utils/ProcessUtil;->getShellCmdResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProcessInfo(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p0, "processName"    # Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "res":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 52
    .local v1, "mProcess":Ljava/lang/Process;
    const/4 v2, 0x0

    .line 54
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    const-string v3, "ProcessUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProcessInfo processName = ps -elf | grep "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "/bin/sh"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "-c"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ps -elf | grep "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    move-object v1, v3

    .line 56
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 58
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "result":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 59
    const-string v3, "ProcessUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getProcessInfo result"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    const-string v3, "\\s+"

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 62
    nop

    .line 68
    .end local v4    # "result":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    .line 69
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 72
    :cond_2
    nop

    .line 73
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v3

    .line 76
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 78
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 77
    :cond_3
    :goto_0
    goto :goto_1

    .line 68
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 65
    :catch_1
    move-exception v3

    .line 66
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_4

    .line 69
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 72
    :cond_4
    if-eqz v2, :cond_3

    .line 73
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 79
    :goto_1
    const-string v3, "ProcessUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProcessInfo processName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", res = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    return-object v0

    .line 68
    :goto_2
    if-eqz v1, :cond_5

    .line 69
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 72
    :cond_5
    if-eqz v2, :cond_6

    .line 73
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 75
    :catch_2
    move-exception v4

    .line 76
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    nop

    .line 77
    :cond_6
    :goto_3
    throw v3
.end method

.method private static getShellCmdResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "cmd"    # Ljava/lang/String;

    .line 256
    const-string v0, ""

    .line 258
    .local v0, "result":Ljava/lang/String;
    invoke-static {p0}, Lcom/xiaopeng/factory/utils/ProcessUtil;->execProcess(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 259
    .local v1, "process":Ljava/lang/Process;
    if-nez v1, :cond_0

    .line 260
    return-object v0

    .line 262
    :cond_0
    const/4 v2, 0x0

    .line 264
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 265
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 266
    const-string v3, "ProcessUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getShellCmdResult result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    nop

    .line 273
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 275
    :catch_0
    move-exception v3

    goto :goto_0

    .line 271
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 267
    :catch_1
    move-exception v3

    .line 268
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "ProcessUtil"

    const-string v5, "fail to getShellCmdResult"

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 272
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_1

    .line 273
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 275
    :catch_2
    move-exception v3

    .line 276
    .local v3, "e":Ljava/io/IOException;
    :goto_0
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 277
    :cond_1
    :goto_1
    nop

    .line 278
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 279
    nop

    .line 281
    return-object v0

    .line 271
    :goto_3
    nop

    .line 272
    if-eqz v2, :cond_2

    .line 273
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    .line 275
    :catch_3
    move-exception v4

    .line 276
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 277
    :cond_2
    :goto_4
    nop

    .line 278
    :goto_5
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    throw v3
.end method

.method public static killProcess(Ljava/lang/String;)V
    .locals 6
    .param p0, "processName"    # Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "mProcess":Ljava/lang/Process;
    invoke-static {p0}, Lcom/xiaopeng/factory/utils/ProcessUtil;->getProcessInfo(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "mProcessInfo":[Ljava/lang/String;
    const-string v2, "ProcessUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "killProcess processName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",  mProcessInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    if-eqz v1, :cond_1

    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 90
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "kill -9 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    move-object v0, v2

    .line 91
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    if-eqz v0, :cond_1

    .line 98
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    goto :goto_2

    .line 97
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 94
    :catch_0
    move-exception v2

    .line 95
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 97
    .end local v2    # "e":Ljava/lang/InterruptedException;
    if-eqz v0, :cond_1

    goto :goto_0

    .line 92
    :catch_1
    move-exception v2

    .line 93
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_1

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    :cond_0
    throw v2

    .line 102
    :cond_1
    :goto_2
    return-void
.end method

.method static synthetic lambda$sendPing$0(Ljava/lang/Process;)V
    .locals 2
    .param p0, "process"    # Ljava/lang/Process;

    .line 172
    const-string v0, "ProcessUtil"

    const-string v1, "sendPing timeout"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    .line 174
    return-void
.end method

.method public static runCommand(Ljava/lang/String;)Z
    .locals 8
    .param p0, "cmd"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, "res":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .local v1, "resultBuf":Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/xiaopeng/factory/utils/ProcessUtil;->execProcess(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 289
    .local v2, "process":Ljava/lang/Process;
    if-nez v2, :cond_0

    .line 290
    const/4 v3, 0x0

    return v3

    .line 292
    :cond_0
    const/4 v3, 0x0

    .line 294
    .local v3, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v4

    .line 297
    const-string v4, "ProcessUtil"

    const-string v5, "runCommand"

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "line":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 299
    const-string v4, "ProcessUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "runCommand line:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 308
    .end local v5    # "line":Ljava/lang/String;
    :cond_1
    nop

    .line 309
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto :goto_1

    .line 316
    :catch_0
    move-exception v4

    goto :goto_3

    .line 311
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 312
    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I

    move-result v4

    if-nez v4, :cond_2

    .line 313
    const/4 v0, 0x1

    .line 315
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 318
    :goto_2
    goto :goto_4

    .line 316
    :goto_3
    nop

    .line 317
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 319
    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_4

    .line 307
    :catchall_0
    move-exception v4

    goto :goto_5

    .line 303
    :catch_1
    move-exception v4

    .line 304
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_2
    const-string v5, "ProcessUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to runCommand cmd: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 308
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_3

    .line 309
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 311
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 312
    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I

    move-result v4

    if-nez v4, :cond_4

    .line 313
    const/4 v0, 0x1

    .line 315
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 320
    :goto_4
    const-string v4, "ProcessUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "runCommand cmd:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", res:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    return v0

    .line 307
    :goto_5
    nop

    .line 308
    if-eqz v3, :cond_5

    .line 309
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto :goto_6

    .line 316
    :catch_2
    move-exception v5

    goto :goto_7

    .line 311
    :cond_5
    :goto_6
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 312
    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I

    move-result v5

    if-nez v5, :cond_6

    .line 313
    const/4 v0, 0x1

    .line 315
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 318
    goto :goto_8

    .line 316
    :goto_7
    nop

    .line 317
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 318
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_8
    throw v4
.end method

.method public static runI2cRead(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "i2c"    # Ljava/lang/String;
    .param p1, "chipid"    # Ljava/lang/String;

    .line 210
    const/4 v0, 0x0

    .line 212
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "i2cget -f -y "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/factory/utils/ProcessUtil;->execProcess(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 213
    .local v1, "process":Ljava/lang/Process;
    if-nez v1, :cond_0

    .line 214
    const/4 v2, 0x0

    return v2

    .line 216
    :cond_0
    const/4 v2, 0x0

    .line 218
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 219
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 221
    .local v3, "line":Ljava/lang/String;
    const-string v4, "ProcessUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "runI2cRead line:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", chipid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 223
    const/4 v0, 0x1

    .line 231
    .end local v3    # "line":Ljava/lang/String;
    :cond_1
    nop

    .line 232
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 234
    :catch_0
    move-exception v3

    goto :goto_0

    .line 230
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 226
    :catch_1
    move-exception v3

    .line 227
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "ProcessUtil"

    const-string v5, "fail to run i2cget"

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_2

    .line 232
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 234
    :catch_2
    move-exception v3

    .line 235
    .local v3, "e":Ljava/io/IOException;
    :goto_0
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 236
    :cond_2
    :goto_1
    nop

    .line 237
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 238
    nop

    .line 240
    return v0

    .line 230
    :goto_3
    nop

    .line 231
    if-eqz v2, :cond_3

    .line 232
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    .line 234
    :catch_3
    move-exception v4

    .line 235
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 236
    :cond_3
    :goto_4
    nop

    .line 237
    :goto_5
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    throw v3
.end method

.method public static runProcess(Ljava/lang/String;)V
    .locals 5
    .param p0, "cmd"    # Ljava/lang/String;

    .line 105
    const/4 v0, 0x0

    .line 107
    .local v0, "mProcess":Ljava/lang/Process;
    :try_start_0
    const-string v1, "ProcessUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runProcess exec "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    move-object v0, v1

    .line 109
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v1

    .line 110
    .local v1, "result":I
    const-string v2, "ProcessUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runProcess finish exec "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .end local v1    # "result":I
    if-eqz v0, :cond_0

    .line 117
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    goto :goto_1

    .line 116
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 116
    .end local v1    # "e":Ljava/lang/InterruptedException;
    if-eqz v0, :cond_0

    goto :goto_0

    .line 111
    :catch_1
    move-exception v1

    .line 112
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    :goto_1
    return-void

    .line 116
    :goto_2
    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    :cond_1
    throw v1
.end method

.method public static sendPing(Ljava/lang/String;)Z
    .locals 10
    .param p0, "site"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "isConnected":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .local v1, "resultBuf":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ping -c 4 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/factory/utils/ProcessUtil;->execProcess(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 167
    .local v2, "process":Ljava/lang/Process;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 168
    return v3

    .line 170
    :cond_0
    const/4 v4, 0x0

    .line 171
    .local v4, "br":Ljava/io/BufferedReader;
    new-instance v5, Lcom/xiaopeng/factory/utils/-$$Lambda$ProcessUtil$pG2hd2_fJuX-QB2hpHv9SQ4gIQI;

    invoke-direct {v5, v2}, Lcom/xiaopeng/factory/utils/-$$Lambda$ProcessUtil$pG2hd2_fJuX-QB2hpHv9SQ4gIQI;-><init>(Ljava/lang/Process;)V

    const-wide/16 v6, 0x1388

    invoke-static {v3, v5, v6, v7}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    .line 176
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v4, v5

    .line 179
    const/4 v5, 0x0

    .line 180
    .local v5, "lineCount":I
    const-string v6, "ProcessUtil"

    const-string v7, "sendPing readline"

    invoke-static {v6, v7}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    :goto_0
    const/4 v6, 0x4

    if-ge v5, v6, :cond_1

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .local v7, "line":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 182
    const-string v6, "ProcessUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendPing line"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 186
    .end local v7    # "line":Ljava/lang/String;
    :cond_1
    const-string v6, "ProcessUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendPing resultBuf = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 189
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ttl"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gtz v6, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TTL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v6, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_2

    :cond_3
    :goto_1
    const/4 v3, 0x1

    :goto_2
    move v0, v3

    .line 196
    .end local v5    # "lineCount":I
    :cond_4
    nop

    .line 197
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 199
    :catch_0
    move-exception v3

    goto :goto_3

    .line 195
    :catchall_0
    move-exception v3

    goto :goto_6

    .line 191
    :catch_1
    move-exception v3

    .line 192
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v5, "ProcessUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to ping "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v4, :cond_5

    .line 197
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 199
    :catch_2
    move-exception v3

    .line 200
    .local v3, "e":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 201
    :cond_5
    :goto_4
    nop

    .line 202
    :goto_5
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 203
    const-string v3, "ping"

    invoke-static {v3}, Lcom/xiaopeng/factory/utils/ProcessUtil;->killProcess(Ljava/lang/String;)V

    .line 204
    nop

    .line 206
    return v0

    .line 195
    :goto_6
    nop

    .line 196
    if-eqz v4, :cond_6

    .line 197
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_7

    .line 199
    :catch_3
    move-exception v5

    .line 200
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_8

    .line 201
    :cond_6
    :goto_7
    nop

    .line 202
    :goto_8
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 203
    const-string v5, "ping"

    invoke-static {v5}, Lcom/xiaopeng/factory/utils/ProcessUtil;->killProcess(Ljava/lang/String;)V

    throw v3
.end method
