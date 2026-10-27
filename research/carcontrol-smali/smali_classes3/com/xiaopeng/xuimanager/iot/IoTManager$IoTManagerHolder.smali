.class Lcom/xiaopeng/xuimanager/iot/IoTManager$IoTManagerHolder;
.super Ljava/lang/Object;
.source "IoTManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/iot/IoTManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IoTManagerHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/xuimanager/iot/IoTManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 127
    new-instance v0, Lcom/xiaopeng/xuimanager/iot/IoTManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/iot/IoTManager;-><init>(Lcom/xiaopeng/xuimanager/iot/IoTManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuimanager/iot/IoTManager$IoTManagerHolder;->sInstance:Lcom/xiaopeng/xuimanager/iot/IoTManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$800()Lcom/xiaopeng/xuimanager/iot/IoTManager;
    .locals 1

    .line 126
    sget-object v0, Lcom/xiaopeng/xuimanager/iot/IoTManager$IoTManagerHolder;->sInstance:Lcom/xiaopeng/xuimanager/iot/IoTManager;

    return-object v0
.end method
