.class public Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "NetRadioPlayListPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "Lcom/xiaopeng/musicradio/netradio/player/view/a;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/os/Handler;

.field private d:Ljava/lang/Runnable;

.field private e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;->b:Ljava/util/List;

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;->c:Landroid/os/Handler;

    .line 70
    new-instance v0, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter$2;-><init>(Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;->d:Ljava/lang/Runnable;

    .line 79
    new-instance v0, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter$3;-><init>(Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;->e:Ljava/lang/Runnable;

    return-void
.end method

.method private d()V
    .locals 3

    .line 136
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    .line 137
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/logic/a;->d()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v0

    .line 138
    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;->b:Ljava/util/List;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 140
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/player/view/a;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;->c()I

    move-result v1

    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/netradio/logic/a;->q()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/musicradio/netradio/player/view/a;->refreshState(II)V

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/player/view/a;

    invoke-interface {v0, v1, v1}, Lcom/xiaopeng/musicradio/netradio/player/view/a;->refreshState(II)V

    goto :goto_0

    .line 148
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 149
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/player/view/a;

    invoke-interface {v0, v1, v1}, Lcom/xiaopeng/musicradio/netradio/player/view/a;->refreshState(II)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V
    .locals 4

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playOrPause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetRadioPlayListPresent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/logic/a;->d()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 104
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getId()I

    move-result v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getId()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 105
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getStartTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getStartTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 106
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getDayOfWeek()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getDayOfWeek()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 107
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/logic/a;->q()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return-void

    .line 110
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/logic/a;->q()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 111
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/logic/a;->p()V

    goto :goto_0

    .line 112
    :cond_1
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/logic/a;->q()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 113
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/logic/a;->o()V

    goto :goto_0

    .line 115
    :cond_2
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 116
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    goto :goto_0

    .line 118
    :cond_3
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V

    goto :goto_0

    .line 122
    :cond_4
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 123
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    goto :goto_0

    .line 125
    :cond_5
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V

    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 48
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/logic/a;->h()Ljava/util/List;

    move-result-object v0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refresh: ======"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetRadioPlayListPresent"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 51
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 52
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;->c:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;->d:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 53
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;->c:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;->e:Ljava/lang/Runnable;

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p1, "refresh: ======="

    .line 57
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 59
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/player/view/a;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/netradio/player/view/a;->updateData(Ljava/util/List;)V

    .line 61
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;->d()V

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 65
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/player/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/netradio/player/view/a;->updateError()V

    :cond_2
    :goto_0
    return-void
.end method

.method public c()I
    .locals 4

    .line 155
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/logic/a;->d()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 158
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 159
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 160
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getStartTime()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getStartTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getDayOfWeek()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getDayOfWeek()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 3

    .line 34
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 35
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 37
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;->c:Landroid/os/Handler;

    new-instance v0, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter$1;-><init>(Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;)V

    const-wide/16 v1, 0x140

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 1

    .line 179
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    .line 180
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;->c:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onListLoadFail(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ab;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 95
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/player/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/netradio/player/view/a;->updateError()V

    :cond_0
    return-void
.end method

.method public onPlayStateChange(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 132
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;->d()V

    return-void
.end method

.method public onRefreshList(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 88
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;->a()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 89
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;->a(Z)V

    :cond_0
    return-void
.end method

.method public onSpeechShow(Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 172
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/player/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/netradio/player/view/a;->notifyList()V

    :cond_0
    return-void
.end method
