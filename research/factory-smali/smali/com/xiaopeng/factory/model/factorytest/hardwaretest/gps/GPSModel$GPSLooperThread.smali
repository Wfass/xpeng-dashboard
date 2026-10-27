.class final Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$GPSLooperThread;
.super Ljava/lang/Thread;
.source "GPSModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GPSLooperThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$GPSLooperThread;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;
    .param p2, "x1"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$1;

    .line 264
    invoke-direct {p0, p1}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$GPSLooperThread;-><init>(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 267
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 268
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$GPSLooperThread;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;

    new-instance v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyGpsStatusListener;

    iget-object v2, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$GPSLooperThread;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;

    invoke-direct {v1, v2}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyGpsStatusListener;-><init>(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->access$202(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyGpsStatusListener;)Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyGpsStatusListener;

    .line 269
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$GPSLooperThread;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;

    invoke-static {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->access$300(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$GPSLooperThread;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;

    invoke-static {v1}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->access$200(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;)Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyGpsStatusListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 270
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 271
    return-void
.end method
