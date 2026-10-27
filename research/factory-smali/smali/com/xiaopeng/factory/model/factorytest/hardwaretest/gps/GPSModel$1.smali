.class Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$1;
.super Ljava/lang/Object;
.source "GPSModel.java"

# interfaces
.implements Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$UDPClientListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;

    .line 257
    iput-object p1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSensorChanged(I[FJF)V
    .locals 7
    .param p1, "sensorType"    # I
    .param p2, "values"    # [F
    .param p3, "timestamp"    # J
    .param p5, "temperature"    # F

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;

    invoke-static {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->access$100(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;)Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/gps/GPSPresenter;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/gps/GPSPresenter;->onSensorChanged(I[FJF)V

    .line 261
    return-void
.end method
