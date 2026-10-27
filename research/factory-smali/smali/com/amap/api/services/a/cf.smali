.class abstract Lcom/amap/api/services/a/cf;
.super Ljava/lang/ClassLoader;
.source "BaseClassLoader.java"


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected c:Ldalvik/system/DexFile;

.field volatile d:Z

.field protected e:Lcom/amap/api/services/a/bd;

.field protected f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/a/bd;Z)V
    .locals 0

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    invoke-direct {p0, p3}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 18
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/amap/api/services/a/cf;->b:Ljava/util/Map;

    .line 19
    const/4 p3, 0x0

    iput-object p3, p0, Lcom/amap/api/services/a/cf;->c:Ldalvik/system/DexFile;

    .line 20
    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/amap/api/services/a/cf;->d:Z

    .line 26
    iput-object p1, p0, Lcom/amap/api/services/a/cf;->a:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/amap/api/services/a/cf;->e:Lcom/amap/api/services/a/bd;

    .line 28
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/amap/api/services/a/bd;)V
    .locals 5

    .line 45
    invoke-virtual {p2}, Lcom/amap/api/services/a/bd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amap/api/services/a/bd;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/amap/api/services/a/ci;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {p1}, Lcom/amap/api/services/a/ci;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 51
    :cond_0
    invoke-static {p1, p2}, Lcom/amap/api/services/a/ck;->a(Landroid/content/Context;Lcom/amap/api/services/a/bd;)Lcom/amap/api/services/a/ck;

    .line 53
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 55
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 57
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {p2}, Lcom/amap/api/services/a/bd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amap/api/services/a/bd;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/amap/api/services/a/ci;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_1
    return-void

    .line 63
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/ci;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 64
    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_4

    .line 66
    new-instance v1, Lcom/amap/api/services/a/bp;

    invoke-static {}, Lcom/amap/api/services/a/cl;->c()Lcom/amap/api/services/a/cl;

    move-result-object v3

    invoke-direct {v1, p1, v3}, Lcom/amap/api/services/a/bp;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/bo;)V

    .line 67
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amap/api/services/a/ci$a;->a(Lcom/amap/api/services/a/bp;Ljava/lang/String;)Lcom/amap/api/services/a/cm;

    move-result-object v1

    .line 68
    if-eqz v1, :cond_3

    .line 69
    invoke-virtual {v1}, Lcom/amap/api/services/a/cm;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/services/a/cf;->f:Ljava/lang/String;

    .line 71
    :cond_3
    invoke-virtual {v0}, Ldalvik/system/DexFile;->close()V

    .line 72
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/amap/api/services/a/cf;->f:Ljava/lang/String;

    new-instance v2, Lcom/amap/api/services/a/bp;

    invoke-static {}, Lcom/amap/api/services/a/cl;->c()Lcom/amap/api/services/a/cl;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/amap/api/services/a/bp;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/bo;)V

    invoke-virtual {p0, v0, p2, v1, v2}, Lcom/amap/api/services/a/cf;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/services/a/bp;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_4
    goto :goto_0

    .line 75
    :catch_0
    move-exception p1

    .line 76
    const-string p2, "BaseClassLoader"

    const-string v0, "getInstanceByThread()"

    invoke-static {p1, p2, v0}, Lcom/amap/api/services/a/cn;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :goto_0
    return-void

    .line 49
    :cond_5
    :goto_1
    return-void
.end method

.method abstract a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/services/a/bp;)V
.end method

.method public a()Z
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amap/api/services/a/cf;->c:Ldalvik/system/DexFile;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected b()V
    .locals 3

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/cf;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 99
    iget-object v0, p0, Lcom/amap/api/services/a/cf;->c:Ldalvik/system/DexFile;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/amap/api/services/a/cf;->c:Ldalvik/system/DexFile;

    invoke-virtual {v0}, Ldalvik/system/DexFile;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :cond_0
    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 104
    const-string v1, "BaseClassLoader"

    const-string v2, "releaseDexFile()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/cn;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :goto_0
    return-void
.end method
