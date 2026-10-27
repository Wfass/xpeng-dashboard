.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicDownloadBean$DataBean$ListBean;
.super Ljava/lang/Object;
.source "MusicDownloadBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicDownloadBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListBean"
.end annotation


# instance fields
.field private fileUrl:Ljava/lang/String;

.field private quality:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFileUrl()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicDownloadBean$DataBean$ListBean;->fileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getQuality()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicDownloadBean$DataBean$ListBean;->quality:Ljava/lang/String;

    return-object v0
.end method

.method public setFileUrl(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicDownloadBean$DataBean$ListBean;->fileUrl:Ljava/lang/String;

    return-void
.end method

.method public setQuality(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicDownloadBean$DataBean$ListBean;->quality:Ljava/lang/String;

    return-void
.end method
