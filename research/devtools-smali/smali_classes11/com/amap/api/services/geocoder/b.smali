.class public final Lcom/amap/api/services/geocoder/b;
.super Ljava/lang/Object;
.source "GeocodeSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/geocoder/b$a;
    }
.end annotation


# instance fields
.field private gR:Lcom/amap/api/services/b/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/amap/api/services/a/bq;->l(Z)Lcom/amap/api/services/a/l;

    move-result-object v2

    const-string v3, "com.amap.api.services.dynamic.GeocodeSearchWrapper"

    const-class v4, Lcom/amap/api/services/a/c;

    new-array v5, v0, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v6

    move-object v1, p1

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lcom/amap/api/services/a/am;->a(Landroid/content/Context;Lcom/amap/api/services/a/l;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/b/a;

    iput-object v0, p0, Lcom/amap/api/services/geocoder/b;->gR:Lcom/amap/api/services/b/a;
    :try_end_0
    .catch Lcom/amap/api/services/a/au; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Lcom/amap/api/services/a/au;->printStackTrace()V

    .line 51
    :goto_0
    iget-object v0, p0, Lcom/amap/api/services/geocoder/b;->gR:Lcom/amap/api/services/b/a;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/amap/api/services/a/c;

    invoke-direct {v0, p1}, Lcom/amap/api/services/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/services/geocoder/b;->gR:Lcom/amap/api/services/b/a;

    .line 54
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/amap/api/services/geocoder/b$a;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/amap/api/services/geocoder/b;->gR:Lcom/amap/api/services/b/a;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/amap/api/services/geocoder/b;->gR:Lcom/amap/api/services/b/a;

    invoke-interface {v0, p1}, Lcom/amap/api/services/b/a;->a(Lcom/amap/api/services/geocoder/b$a;)V

    .line 96
    :cond_0
    return-void
.end method

.method public b(Lcom/amap/api/services/geocoder/c;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/amap/api/services/geocoder/b;->gR:Lcom/amap/api/services/b/a;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/amap/api/services/geocoder/b;->gR:Lcom/amap/api/services/b/a;

    invoke-interface {v0, p1}, Lcom/amap/api/services/b/a;->b(Lcom/amap/api/services/geocoder/c;)V

    .line 108
    :cond_0
    return-void
.end method
