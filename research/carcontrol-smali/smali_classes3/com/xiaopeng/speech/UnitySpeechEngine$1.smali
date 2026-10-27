.class final Lcom/xiaopeng/speech/UnitySpeechEngine$1;
.super Ljava/lang/Object;
.source "UnitySpeechEngine.java"

# interfaces
.implements Lcom/xiaopeng/lib/apirouter/server/IManifestHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/UnitySpeechEngine;->initApiRouter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getManifestHelpers()[Lcom/xiaopeng/lib/apirouter/server/IManifestHelper;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/xiaopeng/lib/apirouter/server/IManifestHelper;

    .line 444
    new-instance v1, Lcom/xiaopeng/lib/apirouter/server/ManifestHelper_VuiEngine;

    invoke-direct {v1}, Lcom/xiaopeng/lib/apirouter/server/ManifestHelper_VuiEngine;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method
