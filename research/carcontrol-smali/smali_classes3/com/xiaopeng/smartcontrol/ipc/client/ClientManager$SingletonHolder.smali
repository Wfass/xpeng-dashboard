.class Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager$SingletonHolder;
.super Ljava/lang/Object;
.source "ClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    new-instance v0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;-><init>(Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager$1;)V

    sput-object v0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager$SingletonHolder;->INSTANCE:Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;
    .locals 1

    .line 62
    sget-object v0, Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager$SingletonHolder;->INSTANCE:Lcom/xiaopeng/smartcontrol/ipc/client/ClientManager;

    return-object v0
.end method
