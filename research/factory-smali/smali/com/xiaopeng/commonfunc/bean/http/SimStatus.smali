.class public Lcom/xiaopeng/commonfunc/bean/http/SimStatus;
.super Ljava/lang/Object;
.source "SimStatus.java"


# instance fields
.field private mActivate:Ljava/lang/String;

.field private mRestFlow:Ljava/lang/String;

.field private mTotalFlow:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/bean/http/SimStatus;->resetData()V

    .line 13
    return-void
.end method


# virtual methods
.method public getActivate()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/http/SimStatus;->mActivate:Ljava/lang/String;

    return-object v0
.end method

.method public getRestFlow()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/http/SimStatus;->mRestFlow:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalFlow()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/http/SimStatus;->mTotalFlow:Ljava/lang/String;

    return-object v0
.end method

.method public resetData()V
    .locals 1

    .line 16
    const-string v0, "LOADING..."

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/bean/http/SimStatus;->mActivate:Ljava/lang/String;

    .line 17
    const-string v0, "LOADING..."

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/bean/http/SimStatus;->mTotalFlow:Ljava/lang/String;

    .line 18
    const-string v0, "LOADING..."

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/bean/http/SimStatus;->mRestFlow:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setActivate(Ljava/lang/String;)V
    .locals 0
    .param p1, "mActivate"    # Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/http/SimStatus;->mActivate:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setRestFlow(Ljava/lang/String;)V
    .locals 0
    .param p1, "mRestFlow"    # Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/http/SimStatus;->mRestFlow:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setTotalFlow(Ljava/lang/String;)V
    .locals 0
    .param p1, "mTotalFlow"    # Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/http/SimStatus;->mTotalFlow:Ljava/lang/String;

    .line 35
    return-void
.end method
