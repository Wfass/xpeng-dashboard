.class public Lcom/xiaopeng/devtools/system/service/LogUploadService;
.super Landroid/app/IntentService;
.source "LogUploadService.java"


# instance fields
.field private Bl:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    const-string v0, "LogUploadService"

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/system/service/LogUploadService;-><init>(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 43
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaopeng/devtools/system/service/LogUploadService;->Bl:Z

    .line 51
    return-void
.end method

.method private D(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 120
    const-class v0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage;

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xmart-cdu-service-log/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/lib/utils/c/b;->getSystemVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/a;->n(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/lib/utils/i;->ln()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".zip"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 125
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 126
    const-string v0, "callbackUrl"

    const-string v4, "https://v-callback.xiaopeng.com/oss/vehicle/oss/callback/feedback"

    invoke-interface {v6, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 129
    const-string v4, "app_id"

    const-string v5, "xmart:appid:002"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v4, "device"

    invoke-static {}, Lcom/xiaopeng/lib/utils/i;->getHardwareId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v4, "timestamp"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v4, "sid"

    invoke-static {}, Lcom/xiaopeng/lib/utils/i;->oQ()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v4, "type"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v4, "address"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://xp-log.oss-cn-hangzhou.aliyuncs.com/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v4, "timer"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :try_start_0
    const-string v4, "vmodel"

    invoke-static {}, Landroid/car/Car;->getHardwareCarType()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    goto :goto_0

    .line 138
    :catch_0
    move-exception v4

    .line 139
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    :goto_0
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0, v2, v3}, Lcom/xiaopeng/devtools/utils/j;->a(Landroid/content/Context;Ljava/util/Map;J)Ljava/lang/String;

    move-result-object v2

    .line 142
    const-string v3, "sign"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v2, "LogUploadService"

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    const-string v2, "callbackBody"

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v0, "callbackBodyType"

    const-string v2, "application/json"

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :try_start_1
    sget-object v0, Lcom/xiaopeng/devtools/MyApplication;->qx:Lcom/xiaopeng/devtools/MyApplication;

    invoke-interface {v1, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage;->initWithContext(Landroid/app/Application;)V

    .line 148
    const-string v2, "xp-log"

    new-instance v5, Lcom/xiaopeng/devtools/system/service/LogUploadService$1;

    invoke-direct {v5, p0}, Lcom/xiaopeng/devtools/system/service/LogUploadService$1;-><init>(Lcom/xiaopeng/devtools/system/service/LogUploadService;)V

    move-object v3, p2

    move-object v4, p1

    invoke-interface/range {v1 .. v6}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage;->uploadWithPathAndCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 170
    goto :goto_1

    .line 167
    :catch_1
    move-exception p1

    .line 168
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 169
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/system/service/LogUploadService;->S(Z)V

    .line 171
    :goto_1
    return-void
.end method

.method private S(Z)V
    .locals 2

    .line 174
    const-string v0, "LogUploadService"

    const-string v1, "removeUploadFolder"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    const-string v0, "sdcard/aftersales/"

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/b;->bn(Ljava/lang/String;)V

    .line 176
    if-eqz p1, :cond_0

    .line 177
    iget-boolean p1, p0, Lcom/xiaopeng/devtools/system/service/LogUploadService;->Bl:Z

    invoke-static {p1}, Lcom/xiaopeng/logictree/d;->aS(Z)V

    goto :goto_0

    .line 179
    :cond_0
    iget-boolean p1, p0, Lcom/xiaopeng/devtools/system/service/LogUploadService;->Bl:Z

    invoke-static {p1}, Lcom/xiaopeng/logictree/d;->aR(Z)V

    .line 181
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/system/service/LogUploadService;Z)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/system/service/LogUploadService;->S(Z)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 11

    .line 55
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    nop

    .line 59
    if-eqz p1, :cond_6

    .line 60
    const-string v1, "is_diagnosis"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaopeng/devtools/system/service/LogUploadService;->Bl:Z

    .line 61
    const-string v1, "issue_start_time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 62
    const-string v1, "issue_end_time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 63
    const-string v1, "sourcePath"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 64
    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    .line 65
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 67
    :cond_0
    const-string v1, "/cache/aftersales"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    const-string v3, "data/Log"

    const-string v4, "main.txt"

    const-string v5, "log\\d"

    invoke-static/range {v3 .. v9}, Lcom/xiaopeng/devtools/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 71
    const-string v1, "LogUploadService"

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    const-string v1, "issue_name"

    const-string v3, "UNKNOWN"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/devtools/utils/t;->eH()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data/Log/aftersales/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".zip"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sdcard/aftersales/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".zip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 80
    const/4 v4, 0x0

    :try_start_0
    const-string v5, "data/Log/aftersales/"

    invoke-static {v5}, Lcom/xiaopeng/devtools/utils/g;->aW(Ljava/lang/String;)Z

    .line 81
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    new-instance v6, Ljava/util/zip/ZipOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 83
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 84
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    const-string v8, "LogUploadService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onHandleIntent, source file = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " isExist = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 87
    const-string v8, "LogUploadService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onHandleIntent, ziping source file = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    const-string v4, ""

    invoke-static {v6, v7, v4}, Lcom/xiaopeng/lib/utils/k;->a(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)V

    .line 90
    :cond_1
    goto :goto_1

    .line 91
    :cond_2
    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 92
    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 93
    const-string v0, "LogUploadService"

    const-string v4, "onHandleIntent, finish zip file"

    invoke-static {v0, v4}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    const-string v0, "sdcard/aftersales/"

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/g;->aW(Ljava/lang/String;)Z

    .line 95
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v4, "@!chxpzi#0109$+/"

    invoke-static {v5, v0, v4}, Lcom/xiaopeng/lib/utils/b/a;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    .line 96
    const-string v4, "LogUploadService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onHandleIntent, finish zip and encryptFile destPath size= "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    nop

    .line 103
    :try_start_2
    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 106
    goto :goto_2

    .line 104
    :catch_0
    move-exception v4

    .line 105
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 108
    :goto_2
    invoke-static {v1}, Lcom/xiaopeng/devtools/utils/g;->deleteFile(Ljava/lang/String;)Z

    .line 109
    goto :goto_5

    .line 101
    :catchall_0
    move-exception p1

    goto :goto_6

    .line 97
    :catch_1
    move-exception v0

    move-object v4, v6

    goto :goto_3

    .line 101
    :catchall_1
    move-exception p1

    move-object v6, v4

    goto :goto_6

    .line 97
    :catch_2
    move-exception v0

    .line 98
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 99
    nop

    .line 101
    if-eqz v4, :cond_3

    .line 103
    :try_start_4
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 106
    goto :goto_4

    .line 104
    :catch_3
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 108
    :cond_3
    :goto_4
    invoke-static {v1}, Lcom/xiaopeng/devtools/utils/g;->deleteFile(Ljava/lang/String;)Z

    .line 109
    nop

    .line 111
    move v0, v2

    :goto_5
    if-eqz v0, :cond_4

    .line 112
    invoke-direct {p0, v3, p1}, Lcom/xiaopeng/devtools/system/service/LogUploadService;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 114
    :cond_4
    invoke-direct {p0, v2}, Lcom/xiaopeng/devtools/system/service/LogUploadService;->S(Z)V

    goto :goto_8

    .line 101
    :goto_6
    if-eqz v6, :cond_5

    .line 103
    :try_start_5
    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 106
    goto :goto_7

    .line 104
    :catch_4
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 108
    :cond_5
    :goto_7
    invoke-static {v1}, Lcom/xiaopeng/devtools/utils/g;->deleteFile(Ljava/lang/String;)Z

    throw p1

    .line 117
    :cond_6
    :goto_8
    return-void
.end method
