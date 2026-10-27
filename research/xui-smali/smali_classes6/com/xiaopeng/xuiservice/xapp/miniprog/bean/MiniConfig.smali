.class public Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniConfig;
.super Ljava/lang/Object;
.source "MiniConfig.java"


# instance fields
.field private launchWidth:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "launch_width"
    .end annotation
.end field

.field private page:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "page"
    .end annotation
.end field

.field private query:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "query"
    .end annotation
.end field

.field private saveToRecent:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "save_to_recent"
    .end annotation
.end field

.field private showType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "show_type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/16 v0, 0x15

    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniConfig;->showType:I

    return-void
.end method


# virtual methods
.method public getLaunchWidth()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniConfig;->launchWidth:I

    return v0
.end method

.method public getPage()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniConfig;->page:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniConfig;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getShowType()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniConfig;->showType:I

    return v0
.end method

.method public isSaveToRecent()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniConfig;->saveToRecent:Z

    return v0
.end method

.method public setLaunchWidth(I)V
    .locals 0
    .param p1, "launchWidth"    # I

    .line 55
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniConfig;->launchWidth:I

    .line 56
    return-void
.end method

.method public setPage(Ljava/lang/String;)V
    .locals 0
    .param p1, "page"    # Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniConfig;->page:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniConfig;->query:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setSaveToRecent(Z)V
    .locals 0
    .param p1, "saveToRecent"    # Z

    .line 47
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniConfig;->saveToRecent:Z

    .line 48
    return-void
.end method

.method public setShowType(I)V
    .locals 0
    .param p1, "showType"    # I

    .line 39
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniConfig;->showType:I

    .line 40
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MiniConfig{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "showType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniConfig;->showType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, ", saveToRecent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniConfig;->saveToRecent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, ", launchWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniConfig;->launchWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
