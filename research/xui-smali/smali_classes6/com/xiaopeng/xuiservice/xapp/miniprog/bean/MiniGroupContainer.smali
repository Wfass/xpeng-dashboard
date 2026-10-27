.class public Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniGroupContainer;
.super Ljava/lang/Object;
.source "MiniGroupContainer.java"


# instance fields
.field private contentType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content_type"
    .end annotation
.end field

.field private mMiniGroupBean:Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniGroupBean;
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
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniGroupContainer;->contentType:I

    return v0
.end method

.method public getMiniGroupBean()Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniGroupBean;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniGroupContainer;->mMiniGroupBean:Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniGroupBean;

    return-object v0
.end method

.method public setContentType(I)V
    .locals 0
    .param p1, "contentType"    # I

    .line 28
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniGroupContainer;->contentType:I

    .line 29
    return-void
.end method

.method public setMiniGroupBean(Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniGroupBean;)V
    .locals 0
    .param p1, "miniGroupBean"    # Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniGroupBean;

    .line 20
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniGroupContainer;->mMiniGroupBean:Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniGroupBean;

    .line 21
    return-void
.end method
