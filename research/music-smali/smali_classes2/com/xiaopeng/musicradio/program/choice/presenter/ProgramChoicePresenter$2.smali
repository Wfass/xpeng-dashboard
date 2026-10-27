.class Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter$2;
.super Lbkv;
.source "ProgramChoicePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter$2;->a:Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error: code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgramChoicePresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter$2;->a:Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->a(Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;Z)Z

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter$2;->a:Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->a(Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;I)I

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter$2;->a:Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->d()V

    .line 139
    invoke-static {}, Lbmm;->b()Lbmm;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lbmm;->a(Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean;)V

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter$2;->a:Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter$2;->a:Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/choice/view/b;

    invoke-interface {v0, v2}, Lcom/xiaopeng/musicradio/program/choice/view/b;->updateHotRanks(Ljava/util/List;)V

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " initData ==> error code\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",msg: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 125
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter$2;->a(Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean;)V
    .locals 2

    const-string v0, "ProgramChoicePresenter"

    const-string v1, "initData response: ======== "

    .line 128
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-static {}, Lbmm;->b()Lbmm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbmm;->a(Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean;)V

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter$2;->a:Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->a(Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean;)V

    return-void
.end method
