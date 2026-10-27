.class Lcom/xiaopeng/unity/carcontrol/LampSettingManager$Holder;
.super Ljava/lang/Object;
.source "LampSettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/unity/carcontrol/LampSettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/unity/carcontrol/LampSettingManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 719
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;-><init>(Lcom/xiaopeng/unity/carcontrol/LampSettingManager$1;)V

    sput-object v0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/LampSettingManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/unity/carcontrol/LampSettingManager;
    .locals 1

    .line 718
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/LampSettingManager;

    return-object v0
.end method
