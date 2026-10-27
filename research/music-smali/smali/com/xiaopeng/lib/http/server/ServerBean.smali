.class public Lcom/xiaopeng/lib/http/server/ServerBean;
.super Ljava/lang/Object;
.source "ServerBean.java"


# instance fields
.field private mCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "code"
    .end annotation
.end field

.field private mData:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field

.field private mMsg:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "msg"
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
.method public getCode()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/xiaopeng/lib/http/server/ServerBean;->mCode:I

    return v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/lib/http/server/ServerBean;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/lib/http/server/ServerBean;->mMsg:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/xiaopeng/lib/http/server/ServerBean;->mCode:I

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/lib/http/server/ServerBean;->mData:Ljava/lang/String;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/lib/http/server/ServerBean;->mMsg:Ljava/lang/String;

    return-void
.end method
