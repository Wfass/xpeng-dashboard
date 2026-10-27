.class Lcom/amap/api/services/a/bo$1;
.super Ljava/lang/Object;
.source "ThreadPool.java"

# interfaces
.implements Lcom/amap/api/services/a/bp$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/a/bo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic fU:Lcom/amap/api/services/a/bo;


# direct methods
.method constructor <init>(Lcom/amap/api/services/a/bo;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/amap/api/services/a/bo$1;->fU:Lcom/amap/api/services/a/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amap/api/services/a/bp;)V
    .locals 0

    .line 33
    return-void
.end method

.method public b(Lcom/amap/api/services/a/bp;)V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/amap/api/services/a/bo$1;->fU:Lcom/amap/api/services/a/bo;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/amap/api/services/a/bo;->a(Lcom/amap/api/services/a/bo;Lcom/amap/api/services/a/bp;Z)V

    .line 39
    return-void
.end method
