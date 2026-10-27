.class Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager$Holder;
.super Ljava/lang/Object;
.source "SeatMirrorMenuManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 167
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager$1;)V

    sput-object v0, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;
    .locals 1

    .line 166
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;

    return-object v0
.end method
