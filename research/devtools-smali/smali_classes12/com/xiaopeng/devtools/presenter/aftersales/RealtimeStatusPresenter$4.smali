.class Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$4;
.super Ljava/lang/Object;
.source "RealtimeStatusPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$4;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 352
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$4;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->f(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)V

    .line 353
    new-instance v0, Lcom/xiaopeng/devtools/bean/event/signal/WifiNameSSEvent;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/bean/event/signal/WifiNameSSEvent;-><init>()V

    .line 354
    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$4;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-static {v1}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->b(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 355
    if-eqz v1, :cond_0

    .line 356
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/devtools/bean/event/signal/WifiNameSSEvent;->setName(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/devtools/bean/event/signal/WifiNameSSEvent;->setStrength(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    invoke-static {v1}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/bean/event/signal/WifiNameSSEvent;->setIp(Ljava/lang/String;)V

    .line 360
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$4;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-static {v1, v0}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->a(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;Lcom/xiaopeng/devtools/bean/event/signal/WifiNameSSEvent;)V

    .line 361
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$4;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$4;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-static {v1}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->b(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->a(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;I)V

    .line 363
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$4;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->a(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)V

    .line 365
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$4;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->h(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)[Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->vR:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    const v1, 0x7f100307

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$4;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    .line 367
    invoke-static {v4}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->g(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)Lcom/xiaopeng/devtools/model/c/a/i/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/devtools/model/c/a/i/a;->gO()I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 366
    invoke-static {v1, v3}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 365
    invoke-virtual {v0, v5, v1}, Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;->setStatus(ILjava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$4;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->h(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)[Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->vR:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    const v1, 0x7f100309

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$4;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    .line 370
    invoke-static {v4}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->g(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)Lcom/xiaopeng/devtools/model/c/a/i/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/devtools/model/c/a/i/a;->gP()I

    move-result v4

    int-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v5

    .line 369
    invoke-static {v1, v3}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 368
    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;->setStatus(ILjava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$4;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->h(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)[Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->vR:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x2

    const v3, 0x7f10030b

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$4;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    .line 373
    invoke-static {v6}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->g(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)Lcom/xiaopeng/devtools/model/c/a/i/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaopeng/devtools/model/c/a/i/a;->gR()I

    move-result v6

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    .line 372
    invoke-static {v3, v4}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 371
    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;->setStatus(ILjava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$4;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->h(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)[Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->vR:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x3

    const v3, 0x7f100315

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$4;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    .line 376
    invoke-static {v6}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->g(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)Lcom/xiaopeng/devtools/model/c/a/i/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaopeng/devtools/model/c/a/i/a;->gQ()I

    move-result v6

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    .line 375
    invoke-static {v3, v4}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 374
    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;->setStatus(ILjava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$4;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->h(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)[Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->vR:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x4

    const v3, 0x7f100303

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$4;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    .line 379
    invoke-static {v6}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->g(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)Lcom/xiaopeng/devtools/model/c/a/i/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaopeng/devtools/model/c/a/i/a;->gS()I

    move-result v6

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    .line 378
    invoke-static {v3, v4}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 377
    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;->setStatus(ILjava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$4;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->h(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)[Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->vR:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x5

    const v3, 0x7f10030f

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$4;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    .line 382
    invoke-static {v6}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->g(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)Lcom/xiaopeng/devtools/model/c/a/i/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaopeng/devtools/model/c/a/i/a;->gT()I

    move-result v6

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    .line 381
    invoke-static {v3, v4}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 380
    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;->setStatus(ILjava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$4;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->h(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)[Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->vR:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x6

    const v3, 0x7f100301

    new-array v4, v2, [Ljava/lang/Object;

    .line 385
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/c;->fw()Lcom/xiaopeng/devtools/model/a/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaopeng/devtools/model/a/c;->getDvMcuTemp()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    .line 384
    invoke-static {v3, v4}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 383
    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;->setStatus(ILjava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$4;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->i(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)Z

    move-result v0

    const v1, 0x7f100305

    const/16 v3, 0x8

    const/4 v4, 0x7

    if-eqz v0, :cond_2

    .line 388
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-static {}, Lcom/xiaopeng/devtools/model/a/d;->fy()Lcom/xiaopeng/devtools/model/a/d;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaopeng/devtools/model/a/d;->getDvTempMsg()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/xiaopeng/devtools/bean/car/TboxTempInfo;

    invoke-virtual {v0, v6, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/devtools/bean/car/TboxTempInfo;

    .line 389
    if-eqz v0, :cond_1

    .line 390
    iget-object v6, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$4;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-static {v6}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->h(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)[Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;

    move-result-object v6

    sget-object v7, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->vR:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    invoke-virtual {v7}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->ordinal()I

    move-result v7

    aget-object v6, v6, v7

    const v7, 0x7f100311

    new-array v8, v2, [Ljava/lang/Object;

    .line 392
    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/car/TboxTempInfo;->getFloatTbox()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v5

    .line 391
    invoke-static {v7, v8}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 390
    invoke-virtual {v6, v4, v7}, Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;->setStatus(ILjava/lang/String;)V

    .line 393
    iget-object v4, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$4;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-static {v4}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->h(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)[Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;

    move-result-object v4

    sget-object v6, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->vR:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    invoke-virtual {v6}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->ordinal()I

    move-result v6

    aget-object v4, v4, v6

    const v6, 0x7f100313

    new-array v7, v2, [Ljava/lang/Object;

    .line 395
    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/car/TboxTempInfo;->getFloatTmcu()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v5

    .line 394
    invoke-static {v6, v7}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 393
    invoke-virtual {v4, v3, v6}, Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;->setStatus(ILjava/lang/String;)V

    .line 396
    iget-object v3, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$4;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-static {v3}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->h(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)[Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;

    move-result-object v3

    sget-object v4, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->vR:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    invoke-virtual {v4}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->ordinal()I

    move-result v4

    aget-object v3, v3, v4

    const/16 v4, 0x9

    new-array v6, v2, [Ljava/lang/Object;

    .line 398
    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/car/TboxTempInfo;->getFloatBbat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v6, v5

    .line 397
    invoke-static {v1, v6}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 396
    invoke-virtual {v3, v4, v0}, Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;->setStatus(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 400
    :catch_0
    move-exception v0

    .line 401
    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    .line 402
    :cond_1
    :goto_0
    goto :goto_1

    .line 404
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$4;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->h(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)[Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;

    move-result-object v0

    sget-object v6, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->vR:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    invoke-virtual {v6}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->ordinal()I

    move-result v6

    aget-object v0, v0, v6

    const v6, 0x7f10030d

    new-array v7, v2, [Ljava/lang/Object;

    .line 406
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/c;->fw()Lcom/xiaopeng/devtools/model/a/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/xiaopeng/devtools/model/a/c;->getDvPcbTemp()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v5

    .line 405
    invoke-static {v6, v7}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 404
    invoke-virtual {v0, v4, v6}, Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;->setStatus(ILjava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$4;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->h(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)[Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;

    move-result-object v0

    sget-object v4, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->vR:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    invoke-virtual {v4}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->ordinal()I

    move-result v4

    aget-object v0, v0, v4

    new-array v4, v2, [Ljava/lang/Object;

    .line 409
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/c;->fw()Lcom/xiaopeng/devtools/model/a/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaopeng/devtools/model/a/c;->getDvBatTemp()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    .line 408
    invoke-static {v1, v4}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 407
    invoke-virtual {v0, v3, v1}, Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;->setStatus(ILjava/lang/String;)V

    .line 411
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$4;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->h(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)[Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->vS:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    const v1, 0x7f10045d

    new-array v3, v2, [Ljava/lang/Object;

    .line 413
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/c;->fw()Lcom/xiaopeng/devtools/model/a/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/devtools/model/a/c;->getChairWelcomeMode()I

    move-result v4

    if-ne v4, v2, :cond_3

    .line 414
    const v2, 0x7f1002cf

    :goto_2
    invoke-static {v2}, Lcom/xiaopeng/devtools/utils/d;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    const v2, 0x7f1002ce

    goto :goto_2

    :goto_3
    aput-object v2, v3, v5

    .line 412
    invoke-static {v1, v3}, Lcom/xiaopeng/devtools/utils/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 411
    invoke-virtual {v0, v5, v1}, Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;->setStatus(ILjava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$4;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->j(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)Lcom/xiaopeng/devtools/view/aftersales/d;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$4;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-static {v1}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->h(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)[Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/devtools/view/aftersales/d;->a([Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;)V

    .line 416
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$4;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->k(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 417
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$4;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->l(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)Ljava/lang/Runnable;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$4;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-static {v1}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->m(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-static {v5, v0, v1, v2}, Lcom/xiaopeng/lib/utils/j;->b(ILjava/lang/Runnable;J)V

    .line 419
    :cond_4
    return-void
.end method
