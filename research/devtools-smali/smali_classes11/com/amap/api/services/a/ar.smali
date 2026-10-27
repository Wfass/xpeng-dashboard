.class Lcom/amap/api/services/a/ar;
.super Lcom/amap/api/services/a/an;
.source "DynamicClassLoader.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/a/l;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/amap/api/services/a/an;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/l;Z)V

    .line 89
    invoke-virtual {p2}, Lcom/amap/api/services/a/l;->a()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-virtual {p2}, Lcom/amap/api/services/a/l;->b()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-static {p1, v0, v1}, Lcom/amap/api/services/a/aq;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {p1}, Lcom/amap/api/services/a/aq;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 101
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 103
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 105
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 107
    invoke-virtual {p2}, Lcom/amap/api/services/a/l;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/amap/api/services/a/l;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lcom/amap/api/services/a/aq;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "file not exist!"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_1
    if-eqz p3, :cond_2

    .line 113
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/amap/api/services/a/aq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/amap/api/services/a/ar;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance p2, Lcom/amap/api/services/a/ar$1;

    invoke-direct {p2, p0, p1, v0, v1}, Lcom/amap/api/services/a/ar$1;-><init>(Lcom/amap/api/services/a/ar;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Lcom/amap/api/services/a/ar$1;->start()V

    .line 125
    :cond_2
    return-void

    .line 99
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "dexPath or dexOutputDir is null."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/amap/api/services/a/x;Lcom/amap/api/services/a/l;Ljava/lang/String;)Z
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/amap/api/services/a/ar;->a:Landroid/content/Context;

    .line 59
    invoke-virtual {p2}, Lcom/amap/api/services/a/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amap/api/services/a/l;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/aq;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {p1, v0, p3, p2}, Lcom/amap/api/services/a/aq;->a(Lcom/amap/api/services/a/x;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/services/a/l;)Z

    move-result p1

    return p1
.end method

.method private b(Lcom/amap/api/services/a/x;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .line 65
    iget-object v0, p0, Lcom/amap/api/services/a/ar;->a:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/amap/api/services/a/aq;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/amap/api/services/a/ar;->fd:Lcom/amap/api/services/a/l;

    invoke-static {p1, p2, v0, v1}, Lcom/amap/api/services/a/aq;->a(Lcom/amap/api/services/a/x;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/services/a/l;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 67
    return v2

    .line 70
    :cond_0
    invoke-static {p1, p2}, Lcom/amap/api/services/a/aq$a;->a(Lcom/amap/api/services/a/x;Ljava/lang/String;)Lcom/amap/api/services/a/av;

    move-result-object v1

    .line 71
    if-eqz v1, :cond_1

    .line 72
    const/4 p1, 0x0

    return p1

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/amap/api/services/a/ar;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 75
    new-instance v1, Lcom/amap/api/services/a/av$a;

    invoke-static {v0}, Lcom/amap/api/services/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/amap/api/services/a/ar;->fd:Lcom/amap/api/services/a/l;

    .line 76
    invoke-virtual {v0}, Lcom/amap/api/services/a/l;->a()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/amap/api/services/a/ar;->fd:Lcom/amap/api/services/a/l;

    invoke-virtual {v0}, Lcom/amap/api/services/a/l;->b()Ljava/lang/String;

    move-result-object v7

    move-object v3, v1

    move-object v4, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/amap/api/services/a/av$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "useod"

    .line 77
    invoke-virtual {v1, p3}, Lcom/amap/api/services/a/av$a;->J(Ljava/lang/String;)Lcom/amap/api/services/a/av$a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amap/api/services/a/av$a;->bt()Lcom/amap/api/services/a/av;

    move-result-object p3

    .line 78
    nop

    .line 79
    invoke-static {p2}, Lcom/amap/api/services/a/av;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 78
    invoke-static {p1, p3, p2}, Lcom/amap/api/services/a/aq$a;->a(Lcom/amap/api/services/a/x;Lcom/amap/api/services/a/av;Ljava/lang/String;)V

    .line 82
    :cond_2
    return v2
.end method


# virtual methods
.method protected a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/services/a/x;)V
    .locals 7

    .line 244
    iget-object v0, p0, Lcom/amap/api/services/a/ar;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 245
    :cond_0
    invoke-static {p2}, Lcom/amap/api/services/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 246
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 247
    iget-object p2, p0, Lcom/amap/api/services/a/ar;->fd:Lcom/amap/api/services/a/l;

    invoke-virtual {p2}, Lcom/amap/api/services/a/l;->a()Ljava/lang/String;

    move-result-object v4

    .line 248
    iget-object p2, p0, Lcom/amap/api/services/a/ar;->fd:Lcom/amap/api/services/a/l;

    invoke-virtual {p2}, Lcom/amap/api/services/a/l;->b()Ljava/lang/String;

    move-result-object v5

    .line 254
    new-instance p2, Lcom/amap/api/services/a/av$a;

    move-object v1, p2

    move-object v2, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/services/a/av$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "useod"

    .line 255
    invoke-virtual {p2, p3}, Lcom/amap/api/services/a/av$a;->J(Ljava/lang/String;)Lcom/amap/api/services/a/av$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amap/api/services/a/av$a;->bt()Lcom/amap/api/services/a/av;

    move-result-object p2

    .line 256
    nop

    .line 257
    invoke-static {p1}, Lcom/amap/api/services/a/av;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 256
    invoke-static {p4, p2, p1}, Lcom/amap/api/services/a/aq$a;->a(Lcom/amap/api/services/a/x;Lcom/amap/api/services/a/av;Ljava/lang/String;)V

    .line 266
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ar;->fc:Ldalvik/system/DexFile;

    if-eqz v0, :cond_0

    .line 40
    return-void

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/services/a/ar;->b()V

    .line 43
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/services/a/ar;->fc:Ldalvik/system/DexFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    nop

    .line 48
    return-void

    .line 44
    :catch_0
    move-exception p1

    .line 45
    const-string p2, "DynamicClassLoader"

    const-string v0, "loadDexFile()"

    invoke-static {p1, p2, v0}, Lcom/amap/api/services/a/aw;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "load dex fail"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 159
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 161
    :try_start_0
    new-instance v0, Lcom/amap/api/services/a/x;

    invoke-static {}, Lcom/amap/api/services/a/at;->br()Lcom/amap/api/services/a/at;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/amap/api/services/a/x;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/w;)V

    .line 163
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/amap/api/services/a/aq$a;->a(Lcom/amap/api/services/a/x;Ljava/lang/String;)Lcom/amap/api/services/a/av;

    move-result-object p2

    .line 166
    if-eqz p2, :cond_0

    .line 167
    invoke-virtual {p2}, Lcom/amap/api/services/a/av;->d()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/services/a/ar;->f:Ljava/lang/String;

    .line 170
    :cond_0
    iget-object p2, p0, Lcom/amap/api/services/a/ar;->fd:Lcom/amap/api/services/a/l;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/amap/api/services/a/ar;->a(Lcom/amap/api/services/a/x;Lcom/amap/api/services/a/l;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 176
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/amap/api/services/a/ar;->d:Z

    .line 178
    iget-object p2, p0, Lcom/amap/api/services/a/ar;->a:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/amap/api/services/a/aq;->a(Landroid/content/Context;Lcom/amap/api/services/a/x;Ljava/lang/String;)V

    .line 180
    iget-object p2, p0, Lcom/amap/api/services/a/ar;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/services/a/ar;->fd:Lcom/amap/api/services/a/l;

    invoke-static {p2, v0, v1}, Lcom/amap/api/services/a/aq;->a(Landroid/content/Context;Lcom/amap/api/services/a/x;Lcom/amap/api/services/a/l;)Ljava/lang/String;

    move-result-object p2

    .line 183
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 184
    iput-object p2, p0, Lcom/amap/api/services/a/ar;->f:Ljava/lang/String;

    .line 189
    iget-object p2, p0, Lcom/amap/api/services/a/ar;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/services/a/ar;->fd:Lcom/amap/api/services/a/l;

    invoke-virtual {p0, p2, v1}, Lcom/amap/api/services/a/ar;->c(Landroid/content/Context;Lcom/amap/api/services/a/l;)V

    .line 195
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_2

    .line 200
    return-void

    .line 202
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/amap/api/services/a/aq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 204
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 208
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amap/api/services/a/aq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/amap/api/services/a/ar;->f:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/amap/api/services/a/ar;->b(Lcom/amap/api/services/a/x;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 220
    :cond_3
    iget-object p1, p0, Lcom/amap/api/services/a/ar;->a:Landroid/content/Context;

    iget-object p2, p0, Lcom/amap/api/services/a/ar;->fd:Lcom/amap/api/services/a/l;

    invoke-virtual {p0, p1, p2}, Lcom/amap/api/services/a/ar;->c(Landroid/content/Context;Lcom/amap/api/services/a/l;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :cond_4
    :goto_0
    goto :goto_1

    .line 229
    :catch_0
    move-exception p1

    .line 233
    const-string p2, "DynamicClassLoader"

    const-string p3, "verifyDynamicSDK()"

    invoke-static {p1, p2, p3}, Lcom/amap/api/services/a/aw;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :goto_1
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 241
    return-void
.end method

.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ar;->fc:Ldalvik/system/DexFile;

    if-eqz v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/amap/api/services/a/ar;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 140
    if-eqz v0, :cond_0

    .line 141
    return-object v0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/a/ar;->fc:Ldalvik/system/DexFile;

    invoke-virtual {v0, p1, p0}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_1

    .line 147
    iget-object v1, p0, Lcom/amap/api/services/a/ar;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    return-object v0

    .line 145
    :cond_1
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_2
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :catch_0
    move-exception v0

    .line 151
    const-string v1, "DynamicClassLoader"

    const-string v2, "findCl"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/aw;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
