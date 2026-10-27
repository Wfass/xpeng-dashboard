.class public Lcom/xiaopeng/speech/vui/model/AppScreenNode;
.super Ljava/lang/Object;
.source "AppScreenNode.java"


# instance fields
.field public mPanelStack:Ljava/util/concurrent/ConcurrentSkipListSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSceneStack:Ljava/util/List;
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
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/AppScreenNode;->mSceneStack:Ljava/util/List;

    .line 12
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/AppScreenNode;->mPanelStack:Ljava/util/concurrent/ConcurrentSkipListSet;

    return-void
.end method


# virtual methods
.method public getPanelStack()Ljava/util/concurrent/ConcurrentSkipListSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/model/AppScreenNode;->mPanelStack:Ljava/util/concurrent/ConcurrentSkipListSet;

    return-object v0
.end method

.method public getPopPanelStackSize()I
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/model/AppScreenNode;->mPanelStack:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->size()I

    move-result v0

    return v0
.end method

.method public getSceneStack()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/model/AppScreenNode;->mSceneStack:Ljava/util/List;

    return-object v0
.end method

.method public getSceneStackSize()I
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/model/AppScreenNode;->mSceneStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public setPanelStack(Ljava/util/concurrent/ConcurrentSkipListSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/AppScreenNode;->mPanelStack:Ljava/util/concurrent/ConcurrentSkipListSet;

    return-void
.end method

.method public setSceneStack(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/AppScreenNode;->mSceneStack:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppScreenNode{mSceneStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/model/AppScreenNode;->mSceneStack:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mPanelStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/model/AppScreenNode;->mPanelStack:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
