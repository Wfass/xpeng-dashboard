.class public Lcom/xiaopeng/xuiservice/mediacenter/bean/RadioBean;
.super Ljava/lang/Object;
.source "RadioBean.java"


# instance fields
.field private fre:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private sys:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFre()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/RadioBean;->fre:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/RadioBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/RadioBean;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getSys()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/RadioBean;->sys:Ljava/lang/String;

    return-object v0
.end method

.method public setFre(Ljava/lang/String;)V
    .locals 0
    .param p1, "fre"    # Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/RadioBean;->fre:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/RadioBean;->name:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/RadioBean;->status:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setSys(Ljava/lang/String;)V
    .locals 0
    .param p1, "sys"    # Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/RadioBean;->sys:Ljava/lang/String;

    .line 15
    return-void
.end method
