.class Lcom/xiaopeng/smartcontrol/ipc/server/ServerManager$SingletonHolder;
.super Ljava/lang/Object;
.source "ServerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/smartcontrol/ipc/server/ServerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/smartcontrol/ipc/server/ServerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/xiaopeng/smartcontrol/ipc/server/ServerManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/smartcontrol/ipc/server/ServerManager;-><init>(Lcom/xiaopeng/smartcontrol/ipc/server/ServerManager$1;)V

    sput-object v0, Lcom/xiaopeng/smartcontrol/ipc/server/ServerManager$SingletonHolder;->INSTANCE:Lcom/xiaopeng/smartcontrol/ipc/server/ServerManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/smartcontrol/ipc/server/ServerManager;
    .locals 1

    .line 30
    sget-object v0, Lcom/xiaopeng/smartcontrol/ipc/server/ServerManager$SingletonHolder;->INSTANCE:Lcom/xiaopeng/smartcontrol/ipc/server/ServerManager;

    return-object v0
.end method
