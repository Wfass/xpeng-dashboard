.class public Lcom/xiaopeng/devtools/system/service/CanDataCollectService;
.super Landroid/app/Service;
.source "CanDataCollectService.java"


# instance fields
.field private AA:Lcom/xiaopeng/devtools/system/c/b;

.field private AB:Lcom/xiaopeng/devtools/system/c/b;

.field private AC:Ljava/io/FileWriter;

.field private AD:Ljava/util/concurrent/ExecutorService;

.field private AE:Ljava/util/concurrent/ExecutorService;

.field private AF:D

.field private AG:Ljava/lang/String;

.field private AH:Ljava/lang/String;

.field private AI:I

.field private AJ:I

.field private AK:I

.field private AL:I

.field private AM:I

.field private AN:[B

.field private AO:[B

.field private AP:[B

.field private AQ:[B

.field private AR:Z

.field private final AS:Landroid/content/BroadcastReceiver;

.field private AT:Ljava/lang/Runnable;

.field private AU:Ljava/lang/Thread;

.field private Az:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/xiaopeng/devtools/bean/can/CanDataNode;",
            ">;"
        }
    .end annotation
.end field

.field private mFile:Ljava/io/File;

.field private mLength:I

.field private mPath:Ljava/lang/String;

.field private rt:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->rt:Z

    .line 70
    const/4 v1, -0x1

    iput v1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AI:I

    .line 71
    iput v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AJ:I

    .line 72
    iput v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AK:I

    .line 73
    iput v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AL:I

    .line 74
    iput v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AM:I

    .line 78
    iput-boolean v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AR:Z

    .line 80
    new-instance v0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$1;-><init>(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AS:Landroid/content/BroadcastReceiver;

    .line 100
    new-instance v0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$2;-><init>(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AT:Ljava/lang/Runnable;

    .line 204
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$3;-><init>(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AU:Ljava/lang/Thread;

    return-void
.end method

.method private Q(Z)V
    .locals 3

    .line 586
    const-string v0, "CanDataCollectService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeCollectStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 587
    invoke-static {}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->fn()Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->C(Z)V

    .line 588
    if-nez p1, :cond_0

    invoke-static {}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->fn()Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->fo()I

    move-result p1

    const/16 v0, 0x2711

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AB:Lcom/xiaopeng/devtools/system/c/b;

    if-eqz p1, :cond_0

    .line 590
    iget-object p1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AB:Lcom/xiaopeng/devtools/system/c/b;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/system/c/b;->disconnect()V

    .line 592
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 593
    return-void
.end method

.method private a(DLjava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 438
    const-wide v1, 0x408f400000000000L    # 1000.0

    div-double v1, p1, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double p3, v1, v4

    if-ltz p3, :cond_0

    goto :goto_0

    .line 439
    :cond_0
    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    div-double v1, p1, v1

    cmpl-double p3, v1, v4

    if-ltz p3, :cond_1

    .line 440
    const-string p1, " "

    invoke-virtual {v0, v3, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 441
    :cond_1
    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    div-double/2addr p1, v1

    cmpl-double p1, p1, v4

    if-ltz p1, :cond_2

    .line 442
    const-string p1, " "

    invoke-virtual {v0, v3, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    const-string p1, " "

    invoke-virtual {v0, v3, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 445
    :cond_2
    const-string p1, " "

    invoke-virtual {v0, v3, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    const-string p1, " "

    invoke-virtual {v0, v3, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    const-string p1, " "

    invoke-virtual {v0, v3, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/xiaopeng/devtools/bean/can/CanDataNode;)V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AD:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaopeng/devtools/system/service/-$$Lambda$CanDataCollectService$rob15q1Tu8DlOgZo8Hv4fjyzw0k;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/devtools/system/service/-$$Lambda$CanDataCollectService$rob15q1Tu8DlOgZo8Hv4fjyzw0k;-><init>(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;Lcom/xiaopeng/devtools/bean/can/CanDataNode;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 202
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->kK()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->cw(I)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;Lcom/xiaopeng/devtools/bean/can/CanDataNode;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->a(Lcom/xiaopeng/devtools/bean/can/CanDataNode;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->cp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;Z)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->Q(Z)V

    return-void
.end method

.method private a([BILcom/xiaopeng/devtools/bean/can/CanDataFeature;)Z
    .locals 5

    .line 453
    nop

    .line 455
    invoke-virtual {p3}, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->getMinLength()I

    move-result v0

    const/4 v1, 0x0

    if-lt p2, v0, :cond_7

    invoke-virtual {p3}, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->isWithValidbit()Z

    move-result v0

    if-eqz v0, :cond_0

    aget-byte v0, p1, v1

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 460
    :cond_0
    invoke-virtual {p3}, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->getStartpoint()I

    move-result v0

    .line 461
    :goto_0
    if-ge v0, p2, :cond_5

    .line 462
    aget-byte v2, p1, v0

    invoke-virtual {p3}, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->getChannelbitoffset()I

    move-result v3

    shr-int/2addr v2, v3

    .line 463
    add-int/lit8 v3, v0, 0x2

    aget-byte v3, p1, v3

    .line 464
    invoke-virtual {p3}, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->isDLC()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 465
    invoke-static {v3}, Lcom/xiaopeng/devtools/utils/d;->cC(I)I

    move-result v3

    .line 467
    :cond_1
    invoke-static {}, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->values()[Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    move-result-object v4

    array-length v4, v4

    if-lt v2, v4, :cond_2

    .line 468
    const-string p1, "CanDataCollectService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCandataNormal canChannel:"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    nop

    .line 470
    goto :goto_1

    .line 472
    :cond_2
    if-ltz v3, :cond_3

    const/16 v2, 0x8

    if-le v3, v2, :cond_4

    :cond_3
    const/16 v2, 0xc

    if-eq v3, v2, :cond_4

    const/16 v2, 0x10

    if-eq v3, v2, :cond_4

    const/16 v2, 0x14

    if-eq v3, v2, :cond_4

    const/16 v2, 0x18

    if-eq v3, v2, :cond_4

    const/16 v2, 0x20

    if-eq v3, v2, :cond_4

    const/16 v2, 0x30

    if-eq v3, v2, :cond_4

    const/16 v2, 0x40

    if-eq v3, v2, :cond_4

    .line 475
    const-string p1, "CanDataCollectService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCandataNormal canDataLength:"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    nop

    .line 477
    goto :goto_1

    .line 479
    :cond_4
    invoke-virtual {p3}, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->getMinEachCanLength()I

    move-result v2

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 480
    goto :goto_0

    .line 481
    :cond_5
    :goto_1
    if-ne v0, p2, :cond_6

    .line 482
    const/4 v1, 0x1

    goto :goto_3

    .line 483
    :cond_6
    if-le v0, p2, :cond_8

    .line 484
    const-string p1, "CanDataCollectService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCandataNormal i > dataLength i:"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", dataLength:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 485
    goto :goto_3

    .line 456
    :cond_7
    :goto_2
    const-string v0, "CanDataCollectService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCandataNormal dataLength: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", feature.isWithValidbit(): "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    invoke-virtual {p3}, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->isWithValidbit()Z

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", data[0]: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p1, p1, v1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 456
    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 458
    nop

    .line 488
    :cond_8
    :goto_3
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->eY()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 489
    const-string p1, "CanDataCollectService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "checkCandataNormal res = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 491
    :cond_9
    return v1
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;[B)[B
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AN:[B

    return-object p1
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AI:I

    return p1
.end method

.method private b(Lcom/xiaopeng/devtools/bean/can/CanDataNode;)Z
    .locals 22

    move-object/from16 v0, p0

    .line 249
    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->getData()[B

    move-result-object v2

    .line 250
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->getDataLength()I

    move-result v3

    .line 251
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->getType()[B

    move-result-object v4

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    .line 252
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->getQueque()I

    move-result v6

    .line 254
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->eY()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 255
    const-string v7, "CanDataCollectService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mParseTime:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AK:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AK:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", queue:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    :cond_0
    new-instance v6, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;

    invoke-direct {v6}, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;-><init>()V

    .line 258
    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x7

    const/4 v10, 0x1

    packed-switch v4, :pswitch_data_0

    .line 293
    move v0, v5

    const-string v1, "CanDataCollectService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseData bad type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    new-array v3, v3, [B

    aput-byte v4, v3, v0

    invoke-static {v3, v0}, Lcom/xiaopeng/devtools/utils/d;->a([BZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    return v0

    .line 282
    :pswitch_0
    const/16 v4, 0xc

    invoke-virtual {v6, v4}, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->setMinLength(I)V

    .line 283
    invoke-virtual {v6, v7}, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->setMinEachCanLength(I)V

    .line 284
    invoke-virtual {v6, v9}, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->setStartpoint(I)V

    .line 285
    invoke-virtual {v6, v8}, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->setChannelbitoffset(I)V

    .line 286
    invoke-virtual {v6, v9}, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->setCanidbit(B)V

    .line 287
    invoke-virtual {v6, v5}, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->setWithValidbit(Z)V

    .line 288
    invoke-virtual {v6, v10}, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->setWithTimestamp(Z)V

    .line 289
    invoke-virtual {v6, v10}, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->setWithTriggerEvent(Z)V

    .line 290
    invoke-virtual {v6, v10}, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->setDLC(Z)V

    .line 291
    goto :goto_0

    .line 271
    :pswitch_1
    const/16 v4, 0xa

    invoke-virtual {v6, v4}, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->setMinLength(I)V

    .line 272
    invoke-virtual {v6, v7}, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->setMinEachCanLength(I)V

    .line 273
    invoke-virtual {v6, v7}, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->setStartpoint(I)V

    .line 274
    invoke-virtual {v6, v8}, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->setChannelbitoffset(I)V

    .line 275
    invoke-virtual {v6, v9}, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->setCanidbit(B)V

    .line 276
    invoke-virtual {v6, v5}, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->setWithValidbit(Z)V

    .line 277
    invoke-virtual {v6, v10}, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->setWithTimestamp(Z)V

    .line 278
    invoke-virtual {v6, v10}, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->setWithTriggerEvent(Z)V

    .line 279
    invoke-virtual {v6, v10}, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->setDLC(Z)V

    .line 280
    goto :goto_0

    .line 260
    :pswitch_2
    invoke-virtual {v6, v8}, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->setMinLength(I)V

    .line 261
    const/4 v4, 0x3

    invoke-virtual {v6, v4}, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->setMinEachCanLength(I)V

    .line 262
    invoke-virtual {v6, v10}, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->setStartpoint(I)V

    .line 263
    invoke-virtual {v6, v4}, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->setChannelbitoffset(I)V

    .line 264
    invoke-virtual {v6, v9}, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->setCanidbit(B)V

    .line 265
    invoke-virtual {v6, v10}, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->setWithValidbit(Z)V

    .line 266
    invoke-virtual {v6, v5}, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->setWithTimestamp(Z)V

    .line 267
    invoke-virtual {v6, v5}, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->setWithTriggerEvent(Z)V

    .line 268
    invoke-virtual {v6, v5}, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->setDLC(Z)V

    .line 269
    nop

    .line 297
    :goto_0
    invoke-direct {v0, v2, v3, v6}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->a([BILcom/xiaopeng/devtools/bean/can/CanDataFeature;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 298
    return v5

    .line 300
    :cond_1
    const-string v4, ""

    .line 301
    const-wide/16 v11, 0x0

    .line 302
    invoke-virtual {v6}, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->isWithTimestamp()Z

    move-result v7

    if-nez v7, :cond_2

    .line 303
    invoke-static {}, Lcom/xiaopeng/devtools/utils/t;->lC()D

    move-result-wide v7

    iget-wide v13, v0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AF:D

    sub-double/2addr v7, v13

    const-string v4, "%.6f"

    invoke-direct {v0, v7, v8, v4}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 306
    :cond_2
    invoke-static {v2, v10, v8}, Lcom/xiaopeng/devtools/utils/d;->c([BII)[B

    move-result-object v7

    invoke-static {v7}, Lcom/xiaopeng/devtools/utils/d;->C([B)I

    move-result v7

    int-to-long v11, v7

    .line 308
    :goto_1
    invoke-virtual {v6}, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->isWithTriggerEvent()Z

    move-result v7

    invoke-virtual {v1, v7}, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->setWithTriggerEvent(Z)V

    .line 309
    aget-byte v7, v2, v5

    invoke-static {v7}, Lcom/xiaopeng/devtools/utils/d;->b(B)I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->setTriggerFlag(I)V

    .line 310
    invoke-virtual {v6}, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->isWithTriggerEvent()Z

    move-result v7

    const-wide v8, 0x40c3880000000000L    # 10000.0

    if-eqz v7, :cond_3

    .line 311
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v13, v11

    div-double/2addr v13, v8

    const-string v15, "%.4f"

    invoke-direct {v0, v13, v14, v15}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "   TriggerEvent: TriggerBlock[TCP Connect]"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->setTriggerEvent(Ljava/lang/String;)V

    .line 314
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    const/4 v13, 0x2

    new-array v13, v13, [B

    .line 316
    invoke-virtual {v6}, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->getStartpoint()I

    move-result v14

    :goto_2
    if-ge v14, v3, :cond_7

    .line 317
    aget-byte v15, v2, v14

    invoke-virtual {v6}, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->getChannelbitoffset()I

    move-result v16

    shr-int v15, v15, v16

    .line 318
    add-int/lit8 v16, v14, 0x2

    aget-byte v8, v2, v16

    .line 319
    invoke-virtual {v6}, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->isDLC()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 320
    invoke-static {v8}, Lcom/xiaopeng/devtools/utils/d;->cC(I)I

    move-result v8

    .line 322
    :cond_4
    invoke-static {}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->fn()Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    move-result-object v9

    invoke-virtual {v9, v15}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->bU(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 323
    aget-byte v9, v2, v14

    invoke-virtual {v6}, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->getCanidbit()B

    move-result v16

    and-int v9, v9, v16

    int-to-byte v9, v9

    aput-byte v9, v13, v5

    .line 324
    add-int/lit8 v9, v14, 0x1

    aget-byte v9, v2, v9

    aput-byte v9, v13, v10

    .line 325
    invoke-static {v13, v5}, Lcom/xiaopeng/devtools/utils/d;->a([BZ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 326
    add-int/lit8 v5, v14, 0x3

    move/from16 v19, v3

    invoke-static {v2, v5, v8}, Lcom/xiaopeng/devtools/utils/d;->c([BII)[B

    move-result-object v3

    invoke-static {v3, v10}, Lcom/xiaopeng/devtools/utils/d;->a([BZ)Ljava/lang/String;

    move-result-object v3

    .line 328
    invoke-direct {v0, v15}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->cy(I)Ljava/lang/String;

    move-result-object v10

    .line 329
    move-object/from16 v20, v4

    invoke-direct {v0, v8}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->cx(I)Ljava/lang/String;

    move-result-object v4

    .line 330
    invoke-virtual {v6}, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->isWithTimestamp()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 331
    add-int/2addr v5, v8

    aget-byte v16, v2, v5

    const/16 v18, 0x0

    aput-byte v16, v13, v18

    .line 332
    const/16 v16, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, v2, v5

    aput-byte v5, v13, v16

    .line 333
    invoke-static {v13}, Lcom/xiaopeng/devtools/utils/d;->B([B)I

    move-result v5

    move-object/from16 v21, v2

    int-to-long v1, v5

    .line 334
    add-long/2addr v1, v11

    long-to-double v1, v1

    const-wide v16, 0x40c3880000000000L    # 10000.0

    div-double v1, v1, v16

    const-string v5, "%.4f"

    invoke-direct {v0, v1, v2, v5}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 337
    :cond_5
    move-object/from16 v21, v2

    const-wide v16, 0x40c3880000000000L    # 10000.0

    move-object/from16 v1, v20

    :goto_3
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    const-string v2, "   CANFD  "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 340
    const-string v2, " Rx   "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    const-string v2, "    1 1 "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    move-object v4, v1

    goto :goto_4

    :cond_6
    move-object/from16 v21, v2

    move/from16 v19, v3

    move-object/from16 v20, v4

    const-wide v16, 0x40c3880000000000L    # 10000.0

    :goto_4
    invoke-virtual {v6}, Lcom/xiaopeng/devtools/bean/can/CanDataFeature;->getMinEachCanLength()I

    move-result v1

    add-int/2addr v14, v1

    add-int/2addr v14, v8

    .line 348
    nop

    .line 316
    move-wide/from16 v8, v16

    move/from16 v3, v19

    move-object/from16 v2, v21

    move-object/from16 v1, p1

    const/4 v5, 0x0

    const/4 v10, 0x1

    goto/16 :goto_2

    .line 349
    :cond_7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 350
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->setParsingString(Ljava/lang/String;)V

    .line 355
    const/4 v0, 0x1

    return v0

    .line 352
    :cond_8
    const-string v0, "CanDataCollectService"

    const-string v1, "parse String is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x70
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->rt:Z

    return p0
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;[B)[B
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AO:[B

    return-object p1
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->mLength:I

    return p1
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->Az:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method private synthetic c(Lcom/xiaopeng/devtools/bean/can/CanDataNode;)V
    .locals 3

    .line 190
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->lockData()V

    .line 191
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->b(Lcom/xiaopeng/devtools/bean/can/CanDataNode;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->setDataNormal(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :goto_0
    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->setParsed(Z)V

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AA:Lcom/xiaopeng/devtools/system/c/b;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->getData()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/system/c/b;->y([B)V

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AA:Lcom/xiaopeng/devtools/system/c/b;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->getType()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/system/c/b;->y([B)V

    .line 199
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->unlockData()V

    .line 200
    goto :goto_1

    .line 196
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 192
    :catch_0
    move-exception v1

    .line 193
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 194
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->setDataNormal(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 201
    :goto_1
    return-void

    .line 196
    :goto_2
    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->setParsed(Z)V

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AA:Lcom/xiaopeng/devtools/system/c/b;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->getData()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/devtools/system/c/b;->y([B)V

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AA:Lcom/xiaopeng/devtools/system/c/b;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->getType()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/devtools/system/c/b;->y([B)V

    .line 199
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->unlockData()V

    throw v1
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;[B)[B
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AP:[B

    return-object p1
.end method

.method private cp(Ljava/lang/String;)V
    .locals 6

    .line 159
    invoke-static {}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->fn()Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->fo()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 174
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AC:Ljava/io/FileWriter;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AC:Ljava/io/FileWriter;

    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :cond_0
    goto :goto_0

    .line 177
    :catch_0
    move-exception p1

    .line 178
    const-string v0, "CanDataCollectService"

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->fn()Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    move-result-object v0

    const v4, 0x7f10009e

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    .line 180
    invoke-static {v5}, Lcom/xiaopeng/devtools/utils/t;->cN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    .line 179
    invoke-virtual {p0, v4, v3}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->setErrorMsg(Ljava/lang/String;)V

    .line 181
    invoke-direct {p0}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->kK()V

    goto :goto_0

    .line 162
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AB:Lcom/xiaopeng/devtools/system/c/b;

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AB:Lcom/xiaopeng/devtools/system/c/b;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/system/c/b;->x([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 170
    :cond_1
    goto :goto_0

    .line 165
    :catch_1
    move-exception p1

    .line 166
    const-string v0, "CanDataCollectService"

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->fn()Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    move-result-object v0

    const v4, 0x7f10009f

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    .line 168
    invoke-static {v5}, Lcom/xiaopeng/devtools/utils/t;->cN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    .line 167
    invoke-virtual {p0, v4, v3}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->setErrorMsg(Ljava/lang/String;)V

    .line 169
    invoke-direct {p0}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->kK()V

    .line 171
    nop

    .line 185
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private cw(I)V
    .locals 6

    .line 359
    invoke-static {}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->fn()Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->fo()I

    move-result v0

    const/16 v1, 0x2712

    if-ne v0, v1, :cond_4

    .line 360
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->eY()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    const-string v0, "CanDataCollectService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCanFileSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    int-to-long v4, p1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object p1, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->rp:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-lez p1, :cond_4

    .line 364
    invoke-static {}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->fn()Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->fo()I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 365
    const p1, 0x7f1002f3

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->cp(Ljava/lang/String;)V

    .line 367
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->kJ()V

    .line 368
    iget-object p1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AH:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaopeng/devtools/utils/g;->cC(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object p1, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->rq:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_3

    .line 369
    const-string p1, "CanDataCollectService"

    const-string v0, "Udisk size not enough, need to remove old canFile"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    iget-object p1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AH:Ljava/lang/String;

    const-string v0, ".asc"

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/utils/g;->K(Ljava/lang/String;Ljava/lang/String;)[Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/devtools/utils/g;->a([Ljava/io/File;)[Ljava/io/File;

    move-result-object p1

    .line 371
    if-eqz p1, :cond_3

    .line 372
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 373
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 374
    iget-object v2, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AH:Ljava/lang/String;

    invoke-static {v2}, Lcom/xiaopeng/devtools/utils/g;->cC(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->rq:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 375
    goto :goto_1

    .line 372
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 380
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->kH()V

    .line 384
    :cond_4
    return-void
.end method

.method private cx(I)Ljava/lang/String;
    .locals 3

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 388
    const/16 v1, 0xc

    if-eq p1, v1, :cond_6

    const/16 v1, 0x10

    if-eq p1, v1, :cond_5

    const/16 v1, 0x14

    if-eq p1, v1, :cond_4

    const/16 v1, 0x18

    if-eq p1, v1, :cond_3

    const/16 v1, 0x20

    if-eq p1, v1, :cond_2

    const/16 v1, 0x30

    if-eq p1, v1, :cond_1

    const/16 v1, 0x40

    if-eq p1, v1, :cond_0

    .line 411
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 408
    :cond_0
    const-string v1, "f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    goto :goto_0

    .line 405
    :cond_1
    const-string v1, "e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    goto :goto_0

    .line 402
    :cond_2
    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    goto :goto_0

    .line 399
    :cond_3
    const-string v1, "c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    goto :goto_0

    .line 396
    :cond_4
    const-string v1, "b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    goto :goto_0

    .line 393
    :cond_5
    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    goto :goto_0

    .line 390
    :cond_6
    const-string v1, "9"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    nop

    .line 414
    :goto_0
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    div-int/lit8 v1, p1, 0xa

    const/4 v2, 0x1

    if-lt v1, v2, :cond_7

    .line 416
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 417
    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 419
    :cond_7
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 421
    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private cy(I)Ljava/lang/String;
    .locals 1

    .line 428
    sget-object v0, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->rC:Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->ordinal()I

    move-result v0

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->rx:Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 431
    :cond_0
    const-string p1, "   213015  355   220040     34a8 50140850 50050850 2007030e 20070002\r\n"

    goto :goto_1

    .line 429
    :cond_1
    :goto_0
    const-string p1, "   213015  355   327000 80162294 50140850 50050850 2007030e 20070002\r\n"

    .line 433
    :goto_1
    return-object p1
.end method

.method static synthetic d(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AI:I

    return p0
.end method

.method static synthetic d(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;[B)[B
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AQ:[B

    return-object p1
.end method

.method static synthetic e(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->kJ()V

    return-void
.end method

.method static synthetic f(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->kH()V

    return-void
.end method

.method static synthetic g(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)[B
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AN:[B

    return-object p0
.end method

.method static synthetic h(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)Lcom/xiaopeng/devtools/system/c/b;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AA:Lcom/xiaopeng/devtools/system/c/b;

    return-object p0
.end method

.method static synthetic i(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)[B
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AO:[B

    return-object p0
.end method

.method static synthetic j(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)[B
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AP:[B

    return-object p0
.end method

.method static synthetic k(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->mLength:I

    return p0
.end method

.method private kH()V
    .locals 4

    .line 574
    invoke-static {}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->fn()Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->fo()I

    move-result v0

    const/16 v1, 0x2712

    if-ne v0, v1, :cond_0

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "can-canfd-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "yyyy-MM-dd HH.mm.ss"

    .line 576
    invoke-static {v1}, Lcom/xiaopeng/devtools/utils/t;->cN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".asc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->mPath:Ljava/lang/String;

    .line 577
    invoke-static {}, Lcom/xiaopeng/devtools/utils/t;->lC()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AF:D

    .line 578
    const-string v0, "EEE MMM dd HH:mm:ss.SSS aa yyyy"

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/t;->cO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AG:Ljava/lang/String;

    .line 579
    const-string v0, "CanDataCollectService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTimestamp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AF:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", mTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 580
    invoke-direct {p0}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->kI()V

    .line 581
    const v0, 0x7f100192

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AG:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AG:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->cp(Ljava/lang/String;)V

    .line 583
    :cond_0
    return-void
.end method

.method private kI()V
    .locals 6

    .line 596
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->mFile:Ljava/io/File;

    .line 597
    const-string v0, "CanDataCollectService"

    const-string v1, "createFileWriter [%s]"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->mPath:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 598
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->mPath:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/xiaopeng/devtools/utils/g;->f(Ljava/lang/String;Z)Ljava/io/FileWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AC:Ljava/io/FileWriter;

    .line 599
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AC:Ljava/io/FileWriter;

    if-nez v0, :cond_0

    .line 600
    const-string v0, "CanDataCollectService"

    const-string v1, "get FileWriter fail"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 601
    invoke-static {}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->fn()Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    move-result-object v0

    const v1, 0x7f10009e

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    .line 602
    invoke-static {v4}, Lcom/xiaopeng/devtools/utils/t;->cN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f1003f0

    .line 603
    invoke-virtual {p0, v4}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 601
    invoke-virtual {p0, v1, v3}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->setErrorMsg(Ljava/lang/String;)V

    .line 604
    invoke-direct {p0}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->kK()V

    .line 606
    :cond_0
    return-void
.end method

.method private kJ()V
    .locals 2

    .line 609
    const-string v0, "CanDataCollectService"

    const-string v1, "destroyFileWriter"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AC:Ljava/io/FileWriter;

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/g;->a(Ljava/io/FileWriter;)V

    .line 611
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AC:Ljava/io/FileWriter;

    .line 612
    return-void
.end method

.method private kK()V
    .locals 2

    .line 615
    const-string v0, "CanDataCollectService"

    const-string v1, "finishService"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 616
    invoke-direct {p0}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->kJ()V

    .line 617
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AR:Z

    .line 618
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->stopSelf()V

    .line 619
    return-void
.end method

.method private synthetic kL()V
    .locals 2

    .line 560
    const-string v0, "CanDataCollectService"

    const-string v1, "shuting down ExcutorService"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 561
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AD:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaopeng/devtools/system/service/-$$Lambda$CanDataCollectService$HDSlXQ9tLcBhA2F5_0wJyRZPjm0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/system/service/-$$Lambda$CanDataCollectService$HDSlXQ9tLcBhA2F5_0wJyRZPjm0;-><init>(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 566
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AD:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AD:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 569
    :cond_0
    return-void
.end method

.method private synthetic kM()V
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AE:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AE:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 565
    :cond_0
    return-void
.end method

.method private synthetic kN()V
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AA:Lcom/xiaopeng/devtools/system/c/b;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/system/c/b;->disconnect()V

    return-void
.end method

.method static synthetic l(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AJ:I

    return p0
.end method

.method public static synthetic lambda$HDSlXQ9tLcBhA2F5_0wJyRZPjm0(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->kM()V

    return-void
.end method

.method public static synthetic lambda$jkqV7y6L54svHWYUVD7d6512Lxs(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->kL()V

    return-void
.end method

.method public static synthetic lambda$rob15q1Tu8DlOgZo8Hv4fjyzw0k(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;Lcom/xiaopeng/devtools/bean/can/CanDataNode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->c(Lcom/xiaopeng/devtools/bean/can/CanDataNode;)V

    return-void
.end method

.method public static synthetic lambda$sV59SG8kg_qW31E4JUR90UyR1zU(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->kN()V

    return-void
.end method

.method static synthetic m(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)I
    .locals 2

    .line 38
    iget v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AJ:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AJ:I

    return v0
.end method

.method static synthetic n(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)[B
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AQ:[B

    return-object p0
.end method

.method static synthetic o(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)I
    .locals 2

    .line 38
    iget v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AM:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AM:I

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 529
    const-string p1, "CanDataCollectService"

    const-string v0, "onBind"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 530
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 496
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 497
    const-string v0, "CanDataCollectService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->Az:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 500
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 501
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 502
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 503
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 504
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 505
    iget-object v1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AS:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 506
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 541
    const-string v0, "CanDataCollectService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy mIsWriteUdiskError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AR:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 542
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 543
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AS:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 544
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->rt:Z

    .line 545
    const/4 v1, -0x1

    iput v1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AI:I

    .line 546
    iget-object v1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AU:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 547
    new-instance v1, Lcom/xiaopeng/devtools/system/service/-$$Lambda$CanDataCollectService$sV59SG8kg_qW31E4JUR90UyR1zU;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/system/service/-$$Lambda$CanDataCollectService$sV59SG8kg_qW31E4JUR90UyR1zU;-><init>(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)V

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/lib/utils/j;->b(ILjava/lang/Runnable;J)V

    .line 548
    iget-boolean v1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AR:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->fn()Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->fr()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 559
    :cond_0
    new-instance v1, Lcom/xiaopeng/devtools/system/service/-$$Lambda$CanDataCollectService$jkqV7y6L54svHWYUVD7d6512Lxs;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/system/service/-$$Lambda$CanDataCollectService$jkqV7y6L54svHWYUVD7d6512Lxs;-><init>(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)V

    const-wide/16 v2, 0x2710

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/lib/utils/j;->b(ILjava/lang/Runnable;J)V

    goto :goto_1

    .line 549
    :cond_1
    :goto_0
    invoke-static {}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->fn()Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->D(Z)V

    .line 550
    iget-object v1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->Az:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 551
    iget-object v1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AD:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_2

    .line 552
    iget-object v1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AD:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 554
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AE:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_3

    .line 555
    iget-object v1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AE:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 557
    :cond_3
    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->Q(Z)V

    .line 571
    :goto_1
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 510
    const-string p2, "CanDataCollectService"

    const-string p3, "onStartCommand"

    invoke-static {p2, p3}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    const/4 p2, 0x1

    invoke-direct {p0, p2}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->Q(Z)V

    .line 512
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 513
    const-string p3, "storagePath"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AH:Ljava/lang/String;

    .line 514
    const/16 p1, 0xa

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AD:Ljava/util/concurrent/ExecutorService;

    .line 515
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AE:Ljava/util/concurrent/ExecutorService;

    .line 516
    new-instance p1, Lcom/xiaopeng/devtools/system/c/b;

    const-string p3, "192.168.225.1"

    const/16 v0, 0xbba

    invoke-direct {p1, p3, v0}, Lcom/xiaopeng/devtools/system/c/b;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AA:Lcom/xiaopeng/devtools/system/c/b;

    .line 517
    invoke-static {}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->fn()Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->fo()I

    move-result p1

    const/16 p3, 0x2711

    if-ne p1, p3, :cond_0

    .line 518
    new-instance p1, Lcom/xiaopeng/devtools/system/c/b;

    iget-object p3, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AH:Ljava/lang/String;

    const/16 v0, 0x28a2

    invoke-direct {p1, p3, v0}, Lcom/xiaopeng/devtools/system/c/b;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AB:Lcom/xiaopeng/devtools/system/c/b;

    .line 520
    :cond_0
    iput-boolean p2, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->rt:Z

    .line 521
    iget-object p1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AE:Ljava/util/concurrent/ExecutorService;

    iget-object p2, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AT:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 522
    iget-object p1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->AU:Ljava/lang/Thread;

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 523
    const/4 p1, 0x2

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    .line 535
    const-string v0, "CanDataCollectService"

    const-string v1, "onUnbind"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 536
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
