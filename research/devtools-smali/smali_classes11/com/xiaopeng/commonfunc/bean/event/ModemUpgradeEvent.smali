.class public Lcom/xiaopeng/commonfunc/bean/event/ModemUpgradeEvent;
.super Ljava/lang/Object;
.source "ModemUpgradeEvent.java"


# instance fields
.field private isSuccess:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean p1, p0, Lcom/xiaopeng/commonfunc/bean/event/ModemUpgradeEvent;->isSuccess:Z

    .line 12
    return-void
.end method


# virtual methods
.method public isSuccess()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/xiaopeng/commonfunc/bean/event/ModemUpgradeEvent;->isSuccess:Z

    return v0
.end method

.method public setSuccess(Z)V
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/xiaopeng/commonfunc/bean/event/ModemUpgradeEvent;->isSuccess:Z

    .line 20
    return-void
.end method
