.class Lcom/xiaopeng/unity/carcontrol/LampManager$Holder;
.super Ljava/lang/Object;
.source "LampManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/unity/carcontrol/LampManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/unity/carcontrol/LampManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 313
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/LampManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/unity/carcontrol/LampManager;-><init>(Lcom/xiaopeng/unity/carcontrol/LampManager$1;)V

    sput-object v0, Lcom/xiaopeng/unity/carcontrol/LampManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/LampManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/unity/carcontrol/LampManager;
    .locals 1

    .line 312
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/LampManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/LampManager;

    return-object v0
.end method
