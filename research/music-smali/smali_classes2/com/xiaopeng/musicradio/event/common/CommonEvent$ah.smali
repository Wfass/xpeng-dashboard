.class public Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;
.super Ljava/lang/Object;
.source "CommonEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/event/common/CommonEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ah"
.end annotation


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;->b:Z

    .line 96
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;->a:Z

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;->b:Z

    .line 100
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;->a:Z

    .line 101
    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;->b:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;->a:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;->b:Z

    return v0
.end method
