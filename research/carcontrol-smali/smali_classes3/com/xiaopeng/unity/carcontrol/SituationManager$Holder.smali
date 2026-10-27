.class Lcom/xiaopeng/unity/carcontrol/SituationManager$Holder;
.super Ljava/lang/Object;
.source "SituationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/unity/carcontrol/SituationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/unity/carcontrol/SituationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1109
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/SituationManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;-><init>(Lcom/xiaopeng/unity/carcontrol/SituationManager$1;)V

    sput-object v0, Lcom/xiaopeng/unity/carcontrol/SituationManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/unity/carcontrol/SituationManager;
    .locals 1

    .line 1108
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/SituationManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    return-object v0
.end method
