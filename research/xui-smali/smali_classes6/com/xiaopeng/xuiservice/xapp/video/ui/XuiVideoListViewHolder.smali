.class public Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder;
.super Ljava/lang/Object;
.source "XuiVideoListViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XuiVideoListViewHolder"

.field private static mInstance:Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder;


# instance fields
.field private final VIDEO_ADAPTER_COLUMN_SIZE:I

.field private mContext:Landroid/content/Context;

.field private mScreenDialogRecorderList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x5

    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder;->VIDEO_ADAPTER_COLUMN_SIZE:I

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder;->mScreenDialogRecorderList:Ljava/util/HashMap;

    .line 40
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder;

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder;->mScreenDialogRecorderList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder;

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static get()Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder;
    .locals 2

    .line 44
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder;->mInstance:Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder;

    if-nez v0, :cond_1

    .line 45
    const-class v0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder;->mInstance:Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder;->mInstance:Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder;

    .line 49
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 51
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder;->mInstance:Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder;

    return-object v0
.end method


# virtual methods
.method public showResult(ILjava/util/List;)V
    .locals 3
    .param p1, "screenId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;>;"
    const-string v0, "XuiVideoListViewHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show Result with screenId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder;Ljava/util/List;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    .line 74
    return-void
.end method
