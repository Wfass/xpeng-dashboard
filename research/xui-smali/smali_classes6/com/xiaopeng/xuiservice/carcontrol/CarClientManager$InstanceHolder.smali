.class Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$InstanceHolder;
.super Ljava/lang/Object;
.source "CarClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final sService:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 148
    new-instance v0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$InstanceHolder;->sService:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;
    .locals 1

    .line 147
    sget-object v0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$InstanceHolder;->sService:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    return-object v0
.end method
