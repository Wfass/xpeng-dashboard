.class Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel$1;
.super Ljava/lang/Object;
.source "LluDanceViewModel.java"

# interfaces
.implements Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository$IOperationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel$1;->this$0:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onRemoteSourceQuerySuccess$0(Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "o1",
            "o2"
        }
    .end annotation

    .line 148
    invoke-virtual {p1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getUpdateTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getUpdateTime()J

    move-result-wide p0

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method


# virtual methods
.method public onDownloadError(ILcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "resource"
        }
    .end annotation

    .line 200
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel$1;->this$0:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-static {p1, p2}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->access$200(Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    return-void
.end method

.method public onDownloadInProgress(ILcom/xiaopeng/xuimanager/operation/OperationResource;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "resource",
            "progress"
        }
    .end annotation

    .line 205
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel$1;->this$0:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-static {p1, p2, p3}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->access$300(Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;Lcom/xiaopeng/xuimanager/operation/OperationResource;F)V

    return-void
.end method

.method public onDownloadPaused(ILcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "resource"
        }
    .end annotation

    .line 210
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel$1;->this$0:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->access$400(Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;Lcom/xiaopeng/xuimanager/operation/OperationResource;F)V

    return-void
.end method

.method public onOperationSourceAdd(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "operationResource"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel$1;->this$0:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-static {v0, p1}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->access$000(Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    return-void
.end method

.method public onOperationSourceDelete(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "operationResource"
        }
    .end annotation

    return-void
.end method

.method public onOperationSourceExpire(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "operationResource"
        }
    .end annotation

    return-void
.end method

.method public onRemoteSourceQuerySuccess(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/operation/OperationResource;",
            ">;)V"
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 104
    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel$1;->this$0:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-static {v1}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->access$100(Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;)Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;->requestLocalResources()Ljava/util/List;

    move-result-object v1

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLocalSourceQuerySuccess "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "zxg"

    invoke-static {v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 107
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/16 v5, 0x8

    const-string v6, " from: "

    const-string v7, " name: "

    const-string v8, " url: "

    const-string v9, " icon: "

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 108
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onLocalSourceQuerySuccess  id: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 109
    invoke-virtual {v4}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  extra: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 110
    invoke-virtual {v4}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getExtraData()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 111
    invoke-virtual {v4}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 112
    invoke-virtual {v4}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceIcon()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 113
    invoke-virtual {v4}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getDownloadUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 114
    invoke-virtual {v4}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceFrom()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 108
    invoke-static {v3, v6}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance v6, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    invoke-direct {v6, v4}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;-><init>(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    .line 116
    invoke-virtual {v6, v5}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->setState(I)V

    .line 117
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-virtual {v6}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 122
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onRemoteSourceQuerySuccess  id: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 124
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " extra: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 125
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getExtraData()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 126
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 127
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceIcon()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 128
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getDownloadUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 129
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceFrom()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 123
    invoke-static {v3, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 131
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    .line 132
    invoke-virtual {v11}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const-string v4, "refresh "

    .line 133
    invoke-static {v3, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v11, v1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->refresh(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    move v4, v2

    :cond_3
    if-nez v4, :cond_1

    .line 141
    new-instance v4, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    invoke-direct {v4, v1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;-><init>(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    .line 142
    invoke-virtual {v4, v2}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->setState(I)V

    .line 143
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 148
    :cond_4
    sget-object p1, Lcom/xiaopeng/lludancemanager/viewmodel/-$$Lambda$LluDanceViewModel$1$w6fg02hyd04C2ok_e9fjA3C1SPY;->INSTANCE:Lcom/xiaopeng/lludancemanager/viewmodel/-$$Lambda$LluDanceViewModel$1$w6fg02hyd04C2ok_e9fjA3C1SPY;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 150
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "final size: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    .line 152
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mixedList  id: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 153
    invoke-virtual {v1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " title: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 154
    invoke-virtual {v1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " author: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 155
    invoke-virtual {v1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getAuthor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " duration: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 156
    invoke-virtual {v1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getDuration()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 157
    invoke-virtual {v1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getImgUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 158
    invoke-virtual {v1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getDownloadUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " videoPath: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 159
    invoke-virtual {v1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getVideoPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " effectName: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 160
    invoke-virtual {v1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getEffectName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-static {v3, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 163
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel$1;->this$0:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-static {p1}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->access$100(Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;)Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;->getDownloadStatusList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 165
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "info: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;->getResourceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;->getResourceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;->getState()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    .line 168
    invoke-virtual {v6}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;->getResourceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 169
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;->getState()I

    move-result v7

    if-eqz v7, :cond_c

    if-eq v7, v2, :cond_b

    const/4 v8, 0x2

    if-eq v7, v8, :cond_b

    const/16 v8, 0xc8

    if-eq v7, v8, :cond_a

    const/16 v8, 0x3e8

    if-eq v7, v8, :cond_9

    const/16 v8, 0x44c

    if-eq v7, v8, :cond_8

    packed-switch v7, :pswitch_data_0

    goto :goto_3

    .line 178
    :cond_8
    invoke-virtual {v6, v5}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->setState(I)V

    goto :goto_3

    :cond_9
    const/4 v7, 0x7

    .line 181
    invoke-virtual {v6, v7}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->setState(I)V

    goto :goto_3

    :cond_a
    const/4 v7, 0x5

    .line 184
    invoke-virtual {v6, v7}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->setState(I)V

    goto :goto_3

    :cond_b
    :pswitch_0
    const/4 v7, 0x3

    .line 175
    invoke-virtual {v6, v7}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->setState(I)V

    goto :goto_3

    .line 187
    :cond_c
    invoke-virtual {v6, v2}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->setState(I)V

    goto :goto_3

    .line 195
    :cond_d
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel$1;->this$0:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->updateAllData(Ljava/util/List;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
