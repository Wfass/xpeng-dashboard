.class public Lcom/xiaopeng/musicradio/bean/xpbean/user/BindInfoByType$DataBean;
.super Ljava/lang/Object;
.source "BindInfoByType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/xpbean/user/BindInfoByType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private headImg:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field private state:I

.field private thirdAccessToken:Ljava/lang/String;

.field private thirdId:Ljava/lang/String;

.field private thirdType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeadImg()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/BindInfoByType$DataBean;->headImg:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/BindInfoByType$DataBean;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/BindInfoByType$DataBean;->state:I

    return v0
.end method

.method public getThirdAccessToken()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/BindInfoByType$DataBean;->thirdAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdId()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/BindInfoByType$DataBean;->thirdId:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdType()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/BindInfoByType$DataBean;->thirdType:I

    return v0
.end method

.method public setHeadImg(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/BindInfoByType$DataBean;->headImg:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/BindInfoByType$DataBean;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/BindInfoByType$DataBean;->state:I

    return-void
.end method

.method public setThirdAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/BindInfoByType$DataBean;->thirdAccessToken:Ljava/lang/String;

    return-void
.end method

.method public setThirdId(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/BindInfoByType$DataBean;->thirdId:Ljava/lang/String;

    return-void
.end method

.method public setThirdType(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/BindInfoByType$DataBean;->thirdType:I

    return-void
.end method
