.class Lcom/xiaopeng/unity/carcontrol/ChildModeManager$Holder;
.super Ljava/lang/Object;
.source "ChildModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/unity/carcontrol/ChildModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/unity/carcontrol/ChildModeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 276
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/ChildModeManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/unity/carcontrol/ChildModeManager;-><init>(Lcom/xiaopeng/unity/carcontrol/ChildModeManager$1;)V

    sput-object v0, Lcom/xiaopeng/unity/carcontrol/ChildModeManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/ChildModeManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/unity/carcontrol/ChildModeManager;
    .locals 1

    .line 275
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/ChildModeManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/ChildModeManager;

    return-object v0
.end method
