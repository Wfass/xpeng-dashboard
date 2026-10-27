.class Lcom/xiaopeng/unity/carcontrol/CarBodyManager$Holder;
.super Ljava/lang/Object;
.source "CarBodyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/unity/carcontrol/CarBodyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/unity/carcontrol/CarBodyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 779
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;-><init>(Lcom/xiaopeng/unity/carcontrol/CarBodyManager$1;)V

    sput-object v0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/CarBodyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/unity/carcontrol/CarBodyManager;
    .locals 1

    .line 778
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/CarBodyManager;

    return-object v0
.end method
