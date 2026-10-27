.class public Lcom/xiaopeng/factory/model/usersettings/UserSettingsModel;
.super Ljava/lang/Object;
.source "UserSettingsModel.java"

# interfaces
.implements Lcom/xiaopeng/factory/model/usersettings/IUserSettingsModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/factory/model/usersettings/UserSettingsModel$SocketRunnable;,
        Lcom/xiaopeng/factory/model/usersettings/UserSettingsModel$UserSettingsSingle;
    }
.end annotation


# static fields
.field private static final AUTO_CATCH_LOG_ON:Ljava/lang/String; = "on"

.field private static final PROPERTY_AUTO_CATCH_LOG:Ljava/lang/String; = "persist.service.grab.log"

.field private static final SWITCH_DEBUG_FILE:Ljava/lang/String; = "/sys/class/android_usb/android0/mode"

.field private static final TAG:Ljava/lang/String; = "UserSettingsModel"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/factory/model/usersettings/UserSettingsModel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/factory/model/usersettings/UserSettingsModel$1;

    .line 25
    invoke-direct {p0}, Lcom/xiaopeng/factory/model/usersettings/UserSettingsModel;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/factory/model/usersettings/UserSettingsModel;
    .locals 1

    .line 39
    invoke-static {}, Lcom/xiaopeng/factory/model/usersettings/UserSettingsModel$UserSettingsSingle;->access$000()Lcom/xiaopeng/factory/model/usersettings/UserSettingsModel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAutoCatchLogStatus()Z
    .locals 2

    .line 122
    const-string v0, "persist.service.grab.log"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public grabUploadCan(Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .line 137
    new-instance v0, Lcom/xiaopeng/factory/model/usersettings/UserSettingsModel$SocketRunnable;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/factory/model/usersettings/UserSettingsModel$SocketRunnable;-><init>(Lcom/xiaopeng/factory/model/usersettings/UserSettingsModel;Ljava/lang/String;)V

    .line 138
    .local v0, "runnable":Lcom/xiaopeng/factory/model/usersettings/UserSettingsModel$SocketRunnable;
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "UploadCanThread"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 139
    return-void
.end method

.method public isDebugOn()Z
    .locals 7

    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "isDebugOn":Z
    const/4 v1, 0x0

    .line 50
    .local v1, "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .local v2, "builder":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/sys/class/android_usb/android0/mode"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v3

    .line 53
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "string":Ljava/lang/String;
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 55
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .line 58
    :cond_0
    const-string v4, "slave"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v4

    .line 63
    .end local v3    # "string":Ljava/lang/String;
    nop

    .line 65
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 68
    :goto_1
    goto :goto_2

    .line 66
    :catch_0
    move-exception v3

    .line 67
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 63
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 59
    :catch_1
    move-exception v3

    .line 60
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    const-string v4, "UserSettingsModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_1

    .line 65
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 71
    :cond_1
    :goto_2
    return v0

    .line 63
    :goto_3
    if-eqz v1, :cond_2

    .line 65
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 68
    goto :goto_4

    .line 66
    :catch_2
    move-exception v4

    .line 67
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 68
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    :goto_4
    throw v3
.end method

.method public setAutoCatchLog(Z)V
    .locals 2
    .param p1, "auto"    # Z

    .line 113
    if-eqz p1, :cond_0

    .line 114
    const-string v0, "persist.service.grab.log"

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_0
    const-string v0, "persist.service.grab.log"

    const-string v1, "off"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :goto_0
    return-void
.end method

.method public setConsoleStatus(Z)V
    .locals 2
    .param p1, "status"    # Z

    .line 104
    if-eqz p1, :cond_0

    .line 105
    const-string v0, "ctl.start"

    const-string v1, "console"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_0
    const-string v0, "ctl.stop"

    const-string v1, "console"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :goto_0
    return-void
.end method

.method public setDebugStatus(Z)V
    .locals 6
    .param p1, "status"    # Z

    .line 77
    if-eqz p1, :cond_0

    .line 78
    const-string v0, "slave"

    .local v0, "mode":Ljava/lang/String;
    goto :goto_0

    .line 80
    .end local v0    # "mode":Ljava/lang/String;
    :cond_0
    const-string v0, "host"

    .line 82
    .restart local v0    # "mode":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    .line 84
    .local v1, "writer":Ljava/io/OutputStreamWriter;
    :try_start_0
    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/sys/class/android_usb/android0/mode"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v2

    .line 85
    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 87
    invoke-static {}, Lcom/xiaopeng/factory/utils/SharedUtils;->getInstance()Lcom/xiaopeng/factory/utils/SharedUtils;

    move-result-object v2

    const-string v3, "k_d_o"

    invoke-virtual {v2, v3, p1}, Lcom/xiaopeng/factory/utils/SharedUtils;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    nop

    .line 94
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 97
    :goto_1
    goto :goto_2

    .line 95
    :catch_0
    move-exception v2

    .line 96
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 92
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 88
    :catch_1
    move-exception v2

    .line 89
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    const-string v3, "UserSettingsModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_1

    .line 94
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 100
    :cond_1
    :goto_2
    return-void

    .line 92
    :goto_3
    if-eqz v1, :cond_2

    .line 94
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 97
    goto :goto_4

    .line 95
    :catch_2
    move-exception v3

    .line 96
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 97
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :goto_4
    throw v2
.end method

.method public setShowDialog(Z)V
    .locals 2
    .param p1, "show"    # Z

    .line 127
    if-eqz p1, :cond_0

    .line 128
    const-string v0, "persist.sys.xiaopeng.showDialog"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_0
    const-string v0, "persist.sys.xiaopeng.showDialog"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :goto_0
    return-void
.end method
