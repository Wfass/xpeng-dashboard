.class Lcom/xiaopeng/unity/carcontrol/AsHeightControlManager$Holder;
.super Ljava/lang/Object;
.source "AsHeightControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/unity/carcontrol/AsHeightControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/unity/carcontrol/AsHeightControlManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 393
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/AsHeightControlManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/unity/carcontrol/AsHeightControlManager;-><init>(Lcom/xiaopeng/unity/carcontrol/AsHeightControlManager$1;)V

    sput-object v0, Lcom/xiaopeng/unity/carcontrol/AsHeightControlManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/AsHeightControlManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/unity/carcontrol/AsHeightControlManager;
    .locals 1

    .line 392
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/AsHeightControlManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/AsHeightControlManager;

    return-object v0
.end method
