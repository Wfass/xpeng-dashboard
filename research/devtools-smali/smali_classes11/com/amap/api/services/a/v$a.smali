.class Lcom/amap/api/services/a/v$a;
.super Ljava/lang/Object;
.source "LogProcessor.java"

# interfaces
.implements Lcom/amap/api/services/a/ay;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/a/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private eQ:Lcom/amap/api/services/a/af;

.field final synthetic eR:Lcom/amap/api/services/a/v;


# direct methods
.method constructor <init>(Lcom/amap/api/services/a/v;Lcom/amap/api/services/a/af;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/amap/api/services/a/v$a;->eR:Lcom/amap/api/services/a/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p2, p0, Lcom/amap/api/services/a/v$a;->eQ:Lcom/amap/api/services/a/af;

    .line 296
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/v$a;->eQ:Lcom/amap/api/services/a/af;

    iget-object v1, p0, Lcom/amap/api/services/a/v$a;->eR:Lcom/amap/api/services/a/v;

    .line 302
    invoke-virtual {v1}, Lcom/amap/api/services/a/v;->b()I

    move-result v1

    invoke-static {v1}, Lcom/amap/api/services/a/p;->G(I)Ljava/lang/Class;

    move-result-object v1

    .line 301
    invoke-virtual {v0, p1, v1}, Lcom/amap/api/services/a/af;->c(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    goto :goto_0

    .line 304
    :catch_0
    move-exception p1

    .line 305
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 307
    :goto_0
    return-void
.end method
