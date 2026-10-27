.class Lcom/xiaopeng/smartcontrol/sdk/client/CarControlSDK$SingletonHolder;
.super Ljava/lang/Object;
.source "CarControlSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/smartcontrol/sdk/client/CarControlSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/smartcontrol/sdk/client/CarControlSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/xiaopeng/smartcontrol/sdk/client/CarControlSDK;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/CarControlSDK;-><init>(Lcom/xiaopeng/smartcontrol/sdk/client/CarControlSDK$1;)V

    sput-object v0, Lcom/xiaopeng/smartcontrol/sdk/client/CarControlSDK$SingletonHolder;->INSTANCE:Lcom/xiaopeng/smartcontrol/sdk/client/CarControlSDK;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/smartcontrol/sdk/client/CarControlSDK;
    .locals 1

    .line 30
    sget-object v0, Lcom/xiaopeng/smartcontrol/sdk/client/CarControlSDK$SingletonHolder;->INSTANCE:Lcom/xiaopeng/smartcontrol/sdk/client/CarControlSDK;

    return-object v0
.end method
