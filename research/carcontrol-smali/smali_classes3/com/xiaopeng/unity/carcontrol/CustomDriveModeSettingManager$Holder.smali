.class Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager$Holder;
.super Ljava/lang/Object;
.source "CustomDriveModeSettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 588
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;-><init>(Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager$1;)V

    sput-object v0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;
    .locals 1

    .line 587
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;

    return-object v0
.end method
