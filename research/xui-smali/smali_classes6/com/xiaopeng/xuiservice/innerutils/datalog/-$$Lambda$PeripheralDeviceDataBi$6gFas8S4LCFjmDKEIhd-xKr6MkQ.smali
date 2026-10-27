.class public final synthetic Lcom/xiaopeng/xuiservice/innerutils/datalog/-$$Lambda$PeripheralDeviceDataBi$6gFas8S4LCFjmDKEIhd-xKr6MkQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/-$$Lambda$PeripheralDeviceDataBi$6gFas8S4LCFjmDKEIhd-xKr6MkQ;->f$0:Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;

    iput-boolean p2, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/-$$Lambda$PeripheralDeviceDataBi$6gFas8S4LCFjmDKEIhd-xKr6MkQ;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/-$$Lambda$PeripheralDeviceDataBi$6gFas8S4LCFjmDKEIhd-xKr6MkQ;->f$0:Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;

    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/-$$Lambda$PeripheralDeviceDataBi$6gFas8S4LCFjmDKEIhd-xKr6MkQ;->f$1:Z

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->lambda$handleIgOnOff$2(Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;Z)V

    return-void
.end method
