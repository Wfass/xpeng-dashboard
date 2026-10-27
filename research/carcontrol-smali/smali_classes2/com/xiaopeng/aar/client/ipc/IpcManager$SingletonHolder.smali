.class Lcom/xiaopeng/aar/client/ipc/IpcManager$SingletonHolder;
.super Ljava/lang/Object;
.source "IpcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/aar/client/ipc/IpcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/aar/client/ipc/IpcManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lcom/xiaopeng/aar/client/ipc/IpcManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/aar/client/ipc/IpcManager;-><init>(Lcom/xiaopeng/aar/client/ipc/IpcManager$1;)V

    sput-object v0, Lcom/xiaopeng/aar/client/ipc/IpcManager$SingletonHolder;->INSTANCE:Lcom/xiaopeng/aar/client/ipc/IpcManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/aar/client/ipc/IpcManager;
    .locals 1

    .line 13
    sget-object v0, Lcom/xiaopeng/aar/client/ipc/IpcManager$SingletonHolder;->INSTANCE:Lcom/xiaopeng/aar/client/ipc/IpcManager;

    return-object v0
.end method
