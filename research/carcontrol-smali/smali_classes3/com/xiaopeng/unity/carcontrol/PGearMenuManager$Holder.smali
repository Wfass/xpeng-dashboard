.class Lcom/xiaopeng/unity/carcontrol/PGearMenuManager$Holder;
.super Ljava/lang/Object;
.source "PGearMenuManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/unity/carcontrol/PGearMenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/unity/carcontrol/PGearMenuManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 118
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/PGearMenuManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/unity/carcontrol/PGearMenuManager;-><init>(Lcom/xiaopeng/unity/carcontrol/PGearMenuManager$1;)V

    sput-object v0, Lcom/xiaopeng/unity/carcontrol/PGearMenuManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/PGearMenuManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/unity/carcontrol/PGearMenuManager;
    .locals 1

    .line 117
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/PGearMenuManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/PGearMenuManager;

    return-object v0
.end method
