.class public Lcom/xiaopeng/xui/utils/parse/unit/PowerUnit;
.super Lcom/xiaopeng/xui/utils/parse/unit/XUnit;
.source "PowerUnit.java"


# static fields
.field public static final KWH_100KM:Ljava/lang/String; = "kwh/100km"

.field public static final KWH_100MI:Ljava/lang/String; = "kwh/100mi"

.field public static metricImperialPair:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static unitScale:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/xiaopeng/xui/utils/parse/unit/PowerUnit$1;

    invoke-direct {v0}, Lcom/xiaopeng/xui/utils/parse/unit/PowerUnit$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xui/utils/parse/unit/PowerUnit;->unitScale:Ljava/util/HashMap;

    .line 14
    new-instance v0, Lcom/xiaopeng/xui/utils/parse/unit/PowerUnit$2;

    invoke-direct {v0}, Lcom/xiaopeng/xui/utils/parse/unit/PowerUnit$2;-><init>()V

    sput-object v0, Lcom/xiaopeng/xui/utils/parse/unit/PowerUnit;->metricImperialPair:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/xiaopeng/xui/utils/parse/unit/XUnit;-><init>()V

    return-void
.end method
