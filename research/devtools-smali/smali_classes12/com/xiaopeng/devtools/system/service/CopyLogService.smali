.class public Lcom/xiaopeng/devtools/system/service/CopyLogService;
.super Landroid/app/IntentService;
.source "CopyLogService.java"


# static fields
.field private static final Ba:Z

.field private static final Bb:Z

.field private static final Bc:Z


# instance fields
.field private Bd:Lcom/xiaopeng/devtools/presenter/b/b;

.field private Be:Ljava/util/concurrent/CountDownLatch;

.field private Bf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile Bg:Z

.field private volatile Bh:Z

.field private Bi:Z

.field private final Bj:Lcom/xiaopeng/commonfunc/b/a/a;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->ll()Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Ba:Z

    .line 70
    const-string v0, "ICM_SUPPORT_SSH"

    invoke-static {v0}, Lcom/xiaopeng/a/a$a;->dZ(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Bb:Z

    .line 71
    const-string v0, "SUPPORT_AUDIO_DATA_DUMP"

    invoke-static {v0}, Lcom/xiaopeng/a/a$b;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Bc:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 189
    const-string v0, "CopyLogService"

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/system/service/CopyLogService;-><init>(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 193
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 75
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Bf:Ljava/util/List;

    .line 76
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Bg:Z

    .line 77
    iput-boolean p1, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Bh:Z

    .line 78
    iput-boolean p1, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Bi:Z

    .line 79
    new-instance p1, Lcom/xiaopeng/devtools/system/service/CopyLogService$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/devtools/system/service/CopyLogService$1;-><init>(Lcom/xiaopeng/devtools/system/service/CopyLogService;)V

    iput-object p1, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->mHandler:Landroid/os/Handler;

    .line 116
    new-instance p1, Lcom/xiaopeng/devtools/system/service/-$$Lambda$CopyLogService$0s8ElonlqwADkAObXBQuDf96D4Y;

    invoke-direct {p1, p0}, Lcom/xiaopeng/devtools/system/service/-$$Lambda$CopyLogService$0s8ElonlqwADkAObXBQuDf96D4Y;-><init>(Lcom/xiaopeng/devtools/system/service/CopyLogService;)V

    iput-object p1, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Bj:Lcom/xiaopeng/commonfunc/b/a/a;

    .line 194
    return-void
.end method

.method private synthetic C(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Bd:Lcom/xiaopeng/devtools/presenter/b/b;

    sget-boolean v1, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Ba:Z

    invoke-interface {v0, p1, v1, p2}, Lcom/xiaopeng/devtools/presenter/b/b;->b(Ljava/lang/String;ZLjava/lang/String;)Z

    .line 145
    iget-object p1, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Bf:Ljava/util/List;

    const-string p2, "/cache/icmlog/"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object p1, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Be:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 147
    return-void
.end method

.method private synthetic a(Landroid/car/hardware/CarPropertyValue;)V
    .locals 6

    .line 117
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    .line 118
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 119
    const-string v2, "CopyLogService"

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    const p1, 0x21101666

    const/16 v2, 0xc8

    const/4 v3, 0x1

    if-eq v0, p1, :cond_7

    const p1, 0x21401057

    if-eq v0, p1, :cond_0

    goto/16 :goto_3

    .line 159
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->mHandler:Landroid/os/Handler;

    iget-boolean v0, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Bi:Z

    const/16 v4, 0x3eb

    const/16 v5, 0x3ee

    if-eqz v0, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 160
    const-string p1, "CopyLogService"

    const-string v0, "no exist modem log or tbox log messages!"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    goto/16 :goto_3

    .line 163
    :cond_2
    iget-boolean p1, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Bh:Z

    if-nez p1, :cond_6

    .line 164
    iput-boolean v3, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Bh:Z

    .line 169
    iget-object p1, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->mHandler:Landroid/os/Handler;

    iget-boolean v0, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Bi:Z

    if-eqz v0, :cond_3

    move v4, v5

    nop

    :cond_3
    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 170
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 171
    new-instance p1, Lcom/xiaopeng/devtools/system/service/-$$Lambda$CopyLogService$l4FFX2xmsTjF5xRMPNqEOzyzohQ;

    invoke-direct {p1, p0}, Lcom/xiaopeng/devtools/system/service/-$$Lambda$CopyLogService$l4FFX2xmsTjF5xRMPNqEOzyzohQ;-><init>(Lcom/xiaopeng/devtools/system/service/CopyLogService;)V

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    .line 178
    :cond_4
    const-string p1, "CopyLogService"

    const-string v0, "tbox log response fail"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    iget-object p1, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Bf:Ljava/util/List;

    iget-boolean v0, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Bi:Z

    if-eqz v0, :cond_5

    const-string v0, "/cache/modemlog/"

    goto :goto_1

    :cond_5
    const-string v0, "/cache/tboxlog/"

    :goto_1
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object p1, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Be:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 182
    goto/16 :goto_3

    .line 166
    :cond_6
    const-string p1, "CopyLogService"

    const-string v0, "wait tbox response timeout"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    goto/16 :goto_3

    .line 124
    :cond_7
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x3ef

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_8

    .line 125
    const-string p1, "CopyLogService"

    const-string v0, "no exist icm log messages!"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    goto/16 :goto_3

    .line 128
    :cond_8
    iget-boolean p1, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Bg:Z

    if-nez p1, :cond_a

    .line 129
    iput-boolean v3, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Bg:Z

    .line 134
    iget-object p1, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 135
    check-cast v1, Ljava/lang/String;

    .line 136
    const-string p1, "CopyLogService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ID_ICM_LOG_COMPRESS resStr:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 138
    const-string v0, "cmd"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 139
    if-ne v0, v2, :cond_9

    .line 140
    const-string v0, "path"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 141
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 142
    const-string v1, "CopyLogService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "icm log file name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    new-instance v1, Lcom/xiaopeng/devtools/system/service/-$$Lambda$CopyLogService$pQJJxrpx8Dxm5K7r3NX0Ksqf-zM;

    invoke-direct {v1, p0, p1, v0}, Lcom/xiaopeng/devtools/system/service/-$$Lambda$CopyLogService$pQJJxrpx8Dxm5K7r3NX0Ksqf-zM;-><init>(Lcom/xiaopeng/devtools/system/service/CopyLogService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 148
    goto :goto_2

    .line 149
    :cond_9
    const-string p1, "CopyLogService"

    const-string v0, "icm log response fail"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object p1, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Be:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 155
    :goto_2
    goto :goto_3

    .line 131
    :cond_a
    const-string p1, "CopyLogService"

    const-string v0, "wait icm log response timeout"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    goto :goto_3

    .line 152
    :catch_0
    move-exception p1

    .line 153
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    iget-object p1, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Be:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 156
    nop

    .line 186
    :goto_3
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/system/service/CopyLogService;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Bg:Z

    return p0
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/system/service/CopyLogService;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Bg:Z

    return p1
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/system/service/CopyLogService;)Ljava/util/List;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Bf:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/system/service/CopyLogService;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Bh:Z

    return p1
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/system/service/CopyLogService;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Be:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method private static synthetic cA(I)V
    .locals 2

    .line 369
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const/16 v1, 0x2711

    if-ne p0, v1, :cond_0

    .line 370
    const/4 p0, 0x7

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 369
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 371
    const p0, 0x7f1000e0

    invoke-static {p0}, Lcom/xiaopeng/xui/app/g;->show(I)V

    .line 373
    return-void
.end method

.method private static synthetic cz(I)V
    .locals 2

    .line 376
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const/16 v1, 0x2711

    if-ne p0, v1, :cond_0

    .line 377
    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    .line 376
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 378
    const p0, 0x7f1000df

    invoke-static {p0}, Lcom/xiaopeng/xui/app/g;->show(I)V

    .line 379
    return-void
.end method

.method private d(IZ)V
    .locals 2

    .line 367
    if-eqz p2, :cond_0

    .line 368
    new-instance p2, Lcom/xiaopeng/devtools/system/service/-$$Lambda$CopyLogService$5-is_FlxMnfjeOYpKiuSLFDaPGg;

    invoke-direct {p2, p1}, Lcom/xiaopeng/devtools/system/service/-$$Lambda$CopyLogService$5-is_FlxMnfjeOYpKiuSLFDaPGg;-><init>(I)V

    const-wide/16 v0, 0x2710

    invoke-static {p2, v0, v1}, Lcom/xiaopeng/lib/utils/j;->a(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 375
    :cond_0
    new-instance p2, Lcom/xiaopeng/devtools/system/service/-$$Lambda$CopyLogService$lQtXM0PbwcZT5wlthnm02u8aTRY;

    invoke-direct {p2, p1}, Lcom/xiaopeng/devtools/system/service/-$$Lambda$CopyLogService$lQtXM0PbwcZT5wlthnm02u8aTRY;-><init>(I)V

    invoke-static {p2}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 381
    :goto_0
    return-void
.end method

.method static synthetic d(Lcom/xiaopeng/devtools/system/service/CopyLogService;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Bh:Z

    return p0
.end method

.method private synthetic kQ()V
    .locals 3

    .line 172
    const-string v0, "/mnt/sdcard/tftpboot/dlt.tar.gz"

    iget-boolean v1, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Bi:Z

    if-eqz v1, :cond_0

    .line 173
    const-string v1, "/cache/modemlog/dlt.tar.gz"

    goto :goto_0

    :cond_0
    const-string v1, "/cache/tboxlog/dlt.tar.gz"

    :goto_0
    sget-object v2, Lcom/xiaopeng/commonfunc/utils/p;->ps:Ljava/lang/String;

    .line 172
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/commonfunc/utils/p;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Bf:Ljava/util/List;

    iget-boolean v1, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Bi:Z

    if-eqz v1, :cond_1

    const-string v1, "/cache/modemlog/"

    goto :goto_1

    :cond_1
    const-string v1, "/cache/tboxlog/"

    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Be:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 176
    return-void
.end method

.method public static synthetic lambda$0s8ElonlqwADkAObXBQuDf96D4Y(Lcom/xiaopeng/devtools/system/service/CopyLogService;Landroid/car/hardware/CarPropertyValue;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/system/service/CopyLogService;->a(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method public static synthetic lambda$5-is_FlxMnfjeOYpKiuSLFDaPGg(I)V
    .locals 0

    invoke-static {p0}, Lcom/xiaopeng/devtools/system/service/CopyLogService;->cA(I)V

    return-void
.end method

.method public static synthetic lambda$l4FFX2xmsTjF5xRMPNqEOzyzohQ(Lcom/xiaopeng/devtools/system/service/CopyLogService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/devtools/system/service/CopyLogService;->kQ()V

    return-void
.end method

.method public static synthetic lambda$lQtXM0PbwcZT5wlthnm02u8aTRY(I)V
    .locals 0

    invoke-static {p0}, Lcom/xiaopeng/devtools/system/service/CopyLogService;->cz(I)V

    return-void
.end method

.method public static synthetic lambda$pQJJxrpx8Dxm5K7r3NX0Ksqf-zM(Lcom/xiaopeng/devtools/system/service/CopyLogService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/system/service/CopyLogService;->C(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 198
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 199
    new-instance v0, Lcom/xiaopeng/devtools/presenter/b/a;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/presenter/b/a;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Bd:Lcom/xiaopeng/devtools/presenter/b/b;

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Bd:Lcom/xiaopeng/devtools/presenter/b/b;

    iget-object v1, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Bj:Lcom/xiaopeng/commonfunc/b/a/a;

    invoke-interface {v0, v1}, Lcom/xiaopeng/devtools/presenter/b/b;->a(Lcom/xiaopeng/commonfunc/b/a/a;)V

    .line 201
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 385
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 386
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Bd:Lcom/xiaopeng/devtools/presenter/b/b;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/b/b;->onDestroy()V

    .line 387
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 13

    .line 205
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 208
    nop

    .line 209
    nop

    .line 210
    if-eqz p1, :cond_e

    .line 211
    const-string v0, "storagePath"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 212
    const-string v0, "copylogs"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 213
    const-string v1, "copyDest"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 214
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Be:Ljava/util/concurrent/CountDownLatch;

    .line 215
    const/16 v1, 0x3ee

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Bi:Z

    .line 216
    const-string v3, "CopyLogService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "containsModemLog = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Bi:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Bg:Z

    .line 218
    iput-boolean v7, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Bh:Z

    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XpengFile_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/devtools/utils/t;->eH()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/sdcard"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".zip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 223
    const/16 v4, 0x2711

    if-ne p1, v4, :cond_0

    .line 224
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/cache/aftersales"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v6, Ljava/io/File;->separatorChar:C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".xp"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 231
    :goto_0
    move-object v9, v3

    goto :goto_1

    .line 226
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v6, Ljava/io/File;->separatorChar:C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".xp"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 231
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 232
    const-wide/32 v5, 0x493e0

    const/4 v10, 0x1

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_a

    .line 247
    :pswitch_1
    const-string v3, "CopyLogService"

    const-string v5, "ICM_LOG"

    invoke-static {v3, v5}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    const-string v3, "/cache/icmlog/"

    invoke-static {v3}, Lcom/xiaopeng/devtools/utils/g;->aX(Ljava/lang/String;)V

    .line 249
    const-string v3, "/cache/icmlog/"

    invoke-static {v3}, Lcom/xiaopeng/devtools/utils/g;->aW(Ljava/lang/String;)Z

    .line 250
    sget-boolean v3, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Bb:Z

    if-nez v3, :cond_2

    .line 251
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 253
    :try_start_0
    const-string v5, "cmd"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-boolean v5, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Ba:Z

    if-eqz v5, :cond_1

    .line 255
    const-string v5, "path"

    sget-object v6, Lcom/xiaopeng/devtools/a;->nD:[Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 257
    :cond_1
    const-string v5, "path"

    sget-object v6, Lcom/xiaopeng/devtools/a;->nC:[Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :goto_3
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v5, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 260
    iget-object v5, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Bd:Lcom/xiaopeng/devtools/presenter/b/b;

    invoke-interface {v5, v3}, Lcom/xiaopeng/devtools/presenter/b/b;->sendLogCompressRequest(Ljava/lang/String;)V

    .line 261
    iget-object v3, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3ef

    const-wide/32 v10, 0x186a0

    invoke-virtual {v3, v5, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    goto :goto_4

    .line 262
    :catch_0
    move-exception v3

    .line 263
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 265
    :goto_4
    goto :goto_6

    .line 266
    :cond_2
    sget-boolean v3, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Ba:Z

    if-eqz v3, :cond_3

    .line 267
    const-string v3, "root"

    const-string v5, "[fe80::22ff:fe44:6688%xpusb0]"

    sget-object v6, Lcom/xiaopeng/devtools/a;->nD:[Ljava/lang/String;

    const-string v10, "/cache/icmlog/"

    const-string v11, ""

    invoke-static {v3, v5, v6, v10, v11}, Lcom/xiaopeng/devtools/utils/o;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 270
    :cond_3
    const-string v3, "root"

    const-string v5, "172.20.1.40"

    sget-object v6, Lcom/xiaopeng/devtools/a;->nC:[Ljava/lang/String;

    const-string v10, "/cache/icmlog/"

    const-string v11, "/data/etc/ssh/id_rsa_icm"

    invoke-static {v3, v5, v6, v10, v11}, Lcom/xiaopeng/devtools/utils/o;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 273
    :goto_5
    invoke-static {v3}, Lcom/xiaopeng/devtools/utils/m;->ba(Ljava/lang/String;)Ljava/lang/Process;

    .line 274
    iget-object v3, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Bf:Ljava/util/List;

    const-string v5, "/cache/icmlog/"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v3, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Be:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 277
    :goto_6
    const-string v3, "copy logicm log"

    const-string v5, "success"

    invoke-static {v3, v5}, Lcom/xiaopeng/devtools/utils/b;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    goto/16 :goto_a

    .line 304
    :pswitch_2
    const-string v3, "CopyLogService"

    const-string v11, "MODEM_LOG"

    invoke-static {v3, v11}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    const-string v3, "/cache/modemlog/"

    invoke-static {v3}, Lcom/xiaopeng/devtools/utils/g;->aX(Ljava/lang/String;)V

    .line 306
    const-string v3, "/cache/modemlog/"

    invoke-static {v3}, Lcom/xiaopeng/devtools/utils/g;->aW(Ljava/lang/String;)Z

    .line 307
    iget-object v3, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Bd:Lcom/xiaopeng/devtools/presenter/b/b;

    invoke-interface {v3, v10}, Lcom/xiaopeng/devtools/presenter/b/b;->ct(I)V

    .line 308
    iget-object v3, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 309
    const-string v3, "copy logmodem log"

    const-string v5, "success"

    invoke-static {v3, v5}, Lcom/xiaopeng/devtools/utils/b;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 294
    :pswitch_3
    const-string v3, "CopyLogService"

    const-string v5, "NAVI_LOG"

    invoke-static {v3, v5}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    invoke-static {p0}, Lcom/xiaopeng/devtools/utils/c;->ad(Landroid/content/Context;)V

    .line 296
    move v3, v7

    :goto_7
    sget-object v5, Lcom/xiaopeng/devtools/a;->nB:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_4

    .line 297
    iget-object v5, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Bf:Ljava/util/List;

    sget-object v6, Lcom/xiaopeng/devtools/a;->nB:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 299
    :cond_4
    iget-object v3, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Be:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 300
    const-string v3, "copy lognavi log"

    const-string v5, "success"

    invoke-static {v3, v5}, Lcom/xiaopeng/devtools/utils/b;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    goto :goto_a

    .line 281
    :pswitch_4
    const-string v3, "CopyLogService"

    const-string v10, "TBOX_LOG"

    invoke-static {v3, v10}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    const-string v3, "/cache/tboxlog/"

    invoke-static {v3}, Lcom/xiaopeng/devtools/utils/g;->aX(Ljava/lang/String;)V

    .line 283
    const-string v3, "/cache/tboxlog/"

    invoke-static {v3}, Lcom/xiaopeng/devtools/utils/g;->aW(Ljava/lang/String;)Z

    .line 284
    iget-boolean v3, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Bi:Z

    if-nez v3, :cond_5

    .line 285
    iget-object v3, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Bd:Lcom/xiaopeng/devtools/presenter/b/b;

    invoke-interface {v3, v7}, Lcom/xiaopeng/devtools/presenter/b/b;->ct(I)V

    .line 286
    iget-object v3, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x3eb

    invoke-virtual {v3, v10, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_8

    .line 288
    :cond_5
    iget-object v3, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Be:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 290
    :goto_8
    const-string v3, "copy logtbox log"

    const-string v5, "success"

    invoke-static {v3, v5}, Lcom/xiaopeng/devtools/utils/b;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    goto :goto_a

    .line 234
    :pswitch_5
    const-string v3, "CopyLogService"

    const-string v5, "ANDROID_LOG"

    invoke-static {v3, v5}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    move v3, v7

    :goto_9
    sget-object v5, Lcom/xiaopeng/devtools/a;->nw:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_6

    .line 236
    iget-object v5, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Bf:Ljava/util/List;

    sget-object v6, Lcom/xiaopeng/devtools/a;->nw:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 238
    :cond_6
    sget-boolean v3, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Bc:Z

    if-eqz v3, :cond_7

    .line 239
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/devtools/utils/c;->af(Landroid/content/Context;)V

    .line 240
    iget-object v3, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Bf:Ljava/util/List;

    const-string v5, "/sdcard/aispeech/audio/dmasp/"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_7
    iget-object v3, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Be:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 243
    const-string v3, "copy logandroid log"

    const-string v5, "success"

    invoke-static {v3, v5}, Lcom/xiaopeng/devtools/utils/b;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    nop

    .line 313
    :goto_a
    goto/16 :goto_2

    .line 316
    :cond_8
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Be:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 317
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 318
    new-instance v10, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    :try_start_2
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService;->Bf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 321
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 322
    const-string v5, "CopyLogService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onHandleIntent, source file = "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " isExist = "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 324
    const-string v5, "CopyLogService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onHandleIntent, ziping source file = "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " current time = "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    const-string v1, ""

    invoke-static {v10, v3, v1}, Lcom/xiaopeng/lib/utils/k;->a(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)V

    .line 327
    :cond_9
    goto :goto_b

    .line 328
    :cond_a
    invoke-virtual {v10}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 329
    invoke-virtual {v10}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 330
    const-string v0, "CopyLogService"

    const-string v1, "onHandleIntent, finish zip file"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    const-string v0, "@)!%Xp0109Motors"

    invoke-static {v0, v8, v9}, Lcom/xiaopeng/lib/utils/b/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 332
    const-string v1, "CopyLogService"

    const-string v3, "onHandleIntent, finish encryptFile"

    invoke-static {v1, v3}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    if-ne p1, v4, :cond_b

    .line 334
    const/16 v3, 0x28a1

    const-string v4, "xpPcToolsFtp"

    const-string v5, "xpeng1@d4t#55"

    const-string v6, "/log"

    move-object v1, v9

    invoke-static/range {v1 .. v6}, Lcom/xiaopeng/devtools/utils/h;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 337
    invoke-static {v9}, Lcom/xiaopeng/devtools/utils/g;->deleteFile(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 343
    :cond_b
    move v7, v0

    .line 345
    :try_start_3
    invoke-virtual {v10}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 348
    goto :goto_c

    .line 346
    :catch_1
    move-exception v0

    .line 347
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 350
    :goto_c
    invoke-static {v8}, Lcom/xiaopeng/lib/utils/b;->bn(Ljava/lang/String;)V

    .line 351
    const-string v0, "CopyLogService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_f

    .line 339
    :catch_2
    move-exception v0

    goto :goto_d

    .line 343
    :catchall_0
    move-exception p1

    move-object v10, v0

    goto :goto_10

    .line 339
    :catch_3
    move-exception v1

    move-object v10, v0

    move-object v0, v1

    .line 340
    :goto_d
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 341
    nop

    .line 343
    if-eqz v10, :cond_c

    .line 345
    :try_start_5
    invoke-virtual {v10}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 348
    goto :goto_e

    .line 346
    :catch_4
    move-exception v0

    .line 347
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 350
    :cond_c
    :goto_e
    invoke-static {v8}, Lcom/xiaopeng/lib/utils/b;->bn(Ljava/lang/String;)V

    .line 351
    const-string v0, "CopyLogService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_f
    const-string v2, "onHandleIntent,finally remove destTempPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    nop

    .line 354
    invoke-direct {p0, p1, v7}, Lcom/xiaopeng/devtools/system/service/CopyLogService;->d(IZ)V

    goto :goto_12

    .line 343
    :catchall_1
    move-exception p1

    :goto_10
    if-eqz v10, :cond_d

    .line 345
    :try_start_6
    invoke-virtual {v10}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 348
    goto :goto_11

    .line 346
    :catch_5
    move-exception v0

    .line 347
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 350
    :cond_d
    :goto_11
    invoke-static {v8}, Lcom/xiaopeng/lib/utils/b;->bn(Ljava/lang/String;)V

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHandleIntent,finally remove destTempPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CopyLogService"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    throw p1

    .line 356
    :cond_e
    :goto_12
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
