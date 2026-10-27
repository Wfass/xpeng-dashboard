.class public Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "VideoListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoItemHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoListAdapter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mScreenId:I

.field private mVideoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "screenId"    # I

    .line 40
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;->mVideoList:Ljava/util/List;

    .line 41
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;->mContext:Landroid/content/Context;

    .line 42
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;->mScreenId:I

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;

    .line 34
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;->mScreenId:I

    return v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;->requestDownloadStore(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$requestDownloadStore$0(Ljava/lang/String;I)V
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "screenId"    # I

    .line 109
    const/16 v0, 0x3e8

    invoke-static {v0, p0, p0}, Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;->enqueue(ILjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    move-result-object v0

    const-string v1, "extra_key_params_toast_share_id"

    .line 110
    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->putExtra(Ljava/lang/String;I)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    move-result-object v0

    const-string v1, "extra_key_params_start_download_show_toast"

    .line 111
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->putExtra(Ljava/lang/String;Z)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    move-result-object v0

    const-string v1, "extra_key_params_dialog_share_id"

    .line 112
    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->putExtra(Ljava/lang/String;I)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    move-result-object v0

    const-string v1, "extra_key_show_dialog"

    .line 113
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->putExtra(Ljava/lang/String;Z)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    move-result-object v0

    .line 114
    .local v0, "requestContinuation":Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->get()Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->request()Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->assemble(Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;

    .line 115
    return-void
.end method

.method private requestDownloadStore(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "screenId"    # I

    .line 108
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/video/ui/-$$Lambda$VideoListAdapter$gsKtd-3TsTtir3qzP44T04tpgBA;

    invoke-direct {v0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/video/ui/-$$Lambda$VideoListAdapter$gsKtd-3TsTtir3qzP44T04tpgBA;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V

    .line 116
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;->mVideoList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;->mVideoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 104
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 34
    check-cast p1, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;->onBindViewHolder(Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoItemHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoItemHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "position"    # I

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;->mVideoList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;

    .line 61
    .local v0, "itemBean":Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;
    invoke-virtual {p1, p2, v0}, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoItemHolder;->setData(ILcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;)V

    .line 62
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter$1;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;)V

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoItemHolder;->setOnItemClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoItemHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoItemHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "viewType"    # I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0034

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoItemHolder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoItemHolder;-><init>(Landroid/view/View;Landroid/content/Context;)V

    .line 55
    .local v1, "holder":Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoItemHolder;
    return-object v1
.end method

.method public setSourceList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;",
            ">;)V"
        }
    .end annotation

    .line 46
    .local p1, "videoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;>;"
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;->mVideoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;->mVideoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    return-void
.end method
