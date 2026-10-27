.class Lcom/xiaopeng/unity/carcontrol/DoorKeyControlManager$Holder;
.super Ljava/lang/Object;
.source "DoorKeyControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/unity/carcontrol/DoorKeyControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/unity/carcontrol/DoorKeyControlManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 99
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/DoorKeyControlManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/unity/carcontrol/DoorKeyControlManager;-><init>(Lcom/xiaopeng/unity/carcontrol/DoorKeyControlManager$1;)V

    sput-object v0, Lcom/xiaopeng/unity/carcontrol/DoorKeyControlManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/DoorKeyControlManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/unity/carcontrol/DoorKeyControlManager;
    .locals 1

    .line 98
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/DoorKeyControlManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/DoorKeyControlManager;

    return-object v0
.end method
