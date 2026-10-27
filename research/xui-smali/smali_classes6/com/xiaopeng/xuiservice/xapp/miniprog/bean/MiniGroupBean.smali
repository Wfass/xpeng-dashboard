.class public Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniGroupBean;
.super Ljava/lang/Object;
.source "MiniGroupBean.java"


# instance fields
.field private mGroupName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field private mId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private mMiniBeanContainers:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBeanContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniGroupBean;->mGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniGroupBean;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getMiniBeanContainers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBeanContainer;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniGroupBean;->mMiniBeanContainers:Ljava/util/List;

    return-object v0
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupName"    # Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniGroupBean;->mGroupName:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniGroupBean;->mId:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setMiniBeanContainers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBeanContainer;",
            ">;)V"
        }
    .end annotation

    .line 24
    .local p1, "miniBeanContainers":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBeanContainer;>;"
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniGroupBean;->mMiniBeanContainers:Ljava/util/List;

    .line 25
    return-void
.end method
