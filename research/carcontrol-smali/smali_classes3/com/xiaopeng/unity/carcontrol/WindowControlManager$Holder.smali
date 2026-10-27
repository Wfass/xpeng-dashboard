.class Lcom/xiaopeng/unity/carcontrol/WindowControlManager$Holder;
.super Ljava/lang/Object;
.source "WindowControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/unity/carcontrol/WindowControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/unity/carcontrol/WindowControlManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 349
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;-><init>(Lcom/xiaopeng/unity/carcontrol/WindowControlManager$1;)V

    sput-object v0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/WindowControlManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/unity/carcontrol/WindowControlManager;
    .locals 1

    .line 348
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/WindowControlManager;

    return-object v0
.end method
