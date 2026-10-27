.class Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager$Holder;
.super Ljava/lang/Object;
.source "DriveModeSetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 281
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;-><init>(Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager$1;)V

    sput-object v0, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;
    .locals 1

    .line 280
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;

    return-object v0
.end method
