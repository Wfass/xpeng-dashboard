.class Lcom/xiaopeng/unity/carcontrol/AccountManager$Holder;
.super Ljava/lang/Object;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/unity/carcontrol/AccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/unity/carcontrol/AccountManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/AccountManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/unity/carcontrol/AccountManager;-><init>(Lcom/xiaopeng/unity/carcontrol/AccountManager$1;)V

    sput-object v0, Lcom/xiaopeng/unity/carcontrol/AccountManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/AccountManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/unity/carcontrol/AccountManager;
    .locals 1

    .line 18
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/AccountManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/AccountManager;

    return-object v0
.end method
