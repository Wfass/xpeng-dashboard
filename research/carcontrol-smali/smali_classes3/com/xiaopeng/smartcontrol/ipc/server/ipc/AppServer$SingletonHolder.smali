.class Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$SingletonHolder;
.super Ljava/lang/Object;
.source "AppServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;-><init>(Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$1;)V

    sput-object v0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$SingletonHolder;->INSTANCE:Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;
    .locals 1

    .line 27
    sget-object v0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$SingletonHolder;->INSTANCE:Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;

    return-object v0
.end method
