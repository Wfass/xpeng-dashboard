.class Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;
.super Ljava/lang/Object;
.source "XuiVideoListViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenDialogRecorder"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field public mDialog:Lcom/xiaopeng/xui/app/XDialog;

.field public mResultList:Lcom/xiaopeng/xui/widget/XRecyclerView;

.field public mScreenId:I

.field public mTitle:Lcom/xiaopeng/xui/widget/XTextView;

.field public mViewListAdapter:Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "screenId"    # I
    .param p4, "videoAdapterColumnSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;",
            ">;II)V"
        }
    .end annotation

    .line 84
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;->mContext:Landroid/content/Context;

    .line 86
    iput p3, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;->mScreenId:I

    .line 87
    new-instance v0, Lcom/xiaopeng/xui/app/XDialog;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0258

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;->mDialog:Lcom/xiaopeng/xui/app/XDialog;

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x7f0c0031

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/video/ui/DialogRootView;

    .line 89
    .local v0, "dialogRootView":Lcom/xiaopeng/xuiservice/xapp/video/ui/DialogRootView;
    const v2, 0x7f0901a5

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuiservice/xapp/video/ui/DialogRootView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;->mTitle:Lcom/xiaopeng/xui/widget/XTextView;

    .line 90
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;->mTitle:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 91
    const v2, 0x7f0900c8

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuiservice/xapp/video/ui/DialogRootView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xui/widget/XRecyclerView;

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;->mResultList:Lcom/xiaopeng/xui/widget/XRecyclerView;

    .line 92
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;->mResultList:Lcom/xiaopeng/xui/widget/XRecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 93
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;->mResultList:Lcom/xiaopeng/xui/widget/XRecyclerView;

    new-instance v3, Lcom/xiaopeng/xuiservice/xapp/video/ui/GridSpaceItemDecoration;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;->mContext:Landroid/content/Context;

    .line 94
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070175

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;->mContext:Landroid/content/Context;

    .line 95
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070174

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v3, p4, v4, v5}, Lcom/xiaopeng/xuiservice/xapp/video/ui/GridSpaceItemDecoration;-><init>(III)V

    .line 93
    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 97
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 99
    .local v2, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "matchedFirstPriority"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    goto :goto_0

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Lorg/json/JSONException;
    const-string v3, "XuiVideoListViewHolder"

    const-string v4, "json parse error"

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;->mResultList:Lcom/xiaopeng/xui/widget/XRecyclerView;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XRecyclerView;->setVuiProps(Lorg/json/JSONObject;)V

    .line 104
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/video/ui/RecyclerItemDecoration;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070173

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 105
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-direct {v1, v3, v4, v5}, Lcom/xiaopeng/xuiservice/xapp/video/ui/RecyclerItemDecoration;-><init>(III)V

    .line 106
    .local v1, "decoration":Lcom/xiaopeng/xuiservice/xapp/video/ui/RecyclerItemDecoration;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;->mResultList:Lcom/xiaopeng/xui/widget/XRecyclerView;

    invoke-virtual {v3, v1}, Lcom/xiaopeng/xui/widget/XRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 107
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;->mResultList:Lcom/xiaopeng/xui/widget/XRecyclerView;

    const-string v5, "ScreenDialogRecorderSysDialog"

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/xiaopeng/xui/widget/XRecyclerView;->initVuiAttr(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiEngine;ZZZ)V

    .line 108
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;->mDialog:Lcom/xiaopeng/xui/app/XDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xui/app/XDialog;->setTitleBarVisibility(Z)Lcom/xiaopeng/xui/app/XDialog;

    .line 109
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;->mDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v3, v0}, Lcom/xiaopeng/xui/app/XDialog;->setCustomView(Landroid/view/View;)Lcom/xiaopeng/xui/app/XDialog;

    .line 110
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;->mDialog:Lcom/xiaopeng/xui/app/XDialog;

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xui/app/XDialog;->setSystemDialog(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 111
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;->mDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v3, p3}, Lcom/xiaopeng/xui/app/XDialog;->setScreenId(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 112
    new-instance v3, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;

    invoke-direct {v3, p3}, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;-><init>(I)V

    iput-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;->mViewListAdapter:Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;

    .line 113
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;->mViewListAdapter:Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;

    invoke-virtual {v3, p2}, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;->setSourceList(Ljava/util/List;)V

    .line 114
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;->mResultList:Lcom/xiaopeng/xui/widget/XRecyclerView;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;->mViewListAdapter:Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xui/widget/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 115
    return-void
.end method


# virtual methods
.method public refreshList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;",
            ">;)V"
        }
    .end annotation

    .line 118
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;>;"
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;->mDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;->mViewListAdapter:Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;->mViewListAdapter:Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;->setSourceList(Ljava/util/List;)V

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;->mViewListAdapter:Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;->notifyDataSetChanged()V

    .line 122
    :cond_0
    return-void
.end method

.method public show()V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;->mDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;->mDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;->mResultList:Lcom/xiaopeng/xui/widget/XRecyclerView;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;->mResultList:Lcom/xiaopeng/xui/widget/XRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRecyclerView;->scrollToPosition(I)V

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;->mDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->show()V

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;->mDialog:Lcom/xiaopeng/xui/app/XDialog;

    const-string v1, "ScreenDialogRecorderSysDialog"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->initVuiScene(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiEngine;)V

    .line 130
    :cond_0
    return-void
.end method
