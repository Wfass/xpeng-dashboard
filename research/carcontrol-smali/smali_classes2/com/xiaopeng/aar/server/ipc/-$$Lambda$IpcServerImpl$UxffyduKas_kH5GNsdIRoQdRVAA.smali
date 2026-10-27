.class public final synthetic Lcom/xiaopeng/aar/server/ipc/-$$Lambda$IpcServerImpl$UxffyduKas_kH5GNsdIRoQdRVAA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/lib/apirouter/server/IManifestHandler;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/aar/server/ipc/-$$Lambda$IpcServerImpl$UxffyduKas_kH5GNsdIRoQdRVAA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/aar/server/ipc/-$$Lambda$IpcServerImpl$UxffyduKas_kH5GNsdIRoQdRVAA;

    invoke-direct {v0}, Lcom/xiaopeng/aar/server/ipc/-$$Lambda$IpcServerImpl$UxffyduKas_kH5GNsdIRoQdRVAA;-><init>()V

    sput-object v0, Lcom/xiaopeng/aar/server/ipc/-$$Lambda$IpcServerImpl$UxffyduKas_kH5GNsdIRoQdRVAA;->INSTANCE:Lcom/xiaopeng/aar/server/ipc/-$$Lambda$IpcServerImpl$UxffyduKas_kH5GNsdIRoQdRVAA;

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

    invoke-static {}, Lcom/xiaopeng/aar/server/ipc/IpcServerImpl;->lambda$new$0()[Lcom/xiaopeng/lib/apirouter/server/IManifestHelper;

    move-result-object v0

    return-object v0
.end method
