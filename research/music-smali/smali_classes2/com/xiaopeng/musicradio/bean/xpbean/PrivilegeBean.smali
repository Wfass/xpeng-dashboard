.class public Lcom/xiaopeng/musicradio/bean/xpbean/PrivilegeBean;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "PrivilegeBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private data:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public isData()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/PrivilegeBean;->data:Z

    return v0
.end method

.method public setData(Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/PrivilegeBean;->data:Z

    return-void
.end method
