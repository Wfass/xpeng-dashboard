.class Lcom/android/car/XpVehicleService$ServerThread;
.super Ljava/lang/Thread;
.source "XpVehicleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/XpVehicleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServerThread"
.end annotation


# instance fields
.field isLoop:Z

.field isWaiting:Z

.field final synthetic this$0:Lcom/android/car/XpVehicleService;


# direct methods
.method constructor <init>(Lcom/android/car/XpVehicleService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/car/XpVehicleService;

    .line 14410
    iput-object p1, p0, Lcom/android/car/XpVehicleService$ServerThread;->this$0:Lcom/android/car/XpVehicleService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 14411
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/car/XpVehicleService$ServerThread;->isLoop:Z

    .line 14412
    iput-boolean v0, p0, Lcom/android/car/XpVehicleService$ServerThread;->isWaiting:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 14483
    :try_start_0
    iget-object v0, p0, Lcom/android/car/XpVehicleService$ServerThread;->this$0:Lcom/android/car/XpVehicleService;

    new-instance v1, Ljava/net/ServerSocket;

    const/16 v2, 0x271a

    invoke-direct {v1, v2}, Ljava/net/ServerSocket;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/car/XpVehicleService;->access$702(Lcom/android/car/XpVehicleService;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;

    .line 14484
    const-string v0, "XpVehicleService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServerSocket  create  mCanID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/car/XpVehicleService;->access$100()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14486
    :goto_0
    iget-boolean v0, p0, Lcom/android/car/XpVehicleService$ServerThread;->isLoop:Z

    if-eqz v0, :cond_5

    .line 14487
    iget-object v0, p0, Lcom/android/car/XpVehicleService$ServerThread;->this$0:Lcom/android/car/XpVehicleService;

    iget-object v1, p0, Lcom/android/car/XpVehicleService$ServerThread;->this$0:Lcom/android/car/XpVehicleService;

    invoke-static {v1}, Lcom/android/car/XpVehicleService;->access$700(Lcom/android/car/XpVehicleService;)Ljava/net/ServerSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/car/XpVehicleService;->access$802(Lcom/android/car/XpVehicleService;Ljava/net/Socket;)Ljava/net/Socket;

    .line 14488
    const-string v0, "XpVehicleService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "socket  ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/XpVehicleService$ServerThread;->this$0:Lcom/android/car/XpVehicleService;

    invoke-static {v2}, Lcom/android/car/XpVehicleService;->access$800(Lcom/android/car/XpVehicleService;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14489
    const/4 v0, 0x0

    .line 14490
    .local v0, "time":I
    iget-object v1, p0, Lcom/android/car/XpVehicleService$ServerThread;->this$0:Lcom/android/car/XpVehicleService;

    new-instance v2, Ljava/io/DataInputStream;

    iget-object v3, p0, Lcom/android/car/XpVehicleService$ServerThread;->this$0:Lcom/android/car/XpVehicleService;

    invoke-static {v3}, Lcom/android/car/XpVehicleService;->access$800(Lcom/android/car/XpVehicleService;)Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1, v2}, Lcom/android/car/XpVehicleService;->access$902(Lcom/android/car/XpVehicleService;Ljava/io/DataInputStream;)Ljava/io/DataInputStream;

    .line 14491
    iget-object v1, p0, Lcom/android/car/XpVehicleService$ServerThread;->this$0:Lcom/android/car/XpVehicleService;

    new-instance v2, Ljava/io/DataOutputStream;

    iget-object v3, p0, Lcom/android/car/XpVehicleService$ServerThread;->this$0:Lcom/android/car/XpVehicleService;

    invoke-static {v3}, Lcom/android/car/XpVehicleService;->access$800(Lcom/android/car/XpVehicleService;)Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v1, v2}, Lcom/android/car/XpVehicleService;->access$502(Lcom/android/car/XpVehicleService;Ljava/io/DataOutputStream;)Ljava/io/DataOutputStream;

    .line 14493
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/car/XpVehicleService$ServerThread;->isWaiting:Z

    .line 14494
    invoke-static {}, Lcom/android/car/XpVehicleService;->access$000()I

    move-result v2

    new-array v2, v2, [B

    .line 14496
    .local v2, "msgData":[B
    const/4 v3, 0x0

    .line 14497
    .local v3, "getData":Z
    iget-object v4, p0, Lcom/android/car/XpVehicleService$ServerThread;->this$0:Lcom/android/car/XpVehicleService;

    invoke-static {v4}, Lcom/android/car/XpVehicleService;->access$500(Lcom/android/car/XpVehicleService;)Ljava/io/DataOutputStream;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/car/XpVehicleService$ServerThread;->setFirstConnection(Ljava/io/DataOutputStream;)V

    .line 14498
    iget-object v4, p0, Lcom/android/car/XpVehicleService$ServerThread;->this$0:Lcom/android/car/XpVehicleService;

    invoke-static {v4}, Lcom/android/car/XpVehicleService;->access$500(Lcom/android/car/XpVehicleService;)Ljava/io/DataOutputStream;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/car/XpVehicleService$ServerThread;->setStartAtl(Ljava/io/DataOutputStream;)V

    .line 14499
    const-string v4, "XpVehicleService"

    const-string v5, "waiting message"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14500
    :cond_0
    :goto_1
    iget-boolean v4, p0, Lcom/android/car/XpVehicleService$ServerThread;->isWaiting:Z

    if-eqz v4, :cond_4

    .line 14501
    const-wide/16 v4, 0xa

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 14502
    iget-object v4, p0, Lcom/android/car/XpVehicleService$ServerThread;->this$0:Lcom/android/car/XpVehicleService;

    invoke-static {v4}, Lcom/android/car/XpVehicleService;->access$200(Lcom/android/car/XpVehicleService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14503
    :try_start_1
    iget-object v5, p0, Lcom/android/car/XpVehicleService$ServerThread;->this$0:Lcom/android/car/XpVehicleService;

    invoke-static {v5}, Lcom/android/car/XpVehicleService;->access$300(Lcom/android/car/XpVehicleService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    if-lez v5, :cond_1

    .line 14504
    iget-object v5, p0, Lcom/android/car/XpVehicleService$ServerThread;->this$0:Lcom/android/car/XpVehicleService;

    invoke-static {v5}, Lcom/android/car/XpVehicleService;->access$300(Lcom/android/car/XpVehicleService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/car/XpVehicleService$OutMessage;

    .line 14505
    .local v5, "oMsg":Lcom/android/car/XpVehicleService$OutMessage;
    iget-object v7, p0, Lcom/android/car/XpVehicleService$ServerThread;->this$0:Lcom/android/car/XpVehicleService;

    invoke-static {v7}, Lcom/android/car/XpVehicleService;->access$300(Lcom/android/car/XpVehicleService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 14506
    const/4 v3, 0x1

    .line 14507
    invoke-virtual {v5}, Lcom/android/car/XpVehicleService$OutMessage;->getData()[B

    move-result-object v7

    move-object v2, v7

    .line 14509
    .end local v5    # "oMsg":Lcom/android/car/XpVehicleService$OutMessage;
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14510
    if-eqz v3, :cond_0

    .line 14512
    :try_start_2
    iget-object v4, p0, Lcom/android/car/XpVehicleService$ServerThread;->this$0:Lcom/android/car/XpVehicleService;

    invoke-static {v4}, Lcom/android/car/XpVehicleService;->access$500(Lcom/android/car/XpVehicleService;)Ljava/io/DataOutputStream;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 14513
    iget-object v4, p0, Lcom/android/car/XpVehicleService$ServerThread;->this$0:Lcom/android/car/XpVehicleService;

    invoke-static {v4}, Lcom/android/car/XpVehicleService;->access$500(Lcom/android/car/XpVehicleService;)Ljava/io/DataOutputStream;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 14514
    const-string v4, "XpVehicleService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "outputStream [0]:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " [1]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v6, v2, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " [2]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    aget-byte v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " [3]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x3

    aget-byte v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " [4]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x4

    aget-byte v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " [5]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x5

    aget-byte v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " [6]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x6

    aget-byte v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " [7]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x7

    aget-byte v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " [8]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x8

    aget-byte v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " [9]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x9

    aget-byte v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 14518
    :cond_2
    const-string v4, "XpVehicleService"

    const-string v5, "no outputStream"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14523
    :goto_2
    goto :goto_3

    .line 14519
    :catch_0
    move-exception v4

    .line 14520
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v5, "XpVehicleService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "outputStream.write error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14521
    iget-object v5, p0, Lcom/android/car/XpVehicleService$ServerThread;->this$0:Lcom/android/car/XpVehicleService;

    invoke-static {v5}, Lcom/android/car/XpVehicleService;->access$600(Lcom/android/car/XpVehicleService;)Lcom/android/car/XpVehicleService$ServerThread;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 14522
    iget-object v5, p0, Lcom/android/car/XpVehicleService$ServerThread;->this$0:Lcom/android/car/XpVehicleService;

    invoke-static {v5}, Lcom/android/car/XpVehicleService;->access$600(Lcom/android/car/XpVehicleService;)Lcom/android/car/XpVehicleService$ServerThread;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/car/XpVehicleService$ServerThread;->setPipBroken()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 14524
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 14509
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 14527
    .end local v0    # "time":I
    .end local v2    # "msgData":[B
    .end local v3    # "getData":Z
    :cond_4
    goto/16 :goto_0

    .line 14531
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 14528
    :catch_1
    move-exception v0

    .line 14529
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 14531
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    const-string v0, "XpVehicleService"

    const-string v1, "destory"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14532
    iget-object v0, p0, Lcom/android/car/XpVehicleService$ServerThread;->this$0:Lcom/android/car/XpVehicleService;

    invoke-static {v0}, Lcom/android/car/XpVehicleService;->access$1000(Lcom/android/car/XpVehicleService;)V

    .line 14533
    nop

    .line 14534
    return-void

    .line 14531
    :goto_4
    const-string v1, "XpVehicleService"

    const-string v2, "destory"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14532
    iget-object v1, p0, Lcom/android/car/XpVehicleService$ServerThread;->this$0:Lcom/android/car/XpVehicleService;

    invoke-static {v1}, Lcom/android/car/XpVehicleService;->access$1000(Lcom/android/car/XpVehicleService;)V

    throw v0
.end method

.method public setFirstConnection(Ljava/io/DataOutputStream;)V
    .locals 6
    .param p1, "oStream"    # Ljava/io/DataOutputStream;

    .line 14422
    const-string v0, "XpVehicleService"

    const-string v1, "setFirstConnection !! "

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14423
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 14424
    .local v0, "msgData":[B
    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 14425
    invoke-static {}, Lcom/android/car/XpVehicleService;->access$400()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    .line 14428
    if-eqz p1, :cond_0

    .line 14429
    :try_start_0
    iget-object v2, p0, Lcom/android/car/XpVehicleService$ServerThread;->this$0:Lcom/android/car/XpVehicleService;

    invoke-static {v2}, Lcom/android/car/XpVehicleService;->access$500(Lcom/android/car/XpVehicleService;)Ljava/io/DataOutputStream;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 14430
    const-string v2, "XpVehicleService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setFirstConnection  outputStream [0]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v1, v0, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " [1]:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v1, v0, v3

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 14432
    :catch_0
    move-exception v1

    .line 14433
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XpVehicleService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "outputStream.write error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14434
    iget-object v2, p0, Lcom/android/car/XpVehicleService$ServerThread;->this$0:Lcom/android/car/XpVehicleService;

    invoke-static {v2}, Lcom/android/car/XpVehicleService;->access$600(Lcom/android/car/XpVehicleService;)Lcom/android/car/XpVehicleService$ServerThread;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 14435
    iget-object v2, p0, Lcom/android/car/XpVehicleService$ServerThread;->this$0:Lcom/android/car/XpVehicleService;

    invoke-static {v2}, Lcom/android/car/XpVehicleService;->access$600(Lcom/android/car/XpVehicleService;)Lcom/android/car/XpVehicleService$ServerThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/car/XpVehicleService$ServerThread;->setPipBroken()V

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 14436
    :cond_0
    :goto_0
    nop

    .line 14437
    :cond_1
    :goto_1
    return-void
.end method

.method public setIsLoop(Z)V
    .locals 0
    .param p1, "isLoop"    # Z

    .line 14414
    iput-boolean p1, p0, Lcom/android/car/XpVehicleService$ServerThread;->isLoop:Z

    .line 14415
    iput-boolean p1, p0, Lcom/android/car/XpVehicleService$ServerThread;->isWaiting:Z

    .line 14416
    return-void
.end method

.method public setPipBroken()V
    .locals 1

    .line 14418
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/XpVehicleService$ServerThread;->isWaiting:Z

    .line 14419
    return-void
.end method

.method public setStartAtl(Ljava/io/DataOutputStream;)V
    .locals 10
    .param p1, "oStream"    # Ljava/io/DataOutputStream;

    .line 14440
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    .line 14441
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 14442
    const-string v2, "XpVehicleService"

    const-string v3, "setStartAtl !! "

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14443
    const/16 v2, 0xa

    new-array v2, v2, [B

    .line 14444
    .local v2, "msgData":[B
    const/4 v3, 0x1

    aput-byte v3, v2, v0

    .line 14445
    const/16 v4, 0x17

    aput-byte v4, v2, v3

    .line 14446
    const/16 v4, -0x80

    const/4 v5, 0x2

    aput-byte v4, v2, v5

    .line 14448
    if-eqz p1, :cond_0

    .line 14449
    :try_start_0
    iget-object v6, p0, Lcom/android/car/XpVehicleService$ServerThread;->this$0:Lcom/android/car/XpVehicleService;

    invoke-static {v6}, Lcom/android/car/XpVehicleService;->access$500(Lcom/android/car/XpVehicleService;)Ljava/io/DataOutputStream;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 14450
    const-string v6, "XpVehicleService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setStartAtl  outputStream [0]:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v8, v2, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " [1]:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v8, v2, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " [2]:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v8, v2, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 14453
    :catch_0
    move-exception v6

    .line 14454
    .local v6, "e":Ljava/lang/Exception;
    const-string v7, "XpVehicleService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "outputStream.write error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14455
    iget-object v7, p0, Lcom/android/car/XpVehicleService$ServerThread;->this$0:Lcom/android/car/XpVehicleService;

    invoke-static {v7}, Lcom/android/car/XpVehicleService;->access$600(Lcom/android/car/XpVehicleService;)Lcom/android/car/XpVehicleService$ServerThread;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 14456
    iget-object v7, p0, Lcom/android/car/XpVehicleService$ServerThread;->this$0:Lcom/android/car/XpVehicleService;

    invoke-static {v7}, Lcom/android/car/XpVehicleService;->access$600(Lcom/android/car/XpVehicleService;)Lcom/android/car/XpVehicleService$ServerThread;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/car/XpVehicleService$ServerThread;->setPipBroken()V

    .end local v6    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 14457
    :cond_0
    :goto_1
    nop

    .line 14458
    :cond_1
    :goto_2
    const-wide/16 v6, 0x12c

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 14459
    aput-byte v5, v2, v0

    .line 14460
    const/16 v6, 0x24

    aput-byte v6, v2, v3

    .line 14461
    invoke-static {}, Lcom/android/car/XpVehicleService;->access$100()I

    move-result v6

    const/16 v7, 0x133

    if-ne v6, v7, :cond_2

    .line 14462
    const/16 v4, 0x40

    aput-byte v4, v2, v5

    goto :goto_3

    .line 14464
    :cond_2
    aput-byte v4, v2, v5

    .line 14466
    :goto_3
    if-eqz p1, :cond_3

    .line 14467
    :try_start_1
    iget-object v4, p0, Lcom/android/car/XpVehicleService$ServerThread;->this$0:Lcom/android/car/XpVehicleService;

    invoke-static {v4}, Lcom/android/car/XpVehicleService;->access$500(Lcom/android/car/XpVehicleService;)Ljava/io/DataOutputStream;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 14468
    const-string v4, "XpVehicleService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setStartAtl  outputStream [0]:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v7, v2, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " [1]:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, v2, v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " [2]:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, v2, v5

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 14471
    :catch_1
    move-exception v3

    .line 14472
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "XpVehicleService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "outputStream.write error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14473
    iget-object v4, p0, Lcom/android/car/XpVehicleService$ServerThread;->this$0:Lcom/android/car/XpVehicleService;

    invoke-static {v4}, Lcom/android/car/XpVehicleService;->access$600(Lcom/android/car/XpVehicleService;)Lcom/android/car/XpVehicleService$ServerThread;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 14474
    iget-object v4, p0, Lcom/android/car/XpVehicleService$ServerThread;->this$0:Lcom/android/car/XpVehicleService;

    invoke-static {v4}, Lcom/android/car/XpVehicleService;->access$600(Lcom/android/car/XpVehicleService;)Lcom/android/car/XpVehicleService$ServerThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/car/XpVehicleService$ServerThread;->setPipBroken()V

    .end local v2    # "msgData":[B
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_5

    .line 14475
    .restart local v2    # "msgData":[B
    :cond_3
    :goto_4
    nop

    .line 14440
    .end local v2    # "msgData":[B
    :cond_4
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 14477
    .end local v1    # "i":I
    :cond_5
    return-void
.end method
