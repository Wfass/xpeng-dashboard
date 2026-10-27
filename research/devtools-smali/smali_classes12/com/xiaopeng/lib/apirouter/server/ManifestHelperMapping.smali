.class Lcom/xiaopeng/lib/apirouter/server/ManifestHelperMapping;
.super Ljava/lang/Object;
.source "ManifestHelperMapping.java"


# static fields
.field private static final HELPER_CLASS_NAME:Ljava/lang/String; = "com.xiaopeng.lib.apirouter.server.ManifestHelper"

.field private static final MAPPING:Ljava/lang/String; = "mapping"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static reflectMapping()Ljava/util/HashMap;
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
    nop

    .line 18
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.xiaopeng.lib.apirouter.server.ManifestHelper"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    const-string v2, "mapping"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    move-object v0, v1

    :cond_0
    goto :goto_0

    .line 25
    :catch_0
    move-exception v1

    .line 26
    const-string v2, "AutoCodeMatcher"

    const-string v3, "reflectMapping"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    :goto_0
    return-object v0
.end method
