.class public Lcom/xiaopeng/commonfunc/bean/event/EtcPwmEvent;
.super Ljava/lang/Object;
.source "EtcPwmEvent.java"


# instance fields
.field private final flag:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean p1, p0, Lcom/xiaopeng/commonfunc/bean/event/EtcPwmEvent;->flag:Z

    .line 12
    return-void
.end method
