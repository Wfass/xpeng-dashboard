.class Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter$SingleHolder;
.super Ljava/lang/Object;
.source "DataCompareWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleHolder"
.end annotation


# static fields
.field private static sInstance:Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;-><init>()V

    sput-object v0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter$SingleHolder;->sInstance:Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;
    .locals 1

    .line 74
    sget-object v0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter$SingleHolder;->sInstance:Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;

    return-object v0
.end method
