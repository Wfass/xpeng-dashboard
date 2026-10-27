.class public Lcom/xiaopeng/aar/client/ipc/IpcManager;
.super Ljava/lang/Object;
.source "IpcManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/aar/client/ipc/IpcManager$SingletonHolder;
    }
.end annotation


# instance fields
.field private final mIpc:Lcom/xiaopeng/aar/client/ipc/Ipc;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lcom/xiaopeng/aar/client/ipc/IpcImpl;->get()Lcom/xiaopeng/aar/client/ipc/IpcImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/aar/client/ipc/IpcManager;->mIpc:Lcom/xiaopeng/aar/client/ipc/Ipc;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/aar/client/ipc/IpcManager$1;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/xiaopeng/aar/client/ipc/IpcManager;-><init>()V

    return-void
.end method

.method public static get()Lcom/xiaopeng/aar/client/ipc/IpcManager;
    .locals 1

    .line 18
    invoke-static {}, Lcom/xiaopeng/aar/client/ipc/IpcManager$SingletonHolder;->access$100()Lcom/xiaopeng/aar/client/ipc/IpcManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getIpc()Lcom/xiaopeng/aar/client/ipc/Ipc;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/aar/client/ipc/IpcManager;->mIpc:Lcom/xiaopeng/aar/client/ipc/Ipc;

    return-object v0
.end method

.method public init()V
    .locals 0

    return-void
.end method
