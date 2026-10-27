.class public Lcom/android/car/XpVehicleService$OutPutHandler;
.super Landroid/os/Handler;
.source "XpVehicleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/XpVehicleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OutPutHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/XpVehicleService;


# direct methods
.method public constructor <init>(Lcom/android/car/XpVehicleService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/XpVehicleService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 14329
    iput-object p1, p0, Lcom/android/car/XpVehicleService$OutPutHandler;->this$0:Lcom/android/car/XpVehicleService;

    .line 14330
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 14331
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 14335
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 14336
    .local v0, "bundleData":Landroid/os/Bundle;
    const-string v1, "lightData"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 14337
    .local v1, "lightdata":[B
    const-string v2, "XpVehicleService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendMessage [0]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget-byte v5, v1, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " [1]:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    aget-byte v6, v1, v5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " [2]:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    aget-byte v7, v1, v6

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " [3]:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    aget-byte v7, v1, v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14339
    invoke-static {}, Lcom/android/car/XpVehicleService;->access$000()I

    move-result v2

    new-array v2, v2, [B

    .line 14340
    .local v2, "sendData":[B
    invoke-static {}, Lcom/android/car/XpVehicleService;->access$100()I

    move-result v3

    const v7, 0xff00

    and-int/2addr v3, v7

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 14341
    invoke-static {}, Lcom/android/car/XpVehicleService;->access$100()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 14342
    invoke-static {}, Lcom/android/car/XpVehicleService;->access$000()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-static {v1, v4, v2, v6, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 14343
    new-instance v3, Lcom/android/car/XpVehicleService$OutMessage;

    iget-object v5, p0, Lcom/android/car/XpVehicleService$OutPutHandler;->this$0:Lcom/android/car/XpVehicleService;

    invoke-direct {v3, v5}, Lcom/android/car/XpVehicleService$OutMessage;-><init>(Lcom/android/car/XpVehicleService;)V

    .line 14344
    .local v3, "oMsg":Lcom/android/car/XpVehicleService$OutMessage;
    invoke-virtual {v3, v2}, Lcom/android/car/XpVehicleService$OutMessage;->setData([B)V

    .line 14345
    iget-object v5, p0, Lcom/android/car/XpVehicleService$OutPutHandler;->this$0:Lcom/android/car/XpVehicleService;

    invoke-static {v5}, Lcom/android/car/XpVehicleService;->access$200(Lcom/android/car/XpVehicleService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 14346
    :try_start_0
    iget-object v6, p0, Lcom/android/car/XpVehicleService$OutPutHandler;->this$0:Lcom/android/car/XpVehicleService;

    invoke-static {v6}, Lcom/android/car/XpVehicleService;->access$300(Lcom/android/car/XpVehicleService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x6

    if-lt v6, v7, :cond_0

    .line 14348
    iget-object v6, p0, Lcom/android/car/XpVehicleService$OutPutHandler;->this$0:Lcom/android/car/XpVehicleService;

    invoke-static {v6}, Lcom/android/car/XpVehicleService;->access$300(Lcom/android/car/XpVehicleService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 14350
    :cond_0
    iget-object v4, p0, Lcom/android/car/XpVehicleService$OutPutHandler;->this$0:Lcom/android/car/XpVehicleService;

    invoke-static {v4}, Lcom/android/car/XpVehicleService;->access$300(Lcom/android/car/XpVehicleService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14351
    const-string v4, "XpVehicleService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ArraySize:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/car/XpVehicleService$OutPutHandler;->this$0:Lcom/android/car/XpVehicleService;

    invoke-static {v7}, Lcom/android/car/XpVehicleService;->access$300(Lcom/android/car/XpVehicleService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "  messageArray:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14352
    monitor-exit v5

    .line 14363
    return-void

    .line 14352
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
