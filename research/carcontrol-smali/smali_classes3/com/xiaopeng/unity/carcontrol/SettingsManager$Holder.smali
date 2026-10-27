.class Lcom/xiaopeng/unity/carcontrol/SettingsManager$Holder;
.super Ljava/lang/Object;
.source "SettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/unity/carcontrol/SettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/unity/carcontrol/SettingsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2809
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;-><init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager$1;)V

    sput-object v0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2808
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/unity/carcontrol/SettingsManager;
    .locals 1

    .line 2808
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    return-object v0
.end method
