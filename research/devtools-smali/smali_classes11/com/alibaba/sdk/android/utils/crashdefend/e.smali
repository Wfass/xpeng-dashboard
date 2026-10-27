.class Lcom/alibaba/sdk/android/utils/crashdefend/e;
.super Ljava/lang/Object;
.source "CrashDefendUtils.java"


# direct methods
.method static a(Landroid/content/Context;Lcom/alibaba/sdk/android/utils/crashdefend/a;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/sdk/android/utils/crashdefend/a;",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/utils/crashdefend/c;",
            ">;)V"
        }
    .end annotation

    .line 37
    if-nez p0, :cond_0

    .line 38
    return-void

    .line 40
    :cond_0
    monitor-enter p2

    .line 41
    const/4 v0, 0x0

    .line 43
    nop

    .line 44
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 45
    if-eqz p1, :cond_1

    .line 46
    const-string v2, "startSerialNumber"

    iget-wide v3, p1, Lcom/alibaba/sdk/android/utils/crashdefend/a;->a:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_1
    if-eqz p2, :cond_4

    .line 50
    :try_start_1
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 51
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/sdk/android/utils/crashdefend/c;

    .line 52
    if-eqz v3, :cond_2

    .line 53
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 54
    const-string v5, "sdkId"

    iget-object v6, v3, Lcom/alibaba/sdk/android/utils/crashdefend/c;->c:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v5, "sdkVersion"

    iget-object v6, v3, Lcom/alibaba/sdk/android/utils/crashdefend/c;->d:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string v5, "crashLimit"

    iget v6, v3, Lcom/alibaba/sdk/android/utils/crashdefend/c;->b:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 57
    const-string v5, "crashCount"

    iget v6, v3, Lcom/alibaba/sdk/android/utils/crashdefend/c;->crashCount:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 58
    const-string v5, "waitTime"

    iget v6, v3, Lcom/alibaba/sdk/android/utils/crashdefend/c;->c:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 61
    const-string v5, "registerSerialNumber"

    iget-wide v6, v3, Lcom/alibaba/sdk/android/utils/crashdefend/c;->b:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 62
    const-string v5, "startSerialNumber"

    iget-wide v6, v3, Lcom/alibaba/sdk/android/utils/crashdefend/c;->a:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 66
    const-string v5, "restoreCount"

    iget v3, v3, Lcom/alibaba/sdk/android/utils/crashdefend/c;->d:I

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 67
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 69
    :cond_2
    goto :goto_0

    .line 70
    :cond_3
    const-string v2, "sdkList"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    goto :goto_1

    .line 71
    :catch_0
    move-exception p1

    .line 72
    :try_start_2
    const-string v2, "CrashUtils"

    const-string v3, "save sdk json fail:"

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    :cond_4
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-static {p0}, Lcom/alibaba/sdk/android/utils/crashdefend/e;->a(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 77
    const-string v1, "com_alibaba_aliyun_crash_defend_sdk_info"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p0

    .line 82
    :goto_2
    move-object v0, p0

    goto :goto_3

    .line 79
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com_alibaba_aliyun_crash_defend_sdk_info_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/alibaba/sdk/android/utils/crashdefend/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p0

    goto :goto_2

    .line 82
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    if-eqz v0, :cond_6

    .line 90
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_7

    .line 91
    :catch_1
    move-exception p0

    .line 92
    :try_start_4
    const-string p1, "CrashUtils"

    const-string v0, "save sdk io fail:"

    :goto_4
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_7

    .line 88
    :catchall_0
    move-exception p0

    goto :goto_9

    .line 85
    :catch_2
    move-exception p0

    goto :goto_5

    .line 83
    :catch_3
    move-exception p0

    goto :goto_6

    .line 85
    :goto_5
    nop

    .line 86
    :try_start_5
    const-string p1, "CrashUtils"

    const-string v1, "save sdk exception:"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 88
    if-eqz v0, :cond_6

    .line 90
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_7

    .line 91
    :catch_4
    move-exception p0

    .line 92
    :try_start_7
    const-string p1, "CrashUtils"

    const-string v0, "save sdk io fail:"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_4

    .line 83
    :goto_6
    nop

    .line 84
    :try_start_8
    const-string p1, "CrashUtils"

    const-string v1, "save sdk io fail:"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 88
    if-eqz v0, :cond_6

    .line 90
    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 93
    :goto_7
    goto :goto_8

    .line 91
    :catch_5
    move-exception p0

    .line 92
    :try_start_a
    const-string p1, "CrashUtils"

    const-string v0, "save sdk io fail:"

    goto :goto_4

    .line 96
    :cond_6
    :goto_8
    monitor-exit p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 97
    return-void

    .line 88
    :goto_9
    if-eqz v0, :cond_7

    .line 90
    :try_start_b
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 93
    goto :goto_a

    .line 96
    :catchall_1
    move-exception p0

    goto :goto_b

    .line 91
    :catch_6
    move-exception p1

    .line 92
    :try_start_c
    const-string v0, "CrashUtils"

    const-string v1, "save sdk io fail:"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    :cond_7
    :goto_a
    throw p0

    .line 96
    :goto_b
    monitor-exit p2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    throw p0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 1

    .line 174
    invoke-static {p0}, Lcom/alibaba/sdk/android/utils/crashdefend/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 176
    const/4 p0, 0x1

    return p0

    .line 178
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static a(Landroid/content/Context;Lcom/alibaba/sdk/android/utils/crashdefend/a;Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/sdk/android/utils/crashdefend/a;",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/utils/crashdefend/c;",
            ">;)Z"
        }
    .end annotation

    .line 101
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 102
    return v0

    .line 104
    :cond_0
    const/4 v1, 0x0

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    monitor-enter p2

    .line 108
    const/4 v3, -0x1

    :try_start_0
    invoke-static {p0}, Lcom/alibaba/sdk/android/utils/crashdefend/e;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 109
    const-string v4, "com_alibaba_aliyun_crash_defend_sdk_info"

    invoke-virtual {p0, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0

    .line 113
    :goto_0
    move-object v1, p0

    goto :goto_1

    .line 111
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com_alibaba_aliyun_crash_defend_sdk_info_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/alibaba/sdk/android/utils/crashdefend/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0

    goto :goto_0

    .line 113
    :goto_1
    nop

    .line 114
    const/16 p0, 0x200

    new-array p0, p0, [B

    .line 115
    :goto_2
    invoke-virtual {v1, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    if-eq v4, v3, :cond_2

    .line 116
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p0, v0, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 125
    :cond_2
    if-eqz v1, :cond_3

    .line 127
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    .line 128
    :catch_0
    move-exception p0

    .line 129
    :try_start_2
    const-string v1, "CrashUtils"

    const-string v4, "load sdk io fail:"

    :goto_3
    invoke-static {v1, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    .line 125
    :catchall_0
    move-exception p0

    goto/16 :goto_8

    .line 122
    :catch_1
    move-exception p0

    .line 123
    :try_start_3
    const-string v4, "CrashUtils"

    const-string v5, "load sdk exception:"

    invoke-static {v4, v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 125
    if-eqz v1, :cond_3

    .line 127
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    .line 128
    :catch_2
    move-exception p0

    .line 129
    :try_start_5
    const-string v1, "CrashUtils"

    const-string v4, "load sdk io fail:"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 120
    :catch_3
    move-exception p0

    .line 121
    :try_start_6
    const-string v4, "CrashUtils"

    const-string v5, "load sdk io fail:"

    invoke-static {v4, v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 125
    if-eqz v1, :cond_3

    .line 127
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_4

    .line 128
    :catch_4
    move-exception p0

    .line 129
    :try_start_8
    const-string v1, "CrashUtils"

    const-string v4, "load sdk io fail:"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3

    .line 118
    :catch_5
    move-exception p0

    .line 119
    :try_start_9
    const-string v4, "CrashUtils"

    const-string v5, "load sdk file fail:"

    invoke-static {v4, v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 125
    if-eqz v1, :cond_3

    .line 127
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 130
    :goto_4
    goto :goto_5

    .line 128
    :catch_6
    move-exception p0

    .line 129
    :try_start_b
    const-string v1, "CrashUtils"

    const-string v4, "load sdk io fail:"

    goto :goto_3

    .line 133
    :cond_3
    :goto_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_4

    .line 134
    monitor-exit p2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    return v0

    .line 137
    :cond_4
    :try_start_c
    new-instance p0, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 138
    const-string v1, "startSerialNumber"

    const-wide/16 v4, 0x1

    invoke-virtual {p0, v1, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/alibaba/sdk/android/utils/crashdefend/a;->a:J

    .line 139
    const-string p1, "sdkList"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 140
    move p1, v0

    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_6

    .line 141
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 142
    if-eqz v1, :cond_5

    .line 143
    new-instance v2, Lcom/alibaba/sdk/android/utils/crashdefend/c;

    invoke-direct {v2}, Lcom/alibaba/sdk/android/utils/crashdefend/c;-><init>()V

    .line 144
    const-string v4, "sdkId"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/sdk/android/utils/crashdefend/c;->c:Ljava/lang/String;

    .line 145
    const-string v4, "sdkVersion"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/sdk/android/utils/crashdefend/c;->d:Ljava/lang/String;

    .line 146
    const-string v4, "crashLimit"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v2, Lcom/alibaba/sdk/android/utils/crashdefend/c;->b:I

    .line 148
    const-string v4, "crashCount"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v2, Lcom/alibaba/sdk/android/utils/crashdefend/c;->crashCount:I

    .line 150
    const-string v4, "waitTime"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v2, Lcom/alibaba/sdk/android/utils/crashdefend/c;->c:I

    .line 154
    const-string v4, "registerSerialNumber"

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v2, Lcom/alibaba/sdk/android/utils/crashdefend/c;->b:J

    .line 155
    const-string v4, "startSerialNumber"

    invoke-virtual {v1, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/alibaba/sdk/android/utils/crashdefend/c;->a:J

    .line 158
    const-string v4, "restoreCount"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v2, Lcom/alibaba/sdk/android/utils/crashdefend/c;->d:I

    .line 159
    iget-object v1, v2, Lcom/alibaba/sdk/android/utils/crashdefend/c;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 160
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 140
    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    .line 166
    :catch_7
    move-exception p0

    .line 167
    :try_start_d
    const-string p1, "CrashUtils"

    const-string v0, "load sdk exception:"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 164
    :catch_8
    move-exception p0

    .line 165
    const-string p1, "CrashUtils"

    const-string v0, "load sdk json fail:"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    :cond_6
    nop

    .line 169
    :goto_7
    monitor-exit p2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 170
    const/4 p0, 0x1

    return p0

    .line 125
    :goto_8
    if-eqz v1, :cond_7

    .line 127
    :try_start_e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 130
    goto :goto_9

    .line 169
    :catchall_1
    move-exception p0

    goto :goto_a

    .line 128
    :catch_9
    move-exception p1

    .line 129
    :try_start_f
    const-string v0, "CrashUtils"

    const-string v1, "load sdk io fail:"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    :cond_7
    :goto_9
    throw p0

    .line 169
    :goto_a
    monitor-exit p2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    throw p0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 183
    nop

    .line 184
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 185
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object p0

    .line 186
    return-object p0

    .line 189
    :cond_0
    invoke-static {p0}, Lcom/alibaba/sdk/android/utils/crashdefend/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 191
    return-object v0

    .line 194
    :cond_1
    invoke-static {}, Lcom/alibaba/sdk/android/utils/crashdefend/e;->c()Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 196
    return-object v0

    .line 199
    :cond_2
    invoke-static {p0}, Lcom/alibaba/sdk/android/utils/crashdefend/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c()Ljava/lang/String;
    .locals 7

    .line 223
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 224
    nop

    .line 225
    nop

    .line 227
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/proc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/cmdline"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 235
    move-object v1, v2

    goto :goto_0

    .line 232
    :catch_0
    move-exception v2

    goto :goto_2

    .line 235
    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 237
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 240
    :goto_1
    goto :goto_3

    .line 238
    :catch_1
    move-exception v0

    .line 239
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 235
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 232
    :catch_2
    move-exception v2

    move-object v0, v1

    .line 233
    :goto_2
    :try_start_3
    const-string v3, "CrashUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProcessNameByPid error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 235
    if-eqz v0, :cond_1

    .line 237
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 243
    :cond_1
    :goto_3
    return-object v1

    .line 235
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_4
    if-eqz v1, :cond_2

    .line 237
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 240
    goto :goto_5

    .line 238
    :catch_3
    move-exception v1

    .line 239
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 242
    :cond_2
    :goto_5
    throw v0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 203
    const-string v0, ""

    .line 204
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 205
    if-nez p0, :cond_0

    .line 206
    return-object v0

    .line 208
    :cond_0
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    .line 209
    if-nez p0, :cond_1

    .line 210
    return-object v0

    .line 212
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 213
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 214
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_2

    .line 215
    iget-object v0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 216
    goto :goto_1

    .line 218
    :cond_2
    goto :goto_0

    .line 219
    :cond_3
    :goto_1
    return-object v0
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 247
    nop

    .line 249
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    .line 250
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 249
    const/4 v2, 0x0

    invoke-static {v1, v2, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 251
    const-string v1, "currentProcessName"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 252
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 253
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    goto :goto_0

    .line 254
    :catch_0
    move-exception p0

    .line 255
    const-string v1, "CrashUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProcessNameByActivityThread error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    move-object p0, v0

    :goto_0
    return-object p0
.end method
