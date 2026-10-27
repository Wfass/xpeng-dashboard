.class public Lcom/xiaopeng/xui/utils/parse/unit/PressureUnit;
.super Lcom/xiaopeng/xui/utils/parse/unit/XUnit;
.source "PressureUnit.java"


# static fields
.field public static final BAR:Ljava/lang/String; = "bar"

.field public static final KPA:Ljava/lang/String; = "kPa"

.field public static final PSI:Ljava/lang/String; = "psi"

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

    .line 11
    new-instance v0, Lcom/xiaopeng/xui/utils/parse/unit/PressureUnit$1;

    invoke-direct {v0}, Lcom/xiaopeng/xui/utils/parse/unit/PressureUnit$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xui/utils/parse/unit/PressureUnit;->unitScale:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/xiaopeng/xui/utils/parse/unit/XUnit;-><init>()V

    return-void
.end method
