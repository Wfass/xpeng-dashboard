.class Lcom/xiaopeng/carcontrol/helper/NotificationHelper$SingleHolder;
.super Ljava/lang/Object;
.source "NotificationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/helper/NotificationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/carcontrol/helper/NotificationHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    new-instance v0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;-><init>(Lcom/xiaopeng/carcontrol/helper/NotificationHelper$1;)V

    sput-object v0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper$SingleHolder;->sInstance:Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;
    .locals 1

    .line 60
    sget-object v0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper$SingleHolder;->sInstance:Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    return-object v0
.end method
