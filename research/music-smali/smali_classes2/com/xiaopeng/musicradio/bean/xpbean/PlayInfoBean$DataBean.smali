.class public Lcom/xiaopeng/musicradio/bean/xpbean/PlayInfoBean$DataBean;
.super Ljava/lang/Object;
.source "PlayInfoBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/xpbean/PlayInfoBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private mIsAlbumAuthorized:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isAlbumAuthorized"
    .end annotation
.end field

.field private mIsTrackAuthorized:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isTrackAuthorized"
    .end annotation
.end field

.field private mSize:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "size"
    .end annotation
.end field

.field private mUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSize()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/PlayInfoBean$DataBean;->mSize:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/PlayInfoBean$DataBean;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isAlbumAuthorized()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/PlayInfoBean$DataBean;->mIsAlbumAuthorized:Z

    return v0
.end method

.method public isTrackAuthorized()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/PlayInfoBean$DataBean;->mIsTrackAuthorized:Z

    return v0
.end method
