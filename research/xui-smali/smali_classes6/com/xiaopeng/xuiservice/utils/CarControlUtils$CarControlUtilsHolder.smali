.class Lcom/xiaopeng/xuiservice/utils/CarControlUtils$CarControlUtilsHolder;
.super Ljava/lang/Object;
.source "CarControlUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/utils/CarControlUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CarControlUtilsHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/xuiservice/utils/CarControlUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 79
    new-instance v0, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;-><init>(Lcom/xiaopeng/xuiservice/utils/CarControlUtils$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/CarControlUtils$CarControlUtilsHolder;->sInstance:Lcom/xiaopeng/xuiservice/utils/CarControlUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()Lcom/xiaopeng/xuiservice/utils/CarControlUtils;
    .locals 1

    .line 78
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/CarControlUtils$CarControlUtilsHolder;->sInstance:Lcom/xiaopeng/xuiservice/utils/CarControlUtils;

    return-object v0
.end method
