.class Lcom/xiaopeng/unity/carcontrol/ServiceViewManager$Holder;
.super Ljava/lang/Object;
.source "ServiceViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 494
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;-><init>(Lcom/xiaopeng/unity/carcontrol/ServiceViewManager$1;)V

    sput-object v0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;
    .locals 1

    .line 493
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;

    return-object v0
.end method
