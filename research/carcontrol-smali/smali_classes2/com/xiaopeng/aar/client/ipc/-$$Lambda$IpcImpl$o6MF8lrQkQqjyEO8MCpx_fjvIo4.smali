.class public final synthetic Lcom/xiaopeng/aar/client/ipc/-$$Lambda$IpcImpl$o6MF8lrQkQqjyEO8MCpx_fjvIo4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/lib/apirouter/server/IManifestHandler;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/aar/client/ipc/-$$Lambda$IpcImpl$o6MF8lrQkQqjyEO8MCpx_fjvIo4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/aar/client/ipc/-$$Lambda$IpcImpl$o6MF8lrQkQqjyEO8MCpx_fjvIo4;

    invoke-direct {v0}, Lcom/xiaopeng/aar/client/ipc/-$$Lambda$IpcImpl$o6MF8lrQkQqjyEO8MCpx_fjvIo4;-><init>()V

    sput-object v0, Lcom/xiaopeng/aar/client/ipc/-$$Lambda$IpcImpl$o6MF8lrQkQqjyEO8MCpx_fjvIo4;->INSTANCE:Lcom/xiaopeng/aar/client/ipc/-$$Lambda$IpcImpl$o6MF8lrQkQqjyEO8MCpx_fjvIo4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getManifestHelpers()[Lcom/xiaopeng/lib/apirouter/server/IManifestHelper;
    .locals 1

    invoke-static {}, Lcom/xiaopeng/aar/client/ipc/IpcImpl;->lambda$new$0()[Lcom/xiaopeng/lib/apirouter/server/IManifestHelper;

    move-result-object v0

    return-object v0
.end method
