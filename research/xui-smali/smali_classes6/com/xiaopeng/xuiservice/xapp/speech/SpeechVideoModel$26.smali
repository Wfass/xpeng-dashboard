.class Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$26;
.super Ljava/lang/Object;
.source "SpeechVideoModel.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/xapp/video/QueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;->onVideoSearch(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;

.field final synthetic val$screenId:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;

    .line 546
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$26;->this$0:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;

    iput p2, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$26;->val$screenId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 559
    const-string v0, "gui.video.search"

    const/16 v1, 0x6b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->replyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 560
    return-void
.end method

.method public onQuerySuccess(Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult;)V
    .locals 3
    .param p1, "result"    # Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult;

    .line 549
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 550
    const-string v0, "gui.video.search"

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->replyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 551
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder;->get()Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$26;->val$screenId:I

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult;->getData()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder;->showResult(ILjava/util/List;)V

    goto :goto_0

    .line 553
    :cond_0
    const-string v0, "gui.video.search"

    const/16 v1, 0x6b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->replyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 555
    :goto_0
    return-void
.end method
