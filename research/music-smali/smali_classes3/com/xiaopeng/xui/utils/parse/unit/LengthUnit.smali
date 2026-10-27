.class public Lcom/xiaopeng/xui/utils/parse/unit/LengthUnit;
.super Lcom/xiaopeng/xui/utils/parse/unit/XUnit;
.source "LengthUnit.java"


# static fields
.field public static final CM:Ljava/lang/String; = "cm"

.field public static final FT:Ljava/lang/String; = "ft"

.field public static final INCH:Ljava/lang/String; = "inch"

.field public static final KM:Ljava/lang/String; = "km"

.field public static final M:Ljava/lang/String; = "m"

.field public static final MI:Ljava/lang/String; = "mi"

.field public static final MIL:Ljava/lang/String; = "mil"

.field public static final MM:Ljava/lang/String; = "mm"

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

    .line 16
    new-instance v0, Lcom/xiaopeng/xui/utils/parse/unit/LengthUnit$1;

    invoke-direct {v0}, Lcom/xiaopeng/xui/utils/parse/unit/LengthUnit$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xui/utils/parse/unit/LengthUnit;->unitScale:Ljava/util/HashMap;

    .line 26
    new-instance v0, Lcom/xiaopeng/xui/utils/parse/unit/LengthUnit$2;

    invoke-direct {v0}, Lcom/xiaopeng/xui/utils/parse/unit/LengthUnit$2;-><init>()V

    sput-object v0, Lcom/xiaopeng/xui/utils/parse/unit/LengthUnit;->metricImperialPair:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/xiaopeng/xui/utils/parse/unit/XUnit;-><init>()V

    return-void
.end method
