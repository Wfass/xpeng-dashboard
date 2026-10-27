.class Lcom/xiaopeng/unity/carcontrol/MainControlManager$Holder;
.super Ljava/lang/Object;
.source "MainControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/unity/carcontrol/MainControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/unity/carcontrol/MainControlManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 654
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;-><init>(Lcom/xiaopeng/unity/carcontrol/MainControlManager$1;)V

    sput-object v0, Lcom/xiaopeng/unity/carcontrol/MainControlManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/MainControlManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/unity/carcontrol/MainControlManager;
    .locals 1

    .line 653
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/MainControlManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/MainControlManager;

    return-object v0
.end method
