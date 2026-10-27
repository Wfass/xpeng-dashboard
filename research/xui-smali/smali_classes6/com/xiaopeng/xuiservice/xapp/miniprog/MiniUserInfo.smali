.class public Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniUserInfo;
.super Ljava/lang/Object;
.source "MiniUserInfo.java"


# instance fields
.field private isLogin:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isLogin"
    .end annotation
.end field

.field private userAvatar:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userAvatar"
    .end annotation
.end field

.field private userKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userKey"
    .end annotation
.end field

.field private userNick:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userNick"
    .end annotation
.end field

.field private userRoute:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userRoute"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniUserInfo;->isLogin:Z

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniUserInfo;->userAvatar:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniUserInfo;->userKey:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniUserInfo;->userNick:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniUserInfo;->userRoute:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getUserAvatar()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniUserInfo;->userAvatar:Ljava/lang/String;

    return-object v0
.end method

.method public getUserKey()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniUserInfo;->userKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUserNick()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniUserInfo;->userNick:Ljava/lang/String;

    return-object v0
.end method

.method public getUserRoute()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniUserInfo;->userRoute:Ljava/lang/String;

    return-object v0
.end method

.method public isLogin()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniUserInfo;->isLogin:Z

    return v0
.end method

.method public setLogin(Z)V
    .locals 0
    .param p1, "login"    # Z

    .line 30
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniUserInfo;->isLogin:Z

    .line 31
    return-void
.end method

.method public setUserAvatar(Ljava/lang/String;)V
    .locals 0
    .param p1, "userAvatar"    # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniUserInfo;->userAvatar:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setUserKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "userKey"    # Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniUserInfo;->userKey:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setUserNick(Ljava/lang/String;)V
    .locals 0
    .param p1, "userNick"    # Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniUserInfo;->userNick:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setUserRoute(Ljava/lang/String;)V
    .locals 0
    .param p1, "userRoute"    # Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniUserInfo;->userRoute:Ljava/lang/String;

    .line 63
    return-void
.end method
