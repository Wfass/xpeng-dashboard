.class Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager$Holder;
.super Ljava/lang/Object;
.source "ADriveSystemManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 196
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;-><init>(Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager$1;)V

    sput-object v0, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;
    .locals 1

    .line 195
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;

    return-object v0
.end method
