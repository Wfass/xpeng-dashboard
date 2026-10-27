.class public Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
.super Ljava/lang/Object;
.source "VuiSceneInfo.java"


# instance fields
.field private addSubSceneNum:I

.field private displayLocation:Ljava/lang/String;

.field private elementChangedListener:Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

.field private eventListener:Lcom/xiaopeng/speech/vui/listener/IVuiEventListener;

.field private idList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isBuild:Z

.field private isBuildComplete:Z

.field private isContainNotChildrenView:Z

.field private isWholeScene:Z

.field private lastAddStr:Ljava/lang/String;

.field private lastUpdateStr:Ljava/lang/String;

.field private listener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

.field private notChildrenViewIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private notChildrenViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private props:Lcom/google/gson/JsonObject;

.field private rootView:Landroid/view/View;

.field private state:I

.field private subSceneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private wholeSceneIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->IDLE:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->getState()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->state:I

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->rootView:Landroid/view/View;

    .line 20
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->listener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    .line 21
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->subSceneList:Ljava/util/List;

    .line 22
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->idList:Ljava/util/List;

    .line 24
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->wholeSceneIds:Ljava/util/List;

    const/4 v1, 0x1

    .line 26
    iput-boolean v1, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isWholeScene:Z

    const/4 v1, 0x0

    .line 28
    iput v1, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->addSubSceneNum:I

    .line 38
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->props:Lcom/google/gson/JsonObject;

    .line 48
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->displayLocation:Ljava/lang/String;

    .line 119
    iput-boolean v1, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isContainNotChildrenView:Z

    .line 121
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->notChildrenViewList:Ljava/util/List;

    .line 122
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->notChildrenViewIdList:Ljava/util/List;

    .line 174
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->lastUpdateStr:Ljava/lang/String;

    .line 175
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->lastAddStr:Ljava/lang/String;

    .line 193
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->eventListener:Lcom/xiaopeng/speech/vui/listener/IVuiEventListener;

    .line 203
    iput-boolean v1, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isBuild:Z

    .line 213
    iput-boolean v1, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isBuildComplete:Z

    return-void
.end method


# virtual methods
.method public getDisplayLocation()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->displayLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getElementChangedListener()Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->elementChangedListener:Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    return-object v0
.end method

.method public getEventListener()Lcom/xiaopeng/speech/vui/listener/IVuiEventListener;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->eventListener:Lcom/xiaopeng/speech/vui/listener/IVuiEventListener;

    return-object v0
.end method

.method public getIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->idList:Ljava/util/List;

    return-object v0
.end method

.method public getLastAddStr()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->lastAddStr:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdateStr()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->lastUpdateStr:Ljava/lang/String;

    return-object v0
.end method

.method public getListener()Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->listener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    return-object v0
.end method

.method public getNotChildrenViewIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->notChildrenViewIdList:Ljava/util/List;

    return-object v0
.end method

.method public getNotChildrenViewList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->notChildrenViewList:Ljava/util/List;

    return-object v0
.end method

.method public getProps()Lcom/google/gson/JsonObject;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->props:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->state:I

    return v0
.end method

.method public getSubSceneList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->subSceneList:Ljava/util/List;

    return-object v0
.end method

.method public getWholeSceneId()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->wholeSceneIds:Ljava/util/List;

    return-object v0
.end method

.method public isBuild()Z
    .locals 1

    .line 206
    iget-boolean v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isBuild:Z

    return v0
.end method

.method public isBuildComplete()Z
    .locals 1

    .line 216
    iget-boolean v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isBuildComplete:Z

    return v0
.end method

.method public isContainNotChildrenView()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isContainNotChildrenView:Z

    return v0
.end method

.method public isFull()Z
    .locals 3

    .line 55
    iget-boolean v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isWholeScene:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->subSceneList:Ljava/util/List;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->addSubSceneNum:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v2, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isWholeScene()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isWholeScene:Z

    return v0
.end method

.method public reset(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 156
    sget-object v0, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->IDLE:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->getState()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->state:I

    :cond_0
    const/4 v0, 0x0

    .line 158
    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isContainNotChildrenView:Z

    const/4 v1, 0x0

    .line 159
    iput-object v1, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->notChildrenViewList:Ljava/util/List;

    .line 160
    iput-object v1, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->notChildrenViewIdList:Ljava/util/List;

    .line 161
    iput v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->addSubSceneNum:I

    .line 162
    iput-object v1, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->lastUpdateStr:Ljava/lang/String;

    .line 163
    iput-object v1, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->lastAddStr:Ljava/lang/String;

    .line 164
    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isBuild:Z

    .line 165
    iput-object v1, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->subSceneList:Ljava/util/List;

    .line 166
    iput-object v1, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->wholeSceneIds:Ljava/util/List;

    .line 167
    iput-object v1, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->idList:Ljava/util/List;

    .line 168
    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isBuildComplete:Z

    if-eqz p1, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->resetViewInfo()V

    :cond_1
    return-void
.end method

.method public resetViewInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->rootView:Landroid/view/View;

    .line 150
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->listener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    .line 151
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->eventListener:Lcom/xiaopeng/speech/vui/listener/IVuiEventListener;

    .line 152
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->elementChangedListener:Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    return-void
.end method

.method public setBuild(Z)V
    .locals 0

    .line 210
    iput-boolean p1, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isBuild:Z

    return-void
.end method

.method public setBuildComplete(Z)V
    .locals 0

    .line 220
    iput-boolean p1, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isBuildComplete:Z

    return-void
.end method

.method public setContainNotChildrenView(Z)V
    .locals 0

    .line 125
    iput-boolean p1, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isContainNotChildrenView:Z

    return-void
.end method

.method public setDisplayLocation(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->displayLocation:Ljava/lang/String;

    return-void
.end method

.method public setElementChangedListener(Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->elementChangedListener:Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    return-void
.end method

.method public setEventListener(Lcom/xiaopeng/speech/vui/listener/IVuiEventListener;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->eventListener:Lcom/xiaopeng/speech/vui/listener/IVuiEventListener;

    return-void
.end method

.method public setIdList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->idList:Ljava/util/List;

    return-void
.end method

.method public setLastAddStr(Ljava/lang/String;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->lastAddStr:Ljava/lang/String;

    return-void
.end method

.method public setLastUpdateStr(Ljava/lang/String;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->lastUpdateStr:Ljava/lang/String;

    return-void
.end method

.method public setListener(Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->listener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    return-void
.end method

.method public setNotChildrenViewIdList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->notChildrenViewIdList:Ljava/util/List;

    return-void
.end method

.method public setNotChildrenViewList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->notChildrenViewList:Ljava/util/List;

    return-void
.end method

.method public setProps(Lcom/google/gson/JsonObject;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->props:Lcom/google/gson/JsonObject;

    return-void
.end method

.method public setRootView(Landroid/view/View;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->rootView:Landroid/view/View;

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->state:I

    return-void
.end method

.method public setSubSceneList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->subSceneList:Ljava/util/List;

    return-void
.end method

.method public setWholeScene(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isWholeScene:Z

    return-void
.end method

.method public setWholeSceneId(Ljava/lang/String;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->wholeSceneIds:Ljava/util/List;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->wholeSceneIds:Ljava/util/List;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->wholeSceneIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->wholeSceneIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public updateAddSubSceneNum()V
    .locals 1

    .line 51
    iget v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->addSubSceneNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->addSubSceneNum:I

    return-void
.end method
