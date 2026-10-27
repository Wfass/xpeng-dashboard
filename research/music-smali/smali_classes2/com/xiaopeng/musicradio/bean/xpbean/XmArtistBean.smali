.class public Lcom/xiaopeng/musicradio/bean/xpbean/XmArtistBean;
.super Ljava/lang/Object;
.source "XmArtistBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private id:J

.field private logo:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XmArtistBean;->id:J

    return-wide v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XmArtistBean;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XmArtistBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setId(J)V
    .locals 0

    .line 26
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XmArtistBean;->id:J

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XmArtistBean;->logo:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XmArtistBean;->name:Ljava/lang/String;

    return-void
.end method
