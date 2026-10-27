.class public Lcom/xiaopeng/musicradio/bean/mine/XpUid;
.super Ljava/lang/Object;
.source "XpUid.java"


# instance fields
.field private uid:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUid()J
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/mine/XpUid;->uid:J

    return-wide v0
.end method

.method public setUid(J)V
    .locals 0

    .line 12
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/mine/XpUid;->uid:J

    return-void
.end method
