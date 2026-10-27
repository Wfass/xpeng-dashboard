.class Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$ConnectRecord;
.super Ljava/lang/Object;
.source "FridgeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectRecord"
.end annotation


# instance fields
.field public connectTime:J

.field public connected:Z

.field public disconnectTime:J

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

.field public tick:J


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$ConnectRecord;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$1;

    .line 116
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$ConnectRecord;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)V

    return-void
.end method
