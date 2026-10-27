.class Lcom/xiaopeng/unity/carcontrol/SunshadeControlManager$Holder;
.super Ljava/lang/Object;
.source "SunshadeControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/unity/carcontrol/SunshadeControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/unity/carcontrol/SunshadeControlManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/SunshadeControlManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SunshadeControlManager;-><init>(Lcom/xiaopeng/unity/carcontrol/SunshadeControlManager$1;)V

    sput-object v0, Lcom/xiaopeng/unity/carcontrol/SunshadeControlManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/SunshadeControlManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/unity/carcontrol/SunshadeControlManager;
    .locals 1

    .line 30
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/SunshadeControlManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/SunshadeControlManager;

    return-object v0
.end method
