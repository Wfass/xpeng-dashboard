.class Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceDataBiHolder;
.super Ljava/lang/Object;
.source "PeripheralDeviceDataBi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PeripheralDeviceDataBiHolder"
.end annotation


# static fields
.field private static instance:Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;-><init>(Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceDataBiHolder;->instance:Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;
    .locals 1

    .line 38
    sget-object v0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceDataBiHolder;->instance:Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;

    return-object v0
.end method
