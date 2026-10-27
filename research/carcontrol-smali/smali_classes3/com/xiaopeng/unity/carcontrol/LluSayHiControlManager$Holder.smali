.class Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager$Holder;
.super Ljava/lang/Object;
.source "LluSayHiControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 452
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;-><init>(Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager$1;)V

    sput-object v0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;
    .locals 1

    .line 451
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;

    return-object v0
.end method
