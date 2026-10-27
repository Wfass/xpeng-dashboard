.class Lcom/xiaopeng/carcontrol/common/config/CarBaseConfig$SingletonHolder;
.super Ljava/lang/Object;
.source "CarBaseConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/common/config/CarBaseConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/carcontrol/common/config/CarBaseConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 329
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/config/CarBaseConfig;->access$000()Lcom/xiaopeng/carcontrol/common/config/CarBaseConfig;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/carcontrol/common/config/CarBaseConfig$SingletonHolder;->sInstance:Lcom/xiaopeng/carcontrol/common/config/CarBaseConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/carcontrol/common/config/CarBaseConfig;
    .locals 1

    .line 328
    sget-object v0, Lcom/xiaopeng/carcontrol/common/config/CarBaseConfig$SingletonHolder;->sInstance:Lcom/xiaopeng/carcontrol/common/config/CarBaseConfig;

    return-object v0
.end method
