.class public Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;
.super Ljava/lang/Object;
.source "BluetoothTestUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$StartStopScoReceiver;,
        Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectPanReceiver;,
        Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectProfileReceiver;,
        Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;,
        Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$BluetoothReceiver;,
        Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$FlagReceiver;
    }
.end annotation


# static fields
.field private static final CONNECT_DISCONNECT_PROFILE_TIMEOUT:I = 0x4e20

.field private static final CONNECT_PROXY_TIMEOUT:I = 0x1388

.field private static final DISCOVERABLE_UNDISCOVERABLE_TIMEOUT:I = 0x1388

.field private static final ENABLE_DISABLE_TIMEOUT:I = 0x4e20

.field private static final PAIR_UNPAIR_TIMEOUT:I = 0x4e20

.field private static final POLL_TIME:I = 0x64

.field private static final START_STOP_SCAN_TIMEOUT:I = 0x1388

.field private static final START_STOP_SCO_TIMEOUT:I = 0x2710


# instance fields
.field private mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private mContext:Landroid/content/Context;

.field private mHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mInput:Landroid/bluetooth/BluetoothHidHost;

.field private mOutputFile:Ljava/lang/String;

.field private mOutputWriter:Ljava/io/BufferedWriter;

.field private mPan:Landroid/bluetooth/BluetoothPan;

.field private mReceivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;

    .line 412
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "outputFile"    # Ljava/lang/String;

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    new-instance v0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$1;-><init>(Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;)V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mReceivers:Ljava/util/List;

    .line 400
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 401
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 402
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mInput:Landroid/bluetooth/BluetoothHidHost;

    .line 403
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mPan:Landroid/bluetooth/BluetoothPan;

    .line 424
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mContext:Landroid/content/Context;

    .line 425
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mTag:Ljava/lang/String;

    .line 426
    iput-object p3, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mOutputFile:Ljava/lang/String;

    .line 428
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mOutputFile:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 429
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mOutputWriter:Ljava/io/BufferedWriter;

    goto :goto_0

    .line 432
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    new-instance v3, Ljava/io/File;

    .line 433
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mOutputFile:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mOutputWriter:Ljava/io/BufferedWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    goto :goto_0

    .line 434
    :catch_0
    move-exception v1

    .line 435
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mTag:Ljava/lang/String;

    const-string v3, "Test output file could not be opened"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 436
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mOutputWriter:Ljava/io/BufferedWriter;

    .line 439
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method static synthetic access$002(Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothA2dp;

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$102(Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHeadset;

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$202(Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;Landroid/bluetooth/BluetoothHidHost;)Landroid/bluetooth/BluetoothHidHost;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHidHost;

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mInput:Landroid/bluetooth/BluetoothHidHost;

    return-object p1
.end method

.method static synthetic access$302(Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothPan;

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mPan:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method private addReceiver(Landroid/content/BroadcastReceiver;[Ljava/lang/String;)V
    .locals 4
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "actions"    # [Ljava/lang/String;

    .line 1522
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1523
    .local v0, "filter":Landroid/content/IntentFilter;
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 1524
    .local v3, "action":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1523
    .end local v3    # "action":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1526
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1527
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mReceivers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1528
    return-void
.end method

.method private connectPanOrIncomingPanConnection(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 24
    .param p1, "adapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "connect"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1218
    const-wide/16 v2, -0x1

    .line 1222
    .local v2, "start":J
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p3, :cond_0

    .line 1223
    const-string v7, "connectPan(device=%s)"

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v1, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1224
    .local v7, "methodName":Ljava/lang/String;
    const/4 v8, 0x6

    .line 1226
    .local v8, "mask":I
    const/4 v9, 0x2

    .local v9, "role":I
    goto :goto_0

    .line 1228
    .end local v7    # "methodName":Ljava/lang/String;
    .end local v8    # "mask":I
    .end local v9    # "role":I
    :cond_0
    const-string v7, "incomingPanConnection(device=%s)"

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v1, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1229
    .restart local v7    # "methodName":Ljava/lang/String;
    const/4 v8, 0x4

    .line 1230
    .restart local v8    # "mask":I
    move v9, v5

    .line 1233
    .restart local v9    # "role":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1237
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1241
    const/4 v10, 0x5

    move-object/from16 v11, p1

    invoke-direct {v0, v11, v10}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->connectProxy(Landroid/bluetooth/BluetoothAdapter;I)Landroid/bluetooth/BluetoothProfile;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothPan;

    iput-object v12, v0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mPan:Landroid/bluetooth/BluetoothPan;

    .line 1243
    iget-object v12, v0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mPan:Landroid/bluetooth/BluetoothPan;

    if-eqz v12, :cond_6

    .line 1246
    invoke-direct {v0, v1, v9, v8}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->getConnectPanReceiver(Landroid/bluetooth/BluetoothDevice;II)Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectPanReceiver;

    move-result-object v12

    .line 1248
    .local v12, "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectPanReceiver;
    iget-object v13, v0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v13, v1}, Landroid/bluetooth/BluetoothPan;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v13

    .line 1249
    .local v13, "state":I
    const/4 v14, 0x2

    packed-switch v13, :pswitch_data_0

    .line 1268
    invoke-direct {v0, v12}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->removeReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1269
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-array v6, v14, [Ljava/lang/Object;

    aput-object v7, v6, v4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v10, 0x1

    aput-object v4, v6, v10

    const-string v4, "%s invalid state: state=%d"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1251
    :pswitch_0
    invoke-direct {v0, v12}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->removeReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1252
    return-void

    .line 1254
    :pswitch_1
    const/4 v8, 0x0

    .line 1255
    goto :goto_1

    .line 1258
    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1259
    if-ne v9, v14, :cond_2

    .line 1260
    const-string v15, "BT"

    const-string v10, "connect to pan"

    invoke-static {v15, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    iget-object v10, v0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v10, v1}, Landroid/bluetooth/BluetoothPan;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_1

    .line 1263
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "mPan.connect(device)= false"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1272
    :cond_2
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 1273
    .local v17, "s":J
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sub-long v19, v19, v17

    const-wide/16 v21, 0x4e20

    cmp-long v10, v19, v21

    if-gez v10, :cond_5

    .line 1274
    iget-object v10, v0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v10, v1}, Landroid/bluetooth/BluetoothPan;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v13

    .line 1275
    if-ne v13, v14, :cond_4

    .line 1276
    invoke-virtual {v12}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectPanReceiver;->getFiredFlags()I

    move-result v10

    and-int/2addr v10, v8

    if-ne v10, v8, :cond_4

    .line 1277
    invoke-virtual {v12}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectPanReceiver;->getCompletedTime()J

    move-result-wide v15

    .line 1278
    .local v15, "finish":J
    const-wide/16 v19, -0x1

    cmp-long v10, v2, v19

    if-eqz v10, :cond_3

    cmp-long v10, v15, v19

    if-eqz v10, :cond_3

    .line 1279
    const-string v10, "%s completed in %d ms"

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v7, v14, v4

    sub-long v5, v15, v2

    .line 1280
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v14, v5

    .line 1279
    invoke-static {v10, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->writeOutput(Ljava/lang/String;)V

    goto :goto_3

    .line 1282
    :cond_3
    const-string v6, "%s completed"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v7, v5, v4

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->writeOutput(Ljava/lang/String;)V

    .line 1284
    :goto_3
    invoke-direct {v0, v12}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->removeReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1285
    return-void

    .line 1287
    .end local v15    # "finish":J
    :cond_4
    const-wide/16 v5, 0x64

    invoke-direct {v0, v5, v6}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->sleep(J)V

    .line 1272
    const/4 v5, 0x1

    goto :goto_2

    .line 1290
    :cond_5
    invoke-virtual {v12}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectPanReceiver;->getFiredFlags()I

    move-result v5

    .line 1291
    .local v5, "firedFlags":I
    invoke-direct {v0, v12}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->removeReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1292
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v7, v10, v4

    .line 1293
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v15, 0x1

    aput-object v4, v10, v15

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v10, v14

    const/4 v4, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v10, v4

    const/4 v4, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v10, v4

    .line 1292
    const-string v4, "%s timeout: state=%d (expected %d), flags=0x%x (expected 0x%s)"

    invoke-static {v4, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1244
    .end local v5    # "firedFlags":I
    .end local v12    # "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectPanReceiver;
    .end local v13    # "state":I
    .end local v17    # "s":J
    :cond_6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPan= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1238
    :cond_7
    move-object/from16 v11, p1

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v7, v6, v4

    const-string v4, "%s device not paired"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1234
    :cond_8
    move-object/from16 v11, p1

    move v6, v5

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v7, v6, v4

    const-string v4, "%s bluetooth not enabled"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private connectProxy(Landroid/bluetooth/BluetoothAdapter;I)Landroid/bluetooth/BluetoothProfile;
    .locals 9
    .param p1, "adapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p2, "profile"    # I

    .line 1584
    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    .line 1606
    :pswitch_0
    return-object v0

    .line 1601
    :pswitch_1
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mPan:Landroid/bluetooth/BluetoothPan;

    if-eqz v1, :cond_0

    .line 1602
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mPan:Landroid/bluetooth/BluetoothPan;

    return-object v0

    .line 1596
    :pswitch_2
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mInput:Landroid/bluetooth/BluetoothHidHost;

    if-eqz v1, :cond_0

    .line 1597
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mInput:Landroid/bluetooth/BluetoothHidHost;

    return-object v0

    .line 1586
    :pswitch_3
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v1, :cond_0

    .line 1587
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object v0

    .line 1591
    :pswitch_4
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_0

    .line 1592
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0

    .line 1608
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {p1, v1, v2, p2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 1609
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1610
    .local v1, "s":J
    const-wide/16 v3, 0x64

    const-wide/16 v5, 0x1388

    packed-switch p2, :pswitch_data_1

    .line 1632
    :pswitch_5
    return-object v0

    .line 1627
    :goto_0
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mPan:Landroid/bluetooth/BluetoothPan;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    cmp-long v0, v7, v5

    if-gez v0, :cond_1

    .line 1628
    invoke-direct {p0, v3, v4}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->sleep(J)V

    goto :goto_0

    .line 1630
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mPan:Landroid/bluetooth/BluetoothPan;

    return-object v0

    .line 1622
    :goto_1
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mInput:Landroid/bluetooth/BluetoothHidHost;

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    cmp-long v0, v7, v5

    if-gez v0, :cond_2

    .line 1623
    invoke-direct {p0, v3, v4}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->sleep(J)V

    goto :goto_1

    .line 1625
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mInput:Landroid/bluetooth/BluetoothHidHost;

    return-object v0

    .line 1612
    :goto_2
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    cmp-long v0, v7, v5

    if-gez v0, :cond_3

    .line 1613
    invoke-direct {p0, v3, v4}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->sleep(J)V

    goto :goto_2

    .line 1615
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object v0

    .line 1617
    :goto_3
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    cmp-long v0, v7, v5

    if-gez v0, :cond_4

    .line 1618
    invoke-direct {p0, v3, v4}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->sleep(J)V

    goto :goto_3

    .line 1620
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method private disconnectFromRemoteOrVerifyConnectNap(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 22
    .param p1, "adapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "disconnect"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1329
    const-wide/16 v2, -0x1

    .line 1333
    .local v2, "start":J
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p3, :cond_0

    .line 1334
    const-string v7, "disconnectPan(device=%s)"

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v1, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1335
    .local v7, "methodName":Ljava/lang/String;
    const/16 v8, 0x9

    .line 1337
    .local v8, "mask":I
    const/4 v9, 0x2

    .local v9, "role":I
    goto :goto_0

    .line 1339
    .end local v7    # "methodName":Ljava/lang/String;
    .end local v8    # "mask":I
    .end local v9    # "role":I
    :cond_0
    const-string v7, "incomingPanDisconnection(device=%s)"

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v1, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1340
    .restart local v7    # "methodName":Ljava/lang/String;
    const/4 v8, 0x1

    .line 1341
    .restart local v8    # "mask":I
    move v9, v5

    .line 1344
    .restart local v9    # "role":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1348
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1352
    const/4 v10, 0x5

    move-object/from16 v11, p1

    invoke-direct {v0, v11, v10}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->connectProxy(Landroid/bluetooth/BluetoothAdapter;I)Landroid/bluetooth/BluetoothProfile;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothPan;

    iput-object v12, v0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mPan:Landroid/bluetooth/BluetoothPan;

    .line 1354
    iget-object v12, v0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mPan:Landroid/bluetooth/BluetoothPan;

    if-eqz v12, :cond_6

    .line 1357
    invoke-direct {v0, v1, v9, v8}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->getConnectPanReceiver(Landroid/bluetooth/BluetoothDevice;II)Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectPanReceiver;

    move-result-object v12

    .line 1359
    .local v12, "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectPanReceiver;
    iget-object v13, v0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v13, v1}, Landroid/bluetooth/BluetoothPan;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v13

    .line 1360
    .local v13, "state":I
    const/4 v14, 0x2

    packed-switch v13, :pswitch_data_0

    .line 1378
    invoke-direct {v0, v12}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->removeReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1379
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-array v6, v14, [Ljava/lang/Object;

    aput-object v7, v6, v4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v10, 0x1

    aput-object v4, v6, v10

    const-string v4, "%s invalid state: state=%d"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1375
    :pswitch_0
    const/4 v8, 0x0

    .line 1376
    goto :goto_1

    .line 1363
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1364
    if-ne v9, v14, :cond_2

    .line 1366
    iget-object v15, v0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v15, v1}, Landroid/bluetooth/BluetoothPan;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v15

    if-eqz v15, :cond_1

    goto :goto_1

    .line 1367
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "mPan.disconnect(device)= false"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1382
    :cond_2
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 1383
    .local v15, "s":J
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v17, v17, v15

    const-wide/16 v19, 0x4e20

    cmp-long v17, v17, v19

    if-gez v17, :cond_5

    .line 1384
    iget-object v10, v0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v10, v1}, Landroid/bluetooth/BluetoothPan;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v13

    .line 1385
    if-nez v13, :cond_4

    .line 1386
    invoke-virtual {v12}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectPanReceiver;->getFiredFlags()I

    move-result v10

    and-int/2addr v10, v8

    if-ne v10, v8, :cond_4

    .line 1387
    invoke-virtual {v12}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectPanReceiver;->getCompletedTime()J

    move-result-wide v17

    .line 1388
    .local v17, "finish":J
    const-wide/16 v19, -0x1

    cmp-long v10, v2, v19

    if-eqz v10, :cond_3

    cmp-long v10, v17, v19

    if-eqz v10, :cond_3

    .line 1389
    const-string v10, "%s completed in %d ms"

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v7, v14, v4

    sub-long v5, v17, v2

    .line 1390
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v14, v5

    .line 1389
    invoke-static {v10, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->writeOutput(Ljava/lang/String;)V

    goto :goto_3

    .line 1392
    :cond_3
    const-string v6, "%s completed"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v7, v5, v4

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->writeOutput(Ljava/lang/String;)V

    .line 1394
    :goto_3
    invoke-direct {v0, v12}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->removeReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1395
    return-void

    .line 1397
    .end local v17    # "finish":J
    :cond_4
    const-wide/16 v5, 0x64

    invoke-direct {v0, v5, v6}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->sleep(J)V

    .line 1382
    const/4 v5, 0x1

    const/4 v10, 0x5

    goto :goto_2

    .line 1400
    :cond_5
    invoke-virtual {v12}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectPanReceiver;->getFiredFlags()I

    move-result v5

    .line 1401
    .local v5, "firedFlags":I
    invoke-direct {v0, v12}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->removeReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1402
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v7, v10, v4

    .line 1403
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x1

    aput-object v17, v10, v18

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v10, v14

    const/4 v4, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v10, v4

    const/4 v4, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v10, v4

    .line 1402
    const-string v4, "%s timeout: state=%d (expected %d), flags=0x%x (expected 0x%s)"

    invoke-static {v4, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1372
    .end local v5    # "firedFlags":I
    .end local v15    # "s":J
    :pswitch_2
    invoke-direct {v0, v12}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->removeReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1373
    return-void

    .line 1355
    .end local v12    # "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectPanReceiver;
    .end local v13    # "state":I
    :cond_6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPan= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1349
    :cond_7
    move-object/from16 v11, p1

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v7, v6, v4

    const-string v4, "%s device not paired"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1345
    :cond_8
    move-object/from16 v11, p1

    move v6, v5

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v7, v6, v4

    const-string v4, "%s bluetooth not enabled"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getBluetoothReceiver(I)Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$BluetoothReceiver;
    .locals 4
    .param p1, "expectedFlags"    # I

    .line 1531
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    const-string v2, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 1536
    .local v0, "actions":[Ljava/lang/String;
    new-instance v1, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$BluetoothReceiver;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$BluetoothReceiver;-><init>(Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;I)V

    .line 1537
    .local v1, "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$BluetoothReceiver;
    invoke-direct {p0, v1, v0}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->addReceiver(Landroid/content/BroadcastReceiver;[Ljava/lang/String;)V

    .line 1538
    return-object v1
.end method

.method private getConnectPanReceiver(Landroid/bluetooth/BluetoothDevice;II)Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectPanReceiver;
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "role"    # I
    .param p3, "expectedFlags"    # I

    .line 1565
    const-string v0, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1566
    .local v0, "actions":[Ljava/lang/String;
    new-instance v1, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectPanReceiver;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectPanReceiver;-><init>(Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1567
    .local v1, "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectPanReceiver;
    invoke-direct {p0, v1, v0}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->addReceiver(Landroid/content/BroadcastReceiver;[Ljava/lang/String;)V

    .line 1568
    return-object v1
.end method

.method private getConnectProfileReceiver(Landroid/bluetooth/BluetoothDevice;II)Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectProfileReceiver;
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profile"    # I
    .param p3, "expectedFlags"    # I

    .line 1553
    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    const-string v2, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 1557
    .local v0, "actions":[Ljava/lang/String;
    new-instance v1, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectProfileReceiver;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectProfileReceiver;-><init>(Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1559
    .local v1, "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectProfileReceiver;
    invoke-direct {p0, v1, v0}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->addReceiver(Landroid/content/BroadcastReceiver;[Ljava/lang/String;)V

    .line 1560
    return-object v1
.end method

.method private getPairReceiver(Landroid/bluetooth/BluetoothDevice;I[BI)Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;
    .locals 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "passkey"    # I
    .param p3, "pin"    # [B
    .param p4, "expectedFlags"    # I

    .line 1543
    const-string v0, "android.bluetooth.device.action.PAIRING_REQUEST"

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 1546
    .local v0, "actions":[Ljava/lang/String;
    new-instance v7, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;-><init>(Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;Landroid/bluetooth/BluetoothDevice;I[BI)V

    .line 1547
    .local v1, "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;
    invoke-direct {p0, v1, v0}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->addReceiver(Landroid/content/BroadcastReceiver;[Ljava/lang/String;)V

    .line 1548
    return-object v1
.end method

.method private getStartStopScoReceiver(I)Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$StartStopScoReceiver;
    .locals 2
    .param p1, "expectedFlags"    # I

    .line 1572
    const-string v0, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1573
    .local v0, "actions":[Ljava/lang/String;
    new-instance v1, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$StartStopScoReceiver;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$StartStopScoReceiver;-><init>(Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;I)V

    .line 1574
    .local v1, "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$StartStopScoReceiver;
    invoke-direct {p0, v1, v0}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->addReceiver(Landroid/content/BroadcastReceiver;[Ljava/lang/String;)V

    .line 1575
    return-object v1
.end method

.method private pairOrAcceptPair(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;I[BZ)V
    .locals 20
    .param p1, "adapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "passkey"    # I
    .param p4, "pin"    # [B
    .param p5, "shouldPair"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 839
    const/4 v3, 0x3

    .line 840
    .local v3, "mask":I
    const-wide/16 v4, -0x1

    .line 842
    .local v4, "start":J
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz p5, :cond_0

    .line 843
    const-string v8, "pair(device=%s)"

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v1, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .local v8, "methodName":Ljava/lang/String;
    goto :goto_0

    .line 845
    .end local v8    # "methodName":Ljava/lang/String;
    :cond_0
    const-string v8, "acceptPair(device=%s)"

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v1, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 848
    .restart local v8    # "methodName":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 852
    move/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct {v0, v1, v9, v10, v3}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->getPairReceiver(Landroid/bluetooth/BluetoothDevice;I[BI)Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;

    move-result-object v11

    .line 854
    .local v11, "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v12

    .line 855
    .local v12, "state":I
    packed-switch v12, :pswitch_data_0

    .line 879
    invoke-direct {v0, v11}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->removeReceiver(Landroid/content/BroadcastReceiver;)V

    .line 881
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " invalid state: state="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 874
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 877
    return-void

    .line 875
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "adapter.getBondedDevices().contains(device)= false"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 870
    :pswitch_1
    const/4 v3, 0x0

    .line 871
    goto :goto_1

    .line 858
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eq v13, v7, :cond_8

    .line 861
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 862
    if-eqz p5, :cond_3

    .line 864
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v13

    if-eqz v13, :cond_2

    goto :goto_1

    .line 865
    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "device.createBond()= false"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 884
    :cond_3
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 885
    .local v13, "s":J
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v13

    const-wide/16 v17, 0x4e20

    cmp-long v15, v15, v17

    const/4 v7, 0x2

    const/16 v6, 0xc

    if-gez v15, :cond_7

    .line 886
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v12

    .line 887
    if-ne v12, v6, :cond_6

    invoke-virtual {v11}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;->getFiredFlags()I

    move-result v6

    and-int/2addr v6, v3

    if-ne v6, v3, :cond_6

    .line 889
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 892
    invoke-virtual {v11}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;->getCompletedTime()J

    move-result-wide v15

    .line 893
    .local v15, "finish":J
    const-wide/16 v17, -0x1

    cmp-long v6, v4, v17

    if-eqz v6, :cond_4

    cmp-long v6, v15, v17

    if-eqz v6, :cond_4

    .line 894
    const-string v6, "%s completed in %d ms"

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v8, v7, v17

    sub-long v1, v15, v4

    .line 895
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v7, v2

    .line 894
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->writeOutput(Ljava/lang/String;)V

    goto :goto_3

    .line 897
    :cond_4
    const/4 v2, 0x1

    const-string v1, "%s completed"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v8, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->writeOutput(Ljava/lang/String;)V

    .line 899
    :goto_3
    invoke-direct {v0, v11}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->removeReceiver(Landroid/content/BroadcastReceiver;)V

    .line 900
    return-void

    .line 890
    .end local v15    # "finish":J
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "adapter.getBondedDevices().contains(device)= false"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 902
    :cond_6
    const-wide/16 v1, 0x64

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->sleep(J)V

    .line 884
    move-object/from16 v1, p2

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto :goto_2

    .line 905
    :cond_7
    invoke-virtual {v11}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;->getFiredFlags()I

    move-result v1

    .line 906
    .local v1, "firedFlags":I
    invoke-direct {v0, v11}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->removeReceiver(Landroid/content/BroadcastReceiver;)V

    .line 907
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v8, v15, v16

    .line 908
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x1

    aput-object v16, v15, v17

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v15, v7

    const/4 v6, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v15, v6

    const/4 v6, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v15, v6

    .line 907
    const-string v6, "%s timeout: state=%d (expected %d), flags=0x%x (expected 0x%x)"

    invoke-static {v6, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 859
    .end local v1    # "firedFlags":I
    .end local v13    # "s":J
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "adapter.getBondedDevices().contains(device)= true"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 849
    .end local v11    # "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;
    .end local v12    # "state":I
    :cond_9
    move/from16 v9, p3

    move-object/from16 v10, p4

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v8, v2, v6

    const-string v6, "%s bluetooth not enabled"

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private removeReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .line 1579
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1580
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mReceivers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1581
    return-void
.end method

.method private sleep(J)V
    .locals 1
    .param p1, "time"    # J

    .line 1638
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1640
    goto :goto_0

    .line 1639
    :catch_0
    move-exception v0

    .line 1641
    :goto_0
    return-void
.end method

.method private startStopSco(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 22
    .param p1, "adapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "isStart"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1437
    move/from16 v2, p3

    const-wide/16 v3, -0x1

    .line 1441
    .local v3, "start":J
    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_0

    .line 1442
    const-string v8, "startSco(device=%s)"

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v1, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1443
    .local v8, "methodName":Ljava/lang/String;
    const/4 v9, 0x1

    .local v9, "mask":I
    goto :goto_0

    .line 1445
    .end local v8    # "methodName":Ljava/lang/String;
    .end local v9    # "mask":I
    :cond_0
    const-string v8, "stopSco(device=%s)"

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v1, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1446
    .restart local v8    # "methodName":Ljava/lang/String;
    move v9, v5

    .line 1449
    .restart local v9    # "mask":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1453
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1457
    iget-object v10, v0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mContext:Landroid/content/Context;

    const-string v11, "audio"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/AudioManager;

    .line 1459
    .local v10, "manager":Landroid/media/AudioManager;
    if-eqz v10, :cond_7

    .line 1463
    invoke-virtual {v10}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1467
    invoke-virtual {v10}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v11

    .line 1468
    .local v11, "isScoOn":Z
    if-ne v2, v11, :cond_1

    .line 1469
    return-void

    .line 1472
    :cond_1
    invoke-direct {v0, v9}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->getStartStopScoReceiver(I)Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$StartStopScoReceiver;

    move-result-object v12

    .line 1473
    .local v12, "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$StartStopScoReceiver;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1474
    if-eqz v2, :cond_2

    .line 1475
    invoke-virtual {v10}, Landroid/media/AudioManager;->startBluetoothSco()V

    goto :goto_1

    .line 1477
    :cond_2
    invoke-virtual {v10}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 1480
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 1481
    .local v13, "s":J
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v13

    const-wide/16 v17, 0x2710

    cmp-long v15, v15, v17

    if-gez v15, :cond_5

    .line 1482
    invoke-virtual {v10}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v11

    .line 1483
    if-ne v2, v11, :cond_4

    invoke-virtual {v12}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$StartStopScoReceiver;->getFiredFlags()I

    move-result v15

    and-int/2addr v15, v9

    if-ne v15, v9, :cond_4

    .line 1484
    invoke-virtual {v12}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$StartStopScoReceiver;->getCompletedTime()J

    move-result-wide v15

    .line 1485
    .local v15, "finish":J
    const-wide/16 v17, -0x1

    cmp-long v19, v3, v17

    if-eqz v19, :cond_3

    cmp-long v17, v15, v17

    if-eqz v17, :cond_3

    .line 1486
    const-string v7, "%s completed in %d ms"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v8, v5, v6

    move-wide/from16 v20, v13

    sub-long v13, v15, v3

    .line 1487
    .end local v13    # "s":J
    .local v20, "s":J
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v13, 0x1

    aput-object v6, v5, v13

    .line 1486
    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->writeOutput(Ljava/lang/String;)V

    goto :goto_3

    .line 1489
    .end local v20    # "s":J
    .restart local v13    # "s":J
    :cond_3
    move-wide/from16 v20, v13

    move v13, v7

    .end local v13    # "s":J
    .restart local v20    # "s":J
    const-string v5, "%s completed"

    new-array v7, v13, [Ljava/lang/Object;

    aput-object v8, v7, v6

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->writeOutput(Ljava/lang/String;)V

    .line 1491
    :goto_3
    invoke-direct {v0, v12}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->removeReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1492
    return-void

    .line 1494
    .end local v15    # "finish":J
    .end local v20    # "s":J
    .restart local v13    # "s":J
    :cond_4
    move-wide/from16 v20, v13

    .end local v13    # "s":J
    .restart local v20    # "s":J
    const-wide/16 v13, 0x64

    invoke-direct {v0, v13, v14}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->sleep(J)V

    .line 1480
    move-wide/from16 v13, v20

    const/4 v7, 0x1

    goto :goto_2

    .line 1497
    .end local v20    # "s":J
    .restart local v13    # "s":J
    :cond_5
    move-wide/from16 v20, v13

    .end local v13    # "s":J
    .restart local v20    # "s":J
    invoke-virtual {v12}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$StartStopScoReceiver;->getFiredFlags()I

    move-result v7

    .line 1498
    .local v7, "firedFlags":I
    invoke-direct {v0, v12}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->removeReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1499
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v8, v14, v6

    .line 1500
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v15, 0x1

    aput-object v6, v14, v15

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v14, v5

    const/4 v5, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v14, v5

    const/4 v5, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v14, v5

    .line 1499
    const-string v5, "%s timeout: on=%b (expected %b), flags=0x%x (expected 0x%x)"

    invoke-static {v5, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v13, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1464
    .end local v7    # "firedFlags":I
    .end local v11    # "isScoOn":Z
    .end local v12    # "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$StartStopScoReceiver;
    .end local v20    # "s":J
    :cond_6
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v8, v7, v6

    const-string v6, "%s device does not support SCO"

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1460
    :cond_7
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "manager == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1454
    .end local v10    # "manager":Landroid/media/AudioManager;
    :cond_8
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v8, v7, v6

    const-string v6, "%s device not paired"

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1450
    :cond_9
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v8, v7, v6

    const-string v6, "%s bluetooth not enabled"

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public acceptPair(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 6
    .param p1, "adapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "passkey"    # I
    .param p4, "pin"    # [B

    .line 823
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->pairOrAcceptPair(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;I[BZ)V

    .line 824
    return-void
.end method

.method public close()V
    .locals 3

    .line 445
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mReceivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mReceivers:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mOutputWriter:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_1

    .line 451
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    goto :goto_1

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mTag:Ljava/lang/String;

    const-string v2, "Test output file could not be closed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 456
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-void
.end method

.method public connectPan(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "adapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1193
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->connectPanOrIncomingPanConnection(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;Z)V

    .line 1194
    return-void
.end method

.method public connectProfile(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;)V
    .locals 23
    .param p1, "adapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "profile"    # I
    .param p4, "methodName"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 1012
    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez p4, :cond_0

    .line 1013
    const-string v7, "connectProfile(profile=%d, device=%s)"

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    aput-object v1, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .end local p4    # "methodName":Ljava/lang/String;
    .local v6, "methodName":Ljava/lang/String;
    goto :goto_0

    .line 1015
    .end local v6    # "methodName":Ljava/lang/String;
    .restart local p4    # "methodName":Ljava/lang/String;
    :cond_0
    move-object/from16 v6, p4

    .end local p4    # "methodName":Ljava/lang/String;
    .restart local v6    # "methodName":Ljava/lang/String;
    :goto_0
    const/4 v7, 0x6

    .line 1017
    .local v7, "mask":I
    const-wide/16 v8, -0x1

    .line 1019
    .local v8, "start":J
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 1023
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1027
    move-object/from16 v10, p1

    invoke-direct {v0, v10, v2}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->connectProxy(Landroid/bluetooth/BluetoothAdapter;I)Landroid/bluetooth/BluetoothProfile;

    move-result-object v11

    .line 1029
    .local v11, "proxy":Landroid/bluetooth/BluetoothProfile;
    if-eqz v11, :cond_a

    .line 1033
    invoke-direct {v0, v1, v2, v7}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->getConnectProfileReceiver(Landroid/bluetooth/BluetoothDevice;II)Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectProfileReceiver;

    move-result-object v12

    .line 1035
    .local v12, "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectProfileReceiver;
    invoke-interface {v11, v1}, Landroid/bluetooth/BluetoothProfile;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v13

    .line 1036
    .local v13, "state":I
    const/4 v14, 0x4

    packed-switch v13, :pswitch_data_0

    .line 1064
    move-object/from16 v21, v6

    .end local v6    # "methodName":Ljava/lang/String;
    .local v21, "methodName":Ljava/lang/String;
    invoke-direct {v0, v12}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->removeReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1065
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v21, v4, v3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x1

    aput-object v3, v4, v6

    const-string v3, "%s invalid state: state=%d"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1038
    .end local v21    # "methodName":Ljava/lang/String;
    .restart local v6    # "methodName":Ljava/lang/String;
    :pswitch_0
    invoke-direct {v0, v12}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->removeReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1039
    return-void

    .line 1041
    :pswitch_1
    const/4 v7, 0x0

    .line 1042
    goto :goto_1

    .line 1045
    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1046
    if-ne v2, v4, :cond_2

    .line 1048
    move-object v15, v11

    check-cast v15, Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v15, v1}, Landroid/bluetooth/BluetoothA2dp;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v15

    if-eqz v15, :cond_1

    goto :goto_1

    .line 1049
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "((BluetoothA2dp)proxy).connect(device)= false"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1051
    :cond_2
    if-ne v2, v5, :cond_4

    .line 1053
    move-object v15, v11

    check-cast v15, Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v15, v1}, Landroid/bluetooth/BluetoothHeadset;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v15

    if-eqz v15, :cond_3

    goto :goto_1

    .line 1054
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "((BluetoothHeadset)proxy).connect(device)= false"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1056
    :cond_4
    if-ne v2, v14, :cond_6

    .line 1058
    move-object v15, v11

    check-cast v15, Landroid/bluetooth/BluetoothHidHost;

    invoke-virtual {v15, v1}, Landroid/bluetooth/BluetoothHidHost;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v15

    if-eqz v15, :cond_5

    goto :goto_1

    .line 1059
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "((BluetoothHidHost)proxy).connect(device)= false"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1068
    :cond_6
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 1069
    .local v15, "s":J
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v17, v17, v15

    const-wide/16 v19, 0x4e20

    cmp-long v17, v17, v19

    if-gez v17, :cond_9

    .line 1070
    invoke-interface {v11, v1}, Landroid/bluetooth/BluetoothProfile;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v13

    .line 1071
    if-ne v13, v4, :cond_8

    .line 1072
    invoke-virtual {v12}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectProfileReceiver;->getFiredFlags()I

    move-result v17

    and-int v14, v17, v7

    if-ne v14, v7, :cond_8

    .line 1073
    invoke-virtual {v12}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectProfileReceiver;->getCompletedTime()J

    move-result-wide v17

    .line 1074
    .local v17, "finish":J
    const-wide/16 v19, -0x1

    cmp-long v14, v8, v19

    if-eqz v14, :cond_7

    cmp-long v14, v17, v19

    if-eqz v14, :cond_7

    .line 1075
    const-string v14, "%s completed in %d ms"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v3

    move-object/from16 v21, v6

    sub-long v5, v17, v8

    .line 1076
    .end local v6    # "methodName":Ljava/lang/String;
    .restart local v21    # "methodName":Ljava/lang/String;
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v4, v5

    .line 1075
    invoke-static {v14, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->writeOutput(Ljava/lang/String;)V

    goto :goto_3

    .line 1078
    .end local v21    # "methodName":Ljava/lang/String;
    .restart local v6    # "methodName":Ljava/lang/String;
    :cond_7
    move-object/from16 v21, v6

    .end local v6    # "methodName":Ljava/lang/String;
    .restart local v21    # "methodName":Ljava/lang/String;
    const-string v4, "%s completed"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v21, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->writeOutput(Ljava/lang/String;)V

    .line 1080
    :goto_3
    invoke-direct {v0, v12}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->removeReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1081
    return-void

    .line 1083
    .end local v17    # "finish":J
    .end local v21    # "methodName":Ljava/lang/String;
    .restart local v6    # "methodName":Ljava/lang/String;
    :cond_8
    move-object/from16 v21, v6

    .end local v6    # "methodName":Ljava/lang/String;
    .restart local v21    # "methodName":Ljava/lang/String;
    const-wide/16 v5, 0x64

    invoke-direct {v0, v5, v6}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->sleep(J)V

    .line 1068
    move-object/from16 v6, v21

    const/4 v5, 0x1

    const/4 v14, 0x4

    goto :goto_2

    .line 1086
    .end local v21    # "methodName":Ljava/lang/String;
    .restart local v6    # "methodName":Ljava/lang/String;
    :cond_9
    move-object/from16 v21, v6

    .end local v6    # "methodName":Ljava/lang/String;
    .restart local v21    # "methodName":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectProfileReceiver;->getFiredFlags()I

    move-result v5

    .line 1087
    .local v5, "firedFlags":I
    invoke-direct {v0, v12}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->removeReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1088
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v21, v14, v3

    .line 1089
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v17, 0x1

    aput-object v3, v14, v17

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v14, v4

    const/4 v3, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v14, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v14, v4

    .line 1088
    const-string v3, "%s timeout: state=%d (expected %d), flags=0x%x (expected 0x%x)"

    invoke-static {v3, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1030
    .end local v5    # "firedFlags":I
    .end local v12    # "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectProfileReceiver;
    .end local v13    # "state":I
    .end local v15    # "s":J
    .end local v21    # "methodName":Ljava/lang/String;
    .restart local v6    # "methodName":Ljava/lang/String;
    :cond_a
    move-object/from16 v21, v6

    .end local v6    # "methodName":Ljava/lang/String;
    .restart local v21    # "methodName":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "proxy= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1024
    .end local v11    # "proxy":Landroid/bluetooth/BluetoothProfile;
    .end local v21    # "methodName":Ljava/lang/String;
    .restart local v6    # "methodName":Ljava/lang/String;
    :cond_b
    move-object/from16 v10, p1

    move-object/from16 v21, v6

    .end local v6    # "methodName":Ljava/lang/String;
    .restart local v21    # "methodName":Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v21, v5, v3

    const-string v3, "%s device not paired"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1020
    .end local v21    # "methodName":Ljava/lang/String;
    .restart local v6    # "methodName":Ljava/lang/String;
    :cond_c
    move-object/from16 v10, p1

    move-object/from16 v21, v6

    .end local v6    # "methodName":Ljava/lang/String;
    .restart local v21    # "methodName":Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v21, v5, v3

    const-string v3, "%s bluetooth not enabled"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public disable(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 9
    .param p1, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 516
    const-string v0, "Disabling Bluetooth adapter."

    invoke-virtual {p0, v0}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->writeOutput(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 521
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 522
    .local v0, "btState":I
    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 523
    .local v1, "completionSemaphore":Ljava/util/concurrent/Semaphore;
    new-instance v3, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$3;

    invoke-direct {v3, p0, v1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$3;-><init>(Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;Ljava/util/concurrent/Semaphore;)V

    .line 538
    .local v3, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 539
    .local v4, "filter":Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 541
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 544
    move v5, v2

    .line 546
    .local v5, "success":Z
    const-wide/16 v6, 0x4e20

    :try_start_0
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v6, v7, v8}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v6

    move v5, v6

    .line 547
    const-string v6, "disable() completed in 0 ms"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->writeOutput(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    goto :goto_0

    .line 548
    :catch_0
    move-exception v6

    .line 551
    :goto_0
    iget-object v6, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 552
    if-eqz v5, :cond_0

    .line 558
    return-void

    .line 555
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v2, 0x1

    const/16 v8, 0xa

    .line 556
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    .line 555
    const-string v2, "disable() timeout: state=%d (expected %d)"

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 542
    .end local v5    # "success":Z
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "adapter.disable()= false"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 519
    .end local v0    # "btState":I
    .end local v1    # "completionSemaphore":Ljava/util/concurrent/Semaphore;
    .end local v3    # "receiver":Landroid/content/BroadcastReceiver;
    .end local v4    # "filter":Landroid/content/IntentFilter;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "adapter.isEnabled()= false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disablePan(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 9
    .param p1, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 782
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mPan:Landroid/bluetooth/BluetoothPan;

    if-nez v0, :cond_0

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->connectProxy(Landroid/bluetooth/BluetoothAdapter;I)Landroid/bluetooth/BluetoothProfile;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mPan:Landroid/bluetooth/BluetoothPan;

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mPan:Landroid/bluetooth/BluetoothPan;

    if-eqz v0, :cond_2

    .line 788
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 789
    .local v0, "start":J
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mPan:Landroid/bluetooth/BluetoothPan;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 790
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 792
    .local v4, "stop":J
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v2

    const/4 v6, 0x1

    if-eq v2, v6, :cond_1

    .line 796
    const-string v2, "disablePan() completed in %d ms"

    new-array v6, v6, [Ljava/lang/Object;

    sub-long v7, v4, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->writeOutput(Ljava/lang/String;)V

    .line 797
    return-void

    .line 793
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "mPan.isTetheringOn()= true"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 785
    .end local v0    # "start":J
    .end local v4    # "stop":J
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPan= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disconnectPan(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "adapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1304
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->disconnectFromRemoteOrVerifyConnectNap(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;Z)V

    .line 1305
    return-void
.end method

.method public disconnectProfile(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;)V
    .locals 22
    .param p1, "adapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "profile"    # I
    .param p4, "methodName"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 1105
    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p4, :cond_0

    .line 1106
    const-string v7, "disconnectProfile(profile=%d, device=%s)"

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    aput-object v1, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .end local p4    # "methodName":Ljava/lang/String;
    .local v6, "methodName":Ljava/lang/String;
    goto :goto_0

    .line 1108
    .end local v6    # "methodName":Ljava/lang/String;
    .restart local p4    # "methodName":Ljava/lang/String;
    :cond_0
    move-object/from16 v6, p4

    .end local p4    # "methodName":Ljava/lang/String;
    .restart local v6    # "methodName":Ljava/lang/String;
    :goto_0
    const/16 v7, 0x9

    .line 1110
    .local v7, "mask":I
    const-wide/16 v8, -0x1

    .line 1112
    .local v8, "start":J
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 1116
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1120
    move-object/from16 v10, p1

    invoke-direct {v0, v10, v2}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->connectProxy(Landroid/bluetooth/BluetoothAdapter;I)Landroid/bluetooth/BluetoothProfile;

    move-result-object v11

    .line 1122
    .local v11, "proxy":Landroid/bluetooth/BluetoothProfile;
    if-eqz v11, :cond_a

    .line 1126
    invoke-direct {v0, v1, v2, v7}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->getConnectProfileReceiver(Landroid/bluetooth/BluetoothDevice;II)Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectProfileReceiver;

    move-result-object v12

    .line 1128
    .local v12, "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectProfileReceiver;
    invoke-interface {v11, v1}, Landroid/bluetooth/BluetoothProfile;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v13

    .line 1129
    .local v13, "state":I
    const/4 v14, 0x4

    packed-switch v13, :pswitch_data_0

    .line 1157
    invoke-direct {v0, v12}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->removeReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1158
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v14, 0x1

    aput-object v5, v4, v14

    const-string v5, "%s invalid state: state=%d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1154
    :pswitch_0
    const/4 v7, 0x0

    .line 1155
    goto :goto_1

    .line 1132
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1133
    if-ne v2, v3, :cond_2

    .line 1135
    move-object v15, v11

    check-cast v15, Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v15, v1}, Landroid/bluetooth/BluetoothA2dp;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v15

    if-eqz v15, :cond_1

    goto :goto_1

    .line 1136
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "((BluetoothA2dp)proxy).disconnect(device)= false"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1138
    :cond_2
    if-ne v2, v4, :cond_4

    .line 1140
    move-object v15, v11

    check-cast v15, Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v15, v1}, Landroid/bluetooth/BluetoothHeadset;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v15

    if-eqz v15, :cond_3

    goto :goto_1

    .line 1141
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "((BluetoothHeadset)proxy).disconnect(device)= false"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1143
    :cond_4
    if-ne v2, v14, :cond_6

    .line 1145
    move-object v15, v11

    check-cast v15, Landroid/bluetooth/BluetoothHidHost;

    invoke-virtual {v15, v1}, Landroid/bluetooth/BluetoothHidHost;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v15

    if-eqz v15, :cond_5

    goto :goto_1

    .line 1146
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "((BluetoothHidHost)proxy).disconnect(device)= false"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1161
    :cond_6
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 1162
    .local v15, "s":J
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v17, v17, v15

    const-wide/16 v19, 0x4e20

    cmp-long v17, v17, v19

    if-gez v17, :cond_9

    .line 1163
    invoke-interface {v11, v1}, Landroid/bluetooth/BluetoothProfile;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v13

    .line 1164
    if-nez v13, :cond_8

    .line 1165
    invoke-virtual {v12}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectProfileReceiver;->getFiredFlags()I

    move-result v17

    and-int v14, v17, v7

    if-ne v14, v7, :cond_8

    .line 1166
    invoke-virtual {v12}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectProfileReceiver;->getCompletedTime()J

    move-result-wide v17

    .line 1167
    .local v17, "finish":J
    const-wide/16 v19, -0x1

    cmp-long v14, v8, v19

    if-eqz v14, :cond_7

    cmp-long v14, v17, v19

    if-eqz v14, :cond_7

    .line 1168
    const-string v14, "%s completed in %d ms"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v6, v3, v5

    sub-long v4, v17, v8

    .line 1169
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 1168
    invoke-static {v14, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->writeOutput(Ljava/lang/String;)V

    goto :goto_3

    .line 1171
    :cond_7
    move v3, v4

    const-string v4, "%s completed"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v6, v3, v5

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->writeOutput(Ljava/lang/String;)V

    .line 1173
    :goto_3
    invoke-direct {v0, v12}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->removeReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1174
    return-void

    .line 1176
    .end local v17    # "finish":J
    :cond_8
    const-wide/16 v3, 0x64

    invoke-direct {v0, v3, v4}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->sleep(J)V

    .line 1161
    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v14, 0x4

    goto :goto_2

    .line 1179
    :cond_9
    invoke-virtual {v12}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectProfileReceiver;->getFiredFlags()I

    move-result v3

    .line 1180
    .local v3, "firedFlags":I
    invoke-direct {v0, v12}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->removeReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1181
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v6, v14, v5

    .line 1182
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x1

    aput-object v17, v14, v18

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v17, 0x2

    aput-object v5, v14, v17

    const/4 v5, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v14, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v17, 0x4

    aput-object v5, v14, v17

    .line 1181
    const-string v5, "%s timeout: state=%d (expected %d), flags=0x%x (expected 0x%x)"

    invoke-static {v5, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1151
    .end local v3    # "firedFlags":I
    .end local v15    # "s":J
    :pswitch_2
    invoke-direct {v0, v12}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->removeReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1152
    return-void

    .line 1123
    .end local v12    # "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectProfileReceiver;
    .end local v13    # "state":I
    :cond_a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "proxy= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1117
    .end local v11    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :cond_b
    move-object/from16 v10, p1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v5

    const-string v5, "%s device not paired"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1113
    :cond_c
    move-object/from16 v10, p1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v5

    const-string v5, "%s bluetooth not enabled"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public discoverable(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 10
    .param p1, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 567
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 572
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v0

    .line 573
    .local v0, "scanMode":I
    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    .line 574
    return-void

    .line 577
    :cond_0
    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 578
    .local v1, "completionSemaphore":Ljava/util/concurrent/Semaphore;
    new-instance v3, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$4;

    invoke-direct {v3, p0, v1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$4;-><init>(Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;Ljava/util/concurrent/Semaphore;)V

    .line 593
    .local v3, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 594
    .local v4, "filter":Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 596
    const/16 v5, 0x17

    invoke-virtual {p1, v5}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 599
    move v6, v2

    .line 601
    .local v6, "success":Z
    const-wide/16 v7, 0x1388

    :try_start_0
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v7, v8, v9}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v7

    move v6, v7

    .line 603
    const-string v7, "discoverable() completed in 0 ms"

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->writeOutput(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    goto :goto_0

    .line 604
    :catch_0
    move-exception v7

    .line 607
    :goto_0
    iget-object v7, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 608
    if-eqz v6, :cond_1

    .line 614
    return-void

    .line 611
    :cond_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    const/4 v2, 0x1

    .line 612
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v2

    .line 611
    const-string v2, "discoverable() timeout: scanMode=%d (expected %d)"

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 597
    .end local v6    # "success":Z
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "adapter.setScanMode(BluetoothAdapter.SCAN_MODE_CONNECTABLE_DISCOVERABLE)= false"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 569
    .end local v0    # "scanMode":I
    .end local v1    # "completionSemaphore":Ljava/util/concurrent/Semaphore;
    .end local v3    # "receiver":Landroid/content/BroadcastReceiver;
    .end local v4    # "filter":Landroid/content/IntentFilter;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "discoverable() bluetooth not enabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enable(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 10
    .param p1, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 465
    const-string v0, "Enabling Bluetooth adapter."

    invoke-virtual {p0, v0}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->writeOutput(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 470
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 471
    .local v0, "btState":I
    new-instance v2, Ljava/util/concurrent/Semaphore;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 472
    .local v2, "completionSemaphore":Ljava/util/concurrent/Semaphore;
    new-instance v4, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$2;

    invoke-direct {v4, p0, v2}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$2;-><init>(Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;Ljava/util/concurrent/Semaphore;)V

    .line 487
    .local v4, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 488
    .local v5, "filter":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 490
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 493
    move v6, v3

    .line 495
    .local v6, "success":Z
    const-wide/16 v7, 0x4e20

    :try_start_0
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v7, v8, v9}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v7

    move v6, v7

    .line 496
    const-string v7, "enable() completed in 0 ms"

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->writeOutput(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    goto :goto_0

    .line 497
    :catch_0
    move-exception v7

    .line 500
    :goto_0
    iget-object v7, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 501
    if-eqz v6, :cond_0

    .line 507
    return-void

    .line 504
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    const/16 v3, 0xc

    .line 505
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v1

    .line 504
    const-string v1, "enable() timeout: state=%d (expected %d)"

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 491
    .end local v6    # "success":Z
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "adapter.enable()= false"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 468
    .end local v0    # "btState":I
    .end local v2    # "completionSemaphore":Ljava/util/concurrent/Semaphore;
    .end local v4    # "receiver":Landroid/content/BroadcastReceiver;
    .end local v5    # "filter":Landroid/content/IntentFilter;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adapter.isEnabled()= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enablePan(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 9
    .param p1, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 758
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mPan:Landroid/bluetooth/BluetoothPan;

    if-nez v0, :cond_0

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->connectProxy(Landroid/bluetooth/BluetoothAdapter;I)Landroid/bluetooth/BluetoothProfile;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mPan:Landroid/bluetooth/BluetoothPan;

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mPan:Landroid/bluetooth/BluetoothPan;

    if-eqz v0, :cond_2

    .line 764
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 765
    .local v0, "start":J
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mPan:Landroid/bluetooth/BluetoothPan;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 766
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 768
    .local v4, "stop":J
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 772
    const-string v2, "enablePan() completed in %d ms"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    sub-long v7, v4, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->writeOutput(Ljava/lang/String;)V

    .line 773
    return-void

    .line 769
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "mPan.isTetheringOn()= false"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 761
    .end local v0    # "start":J
    .end local v4    # "stop":J
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPan= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public incomingPanConnection(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "adapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1204
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->connectPanOrIncomingPanConnection(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;Z)V

    .line 1205
    return-void
.end method

.method public incomingPanDisconnection(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "adapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1315
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->disconnectFromRemoteOrVerifyConnectNap(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;Z)V

    .line 1316
    return-void
.end method

.method public pair(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 6
    .param p1, "adapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "passkey"    # I
    .param p4, "pin"    # [B

    .line 809
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->pairOrAcceptPair(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;I[BZ)V

    .line 810
    return-void
.end method

.method public startScan(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 10
    .param p1, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 676
    const/4 v0, 0x1

    .line 678
    .local v0, "mask":I
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 682
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 683
    return-void

    .line 686
    :cond_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->getBluetoothReceiver(I)Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$BluetoothReceiver;

    move-result-object v1

    .line 688
    .local v1, "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$BluetoothReceiver;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 690
    .local v2, "start":J
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 694
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x1388

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gez v4, :cond_2

    .line 695
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$BluetoothReceiver;->getFiredFlags()I

    move-result v4

    and-int/2addr v4, v0

    if-ne v4, v0, :cond_1

    .line 696
    const-string v4, "startScan() completed in %d ms"

    new-array v6, v6, [Ljava/lang/Object;

    .line 697
    invoke-virtual {v1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$BluetoothReceiver;->getCompletedTime()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v5

    .line 696
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->writeOutput(Ljava/lang/String;)V

    .line 698
    invoke-direct {p0, v1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->removeReceiver(Landroid/content/BroadcastReceiver;)V

    .line 699
    return-void

    .line 701
    :cond_1
    const-wide/16 v4, 0x64

    invoke-direct {p0, v4, v5}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->sleep(J)V

    goto :goto_0

    .line 704
    :cond_2
    invoke-virtual {v1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$BluetoothReceiver;->getFiredFlags()I

    move-result v4

    .line 705
    .local v4, "firedFlags":I
    invoke-direct {p0, v1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->removeReceiver(Landroid/content/BroadcastReceiver;)V

    .line 706
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    .line 707
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v6

    const/4 v5, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v5

    .line 706
    const-string v5, "startScan() timeout: isDiscovering=%b, flags=0x%x (expected 0x%x)"

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 691
    .end local v4    # "firedFlags":I
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "adapter.startDiscovery()= false"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 679
    .end local v1    # "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$BluetoothReceiver;
    .end local v2    # "start":J
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "startScan() bluetooth not enabled"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startSco(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "adapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1414
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->startStopSco(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;Z)V

    .line 1415
    return-void
.end method

.method public stopScan(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 10
    .param p1, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 717
    const/4 v0, 0x2

    .line 719
    .local v0, "mask":I
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 723
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-nez v1, :cond_0

    .line 724
    return-void

    .line 727
    :cond_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->getBluetoothReceiver(I)Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$BluetoothReceiver;

    move-result-object v1

    .line 729
    .local v1, "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$BluetoothReceiver;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 731
    .local v2, "start":J
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 735
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x1388

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gez v4, :cond_2

    .line 736
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$BluetoothReceiver;->getFiredFlags()I

    move-result v4

    and-int/2addr v4, v0

    if-ne v4, v0, :cond_1

    .line 737
    const-string v4, "stopScan() completed in %d ms"

    new-array v6, v6, [Ljava/lang/Object;

    .line 738
    invoke-virtual {v1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$BluetoothReceiver;->getCompletedTime()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v5

    .line 737
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->writeOutput(Ljava/lang/String;)V

    .line 739
    invoke-direct {p0, v1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->removeReceiver(Landroid/content/BroadcastReceiver;)V

    .line 740
    return-void

    .line 742
    :cond_1
    const-wide/16 v4, 0x64

    invoke-direct {p0, v4, v5}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->sleep(J)V

    goto :goto_0

    .line 745
    :cond_2
    invoke-virtual {v1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$BluetoothReceiver;->getFiredFlags()I

    move-result v4

    .line 746
    .local v4, "firedFlags":I
    invoke-direct {p0, v1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->removeReceiver(Landroid/content/BroadcastReceiver;)V

    .line 747
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    .line 748
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v6

    const/4 v5, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v5

    .line 747
    const-string v5, "stopScan() timeout: isDiscovering=%b, flags=0x%x (expected 0x%x)"

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 732
    .end local v4    # "firedFlags":I
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "adapter.cancelDiscovery()= false"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 720
    .end local v1    # "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$BluetoothReceiver;
    .end local v2    # "start":J
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "stopScan() bluetooth not enabled"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public stopSco(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "adapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1425
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->startStopSco(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;Z)V

    .line 1426
    return-void
.end method

.method public undiscoverable(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 10
    .param p1, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 623
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 627
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v0

    .line 628
    .local v0, "scanMode":I
    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    .line 629
    return-void

    .line 632
    :cond_0
    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 633
    .local v1, "completionSemaphore":Ljava/util/concurrent/Semaphore;
    new-instance v3, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$5;

    invoke-direct {v3, p0, v1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$5;-><init>(Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;Ljava/util/concurrent/Semaphore;)V

    .line 648
    .local v3, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 649
    .local v4, "filter":Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 651
    const/16 v5, 0x15

    invoke-virtual {p1, v5}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 654
    move v6, v2

    .line 656
    .local v6, "success":Z
    const-wide/16 v7, 0x1388

    :try_start_0
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v7, v8, v9}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v7

    move v6, v7

    .line 658
    const-string v7, "undiscoverable() completed in 0 ms"

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->writeOutput(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    goto :goto_0

    .line 659
    :catch_0
    move-exception v7

    .line 662
    :goto_0
    iget-object v7, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 663
    if-eqz v6, :cond_1

    .line 667
    return-void

    .line 664
    :cond_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    const/4 v2, 0x1

    .line 665
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v2

    .line 664
    const-string v2, "undiscoverable() timeout: scanMode=%d (expected %d)"

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 652
    .end local v6    # "success":Z
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "adapter.setScanMode(BluetoothAdapter.SCAN_MODE_CONNECTABLE)= false"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 624
    .end local v0    # "scanMode":I
    .end local v1    # "completionSemaphore":Ljava/util/concurrent/Semaphore;
    .end local v3    # "receiver":Landroid/content/BroadcastReceiver;
    .end local v4    # "filter":Landroid/content/IntentFilter;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "undiscoverable() bluetooth not enabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unpair(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;)V
    .locals 20
    .param p1, "adapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p0

    .line 919
    move-object/from16 v1, p2

    const/4 v2, 0x4

    .line 920
    .local v2, "mask":I
    const-wide/16 v3, -0x1

    .line 921
    .local v3, "start":J
    const-string v5, "unpair(device=%s)"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 923
    .local v5, "methodName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 927
    const/4 v7, 0x0

    invoke-direct {v0, v1, v8, v7, v2}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->getPairReceiver(Landroid/bluetooth/BluetoothDevice;I[BI)Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;

    move-result-object v7

    .line 929
    .local v7, "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v9

    .line 930
    .local v9, "state":I
    const/4 v10, 0x2

    packed-switch v9, :pswitch_data_0

    .line 957
    move-object v6, v7

    .end local v7    # "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;
    .local v6, "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;
    invoke-direct {v0, v6}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->removeReceiver(Landroid/content/BroadcastReceiver;)V

    .line 958
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v5, v10, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v11, 0x1

    aput-object v8, v10, v11

    const-string v8, "%s invalid state: state=%d"

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 947
    .end local v6    # "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;
    .restart local v7    # "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 950
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 952
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    move-result v11

    if-eqz v11, :cond_0

    goto :goto_0

    .line 953
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v8, "device.removeBond()= false"

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 948
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v8, "adapter.getBondedDevices().contains(device)= false"

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 939
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 941
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 961
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 962
    .local v11, "s":J
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v11

    const-wide/16 v15, 0x4e20

    cmp-long v13, v13, v15

    if-gez v13, :cond_5

    .line 963
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v13

    const/16 v14, 0xa

    if-ne v13, v14, :cond_4

    .line 964
    invoke-virtual {v7}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;->getFiredFlags()I

    move-result v13

    and-int/2addr v13, v2

    if-ne v13, v2, :cond_4

    .line 966
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eq v13, v6, :cond_3

    .line 969
    invoke-virtual {v7}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;->getCompletedTime()J

    move-result-wide v13

    .line 970
    .local v13, "finish":J
    const-wide/16 v15, -0x1

    cmp-long v17, v3, v15

    if-eqz v17, :cond_2

    cmp-long v15, v13, v15

    if-eqz v15, :cond_2

    .line 971
    const-string v15, "%s completed in %d ms"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v5, v10, v8

    move-object/from16 v18, v7

    sub-long v6, v13, v3

    .line 972
    .end local v7    # "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;
    .local v18, "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v10, v7

    .line 971
    invoke-static {v15, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->writeOutput(Ljava/lang/String;)V

    goto :goto_2

    .line 974
    .end local v18    # "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;
    .restart local v7    # "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;
    :cond_2
    move-object/from16 v18, v7

    move v7, v6

    .end local v7    # "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;
    .restart local v18    # "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;
    const-string v6, "%s completed"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->writeOutput(Ljava/lang/String;)V

    .line 976
    :goto_2
    move-object/from16 v6, v18

    invoke-direct {v0, v6}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->removeReceiver(Landroid/content/BroadcastReceiver;)V

    .line 977
    .end local v18    # "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;
    .restart local v6    # "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;
    return-void

    .line 967
    .end local v6    # "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;
    .end local v13    # "finish":J
    .restart local v7    # "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;
    :cond_3
    move-object v6, v7

    .end local v7    # "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;
    .restart local v6    # "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "adapter.getBondedDevices().contains(device)= true"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 961
    .end local v6    # "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;
    .restart local v7    # "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;
    :cond_4
    move-object v6, v7

    .end local v7    # "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;
    .restart local v6    # "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;
    move-object v7, v6

    const/4 v6, 0x1

    goto :goto_1

    .line 981
    .end local v6    # "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;
    .restart local v7    # "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;
    :cond_5
    move-object v6, v7

    .end local v7    # "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;
    .restart local v6    # "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;
    invoke-virtual {v6}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;->getFiredFlags()I

    move-result v7

    .line 982
    .local v7, "firedFlags":I
    invoke-direct {v0, v6}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->removeReceiver(Landroid/content/BroadcastReceiver;)V

    .line 983
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v5, v14, v8

    .line 984
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v15, 0x1

    aput-object v8, v14, v15

    const/16 v8, 0xc

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v14, v10

    const/4 v8, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v14, v8

    const/4 v8, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v14, v8

    .line 983
    const-string v8, "%s timeout: state=%d (expected %d), flags=0x%x (expected 0x%x)"

    invoke-static {v8, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v13, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 942
    .end local v6    # "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;
    .end local v11    # "s":J
    .local v7, "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;
    :cond_6
    move-object v6, v7

    .end local v7    # "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;
    .restart local v6    # "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "device.removeBond()= false"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 933
    .end local v6    # "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;
    .restart local v7    # "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;
    :pswitch_2
    move-object v6, v7

    .end local v7    # "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;
    .restart local v6    # "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_7

    .line 936
    invoke-direct {v0, v6}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->removeReceiver(Landroid/content/BroadcastReceiver;)V

    .line 937
    return-void

    .line 934
    :cond_7
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "adapter.getBondedDevices().contains(device)= true"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 924
    .end local v6    # "receiver":Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;
    .end local v9    # "state":I
    :cond_8
    move v11, v6

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v5, v7, v8

    const-string v8, "%s bluetooth not enabled"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public unpairAll(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 993
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 994
    .local v0, "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 995
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->unpair(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;)V

    .line 996
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    goto :goto_0

    .line 997
    :cond_0
    return-void
.end method

.method public writeOutput(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 1509
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mOutputWriter:Ljava/io/BufferedWriter;

    if-nez v0, :cond_0

    .line 1511
    return-void

    .line 1514
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mOutputWriter:Ljava/io/BufferedWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1515
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1518
    goto :goto_0

    .line 1516
    :catch_0
    move-exception v0

    .line 1517
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;->mTag:Ljava/lang/String;

    const-string v2, "Could not write to output file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1519
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
