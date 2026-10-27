.class public Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;
.super Ljava/lang/Object;
.source "ServerBean.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/xmart/IServerBean;


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

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public code()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;->mCode:I

    return v0
.end method

.method public code(I)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;->mCode:I

    return-void
.end method

.method public data()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public data(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;->mData:Ljava/lang/String;

    return-void
.end method

.method public message()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;->mMsg:Ljava/lang/String;

    return-object v0
.end method

.method public message(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;->mMsg:Ljava/lang/String;

    return-void
.end method
