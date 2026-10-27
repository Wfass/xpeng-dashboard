.class public Lasj$x;
.super Ljava/lang/Object;
.source "UserEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lasj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "x"
.end annotation


# instance fields
.field private a:J

.field private b:Z

.field private c:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;


# direct methods
.method public constructor <init>(JZLcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V
    .locals 0

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput-wide p1, p0, Lasj$x;->a:J

    .line 248
    iput-boolean p3, p0, Lasj$x;->b:Z

    .line 249
    iput-object p4, p0, Lasj$x;->c:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 253
    iget-wide v0, p0, Lasj$x;->a:J

    return-wide v0
.end method

.method public b()Z
    .locals 1

    .line 257
    iget-boolean v0, p0, Lasj$x;->b:Z

    return v0
.end method

.method public c()Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;
    .locals 1

    .line 261
    iget-object v0, p0, Lasj$x;->c:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    return-object v0
.end method
