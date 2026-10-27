.class Lcom/xiaopeng/carcontrol/speech/VuiManager$Holder;
.super Ljava/lang/Object;
.source "VuiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/speech/VuiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/carcontrol/speech/VuiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 157
    new-instance v0, Lcom/xiaopeng/carcontrol/speech/VuiManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/speech/VuiManager;-><init>(Lcom/xiaopeng/carcontrol/speech/VuiManager$1;)V

    sput-object v0, Lcom/xiaopeng/carcontrol/speech/VuiManager$Holder;->sInstance:Lcom/xiaopeng/carcontrol/speech/VuiManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/carcontrol/speech/VuiManager;
    .locals 1

    .line 156
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/VuiManager$Holder;->sInstance:Lcom/xiaopeng/carcontrol/speech/VuiManager;

    return-object v0
.end method
