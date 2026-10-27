.class Lcom/xiaopeng/unity/carcontrol/ArsManager$Holder;
.super Ljava/lang/Object;
.source "ArsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/unity/carcontrol/ArsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/unity/carcontrol/ArsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/ArsManager;

    invoke-direct {v0}, Lcom/xiaopeng/unity/carcontrol/ArsManager;-><init>()V

    sput-object v0, Lcom/xiaopeng/unity/carcontrol/ArsManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/ArsManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/unity/carcontrol/ArsManager;
    .locals 1

    .line 19
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/ArsManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/ArsManager;

    return-object v0
.end method
