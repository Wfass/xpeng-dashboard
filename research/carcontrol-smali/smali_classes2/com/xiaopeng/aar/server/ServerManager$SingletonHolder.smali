.class Lcom/xiaopeng/aar/server/ServerManager$SingletonHolder;
.super Ljava/lang/Object;
.source "ServerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/aar/server/ServerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/aar/server/ServerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Lcom/xiaopeng/aar/server/ServerManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/aar/server/ServerManager;-><init>(Lcom/xiaopeng/aar/server/ServerManager$1;)V

    sput-object v0, Lcom/xiaopeng/aar/server/ServerManager$SingletonHolder;->INSTANCE:Lcom/xiaopeng/aar/server/ServerManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$500()Lcom/xiaopeng/aar/server/ServerManager;
    .locals 1

    .line 63
    sget-object v0, Lcom/xiaopeng/aar/server/ServerManager$SingletonHolder;->INSTANCE:Lcom/xiaopeng/aar/server/ServerManager;

    return-object v0
.end method
