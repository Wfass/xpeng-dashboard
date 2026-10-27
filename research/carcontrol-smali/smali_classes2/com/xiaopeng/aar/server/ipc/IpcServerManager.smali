.class public Lcom/xiaopeng/aar/server/ipc/IpcServerManager;
.super Ljava/lang/Object;
.source "IpcServerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/aar/server/ipc/IpcServerManager$SingletonHolder;
    }
.end annotation


# instance fields
.field private mIpcServer:Lcom/xiaopeng/aar/server/ipc/IpcServer;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lcom/xiaopeng/aar/server/ipc/IpcServerImpl;->get()Lcom/xiaopeng/aar/server/ipc/IpcServerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/aar/server/ipc/IpcServerManager;->mIpcServer:Lcom/xiaopeng/aar/server/ipc/IpcServer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/aar/server/ipc/IpcServerManager$1;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/xiaopeng/aar/server/ipc/IpcServerManager;-><init>()V

    return-void
.end method

.method public static get()Lcom/xiaopeng/aar/server/ipc/IpcServerManager;
    .locals 1

    .line 17
    invoke-static {}, Lcom/xiaopeng/aar/server/ipc/IpcServerManager$SingletonHolder;->access$100()Lcom/xiaopeng/aar/server/ipc/IpcServerManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getIpc()Lcom/xiaopeng/aar/server/ipc/IpcServer;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/aar/server/ipc/IpcServerManager;->mIpcServer:Lcom/xiaopeng/aar/server/ipc/IpcServer;

    return-object v0
.end method

.method public init()V
    .locals 0

    return-void
.end method
