.class public Lcom/alibaba/mtl/appmonitor/b/b;
.super Ljava/lang/Object;
.source "ExceptionEventBuilder.java"


# direct methods
.method private static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 92
    if-eqz v1, :cond_0

    .line 93
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 94
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/f/b;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    :cond_1
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 5

    .line 29
    if-eqz p1, :cond_0

    .line 30
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->y()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v0

    const-class v1, Lcom/alibaba/mtl/appmonitor/a/h;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/a/h;

    .line 31
    sget-object v1, Lcom/alibaba/mtl/appmonitor/a/f;->aO:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/a/f;->a()I

    move-result v1

    iput v1, v0, Lcom/alibaba/mtl/appmonitor/a/h;->e:I

    .line 32
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 33
    const-string v3, "meta"

    invoke-static {}, Lcom/alibaba/mtl/appmonitor/d;->q()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->y()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v3

    const-class v4, Lcom/alibaba/mtl/appmonitor/c/d;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object v2

    check-cast v2, Lcom/alibaba/mtl/appmonitor/c/d;

    .line 35
    invoke-static {p0, p1}, Lcom/alibaba/mtl/appmonitor/b/b;->b(Landroid/content/Context;Ljava/lang/Throwable;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/alibaba/mtl/appmonitor/c/d;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 36
    const-string p0, "data"

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object p0, Lcom/alibaba/mtl/appmonitor/a/f;->aO:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {p0}, Lcom/alibaba/mtl/appmonitor/a/f;->a()Ljava/lang/String;

    move-result-object p0

    .line 39
    iget-object p1, v0, Lcom/alibaba/mtl/appmonitor/a/h;->aV:Ljava/util/Map;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string p0, "APPMONITOR"

    iput-object p0, v0, Lcom/alibaba/mtl/appmonitor/a/h;->v:Ljava/lang/String;

    .line 41
    const-string p0, "sdk-exception"

    iput-object p0, v0, Lcom/alibaba/mtl/appmonitor/a/h;->w:Ljava/lang/String;

    .line 42
    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/f/c;->a(Lcom/alibaba/mtl/appmonitor/a/h;)V

    .line 43
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->y()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Lcom/alibaba/mtl/appmonitor/c/b;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 47
    :cond_0
    :goto_0
    nop

    .line 48
    :goto_1
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 1

    .line 50
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/alibaba/mtl/appmonitor/b/b;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 51
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/Throwable;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->y()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v0

    const-class v1, Lcom/alibaba/mtl/appmonitor/c/e;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 63
    if-eqz p0, :cond_0

    .line 64
    :try_start_0
    const-string v1, "pname"

    invoke-static {p0}, Lcom/alibaba/mtl/log/d/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 80
    :catch_0
    move-exception p0

    goto :goto_1

    .line 66
    :cond_0
    :goto_0
    const-string p0, "page"

    const-string v1, "APPMONITOR"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string p0, "monitorPoint"

    const-string v1, "sdk-exception"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string p0, "arg"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string p0, "successCount"

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 70
    const-string p0, "failCount"

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 71
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/b/b;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    .line 73
    if-eqz p1, :cond_1

    .line 74
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->y()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v3

    const-class v4, Lcom/alibaba/mtl/appmonitor/c/e;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 75
    const-string v3, "errorCode"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    const-string p1, "errorCount"

    invoke-virtual {v2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 77
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_1
    const-string p1, "errors"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    goto :goto_2

    .line 80
    :goto_1
    nop

    .line 84
    :goto_2
    return-object v0
.end method
