.class public Lcom/xiaopeng/musicradio/bean/xpbean/SongBean$FileInfoBean;
.super Ljava/lang/Object;
.source "SongBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/xpbean/SongBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileInfoBean"
.end annotation


# instance fields
.field private mFileSize:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fileSize"
    .end annotation
.end field

.field private mHash:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hash"
    .end annotation
.end field

.field private mNeedVip:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "needVip"
    .end annotation
.end field

.field private mPrivilege:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "privilege"
    .end annotation
.end field

.field private mQuality:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "quality"
    .end annotation
.end field

.field final synthetic this$0:Lcom/xiaopeng/musicradio/bean/xpbean/SongBean;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/bean/xpbean/SongBean;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongBean$FileInfoBean;->this$0:Lcom/xiaopeng/musicradio/bean/xpbean/SongBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFileSize()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongBean$FileInfoBean;->mFileSize:I

    return v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongBean$FileInfoBean;->mHash:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivilege()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongBean$FileInfoBean;->mPrivilege:I

    return v0
.end method

.method public getQuality()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongBean$FileInfoBean;->mQuality:I

    return v0
.end method

.method public isNeedVip()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongBean$FileInfoBean;->mNeedVip:Z

    return v0
.end method
