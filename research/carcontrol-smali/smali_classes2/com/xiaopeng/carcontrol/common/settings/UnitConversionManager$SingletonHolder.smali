.class Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager$SingletonHolder;
.super Ljava/lang/Object;
.source "UnitConversionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field static sInstance:Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager;-><init>(Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager$1;)V

    sput-object v0, Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager$SingletonHolder;->sInstance:Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
