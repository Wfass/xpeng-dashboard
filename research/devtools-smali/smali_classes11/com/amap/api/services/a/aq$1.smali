.class final Lcom/amap/api/services/a/aq$1;
.super Ljava/lang/Thread;
.source "DexFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/services/a/aq;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/amap/api/services/a/aq$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/services/a/aq$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/amap/api/services/a/aq$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 233
    :try_start_0
    new-instance v0, Lcom/amap/api/services/a/x;

    iget-object v1, p0, Lcom/amap/api/services/a/aq$1;->a:Landroid/content/Context;

    .line 234
    invoke-static {}, Lcom/amap/api/services/a/at;->br()Lcom/amap/api/services/a/at;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amap/api/services/a/x;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/w;)V

    .line 235
    iget-object v1, p0, Lcom/amap/api/services/a/aq$1;->b:Ljava/lang/String;

    .line 237
    invoke-static {v1}, Lcom/amap/api/services/a/av;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/amap/api/services/a/av;

    .line 236
    invoke-virtual {v0, v1, v2}, Lcom/amap/api/services/a/x;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 240
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 241
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/services/a/av;

    .line 242
    nop

    .line 243
    invoke-virtual {v2}, Lcom/amap/api/services/a/av;->c()Ljava/lang/String;

    move-result-object v3

    .line 244
    iget-object v4, p0, Lcom/amap/api/services/a/aq$1;->c:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 245
    invoke-virtual {v2}, Lcom/amap/api/services/a/av;->a()Ljava/lang/String;

    move-result-object v2

    .line 246
    iget-object v3, p0, Lcom/amap/api/services/a/aq$1;->a:Landroid/content/Context;

    invoke-static {v3, v0, v2}, Lcom/amap/api/services/a/aq;->b(Landroid/content/Context;Lcom/amap/api/services/a/x;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :cond_0
    goto :goto_0

    .line 257
    :cond_1
    goto :goto_1

    .line 251
    :catch_0
    move-exception v0

    .line 256
    const-string v1, "DexFileManager"

    const-string v2, "clearUnSuitableVersion"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :goto_1
    return-void
.end method
