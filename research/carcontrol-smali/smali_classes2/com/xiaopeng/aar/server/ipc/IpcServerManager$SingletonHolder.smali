.class Lcom/xiaopeng/aar/server/ipc/IpcServerManager$SingletonHolder;
.super Ljava/lang/Object;
.source "IpcServerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/aar/server/ipc/IpcServerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/aar/server/ipc/IpcServerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lcom/xiaopeng/aar/server/ipc/IpcServerManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/aar/server/ipc/IpcServerManager;-><init>(Lcom/xiaopeng/aar/server/ipc/IpcServerManager$1;)V

    sput-object v0, Lcom/xiaopeng/aar/server/ipc/IpcServerManager$SingletonHolder;->INSTANCE:Lcom/xiaopeng/aar/server/ipc/IpcServerManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/aar/server/ipc/IpcServerManager;
    .locals 1

    .line 12
    sget-object v0, Lcom/xiaopeng/aar/server/ipc/IpcServerManager$SingletonHolder;->INSTANCE:Lcom/xiaopeng/aar/server/ipc/IpcServerManager;

    return-object v0
.end method
