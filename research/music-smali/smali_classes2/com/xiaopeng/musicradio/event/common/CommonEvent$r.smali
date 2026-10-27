.class public Lcom/xiaopeng/musicradio/event/common/CommonEvent$r;
.super Ljava/lang/Object;
.source "CommonEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/event/common/CommonEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "r"
.end annotation


# instance fields
.field private a:J

.field private b:Z

.field private c:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;


# direct methods
.method public constructor <init>(JZLcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 0

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$r;->a:J

    .line 281
    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$r;->b:Z

    .line 282
    iput-object p4, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$r;->c:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 286
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$r;->a:J

    return-wide v0
.end method

.method public b()Z
    .locals 1

    .line 290
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$r;->b:Z

    return v0
.end method

.method public c()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$r;->c:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    return-object v0
.end method
