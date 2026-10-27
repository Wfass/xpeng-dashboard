.class Lcom/xiaopeng/aar/client/ipc/IpcImpl$SingletonHolder;
.super Ljava/lang/Object;
.source "IpcImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/aar/client/ipc/IpcImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/aar/client/ipc/IpcImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/xiaopeng/aar/client/ipc/IpcImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/aar/client/ipc/IpcImpl;-><init>(Lcom/xiaopeng/aar/client/ipc/IpcImpl$1;)V

    sput-object v0, Lcom/xiaopeng/aar/client/ipc/IpcImpl$SingletonHolder;->INSTANCE:Lcom/xiaopeng/aar/client/ipc/IpcImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/aar/client/ipc/IpcImpl;
    .locals 1

    .line 36
    sget-object v0, Lcom/xiaopeng/aar/client/ipc/IpcImpl$SingletonHolder;->INSTANCE:Lcom/xiaopeng/aar/client/ipc/IpcImpl;

    return-object v0
.end method
