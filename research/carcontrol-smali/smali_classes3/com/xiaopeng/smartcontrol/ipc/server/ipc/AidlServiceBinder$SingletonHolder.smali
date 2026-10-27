.class Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AidlServiceBinder$SingletonHolder;
.super Ljava/lang/Object;
.source "AidlServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AidlServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AidlServiceBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AidlServiceBinder;

    invoke-direct {v0}, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AidlServiceBinder;-><init>()V

    sput-object v0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AidlServiceBinder$SingletonHolder;->INSTANCE:Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AidlServiceBinder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AidlServiceBinder;
    .locals 1

    .line 15
    sget-object v0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AidlServiceBinder$SingletonHolder;->INSTANCE:Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AidlServiceBinder;

    return-object v0
.end method
