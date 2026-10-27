.class Lcom/xiaopeng/xuimanager/device/DeviceManager$Holder;
.super Ljava/lang/Object;
.source "DeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/device/DeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/xuimanager/device/DeviceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 359
    new-instance v0, Lcom/xiaopeng/xuimanager/device/DeviceManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/device/DeviceManager;-><init>(Lcom/xiaopeng/xuimanager/device/DeviceManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuimanager/device/DeviceManager$Holder;->sInstance:Lcom/xiaopeng/xuimanager/device/DeviceManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()Lcom/xiaopeng/xuimanager/device/DeviceManager;
    .locals 1

    .line 358
    sget-object v0, Lcom/xiaopeng/xuimanager/device/DeviceManager$Holder;->sInstance:Lcom/xiaopeng/xuimanager/device/DeviceManager;

    return-object v0
.end method
