.class public Lcom/xiaopeng/musicradio/bean/user/KugoLoginResultBean;
.super Ljava/lang/Object;
.source "KugoLoginResultBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/user/KugoLoginResultBean$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/xiaopeng/musicradio/bean/user/KugoLoginResultBean$DataBean;

.field private error_code:I

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/user/KugoLoginResultBean$DataBean;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/user/KugoLoginResultBean;->data:Lcom/xiaopeng/musicradio/bean/user/KugoLoginResultBean$DataBean;

    return-object v0
.end method

.method public getError_code()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/user/KugoLoginResultBean;->error_code:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/user/KugoLoginResultBean;->status:I

    return v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/user/KugoLoginResultBean$DataBean;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/user/KugoLoginResultBean;->data:Lcom/xiaopeng/musicradio/bean/user/KugoLoginResultBean$DataBean;

    return-void
.end method

.method public setError_code(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/user/KugoLoginResultBean;->error_code:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/user/KugoLoginResultBean;->status:I

    return-void
.end method
