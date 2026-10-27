.class public Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;
.super Ljava/lang/Object;
.source "MediaBiHelper.java"


# static fields
.field private static final MODULE_PLAY_USE:Ljava/lang/String; = "appstore"

.field private static final PLAY_USE_DATA_ID:Ljava/lang/String; = "B003"

.field private static final PLAY_USE_PAGE_ID:Ljava/lang/String; = "P10317"

.field private static final TAG:Ljava/lang/String; = "MediaBiHelper"

.field private static mInstance:Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;


# instance fields
.field private mStartTimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;->mStartTimeMap:Ljava/util/Map;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;->mStartTimeMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;Ljava/lang/String;JJ)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # J

    .line 15
    invoke-direct/range {p0 .. p5}, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;->sendMediaPlayBiData(Ljava/lang/String;JJ)V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;
    .locals 2

    .line 28
    sget-object v0, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;->mInstance:Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;

    if-nez v0, :cond_1

    .line 29
    const-class v0, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;->mInstance:Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;->mInstance:Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;

    .line 33
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 35
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;->mInstance:Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;

    return-object v0
.end method

.method private sendMediaPlayBiData(Ljava/lang/String;JJ)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J

    .line 64
    const-string v0, "MediaBiHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " startTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " &endTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v0, "appstore"

    const-string v1, "P10317"

    const-string v2, "B003"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/biutil/BiLogFactory;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/biutil/BiLog;

    move-result-object v0

    .line 66
    .local v0, "bilog":Lcom/xiaopeng/biutil/BiLog;
    const-string v1, "start_time"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v1, "end_time"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v1, "result"

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;->getInstance()Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;->submit(Lcom/xiaopeng/biutil/BiLog;)V

    .line 70
    return-void
.end method


# virtual methods
.method public vendorStartAudioSession(ILjava/lang/String;)V
    .locals 2
    .param p1, "usage"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 39
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper$1;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 48
    return-void
.end method

.method public vendorStopAudioSession(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 51
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper$2;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 61
    return-void
.end method
