.class Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager$BleScanManagerHolder;
.super Ljava/lang/Object;
.source "BleScanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BleScanManagerHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 161
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager$BleScanManagerHolder;->sInstance:Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$500()Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;
    .locals 1

    .line 160
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager$BleScanManagerHolder;->sInstance:Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;

    return-object v0
.end method
