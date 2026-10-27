.class public Lcom/xiaopeng/musicradio/bean/xpbean/MusicXingHaiListBean$XHDataBean$XingHaiBean;
.super Ljava/lang/Object;
.source "MusicXingHaiListBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/xpbean/MusicXingHaiListBean$XHDataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XingHaiBean"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mDesc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "desc"
    .end annotation
.end field

.field private mLen:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "len"
    .end annotation
.end field

.field private mName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private mPic:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pic"
    .end annotation
.end field

.field private mQipuId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "qipuId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicXingHaiListBean$XHDataBean$XingHaiBean;->mDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicXingHaiListBean$XHDataBean$XingHaiBean;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicXingHaiListBean$XHDataBean$XingHaiBean;->mPic:Ljava/lang/String;

    return-object v0
.end method

.method public getQipuId()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicXingHaiListBean$XHDataBean$XingHaiBean;->mQipuId:Ljava/lang/String;

    return-object v0
.end method

.method public getmLen()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicXingHaiListBean$XHDataBean$XingHaiBean;->mLen:I

    return v0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicXingHaiListBean$XHDataBean$XingHaiBean;->mDesc:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicXingHaiListBean$XHDataBean$XingHaiBean;->mName:Ljava/lang/String;

    return-void
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicXingHaiListBean$XHDataBean$XingHaiBean;->mPic:Ljava/lang/String;

    return-void
.end method

.method public setQipuId(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicXingHaiListBean$XHDataBean$XingHaiBean;->mQipuId:Ljava/lang/String;

    return-void
.end method

.method public setmLen(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicXingHaiListBean$XHDataBean$XingHaiBean;->mLen:I

    return-void
.end method
