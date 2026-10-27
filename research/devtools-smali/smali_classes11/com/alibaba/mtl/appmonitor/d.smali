.class public Lcom/alibaba/mtl/appmonitor/d;
.super Ljava/lang/Object;
.source "SdkMeta.java"


# static fields
.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/d;->d:Ljava/util/Map;

    .line 72
    sget-object v0, Lcom/alibaba/mtl/appmonitor/d;->d:Ljava/util/Map;

    const-string v1, "sdk-version"

    const-string v2, "2.6.4.10_for_bc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public static q()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 19
    invoke-static {}, Lcom/alibaba/mtl/log/a;->getContext()Landroid/content/Context;

    .line 20
    nop

    .line 49
    sget-object v0, Lcom/alibaba/mtl/appmonitor/d;->d:Ljava/util/Map;

    const-string v1, "sdk-version"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    sget-object v0, Lcom/alibaba/mtl/appmonitor/d;->d:Ljava/util/Map;

    const-string v1, "sdk-version"

    const-string v2, "2.6.4.10_for_bc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_0
    sget-object v0, Lcom/alibaba/mtl/appmonitor/d;->d:Ljava/util/Map;

    return-object v0
.end method
