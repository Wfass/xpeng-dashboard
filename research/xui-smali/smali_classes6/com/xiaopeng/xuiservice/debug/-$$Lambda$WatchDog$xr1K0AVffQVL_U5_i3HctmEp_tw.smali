.class public final synthetic Lcom/xiaopeng/xuiservice/debug/-$$Lambda$WatchDog$xr1K0AVffQVL_U5_i3HctmEp_tw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuiservice/debug/-$$Lambda$WatchDog$xr1K0AVffQVL_U5_i3HctmEp_tw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuiservice/debug/-$$Lambda$WatchDog$xr1K0AVffQVL_U5_i3HctmEp_tw;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/debug/-$$Lambda$WatchDog$xr1K0AVffQVL_U5_i3HctmEp_tw;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/debug/-$$Lambda$WatchDog$xr1K0AVffQVL_U5_i3HctmEp_tw;->INSTANCE:Lcom/xiaopeng/xuiservice/debug/-$$Lambda$WatchDog$xr1K0AVffQVL_U5_i3HctmEp_tw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 1

    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->lambda$dump$3()Z

    move-result v0

    return v0
.end method
