.class public Lcom/alibaba/mtl/appmonitor/SdkMeta;
.super Ljava/lang/Object;
.source "SdkMeta.java"


# static fields
.field public static final SDK_VERSION:Ljava/lang/String; = "2.6.4.10_for_bc"

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

    sput-object v0, Lcom/alibaba/mtl/appmonitor/SdkMeta;->d:Ljava/util/Map;

    .line 72
    sget-object v0, Lcom/alibaba/mtl/appmonitor/SdkMeta;->d:Ljava/util/Map;

    const-string v1, "sdk-version"

    const-string v2, "2.6.4.10_for_bc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSDKMetaData()Ljava/util/Map;
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
    sget-object v0, Lcom/alibaba/mtl/appmonitor/SdkMeta;->d:Ljava/util/Map;

    const-string v1, "sdk-version"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    sget-object v0, Lcom/alibaba/mtl/appmonitor/SdkMeta;->d:Ljava/util/Map;

    const-string v1, "sdk-version"

    const-string v2, "2.6.4.10_for_bc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_0
    sget-object v0, Lcom/alibaba/mtl/appmonitor/SdkMeta;->d:Ljava/util/Map;

    return-object v0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "paramString"    # Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 84
    return-object v0

    .line 86
    :cond_0
    const/4 v1, 0x0

    .line 88
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    nop

    .line 93
    move v1, v2

    goto :goto_0

    .line 89
    :catch_0
    move-exception v2

    .line 90
    const-string v3, "SdkMeta"

    const-string v4, "getString Id error"

    invoke-static {v3, v4, v2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 93
    :goto_0
    if-eqz v1, :cond_1

    .line 94
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 96
    :cond_1
    return-object v0
.end method

.method public static setExtra(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 76
    .local p0, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 77
    sget-object v0, Lcom/alibaba/mtl/appmonitor/SdkMeta;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 79
    :cond_0
    return-void
.end method
