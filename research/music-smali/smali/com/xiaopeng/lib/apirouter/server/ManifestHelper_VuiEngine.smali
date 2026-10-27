.class public Lcom/xiaopeng/lib/apirouter/server/ManifestHelper_VuiEngine;
.super Ljava/lang/Object;
.source "ManifestHelper_VuiEngine.java"

# interfaces
.implements Lcom/xiaopeng/lib/apirouter/server/c;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public mapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/apirouter/server/ManifestHelper_VuiEngine;->mapping:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getMapping()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 16
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Laox;

    invoke-direct {v1}, Laox;-><init>()V

    invoke-static {}, Laow;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    invoke-static {}, Laow;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 18
    iget-object v3, p0, Lcom/xiaopeng/lib/apirouter/server/ManifestHelper_VuiEngine;->mapping:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Laov;

    invoke-direct {v1}, Laov;-><init>()V

    invoke-static {}, Laou;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    invoke-static {}, Laou;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 22
    iget-object v3, p0, Lcom/xiaopeng/lib/apirouter/server/ManifestHelper_VuiEngine;->mapping:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 24
    :cond_1
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Laot;

    invoke-direct {v1}, Laot;-><init>()V

    invoke-static {}, Laos;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    invoke-static {}, Laos;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 26
    iget-object v3, p0, Lcom/xiaopeng/lib/apirouter/server/ManifestHelper_VuiEngine;->mapping:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 28
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/lib/apirouter/server/ManifestHelper_VuiEngine;->mapping:Ljava/util/HashMap;

    return-object v0
.end method
