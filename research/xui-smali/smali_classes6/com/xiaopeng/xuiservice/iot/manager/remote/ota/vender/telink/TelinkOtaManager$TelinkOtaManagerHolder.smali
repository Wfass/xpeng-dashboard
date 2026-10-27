.class Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$TelinkOtaManagerHolder;
.super Ljava/lang/Object;
.source "TelinkOtaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TelinkOtaManagerHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 118
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$TelinkOtaManagerHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$800()Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;
    .locals 1

    .line 117
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$TelinkOtaManagerHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;

    return-object v0
.end method
