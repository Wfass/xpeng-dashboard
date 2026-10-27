.class Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl$SingletonHolder;
.super Ljava/lang/Object;
.source "CarControlSDKImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;-><init>(Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl$1;)V

    sput-object v0, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl$SingletonHolder;->INSTANCE:Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;
    .locals 1

    .line 34
    sget-object v0, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl$SingletonHolder;->INSTANCE:Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;

    return-object v0
.end method
