.class public Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBeanContainer;
.super Ljava/lang/Object;
.source "MiniBeanContainer.java"


# instance fields
.field private contentType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content_type"
    .end annotation
.end field

.field private mMiniBean:Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentType()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBeanContainer;->contentType:I

    return v0
.end method

.method public getMiniBean()Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBean;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBeanContainer;->mMiniBean:Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBean;

    return-object v0
.end method

.method public setContentType(I)V
    .locals 0
    .param p1, "contentType"    # I

    .line 28
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBeanContainer;->contentType:I

    .line 29
    return-void
.end method

.method public setMiniBean(Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBean;)V
    .locals 0
    .param p1, "miniBean"    # Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBean;

    .line 20
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBeanContainer;->mMiniBean:Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBean;

    .line 21
    return-void
.end method
