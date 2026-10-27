.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean$ListBean;
.super Ljava/lang/Object;
.source "HotRadioResult.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListBean"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private listenNum:I

.field private radioId:Ljava/lang/String;

.field private radioName:Ljava/lang/String;

.field private radioPic:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 88
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean$ListBean;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean$ListBean;->radioId:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean$ListBean;->radioId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 91
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getListenNum()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean$ListBean;->listenNum:I

    return v0
.end method

.method public getRadioId()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean$ListBean;->radioId:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioName()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean$ListBean;->radioName:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioPic()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean$ListBean;->radioPic:Ljava/lang/String;

    return-object v0
.end method

.method public setListenNum(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean$ListBean;->listenNum:I

    return-void
.end method

.method public setRadioId(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean$ListBean;->radioId:Ljava/lang/String;

    return-void
.end method

.method public setRadioName(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean$ListBean;->radioName:Ljava/lang/String;

    return-void
.end method

.method public setRadioPic(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean$ListBean;->radioPic:Ljava/lang/String;

    return-void
.end method
