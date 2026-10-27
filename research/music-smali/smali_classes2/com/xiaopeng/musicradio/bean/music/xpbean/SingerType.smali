.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;
.super Ljava/lang/Object;
.source "SingerType.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private areaCode:Ljava/lang/String;

.field private areaName:Ljava/lang/String;

.field private typeCode:Ljava/lang/String;

.field private typeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAreaCode()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;->areaCode:Ljava/lang/String;

    return-object v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;->areaName:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeCode()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;->typeCode:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;->typeName:Ljava/lang/String;

    return-object v0
.end method

.method public setAreaCode(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;->areaCode:Ljava/lang/String;

    return-void
.end method

.method public setAreaName(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;->areaName:Ljava/lang/String;

    return-void
.end method

.method public setTypeCode(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;->typeCode:Ljava/lang/String;

    return-void
.end method

.method public setTypeName(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;->typeName:Ljava/lang/String;

    return-void
.end method
