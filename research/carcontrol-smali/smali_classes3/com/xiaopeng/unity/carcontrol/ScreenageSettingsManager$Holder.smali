.class Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager$Holder;
.super Ljava/lang/Object;
.source "ScreenageSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 374
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;-><init>(Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager$1;)V

    sput-object v0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;
    .locals 1

    .line 373
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;

    return-object v0
.end method
