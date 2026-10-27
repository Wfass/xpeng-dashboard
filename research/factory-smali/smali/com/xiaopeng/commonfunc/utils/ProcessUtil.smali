.class public Lcom/xiaopeng/commonfunc/utils/ProcessUtil;
.super Ljava/lang/Object;
.source "ProcessUtil.java"


# static fields
.field private static final DEFAULT_PING_PACKETS:I = 0x4

.field private static final I2CGET_COMMAND:Ljava/lang/String; = "i2cget -f -y "

.field public static final INSMOD_DRIVER_CMD:Ljava/lang/String; = "insmod"

.field public static final MODEM_LOG_COMMAND:Ljava/lang/String; = "qxdm -o /data/Log/log0/factory -t /dev/ttyUSB3 -c /system/etc/default.bin -s 500"

.field public static final MODEM_LOG_PROCESS:Ljava/lang/String; = "qxdm"

.field private static final PHYTOOL_COMMAND_GET_LINK_STAT:Ljava/lang/String; = "get link_status"

.field private static final PHYTOOL_COMMAND_GET_MASTERSLAVE_MODE:Ljava/lang/String; = "get master_cfg"

.field private static final PHYTOOL_COMMAND_GET_SQI:Ljava/lang/String; = "get sqi"

.field private static final PHYTOOL_COMMAND_SET_MASTER_CFG:Ljava/lang/String; = "set master_cfg"

.field private static final PHYTOOL_PROCESS:Ljava/lang/String; = "phytool"

.field private static final PING_COMMAND:Ljava/lang/String; = "ping -c "

.field public static final PING_PROCESS:Ljava/lang/String; = "ping"

.field private static final PING_TIMEOUT:I = 0x1388

.field private static final REGEX_SPACE:Ljava/lang/String; = "\\s+"

.field public static final RESULT_BYTES_IN:Ljava/lang/String; = "bytes in"

.field public static final RESULT_ERROR:Ljava/lang/String; = "error"

.field public static final RESULT_FAIL:Ljava/lang/String; = "fail"

.field public static final RESULT_PUSHED:Ljava/lang/String; = "pushed"

.field public static final RMMOD_DRIVER_CMD:Ljava/lang/String; = "rmmod"

.field private static final RM_RF_COMMAND:Ljava/lang/String; = "rm -rf "

.field public static final SHELL_CMD_SCREENCAP:Ljava/lang/String; = "screencap -p "

.field public static final SHELL_COMMAND_ADB_PUSH:Ljava/lang/String; = "adb push"

.field private static final SHELL_COMMAND_BIN_SH:Ljava/lang/String; = "/bin/sh"

.field private static final SHELL_COMMAND_CTRL:Ljava/lang/String; = "-c"

.field private static final SHELL_COMMAND_KILL:Ljava/lang/String; = "kill -9 "

.field public static final SHELL_COMMAND_PING:Ljava/lang/String; = "ping"

.field public static final SHELL_COMMAND_PING_PACKAGESIZE:Ljava/lang/String; = " -s "

.field public static final SHELL_COMMAND_PING_TIMEOUT:Ljava/lang/String; = " -W "

.field private static final SHELL_COMMAND_PS_GREP:Ljava/lang/String; = "ps -elf | grep "

.field public static final SYNC_COMMAND:Ljava/lang/String; = "sync"

.field private static final TAG:Ljava/lang/String; = "ProcessUtil"

.field public static final TESTWIFI_24B:Ljava/lang/String; = "b"

.field public static final TESTWIFI_24G:Ljava/lang/String; = "g"

.field public static final TESTWIFI_24N:Ljava/lang/String; = "n"

.field public static final TESTWIFI_PROCESS:Ljava/lang/String; = "test_wifi.sh"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changePemToPkcs12(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "keyPemPath"    # Ljava/lang/String;
    .param p1, "certPemPath"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "outPath"    # Ljava/lang/String;

    .line 537
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

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/ProcessUtil;->runCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static copyTboxLog(Ljava/lang/String;)V
    .locals 6
    .param p0, "destPath"    # Ljava/lang/String;

    .line 542
    invoke-static {p0}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->deleteFolderFile(Ljava/lang/String;)V

    .line 543
    invoke-static {p0}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->mkDir(Ljava/lang/String;)Z

    .line 545
    const-string v0, "root"

    sget-object v1, Lcom/xiaopeng/commonfunc/utils/ScpUtil;->HOST_TBOX:Ljava/lang/String;

    const-string v2, "/data/etc/ssh/id_rsa"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/commonfunc/utils/ScpUtil;->genTboxDltSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, "cmd":Ljava/lang/String;
    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/ProcessUtil;->execCommand(Ljava/lang/String;)Ljava/lang/Process;

    .line 548
    const-string v1, "root"

    sget-object v2, Lcom/xiaopeng/commonfunc/utils/ScpUtil;->HOST_TBOX:Ljava/lang/String;

    const-string v3, "/data/etc/ssh/id_rsa"

    const-string v4, "/mnt/sdcard/tbox_all_log.tar.gz"

    sget-object v5, Lcom/xiaopeng/commonfunc/Constant;->TBOX_LOG_DIR:[Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/xiaopeng/commonfunc/utils/ScpUtil;->genCompressFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 550
    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/ProcessUtil;->execCommand(Ljava/lang/String;)Ljava/lang/Process;

    .line 552
    const-string v1, "root"

    sget-object v2, Lcom/xiaopeng/commonfunc/utils/ScpUtil;->HOST_TBOX:Ljava/lang/String;

    const-string v3, "/mnt/sdcard/tbox_all_log.tar.gz"

    const-string v4, "/data/etc/ssh/id_rsa"

    invoke-static {v1, v2, v3, p0, v4}, Lcom/xiaopeng/commonfunc/utils/ScpUtil;->genScpFromServerCmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 554
    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/ProcessUtil;->execCommand(Ljava/lang/String;)Ljava/lang/Process;

    .line 556
    const-string v1, "root"

    sget-object v2, Lcom/xiaopeng/commonfunc/utils/ScpUtil;->HOST_TBOX:Ljava/lang/String;

    const-string v3, "/mnt/sdcard/tbox_all_log.tar.gz"

    const-string v4, "/data/etc/ssh/id_rsa"

    invoke-static {v1, v2, v3, v4}, Lcom/xiaopeng/commonfunc/utils/ScpUtil;->genRemoveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 558
    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/ProcessUtil;->execCommand(Ljava/lang/String;)Ljava/lang/Process;

    .line 559
    return-void
.end method

.method public static execCommand(Ljava/lang/String;)Ljava/lang/Process;
    .locals 8
    .param p0, "cmd"    # Ljava/lang/String;

    .line 228
    const-string v0, "ProcessUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execCommand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, "process":Ljava/lang/Process;
    const/4 v1, 0x0

    .line 231
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    move-object v3, v2

    .line 233
    .local v3, "isr":Ljava/io/InputStreamReader;
    :try_start_0
    invoke-static {p0}, Lcom/xiaopeng/commonfunc/utils/ProcessUtil;->execProcess(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    move-object v0, v4

    .line 234
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v3, v4

    .line 235
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v4

    .line 236
    move-object v4, v2

    .line 237
    .local v4, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    if-eqz v5, :cond_0

    .line 238
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

    .line 240
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    .end local v4    # "line":Ljava/lang/String;
    invoke-static {v3}, Lcom/xiaopeng/commonfunc/utils/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 246
    invoke-static {v1}, Lcom/xiaopeng/commonfunc/utils/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 247
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 250
    :cond_1
    return-object v0

    .line 245
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 241
    :catch_0
    move-exception v4

    .line 242
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    nop

    .line 245
    invoke-static {v3}, Lcom/xiaopeng/commonfunc/utils/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 246
    invoke-static {v1}, Lcom/xiaopeng/commonfunc/utils/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 247
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 243
    :cond_2
    return-object v2

    .line 245
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {v3}, Lcom/xiaopeng/commonfunc/utils/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 246
    invoke-static {v1}, Lcom/xiaopeng/commonfunc/utils/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 247
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    :cond_3
    throw v2
.end method

.method public static execCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "cmd"    # Ljava/lang/String;
    .param p1, "successTag"    # Ljava/lang/String;

    .line 254
    const-string v0, "ProcessUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execCommand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, "res":Z
    const/4 v1, 0x0

    .line 257
    .local v1, "process":Ljava/lang/Process;
    const/4 v2, 0x0

    .line 258
    .local v2, "br":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    move-object v4, v3

    .line 260
    .local v4, "isr":Ljava/io/InputStreamReader;
    :try_start_0
    invoke-static {p0}, Lcom/xiaopeng/commonfunc/utils/ProcessUtil;->execProcess(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    move-object v1, v5

    .line 261
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v4, v5

    .line 262
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v5

    .line 263
    nop

    .line 264
    .local v3, "line":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    if-eqz v5, :cond_1

    .line 265
    const-string v5, "ProcessUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readLine(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 267
    const/4 v0, 0x1

    goto :goto_0

    .line 270
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    .end local v3    # "line":Ljava/lang/String;
    invoke-static {v4}, Lcom/xiaopeng/commonfunc/utils/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 275
    invoke-static {v2}, Lcom/xiaopeng/commonfunc/utils/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 276
    if-eqz v1, :cond_2

    .line 277
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    goto :goto_2

    .line 274
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 271
    :catch_0
    move-exception v3

    .line 272
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    .end local v3    # "e":Ljava/lang/Exception;
    invoke-static {v4}, Lcom/xiaopeng/commonfunc/utils/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 275
    invoke-static {v2}, Lcom/xiaopeng/commonfunc/utils/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 276
    if-eqz v1, :cond_2

    goto :goto_1

    .line 281
    :cond_2
    :goto_2
    return v0

    .line 274
    :goto_3
    invoke-static {v4}, Lcom/xiaopeng/commonfunc/utils/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 275
    invoke-static {v2}, Lcom/xiaopeng/commonfunc/utils/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 276
    if-eqz v1, :cond_3

    .line 277
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_3
    throw v3
.end method

.method public static execProcess(Ljava/lang/String;)Ljava/lang/Process;
    .locals 5
    .param p0, "cmd"    # Ljava/lang/String;

    .line 200
    const/4 v0, 0x0

    .line 203
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

    .line 204
    .local v1, "processBuilder":Ljava/lang/ProcessBuilder;
    invoke-virtual {v1, v4}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 205
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2

    move-object v0, v2

    .line 206
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

    .line 209
    .end local v1    # "processBuilder":Ljava/lang/ProcessBuilder;
    goto :goto_0

    .line 207
    :catch_0
    move-exception v1

    .line 208
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 210
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-object v0
.end method

.method public static execProcessWithoutSh(Ljava/lang/String;)Ljava/lang/Process;
    .locals 5
    .param p0, "cmd"    # Ljava/lang/String;

    .line 214
    const/4 v0, 0x0

    .line 217
    .local v0, "process":Ljava/lang/Process;
    :try_start_0
    new-instance v1, Ljava/lang/ProcessBuilder;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-direct {v1, v3}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 218
    .local v1, "processBuilder":Ljava/lang/ProcessBuilder;
    invoke-virtual {v1, v2}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 219
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2

    move-object v0, v2

    .line 220
    const-string v2, "ProcessUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "execProcessWithoutSh:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .end local v1    # "processBuilder":Ljava/lang/ProcessBuilder;
    goto :goto_0

    .line 221
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 224
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-object v0
.end method

.method public static execReturnLine(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p0, "cmd"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;

    .line 300
    const-string v0, "ProcessUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execReturnLine: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    const/4 v0, 0x0

    .line 302
    .local v0, "res":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 303
    .local v1, "process":Ljava/lang/Process;
    const/4 v2, 0x0

    .line 304
    .local v2, "br":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    move-object v4, v3

    .line 306
    .local v4, "isr":Ljava/io/InputStreamReader;
    :try_start_0
    invoke-static {p0}, Lcom/xiaopeng/commonfunc/utils/ProcessUtil;->execProcess(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    move-object v1, v5

    .line 307
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v4, v5

    .line 308
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v5

    .line 309
    nop

    .line 310
    .local v3, "line":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    if-eqz v5, :cond_1

    .line 311
    const-string v5, "ProcessUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readLine(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 313
    const-string v5, "\\s+"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 314
    nop

    .line 317
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    .end local v3    # "line":Ljava/lang/String;
    invoke-static {v4}, Lcom/xiaopeng/commonfunc/utils/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 322
    invoke-static {v2}, Lcom/xiaopeng/commonfunc/utils/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 323
    if-eqz v1, :cond_2

    .line 324
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    goto :goto_1

    .line 321
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 318
    :catch_0
    move-exception v3

    .line 319
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    .end local v3    # "e":Ljava/lang/Exception;
    invoke-static {v4}, Lcom/xiaopeng/commonfunc/utils/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 322
    invoke-static {v2}, Lcom/xiaopeng/commonfunc/utils/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 323
    if-eqz v1, :cond_2

    goto :goto_0

    .line 328
    :cond_2
    :goto_1
    return-object v0

    .line 321
    :goto_2
    invoke-static {v4}, Lcom/xiaopeng/commonfunc/utils/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 322
    invoke-static {v2}, Lcom/xiaopeng/commonfunc/utils/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 323
    if-eqz v1, :cond_3

    .line 324
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_3
    throw v3
.end method

.method public static getAppName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pID"    # I

    .line 522
    const-string v0, ""

    .line 523
    .local v0, "processName":Ljava/lang/String;
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 524
    .local v1, "am":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 525
    .local v2, "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 526
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 527
    .local v4, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p1, :cond_0

    .line 528
    iget-object v0, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 529
    goto :goto_1

    .line 527
    .end local v4    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_0
    goto :goto_0

    .line 532
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static getPhyLinkStat()Ljava/lang/String;
    .locals 1

    .line 367
    const-string v0, "phytool get link_status"

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/ProcessUtil;->getShellCmdResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhyMasterSlaveMode()Ljava/lang/String;
    .locals 1

    .line 371
    const-string v0, "phytool get master_cfg"

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/ProcessUtil;->getShellCmdResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhySqi()Ljava/lang/String;
    .locals 1

    .line 375
    const-string v0, "phytool get sqi"

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/ProcessUtil;->getShellCmdResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProcessInfo(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p0, "processName"    # Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "res":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 69
    .local v1, "mProcess":Ljava/lang/Process;
    const/4 v2, 0x0

    .line 71
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

    .line 72
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

    .line 73
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 75
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "result":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 76
    const-string v3, "ProcessUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getProcessInfo result "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    const-string v3, "\\s+"

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 79
    nop

    .line 85
    .end local v4    # "result":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    .line 82
    :catch_0
    move-exception v3

    .line 83
    .local v3, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_2

    .line 86
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 88
    :cond_2
    invoke-static {v2}, Lcom/xiaopeng/commonfunc/utils/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 89
    nop

    .line 90
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

    .line 91
    return-object v0

    .line 85
    :goto_1
    if-eqz v1, :cond_3

    .line 86
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 88
    :cond_3
    invoke-static {v2}, Lcom/xiaopeng/commonfunc/utils/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v3
.end method

.method public static getProcessInfo(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p0, "processName"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;

    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "res":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 97
    .local v1, "mProcess":Ljava/lang/Process;
    const/4 v2, 0x0

    .line 99
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    const-string v3, "ProcessUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProcessInfo processName = ps -elf | grep "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", param = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
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

    .line 101
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 103
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "result":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 104
    const-string v3, "ProcessUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getProcessInfo result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    const-string v3, "\\s+"

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    goto :goto_0

    .line 112
    .end local v4    # "result":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    .line 109
    :catch_0
    move-exception v3

    .line 110
    .local v3, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_2

    .line 113
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 115
    :cond_2
    invoke-static {v2}, Lcom/xiaopeng/commonfunc/utils/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 116
    nop

    .line 117
    const-string v3, "ProcessUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProcessInfo processName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", param = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", res = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    return-object v0

    .line 112
    :goto_2
    if-eqz v1, :cond_3

    .line 113
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 115
    :cond_3
    invoke-static {v2}, Lcom/xiaopeng/commonfunc/utils/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v3
.end method

.method private static getShellCmdResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "cmd"    # Ljava/lang/String;

    .line 379
    const-string v0, ""

    .line 381
    .local v0, "result":Ljava/lang/String;
    invoke-static {p0}, Lcom/xiaopeng/commonfunc/utils/ProcessUtil;->execProcess(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 382
    .local v1, "process":Ljava/lang/Process;
    if-nez v1, :cond_0

    .line 383
    return-object v0

    .line 385
    :cond_0
    const/4 v2, 0x0

    .line 387
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 388
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 389
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

    .line 395
    nop

    .line 396
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 398
    :catch_0
    move-exception v3

    goto :goto_0

    .line 394
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 390
    :catch_1
    move-exception v3

    .line 391
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "ProcessUtil"

    const-string v5, "fail to getShellCmdResult"

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 395
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_1

    .line 396
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 398
    :catch_2
    move-exception v3

    .line 399
    .local v3, "e":Ljava/io/IOException;
    :goto_0
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 400
    :cond_1
    :goto_1
    nop

    .line 401
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 402
    nop

    .line 404
    return-object v0

    .line 394
    :goto_3
    nop

    .line 395
    if-eqz v2, :cond_2

    .line 396
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    .line 398
    :catch_3
    move-exception v4

    .line 399
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 400
    :cond_2
    :goto_4
    nop

    .line 401
    :goto_5
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    throw v3
.end method

.method public static isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 502
    const/4 v0, 0x0

    .line 503
    .local v0, "res":Z
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 504
    .local v1, "manager":Landroid/app/ActivityManager;
    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 505
    .local v3, "service":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v4, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 506
    const/4 v0, 0x1

    .line 507
    goto :goto_1

    .line 509
    .end local v3    # "service":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_0
    goto :goto_0

    .line 510
    :cond_1
    :goto_1
    const-string v2, "ProcessUtil"

    const-string v3, "[%s ] isRunService : %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 511
    return v0
.end method

.method public static killProcess(Ljava/lang/String;)V
    .locals 6
    .param p0, "processName"    # Ljava/lang/String;

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "mProcess":Ljava/lang/Process;
    invoke-static {p0}, Lcom/xiaopeng/commonfunc/utils/ProcessUtil;->getProcessInfo(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 125
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

    .line 126
    if-eqz v1, :cond_1

    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 128
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

    .line 129
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    if-eqz v0, :cond_1

    .line 136
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    goto :goto_2

    .line 135
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 132
    :catch_0
    move-exception v2

    .line 133
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 135
    .end local v2    # "e":Ljava/lang/InterruptedException;
    if-eqz v0, :cond_1

    goto :goto_0

    .line 130
    :catch_1
    move-exception v2

    .line 131
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_1

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    :cond_0
    throw v2

    .line 140
    :cond_1
    :goto_2
    return-void
.end method

.method public static killProcess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "processName"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;

    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "mProcess":Ljava/lang/Process;
    invoke-static {p0, p1}, Lcom/xiaopeng/commonfunc/utils/ProcessUtil;->getProcessInfo(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "mProcessInfo":[Ljava/lang/String;
    const-string v2, "ProcessUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "killProcess processName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", param = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",  mProcessInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    if-eqz v1, :cond_1

    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 149
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

    .line 150
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    if-eqz v0, :cond_1

    .line 157
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    goto :goto_2

    .line 156
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 153
    :catch_0
    move-exception v2

    .line 154
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 156
    .end local v2    # "e":Ljava/lang/InterruptedException;
    if-eqz v0, :cond_1

    goto :goto_0

    .line 151
    :catch_1
    move-exception v2

    .line 152
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_1

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    :cond_0
    throw v2

    .line 161
    :cond_1
    :goto_2
    return-void
.end method

.method static synthetic lambda$reboot$1(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;

    .line 516
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 517
    .local v0, "mPowerManager":Landroid/os/PowerManager;
    invoke-virtual {v0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 518
    return-void
.end method

.method static synthetic lambda$sendPing$0(Ljava/lang/Process;)V
    .locals 2
    .param p0, "process"    # Ljava/lang/Process;

    .line 418
    const-string v0, "ProcessUtil"

    const-string v1, "sendPing timeout"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    .line 420
    return-void
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;

    .line 515
    new-instance v0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$ProcessUtil$SO8tyJ4vD-fc4f0Zxa9enyYY4ns;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$ProcessUtil$SO8tyJ4vD-fc4f0Zxa9enyYY4ns;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 519
    return-void
.end method

.method public static removeFile(Ljava/lang/String;)V
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .line 285
    const-string v0, "ProcessUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeFile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    const/4 v0, 0x0

    .line 288
    .local v0, "process":Ljava/lang/Process;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rm -rf "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/commonfunc/utils/ProcessUtil;->execProcess(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    move-object v0, v1

    .line 289
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    if-eqz v0, :cond_0

    .line 294
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    goto :goto_1

    .line 293
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 290
    :catch_0
    move-exception v1

    .line 291
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    goto :goto_0

    .line 297
    :cond_0
    :goto_1
    return-void

    .line 293
    :goto_2
    if-eqz v0, :cond_1

    .line 294
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    :cond_1
    throw v1
.end method

.method public static runAdbPushFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "dest"    # Ljava/lang/String;

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "res":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .local v1, "resultBuf":Ljava/lang/StringBuilder;
    :try_start_0
    const-string v2, "su"

    invoke-static {v2}, Lcom/xiaopeng/commonfunc/utils/ProcessUtil;->execProcessWithoutSh(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    goto :goto_0

    .line 168
    :catch_0
    move-exception v2

    .line 169
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 171
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_0
    const-string v2, "busybox tftp -l /mnt/media_rw/289F-9F58/tbox/TBOX_Local_Upgrade_V0.4.8.zip -r /mnt/sdcard/tftpboot/update.zip -p 192.168.225.1"

    invoke-static {v2}, Lcom/xiaopeng/commonfunc/utils/ProcessUtil;->execProcessWithoutSh(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 172
    .local v2, "process":Ljava/lang/Process;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 173
    return v3

    .line 175
    :cond_0
    const/4 v4, 0x0

    .line 177
    .local v4, "br":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v4, v5

    .line 180
    const-string v5, "ProcessUtil"

    const-string v6, "runAdbPushFile readline"

    invoke-static {v5, v6}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "line":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 182
    const-string v5, "ProcessUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "runAdbPushFile line"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 186
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 187
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "pushed"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "bytes in"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    nop

    :cond_2
    move v0, v3

    .line 193
    .end local v6    # "line":Ljava/lang/String;
    :cond_3
    :goto_2
    invoke-static {v4}, Lcom/xiaopeng/commonfunc/utils/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 194
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 195
    goto :goto_3

    .line 193
    :catchall_0
    move-exception v3

    goto :goto_4

    .line 189
    :catch_1
    move-exception v3

    .line 190
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v5, "ProcessUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to runAdbPushFile src:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", dest:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 196
    :goto_3
    return v0

    .line 193
    :goto_4
    invoke-static {v4}, Lcom/xiaopeng/commonfunc/utils/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 194
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    throw v3
.end method

.method public static runCommand(Ljava/lang/String;)Z
    .locals 8
    .param p0, "cmd"    # Ljava/lang/String;

    .line 457
    const/4 v0, 0x0

    .line 458
    .local v0, "res":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    .local v1, "resultBuf":Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/xiaopeng/commonfunc/utils/ProcessUtil;->execProcess(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 461
    .local v2, "process":Ljava/lang/Process;
    if-nez v2, :cond_0

    .line 462
    const/4 v3, 0x0

    return v3

    .line 464
    :cond_0
    const/4 v3, 0x0

    .line 466
    .local v3, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v4

    .line 469
    const-string v4, "ProcessUtil"

    const-string v5, "runCommand"

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 470
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "line":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 471
    const-string v4, "ProcessUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "runCommand line:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 480
    .end local v5    # "line":Ljava/lang/String;
    :cond_1
    nop

    .line 481
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto :goto_1

    .line 488
    :catch_0
    move-exception v4

    goto :goto_3

    .line 483
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 484
    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I

    move-result v4

    if-nez v4, :cond_2

    .line 485
    const/4 v0, 0x1

    .line 487
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 490
    :goto_2
    goto :goto_4

    .line 488
    :goto_3
    nop

    .line 489
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 491
    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_4

    .line 479
    :catchall_0
    move-exception v4

    goto :goto_5

    .line 475
    :catch_1
    move-exception v4

    .line 476
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

    .line 477
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 480
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_3

    .line 481
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 483
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 484
    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I

    move-result v4

    if-nez v4, :cond_4

    .line 485
    const/4 v0, 0x1

    .line 487
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 492
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

    .line 493
    return v0

    .line 479
    :goto_5
    nop

    .line 480
    if-eqz v3, :cond_5

    .line 481
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto :goto_6

    .line 488
    :catch_2
    move-exception v5

    goto :goto_7

    .line 483
    :cond_5
    :goto_6
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 484
    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I

    move-result v5

    if-nez v5, :cond_6

    .line 485
    const/4 v0, 0x1

    .line 487
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 490
    goto :goto_8

    .line 488
    :goto_7
    nop

    .line 489
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 490
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_8
    throw v4
.end method

.method public static runI2cRead(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "i2c"    # Ljava/lang/String;
    .param p1, "chipid"    # Ljava/lang/String;

    .line 333
    const/4 v0, 0x0

    .line 335
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "i2cget -f -y "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/commonfunc/utils/ProcessUtil;->execProcess(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 336
    .local v1, "process":Ljava/lang/Process;
    if-nez v1, :cond_0

    .line 337
    const/4 v2, 0x0

    return v2

    .line 339
    :cond_0
    const/4 v2, 0x0

    .line 341
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 342
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 344
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

    .line 345
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 346
    const/4 v0, 0x1

    .line 354
    .end local v3    # "line":Ljava/lang/String;
    :cond_1
    nop

    .line 355
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 357
    :catch_0
    move-exception v3

    goto :goto_0

    .line 353
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 349
    :catch_1
    move-exception v3

    .line 350
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "ProcessUtil"

    const-string v5, "fail to run i2cget"

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 354
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_2

    .line 355
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 357
    :catch_2
    move-exception v3

    .line 358
    .local v3, "e":Ljava/io/IOException;
    :goto_0
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 359
    :cond_2
    :goto_1
    nop

    .line 360
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 361
    nop

    .line 363
    return v0

    .line 353
    :goto_3
    nop

    .line 354
    if-eqz v2, :cond_3

    .line 355
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    .line 357
    :catch_3
    move-exception v4

    .line 358
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 359
    :cond_3
    :goto_4
    nop

    .line 360
    :goto_5
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    throw v3
.end method

.method public static screenCap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "folderPath"    # Ljava/lang/String;
    .param p1, "issueName"    # Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screencap -p "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/ProcessUtil;->execProcess(Ljava/lang/String;)Ljava/lang/Process;

    .line 64
    return-void
.end method

.method public static sendPing(Ljava/lang/String;)Z
    .locals 11
    .param p0, "site"    # Ljava/lang/String;

    .line 408
    const/4 v0, 0x0

    .line 409
    .local v0, "isConnected":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    .local v1, "resultBuf":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ping -c 4 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 412
    .local v2, "cmd":Ljava/lang/String;
    invoke-static {v2}, Lcom/xiaopeng/commonfunc/utils/ProcessUtil;->execProcess(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 413
    .local v3, "process":Ljava/lang/Process;
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 414
    return v4

    .line 416
    :cond_0
    const/4 v5, 0x0

    .line 417
    .local v5, "br":Ljava/io/BufferedReader;
    new-instance v6, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$ProcessUtil$QCbomy7BrZGkXESTSJiLmfzXJ0w;

    invoke-direct {v6, v3}, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$ProcessUtil$QCbomy7BrZGkXESTSJiLmfzXJ0w;-><init>(Ljava/lang/Process;)V

    const-wide/16 v7, 0x1388

    invoke-static {v4, v6, v7, v8}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    .line 422
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v5, v6

    .line 425
    const/4 v6, 0x0

    .line 426
    .local v6, "lineCount":I
    const-string v7, "ProcessUtil"

    const-string v8, "sendPing readline"

    invoke-static {v7, v8}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    :goto_0
    const/4 v7, 0x4

    if-ge v6, v7, :cond_1

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    .local v8, "line":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 428
    const-string v7, "ProcessUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendPing line"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 432
    .end local v8    # "line":Ljava/lang/String;
    :cond_1
    const-string v7, "ProcessUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendPing resultBuf = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 434
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 435
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ttl"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-gtz v7, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "TTL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v7, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_2

    :cond_3
    :goto_1
    const/4 v4, 0x1

    :goto_2
    move v0, v4

    .line 442
    .end local v6    # "lineCount":I
    :cond_4
    nop

    .line 443
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 445
    :catch_0
    move-exception v4

    goto :goto_3

    .line 441
    :catchall_0
    move-exception v4

    goto :goto_6

    .line 437
    :catch_1
    move-exception v4

    .line 438
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "ProcessUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to ping "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 442
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v5, :cond_5

    .line 443
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 445
    :catch_2
    move-exception v4

    .line 446
    .local v4, "e":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 447
    :cond_5
    :goto_4
    nop

    .line 448
    :goto_5
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    .line 449
    invoke-static {v2}, Lcom/xiaopeng/commonfunc/utils/ProcessUtil;->killProcess(Ljava/lang/String;)V

    .line 450
    nop

    .line 452
    return v0

    .line 441
    :goto_6
    nop

    .line 442
    if-eqz v5, :cond_6

    .line 443
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_7

    .line 445
    :catch_3
    move-exception v6

    .line 446
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .end local v6    # "e":Ljava/io/IOException;
    goto :goto_8

    .line 447
    :cond_6
    :goto_7
    nop

    .line 448
    :goto_8
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    .line 449
    invoke-static {v2}, Lcom/xiaopeng/commonfunc/utils/ProcessUtil;->killProcess(Ljava/lang/String;)V

    throw v4
.end method
