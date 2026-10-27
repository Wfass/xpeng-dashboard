.class public Lcom/xiaopeng/speech/protocol/bean/config/OperationInfoBean;
.super Ljava/lang/Object;
.source "OperationInfoBean.java"


# annotations
.annotation runtime Lcom/xiaopeng/speech/common/util/DontProguardClass;
.end annotation


# instance fields
.field private data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/speech/protocol/bean/config/OperationBean;",
            ">;"
        }
    .end annotation
.end field

.field private isOpened:Z

.field private subTitle:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/speech/protocol/bean/config/OperationBean;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/config/OperationInfoBean;->data:Ljava/util/Map;

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/config/OperationInfoBean;->subTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/config/OperationInfoBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isOpened()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/xiaopeng/speech/protocol/bean/config/OperationInfoBean;->isOpened:Z

    return v0
.end method

.method public setData(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/speech/protocol/bean/config/OperationBean;",
            ">;)V"
        }
    .end annotation

    .line 46
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/xiaopeng/speech/protocol/bean/config/OperationBean;>;"
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/config/OperationInfoBean;->data:Ljava/util/Map;

    .line 47
    return-void
.end method

.method public setOpened(Z)V
    .locals 0
    .param p1, "opened"    # Z

    .line 22
    iput-boolean p1, p0, Lcom/xiaopeng/speech/protocol/bean/config/OperationInfoBean;->isOpened:Z

    .line 23
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "subTitle"    # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/config/OperationInfoBean;->subTitle:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/config/OperationInfoBean;->title:Ljava/lang/String;

    .line 31
    return-void
.end method
