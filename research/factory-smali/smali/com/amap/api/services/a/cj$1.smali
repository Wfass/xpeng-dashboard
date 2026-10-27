.class Lcom/amap/api/services/a/cj$1;
.super Ljava/lang/Thread;
.source "DynamicClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/services/a/cj;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/bd;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/amap/api/services/a/cj;


# direct methods
.method constructor <init>(Lcom/amap/api/services/a/cj;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/amap/api/services/a/cj$1;->d:Lcom/amap/api/services/a/cj;

    iput-object p2, p0, Lcom/amap/api/services/a/cj$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/amap/api/services/a/cj$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/amap/api/services/a/cj$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/cj$1;->d:Lcom/amap/api/services/a/cj;

    iget-object v1, p0, Lcom/amap/api/services/a/cj$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/services/a/cj$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/services/a/cj$1;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amap/api/services/a/cj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 120
    const-string v1, "DynamicClassLoader"

    const-string v2, "run()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/cn;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_0
    return-void
.end method
