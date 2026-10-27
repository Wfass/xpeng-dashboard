.class public Lcom/xiaopeng/musicradio/bean/user/KugoLoginResultBean$DataBean;
.super Ljava/lang/Object;
.source "KugoLoginResultBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/user/KugoLoginResultBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/user/KugoLoginResultBean$DataBean$InfoListBean;
    }
.end annotation


# instance fields
.field private info_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/user/KugoLoginResultBean$DataBean$InfoListBean;",
            ">;"
        }
    .end annotation
.end field

.field private nickname:Ljava/lang/String;

.field private pic:Ljava/lang/String;

.field private sex:I

.field private token:Ljava/lang/String;

.field private userid:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/user/KugoLoginResultBean$DataBean$InfoListBean;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/user/KugoLoginResultBean$DataBean;->info_list:Ljava/util/List;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/user/KugoLoginResultBean$DataBean;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/user/KugoLoginResultBean$DataBean;->pic:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/user/KugoLoginResultBean$DataBean;->sex:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/user/KugoLoginResultBean$DataBean;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserid()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/user/KugoLoginResultBean$DataBean;->userid:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/user/KugoLoginResultBean$DataBean;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setInfo_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/user/KugoLoginResultBean$DataBean$InfoListBean;",
            ">;)V"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/user/KugoLoginResultBean$DataBean;->info_list:Ljava/util/List;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/user/KugoLoginResultBean$DataBean;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/user/KugoLoginResultBean$DataBean;->pic:Ljava/lang/String;

    return-void
.end method

.method public setSex(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/user/KugoLoginResultBean$DataBean;->sex:I

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/user/KugoLoginResultBean$DataBean;->token:Ljava/lang/String;

    return-void
.end method

.method public setUserid(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/user/KugoLoginResultBean$DataBean;->userid:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/user/KugoLoginResultBean$DataBean;->username:Ljava/lang/String;

    return-void
.end method
