.class public Lcom/alibaba/mtl/appmonitor/d/c;
.super Lcom/alibaba/mtl/appmonitor/d/a;
.source "AccurateSampling.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/mtl/appmonitor/d/a<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private bk:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/mtl/appmonitor/d/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/alibaba/mtl/appmonitor/d/a;-><init>(I)V

    .line 18
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/d/c;->bk:Ljava/util/Map;

    .line 19
    return-void
.end method


# virtual methods
.method public b(ILjava/util/Map;)Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 49
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/d/c;->bk:Ljava/util/Map;

    if-nez v1, :cond_0

    goto :goto_1

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/d/c;->bk:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 53
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 55
    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/d/c;->bk:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/mtl/appmonitor/d/b;

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/alibaba/mtl/appmonitor/d/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 56
    return-object v0

    .line 58
    :cond_1
    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {p0, p1}, Lcom/alibaba/mtl/appmonitor/d/c;->a(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 50
    :cond_3
    :goto_1
    return-object v0
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/alibaba/mtl/appmonitor/d/c;->a(Lorg/json/JSONObject;)V

    .line 46
    return-void
.end method
