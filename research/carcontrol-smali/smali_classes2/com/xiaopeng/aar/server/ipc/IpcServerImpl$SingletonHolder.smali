.class Lcom/xiaopeng/aar/server/ipc/IpcServerImpl$SingletonHolder;
.super Ljava/lang/Object;
.source "IpcServerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/aar/server/ipc/IpcServerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/aar/server/ipc/IpcServerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/xiaopeng/aar/server/ipc/IpcServerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/aar/server/ipc/IpcServerImpl;-><init>(Lcom/xiaopeng/aar/server/ipc/IpcServerImpl$1;)V

    sput-object v0, Lcom/xiaopeng/aar/server/ipc/IpcServerImpl$SingletonHolder;->INSTANCE:Lcom/xiaopeng/aar/server/ipc/IpcServerImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/aar/server/ipc/IpcServerImpl;
    .locals 1

    .line 37
    sget-object v0, Lcom/xiaopeng/aar/server/ipc/IpcServerImpl$SingletonHolder;->INSTANCE:Lcom/xiaopeng/aar/server/ipc/IpcServerImpl;

    return-object v0
.end method
