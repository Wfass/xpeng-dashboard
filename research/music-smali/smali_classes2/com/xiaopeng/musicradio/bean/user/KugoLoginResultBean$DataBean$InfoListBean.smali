.class public Lcom/xiaopeng/musicradio/bean/user/KugoLoginResultBean$DataBean$InfoListBean;
.super Ljava/lang/Object;
.source "KugoLoginResultBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/user/KugoLoginResultBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InfoListBean"
.end annotation


# instance fields
.field private nickname:Ljava/lang/String;

.field private pic:Ljava/lang/String;

.field private userid:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/user/KugoLoginResultBean$DataBean$InfoListBean;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/user/KugoLoginResultBean$DataBean$InfoListBean;->pic:Ljava/lang/String;

    return-object v0
.end method

.method public getUserid()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/user/KugoLoginResultBean$DataBean$InfoListBean;->userid:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/user/KugoLoginResultBean$DataBean$InfoListBean;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/user/KugoLoginResultBean$DataBean$InfoListBean;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/user/KugoLoginResultBean$DataBean$InfoListBean;->pic:Ljava/lang/String;

    return-void
.end method

.method public setUserid(Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/user/KugoLoginResultBean$DataBean$InfoListBean;->userid:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/user/KugoLoginResultBean$DataBean$InfoListBean;->username:Ljava/lang/String;

    return-void
.end method
