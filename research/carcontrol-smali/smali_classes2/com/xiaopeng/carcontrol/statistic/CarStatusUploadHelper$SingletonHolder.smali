.class Lcom/xiaopeng/carcontrol/statistic/CarStatusUploadHelper$SingletonHolder;
.super Ljava/lang/Object;
.source "CarStatusUploadHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/statistic/CarStatusUploadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/carcontrol/statistic/CarStatusUploadHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 73
    new-instance v0, Lcom/xiaopeng/carcontrol/statistic/CarStatusUploadHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/statistic/CarStatusUploadHelper;-><init>(Lcom/xiaopeng/carcontrol/statistic/CarStatusUploadHelper$1;)V

    sput-object v0, Lcom/xiaopeng/carcontrol/statistic/CarStatusUploadHelper$SingletonHolder;->sInstance:Lcom/xiaopeng/carcontrol/statistic/CarStatusUploadHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/carcontrol/statistic/CarStatusUploadHelper;
    .locals 1

    .line 72
    sget-object v0, Lcom/xiaopeng/carcontrol/statistic/CarStatusUploadHelper$SingletonHolder;->sInstance:Lcom/xiaopeng/carcontrol/statistic/CarStatusUploadHelper;

    return-object v0
.end method
