.class public abstract Lcom/xiaopeng/musicradio/service/a;
.super Ljava/lang/Object;
.source "AbstractService.java"


# instance fields
.field private mHasStart:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method b()V
    .locals 0

    .line 17
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/service/a;->a()V

    return-void
.end method

.method public hasStart()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/service/a;->mHasStart:Z

    return v0
.end method

.method public setStart(Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/service/a;->mHasStart:Z

    return-void
.end method
