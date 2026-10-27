.class Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$SaveData;
.super Ljava/lang/Object;
.source "UserScenarioConfiger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveData"
.end annotation


# static fields
.field public static final KEY_VOLUME_BT_DYNAMIC:Ljava/lang/String; = "volumeBtDynamic"

.field public static final KEY_VOLUME_DYNAMIC:Ljava/lang/String; = "volumeDynamic"


# instance fields
.field public volumeBtDynamic:I

.field public volumeDynamic:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 518
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$SaveData;->volumeDynamic:I

    .line 519
    iput v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$SaveData;->volumeBtDynamic:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$1;

    .line 515
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$SaveData;-><init>()V

    return-void
.end method
