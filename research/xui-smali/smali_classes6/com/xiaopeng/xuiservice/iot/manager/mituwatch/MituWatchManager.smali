.class public Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;
.super Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;
.source "MituWatchManager.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;
.implements Lcom/xiaopeng/xuiservice/utils/AccountUtil$AccountListener;
.implements Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituWatchUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager$MituWatchManagerHolder;
    }
.end annotation


# static fields
.field private static final ACTION_REQUEST_OPENID:Ljava/lang/String; = "com.xiaopeng.caraccount.GET_OPENID"

.field private static final OPENID_STATUS_BIND:I = 0x1

.field private static final OPENID_STATUS_REBIND:I = 0x2

.field private static final OPENID_STATUS_UNBIND:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MituWatchManager"

.field private static final USER_ACCOUNT_PACKAGE:Ljava/lang/String; = "com.xiaopeng.caraccount"

.field private static mAccountOpenId:Ljava/lang/String;

.field private static final mDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xuimanager/iot/BaseDevice;",
            ">;"
        }
    .end annotation
.end field

.field private static mUserId:Ljava/lang/String;


# instance fields
.field private bMonitorProp:Z

.field private mDevice:Lcom/xiaopeng/xuimanager/iot/devices/MituWatchDevice;

.field private mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

.field private mituWatchInquirer:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mDeviceList:Ljava/util/ArrayList;

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mUserId:Ljava/lang/String;

    .line 32
    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mAccountOpenId:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->bMonitorProp:Z

    .line 49
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->getInstance()Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mituWatchInquirer:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager$1;

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;
    .locals 1

    .line 53
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager$MituWatchManagerHolder;->access$100()Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;

    move-result-object v0

    return-object v0
.end method

.method private handleBindStatusChange(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .line 306
    const-string v0, "uid"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 307
    .local v3, "userId":J
    const-string v0, "mitu_device_bind_status"

    const/4 v5, -0x1

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 309
    .local v0, "bindStatus":I
    const-string v5, "validTime"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 310
    .local v5, "validTimeS":Ljava/lang/String;
    const-wide/16 v6, -0x1

    .line 311
    .local v6, "validTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 312
    .local v8, "curTime":J
    if-eqz v5, :cond_1

    .line 313
    const-string v10, "-"

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 314
    .local v10, "dates":[Ljava/lang/String;
    if-eqz v10, :cond_0

    array-length v11, v10

    const/4 v12, 0x1

    if-le v11, v12, :cond_0

    .line 316
    :try_start_0
    aget-object v11, v10, v12

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v6, v11

    .line 320
    goto :goto_0

    .line 317
    :catch_0
    move-exception v11

    .line 318
    .local v11, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v6, -0x2

    .line 319
    const-string v12, "MituWatchManager"

    const-string v13, "handleBindStatusChange,NumberFormatException get"

    invoke-static {v12, v13}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    const-string v11, "MituWatchManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mitu bind status changed,userId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ",current userid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mUserId:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ",bind status="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ",validTime="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ",curTime="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 326
    :cond_0
    const-string v11, "MituWatchManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleBindStatusChange, validTimeS="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    .end local v10    # "dates":[Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 329
    :cond_1
    const-string v10, "MituWatchManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleBindStatusChange, validTimeS="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :goto_2
    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mUserId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-wide/16 v1, 0x0

    cmp-long v1, v6, v1

    if-lez v1, :cond_3

    cmp-long v1, v6, v8

    if-ltz v1, :cond_3

    .line 333
    const-string v1, "MituWatchManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleBindStatusChange, bindStatus changed to:"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mAccountOpenId:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 335
    const-string v1, "mitu_openid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mAccountOpenId:Ljava/lang/String;

    .line 336
    const-string v1, "MituWatchManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleBindStatusChange,get id="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mAccountOpenId:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mAccountOpenId:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 338
    const-string v1, "MituWatchManager"

    const-string v2, "handleBindStatusChange,no openid get"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :cond_2
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 356
    :pswitch_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mituWatchInquirer:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->resetInfo()V

    .line 357
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mituWatchInquirer:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;

    sget-object v10, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mAccountOpenId:Ljava/lang/String;

    invoke-virtual {v2, v10, v1}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->getWatchBaseInfo(Ljava/lang/String;Z)V

    .line 358
    const-string v1, "bind_stat"

    const-string v2, "2"

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->notifyPropEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    goto :goto_3

    .line 350
    :pswitch_1
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mituWatchInquirer:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->resetInfo()V

    .line 351
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mituWatchInquirer:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;

    sget-object v10, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mAccountOpenId:Ljava/lang/String;

    invoke-virtual {v2, v10, v1}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->getWatchBaseInfo(Ljava/lang/String;Z)V

    .line 352
    const-string v1, "bind_stat"

    const-string v2, "1"

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->notifyPropEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    goto :goto_3

    .line 345
    :pswitch_2
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mituWatchInquirer:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->resetInfo()V

    .line 346
    const-string v1, "bind_stat"

    const-string v2, "0"

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->notifyPropEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    nop

    .line 364
    :cond_3
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$dump$2(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;)V
    .locals 2

    .line 198
    const-string v0, "bind_stat"

    const-string v1, "100"

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->notifyPropEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public static synthetic lambda$init$0(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;)V
    .locals 4

    .line 68
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->selfGetPropertyMap()V

    .line 69
    const-string v0, "MituWatchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify device add:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mDeviceList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mDeviceList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;->onDeviceAdd(Ljava/util/List;)V

    .line 71
    return-void
.end method

.method public static synthetic lambda$init$1(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 77
    const-string v0, "MituWatchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get broadcast="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->handleBindStatusChange(Landroid/content/Intent;)V

    .line 79
    return-void
.end method

.method public static synthetic lambda$onAccountsUpdated$3(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;)V
    .locals 2

    .line 245
    const-string v0, "bind_stat"

    const-string v1, "100"

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->notifyPropEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method static synthetic lambda$requestUserOpenId$4(Landroid/content/Intent;)V
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .line 299
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    move-result v0

    .line 300
    .local v0, "ret":Z
    const-string v1, "MituWatchManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestUserOpenId, ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method private notifyPropEvent(Ljava/lang/String;)V
    .locals 4
    .param p1, "jsonString"    # Ljava/lang/String;

    .line 283
    const-string v0, "MituWatchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify,bMonitorProp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->bMonitorProp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",c="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x101

    if-ge v2, v3, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/16 v3, 0x100

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->bMonitorProp:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/MituWatchDevice;

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/MituWatchDevice;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/iot/devices/MituWatchDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;->onDeviceEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_1
    return-void
.end method

.method private notifyPropEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 276
    const-string v0, "MituWatchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify,bMonitorProp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->bMonitorProp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->bMonitorProp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/MituWatchDevice;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/MituWatchDevice;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/iot/devices/MituWatchDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;->onDeviceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_0
    return-void
.end method

.method private requestUserOpenId()V
    .locals 5

    .line 291
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaopeng.caraccount.GET_OPENID"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 292
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.xiaopeng.caraccount"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->isBootComplete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    move-result v1

    .line 295
    .local v1, "ret":Z
    const-string v2, "MituWatchManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestUserOpenId, ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",i="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .end local v1    # "ret":Z
    goto :goto_0

    .line 297
    :cond_0
    const-string v1, "MituWatchManager"

    const-string v2, "requestUserOpenId before boot complete,wait.."

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/-$$Lambda$MituWatchManager$2FoSjHp4PtEd3LbxINsP_vIKT68;

    invoke-direct {v2, v0}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/-$$Lambda$MituWatchManager$2FoSjHp4PtEd3LbxINsP_vIKT68;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->addBootCompleteTask(Ljava/lang/Runnable;)V

    .line 303
    :goto_0
    return-void
.end method

.method private declared-synchronized selfGetPropertyMap()V
    .locals 3

    monitor-enter p0

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/MituWatchDevice;

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/MituWatchDevice;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/iot/devices/MituWatchDevice;->getPropertyMap()Ljava/util/Map;

    move-result-object v0

    .line 267
    .local v0, "propertyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 268
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 269
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/MituWatchDevice;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuimanager/iot/devices/MituWatchDevice;->setPropertyMap(Ljava/util/Map;)Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    .line 271
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mituWatchInquirer:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/MituWatchDevice;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->updateDeviceInfo(Lcom/xiaopeng/xuimanager/iot/devices/MituWatchDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    .end local v0    # "propertyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    monitor-exit p0

    return-void

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;
    throw v0
.end method


# virtual methods
.method public addDevice(Lcom/xiaopeng/xuimanager/iot/BaseDevice;)V
    .locals 3
    .param p1, "device"    # Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    .line 157
    const-string v0, "MituWatchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add device-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public addDeviceListener(Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    .line 145
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    .line 146
    return-void
.end method

.method public debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 221
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 162
    const-string v0, "dump:MituWatchManager"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    if-nez p2, :cond_0

    .line 164
    const-string v0, "lack of params"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    return-void

    .line 168
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 168
    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_8

    .line 169
    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x5d4

    const/4 v5, -0x1

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v3, v4, :cond_3

    const/16 v4, 0x5db

    if-eq v3, v4, :cond_2

    const/16 v4, 0x5e7

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "-t"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v7

    goto :goto_2

    :cond_2
    const-string v3, "-h"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v6

    goto :goto_2

    :cond_3
    const-string v3, "-a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    goto :goto_2

    :cond_4
    :goto_1
    move v2, v5

    :goto_2
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_7

    .line 209
    :pswitch_0
    const-string v2, "usage: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    const-string v2, "  -a: print all watch device info"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    const-string v2, "  -t base status locupdate getloc accountswitch:function test"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 212
    goto/16 :goto_7

    .line 176
    :pswitch_1
    add-int/lit8 v2, v1, 0x1

    array-length v3, p2

    if-ge v2, v3, :cond_7

    .line 177
    add-int/lit8 v2, v1, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v3, "accountswitch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x4

    goto :goto_4

    :sswitch_1
    const-string v3, "base"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v0

    goto :goto_4

    :sswitch_2
    const-string v3, "locupdate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v6

    goto :goto_4

    :sswitch_3
    const-string v3, "status"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v7

    goto :goto_4

    :sswitch_4
    const-string v3, "getloc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x3

    goto :goto_4

    :cond_5
    :goto_3
    move v2, v5

    :goto_4
    packed-switch v2, :pswitch_data_1

    goto :goto_5

    .line 195
    :pswitch_2
    const-string v0, "test accountswitch..."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mituWatchInquirer:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->resetInfo()V

    .line 197
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/-$$Lambda$MituWatchManager$jj-DR62TSlDxCSBNOqYFAjkgJs8;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/-$$Lambda$MituWatchManager$jj-DR62TSlDxCSBNOqYFAjkgJs8;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 200
    goto :goto_5

    .line 192
    :pswitch_3
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mituWatchInquirer:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->getLastLoction(Z)V

    .line 193
    goto :goto_5

    .line 189
    :pswitch_4
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mituWatchInquirer:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->requestLocationUpdate(Z)V

    .line 190
    goto :goto_5

    .line 186
    :pswitch_5
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mituWatchInquirer:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->getWatchStatus(Z)V

    .line 187
    goto :goto_5

    .line 179
    :pswitch_6
    const/4 v2, 0x0

    .line 180
    .local v2, "openId":Ljava/lang/String;
    add-int/lit8 v3, v1, 0x2

    array-length v4, p2

    if-ge v3, v4, :cond_6

    .line 181
    add-int/lit8 v3, v1, 0x2

    aget-object v2, p2, v3

    .line 183
    :cond_6
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mituWatchInquirer:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;

    invoke-virtual {v3, v2, v0}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->getWatchBaseInfo(Ljava/lang/String;Z)V

    .line 184
    nop

    .line 202
    .end local v2    # "openId":Ljava/lang/String;
    :goto_5
    goto :goto_6

    .line 205
    :cond_7
    const-string v0, "lack of params"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    :goto_6
    return-void

    .line 171
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mituWatchInquirer:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/MituWatchDevice;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->updateDeviceInfo(Lcom/xiaopeng/xuimanager/iot/devices/MituWatchDevice;)V

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/MituWatchDevice;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "watchInfo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mituWatchInquirer:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->getWatchInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    return-void

    .line 168
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 217
    .end local v1    # "i":I
    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x4a7733d6 -> :sswitch_4
        -0x3532300e -> :sswitch_3
        -0x257593f7 -> :sswitch_2
        0x2e06d1 -> :sswitch_1
        0x2f82ba1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public getDevice()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/iot/BaseDevice;",
            ">;"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->selfGetPropertyMap()V

    .line 86
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mDeviceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPropertyMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/MituWatchDevice;

    if-nez v0, :cond_0

    .line 92
    const-string v0, "MituWatchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPropertyMap but device is null for:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x0

    return-object v0

    .line 95
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->selfGetPropertyMap()V

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/MituWatchDevice;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/iot/devices/MituWatchDevice;->getPropertyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 5

    .line 58
    const-string v0, "mituwatch"

    invoke-static {v0, p0}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->registerDump(Ljava/lang/String;Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;)V

    .line 60
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/ConnectivityUtil;->getWifiMac()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "macId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MituWatch_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "deviceId":Ljava/lang/String;
    new-instance v2, Lcom/xiaopeng/xuimanager/iot/devices/MituWatchDevice;

    const-string v3, "MituWatch"

    const-string v4, "Mitu-Watch"

    invoke-direct {v2, v3, v1, v4}, Lcom/xiaopeng/xuimanager/iot/devices/MituWatchDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/MituWatchDevice;

    .line 64
    const-string v2, "MituWatchManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init,mDevice="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/MituWatchDevice;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mDeviceList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/MituWatchDevice;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 67
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/-$$Lambda$MituWatchManager$vGbC4OjJ6YCGcs13OPSMOXpOaZI;

    invoke-direct {v3, p0}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/-$$Lambda$MituWatchManager$vGbC4OjJ6YCGcs13OPSMOXpOaZI;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;)V

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 73
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/AccountUtil;->getInstance()Lcom/xiaopeng/xuiservice/utils/AccountUtil;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/xiaopeng/xuiservice/utils/AccountUtil;->addAccountListener(Lcom/xiaopeng/xuiservice/utils/AccountUtil$AccountListener;)V

    .line 74
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v2, "filterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "com.xiaopeng.xuiservice.ACTION_MITU_DEVICE_BINDSTATUS"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v3

    new-instance v4, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/-$$Lambda$MituWatchManager$Tw2IvQVukPt2kzM-yvgHBgVbGes;

    invoke-direct {v4, p0}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/-$$Lambda$MituWatchManager$Tw2IvQVukPt2kzM-yvgHBgVbGes;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;)V

    invoke-virtual {v3, v4, v2}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->registerListenerDynamically(Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;Ljava/util/List;)V

    .line 80
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mituWatchInquirer:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;

    invoke-virtual {v3, p0}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->setUpdateListener(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituWatchUpdateListener;)V

    .line 81
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 151
    const/4 v0, 0x1

    return v0
.end method

.method public monitorDevice(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "bMonitor"    # Z

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/MituWatchDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/MituWatchDevice;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/iot/devices/MituWatchDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iput-boolean p2, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->bMonitorProp:Z

    goto :goto_0

    .line 133
    :cond_0
    const-string v0, "MituWatchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "monitorDevice fail,mDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/devices/MituWatchDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",deviceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",monitor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :goto_0
    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 6
    .param p1, "accounts"    # [Landroid/accounts/Account;

    .line 226
    if-eqz p1, :cond_6

    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 234
    :cond_0
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 235
    .local v1, "account":Landroid/accounts/Account;
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/AccountUtil;->getInstance()Lcom/xiaopeng/xuiservice/utils/AccountUtil;

    move-result-object v2

    const-string v3, "uid"

    invoke-virtual {v2, v1, v3}, Lcom/xiaopeng/xuiservice/utils/AccountUtil;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, "userId":Ljava/lang/String;
    const-string v3, "-1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_1

    .line 240
    :cond_1
    sget-object v3, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mUserId:Ljava/lang/String;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mUserId:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 242
    const-string v3, "MituWatchManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAccountsUpdated,last="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mUserId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",current="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mituWatchInquirer:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->resetInfo()V

    .line 244
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v3

    new-instance v4, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/-$$Lambda$MituWatchManager$s2u8r5mYOepdsV6x2BdI0nUqH6w;

    invoke-direct {v4, p0}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/-$$Lambda$MituWatchManager$s2u8r5mYOepdsV6x2BdI0nUqH6w;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;)V

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 248
    :cond_2
    sput-object v2, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mUserId:Ljava/lang/String;

    .line 249
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/AccountUtil;->getInstance()Lcom/xiaopeng/xuiservice/utils/AccountUtil;

    move-result-object v3

    const-string v4, "mitu_openid"

    invoke-virtual {v3, v1, v4}, Lcom/xiaopeng/xuiservice/utils/AccountUtil;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mAccountOpenId:Ljava/lang/String;

    .line 250
    const-string v3, "MituWatchManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAccountsUpdated,mAccountOpenId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mAccountOpenId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",mUserId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mUserId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    sget-object v3, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mAccountOpenId:Ljava/lang/String;

    if-eqz v3, :cond_4

    const-string v3, "null"

    sget-object v4, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mAccountOpenId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 258
    :cond_3
    const-string v3, "MituWatchManager"

    const-string v4, "request device info..."

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mituWatchInquirer:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;

    sget-object v4, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mAccountOpenId:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->getWatchBaseInfo(Ljava/lang/String;Z)V

    .end local v1    # "account":Landroid/accounts/Account;
    .end local v2    # "userId":Ljava/lang/String;
    goto :goto_3

    .line 254
    .restart local v1    # "account":Landroid/accounts/Account;
    .restart local v2    # "userId":Ljava/lang/String;
    :cond_4
    :goto_0
    const-string v0, "MituWatchManager"

    const-string v3, "requestUserOpenId..."

    invoke-static {v0, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->requestUserOpenId()V

    goto :goto_3

    .line 237
    :cond_5
    :goto_1
    const-string v0, "MituWatchManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAccountsUpdated, invalid user id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void

    .line 228
    .end local v1    # "account":Landroid/accounts/Account;
    .end local v2    # "userId":Ljava/lang/String;
    :cond_6
    :goto_2
    const-string v0, "MituWatchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAccountsUpdated, log out,accounts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mUserId:Ljava/lang/String;

    .line 230
    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mAccountOpenId:Ljava/lang/String;

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mituWatchInquirer:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->resetInfo()V

    .line 232
    const-string v0, "bind_stat"

    const-string v1, "-101"

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->notifyPropEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :goto_3
    return-void
.end method

.method public onStatusUpdate(Ljava/lang/String;)V
    .locals 0
    .param p1, "jsonStr"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->notifyPropEvent(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public sendCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/lang/String;

    .line 140
    const-string v0, "MituWatchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendCommand,id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public setPropertyMap(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .param p1, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 101
    .local p2, "propertyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "MituWatchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",setPropertyMap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 103
    .local v1, "prop":Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 104
    .local v2, "propVal":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x376f46ea

    const/4 v6, 0x0

    if-eq v4, v5, :cond_2

    const v5, 0x2c929929

    if-eq v4, v5, :cond_1

    const v5, 0x5bef6c50

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "all_status"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x2

    goto :goto_1

    :cond_1
    const-string v4, "position"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const-string v4, "bind_stat"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v3, v6

    :cond_3
    :goto_1
    packed-switch v3, :pswitch_data_0

    .end local v1    # "prop":Ljava/lang/String;
    .end local v2    # "propVal":Ljava/lang/String;
    goto :goto_2

    .line 118
    .restart local v1    # "prop":Ljava/lang/String;
    .restart local v2    # "propVal":Ljava/lang/String;
    :pswitch_0
    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 119
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mituWatchInquirer:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;

    invoke-virtual {v3, v6}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->getWatchStatus(Z)V

    goto :goto_2

    .line 106
    :pswitch_1
    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 107
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mituWatchInquirer:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;

    sget-object v4, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mAccountOpenId:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->getWatchBaseInfo(Ljava/lang/String;Z)V

    .line 111
    :cond_4
    :pswitch_2
    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 112
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mituWatchInquirer:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;

    invoke-virtual {v3, v6}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->getLastLoction(Z)V

    goto :goto_2

    .line 113
    :cond_5
    const-string v3, "2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 114
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;->mituWatchInquirer:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->updateWatchPositionInfo()V

    .line 125
    .end local v1    # "prop":Ljava/lang/String;
    .end local v2    # "propVal":Ljava/lang/String;
    :cond_6
    :goto_2
    goto/16 :goto_0

    .line 126
    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
