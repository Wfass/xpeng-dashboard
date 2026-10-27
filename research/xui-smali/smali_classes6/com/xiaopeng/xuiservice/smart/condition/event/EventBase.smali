.class public abstract Lcom/xiaopeng/xuiservice/smart/condition/event/EventBase;
.super Ljava/lang/Object;
.source "EventBase.java"


# instance fields
.field public final timestamp:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-wide p1, p0, Lcom/xiaopeng/xuiservice/smart/condition/event/EventBase;->timestamp:J

    .line 9
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 0

    .line 17
    return-void
.end method

.method public save()V
    .locals 0

    .line 13
    return-void
.end method
