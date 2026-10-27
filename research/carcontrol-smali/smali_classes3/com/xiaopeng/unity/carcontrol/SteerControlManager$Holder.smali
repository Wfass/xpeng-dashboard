.class Lcom/xiaopeng/unity/carcontrol/SteerControlManager$Holder;
.super Ljava/lang/Object;
.source "SteerControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/unity/carcontrol/SteerControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/unity/carcontrol/SteerControlManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 158
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/SteerControlManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SteerControlManager;-><init>(Lcom/xiaopeng/unity/carcontrol/SteerControlManager$1;)V

    sput-object v0, Lcom/xiaopeng/unity/carcontrol/SteerControlManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/SteerControlManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/unity/carcontrol/SteerControlManager;
    .locals 1

    .line 157
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/SteerControlManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/SteerControlManager;

    return-object v0
.end method
