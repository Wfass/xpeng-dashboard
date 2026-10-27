.class public Lcom/alibaba/mtl/log/a/e;
.super Ljava/lang/Object;
.source "SystemConfig.java"


# direct methods
.method public static f()I
    .locals 3

    .line 131
    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->h()Ljava/lang/String;

    move-result-object v0

    .line 132
    nop

    .line 133
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 135
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 136
    const-string v0, "SYSTEM"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const-string v0, "SYSTEM"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_0

    const-string v1, "cdb"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    const-string v1, "cdb"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    move v2, v0

    :cond_0
    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 145
    :cond_1
    :goto_0
    return v2
.end method

.method public static j(Ljava/lang/String;)V
    .locals 8

    .line 33
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 35
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 36
    const-string v1, "SYSTEM"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 37
    const-string v1, "SystemConfig"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "server system config "

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p0, v3, v4

    invoke-static {v1, v3}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    const-string p0, "SYSTEM"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    .line 39
    if-eqz p0, :cond_7

    .line 54
    :try_start_1
    const-string v0, "bg_interval"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bg_interval"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/alibaba/mtl/log/a/a;->h(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    :cond_0
    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 69
    :goto_0
    :try_start_2
    const-string v0, "fg_interval"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fg_interval"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v0}, Lcom/alibaba/mtl/log/a/a;->i(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 81
    :cond_1
    goto :goto_1

    .line 79
    :catch_1
    move-exception v0

    .line 83
    :goto_1
    :try_start_3
    const-string v0, "SystemConfig"

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "UTDC.bSendToNewLogStore:"

    aput-object v3, v1, v5

    sget-boolean v3, Lcom/alibaba/mtl/log/a;->r:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    const-string v0, "SystemConfig"

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "Config.BACKGROUND_PERIOD:"

    aput-object v3, v1, v5

    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->b()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    const-string v0, "SystemConfig"

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Config.FOREGROUND_PERIOD:"

    aput-object v2, v1, v5

    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    .line 88
    :try_start_4
    const-string v0, "discard"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 89
    const-string v0, "discard"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 90
    if-ne v0, v4, :cond_2

    .line 91
    sput-boolean v4, Lcom/alibaba/mtl/log/a/a;->B:Z

    .line 92
    invoke-static {}, Lcom/alibaba/mtl/log/upload/UploadEngine;->getInstance()Lcom/alibaba/mtl/log/upload/UploadEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/upload/UploadEngine;->stop()V

    goto :goto_2

    .line 93
    :cond_2
    if-nez v0, :cond_3

    .line 94
    sput-boolean v5, Lcom/alibaba/mtl/log/a/a;->B:Z

    .line 95
    invoke-static {}, Lcom/alibaba/mtl/log/upload/UploadEngine;->getInstance()Lcom/alibaba/mtl/log/upload/UploadEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/upload/UploadEngine;->start()V

    .line 97
    :cond_3
    :goto_2
    goto :goto_3

    .line 98
    :cond_4
    sget-boolean v0, Lcom/alibaba/mtl/log/a/a;->B:Z

    if-eqz v0, :cond_5

    .line 99
    sput-boolean v5, Lcom/alibaba/mtl/log/a/a;->B:Z

    .line 100
    invoke-static {}, Lcom/alibaba/mtl/log/upload/UploadEngine;->getInstance()Lcom/alibaba/mtl/log/upload/UploadEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/upload/UploadEngine;->start()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 105
    :cond_5
    :goto_3
    goto :goto_4

    .line 104
    :catch_2
    move-exception v0

    .line 107
    :goto_4
    :try_start_5
    const-string v0, "cdb"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 108
    const-string v0, "cdb"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 109
    invoke-static {}, Lcom/alibaba/mtl/log/a/e;->f()I

    move-result v0

    if-le p0, v0, :cond_6

    .line 110
    invoke-static {}, Lcom/alibaba/mtl/log/d/s;->a()Lcom/alibaba/mtl/log/d/s;

    move-result-object p0

    new-instance v0, Lcom/alibaba/mtl/log/a/e$1;

    invoke-direct {v0}, Lcom/alibaba/mtl/log/a/e$1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/log/d/s;->b(Ljava/lang/Runnable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 119
    :cond_6
    goto :goto_5

    .line 118
    :catch_3
    move-exception p0

    .line 124
    :cond_7
    :goto_5
    goto :goto_6

    .line 122
    :catch_4
    move-exception p0

    .line 123
    const-string v0, "SystemConfig"

    const-string v1, "updateconfig"

    invoke-static {v0, v1, p0}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 126
    :cond_8
    :goto_6
    return-void
.end method
