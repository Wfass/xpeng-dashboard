.class Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$Holder;
.super Ljava/lang/Object;
.source "MirrorControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 814
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;-><init>(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$1;)V

    sput-object v0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;
    .locals 1

    .line 813
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;

    return-object v0
.end method
