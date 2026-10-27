.class Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment$1;
.super Ljava/lang/Object;
.source "LluDanceMainFragment.java"

# interfaces
.implements Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 197
    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment$1;->this$0:Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadDance(Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment$1;->this$0:Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;

    invoke-static {v0, p1}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->access$002(Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment$1;->this$0:Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;

    invoke-static {v0, p1}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->access$200(Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)V

    return-void
.end method

.method public pauseDownloadDance(Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment$1;->this$0:Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;

    invoke-static {v0, p1}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->access$002(Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment$1;->this$0:Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;

    invoke-static {v0, p1}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->access$200(Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)V

    return-void
.end method

.method public playDance(Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment$1;->this$0:Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;

    invoke-static {v0, p1}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->access$002(Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    const-wide/16 v0, 0x3e8

    const/4 v2, 0x0

    .line 201
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/helper/ClickHelper;->isFastClick(JZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-static {}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "click llu play button too quick!"

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment$1;->this$0:Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;

    invoke-static {v0, p1}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->access$200(Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)V

    return-void
.end method
