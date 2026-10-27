.class public Lcom/xiaopeng/commonfunc/bean/event/RebootPolicyEvent;
.super Ljava/lang/Object;
.source "RebootPolicyEvent.java"


# instance fields
.field private flag:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean p1, p0, Lcom/xiaopeng/commonfunc/bean/event/RebootPolicyEvent;->flag:Z

    .line 13
    return-void
.end method


# virtual methods
.method public isFlag()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/xiaopeng/commonfunc/bean/event/RebootPolicyEvent;->flag:Z

    return v0
.end method

.method public setFlag(Z)V
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/xiaopeng/commonfunc/bean/event/RebootPolicyEvent;->flag:Z

    .line 21
    return-void
.end method
