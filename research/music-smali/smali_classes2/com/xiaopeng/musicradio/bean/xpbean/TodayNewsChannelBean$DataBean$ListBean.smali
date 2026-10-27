.class public Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;
.super Ljava/lang/Object;
.source "TodayNewsChannelBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListBean"
.end annotation


# instance fields
.field private mChannelId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "channelId"
    .end annotation
.end field

.field private mChannelName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "channelName"
    .end annotation
.end field

.field private mClassId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "classId"
    .end annotation
.end field

.field private mClassName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "className"
    .end annotation
.end field

.field private mColorBean:Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$BackgroundColorBean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "backgroundColor"
    .end annotation
.end field

.field private mCoverRound:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "coverRound"
    .end annotation
.end field

.field private mCoverUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "coverUrl"
    .end annotation
.end field

.field private mCoverUrlNight:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "coverUrlNight"
    .end annotation
.end field

.field private mOrderNum:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "orderNum"
    .end annotation
.end field

.field private mRelativeId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "relativeId"
    .end annotation
.end field

.field private mSlogan:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "slogan"
    .end annotation
.end field

.field private mTotal:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total"
    .end annotation
.end field

.field private mTrackInfoBos:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trackInfoBos"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->this$0:Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannelId()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->mChannelId:I

    return v0
.end method

.method public getChannelName()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->mChannelName:Ljava/lang/String;

    return-object v0
.end method

.method public getClassId()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->mClassId:I

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getColorBean()Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$BackgroundColorBean;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->mColorBean:Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$BackgroundColorBean;

    return-object v0
.end method

.method public getCoverRound()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->mCoverRound:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverUrl()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->mCoverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverUrlNight()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->mCoverUrlNight:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderNum()J
    .locals 2

    .line 86
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->mOrderNum:J

    return-wide v0
.end method

.method public getRelativeId()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->mRelativeId:Ljava/lang/String;

    return-object v0
.end method

.method public getSlogan()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->mSlogan:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->mTotal:I

    return v0
.end method

.method public getTrackInfoBos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->mTrackInfoBos:Ljava/util/List;

    return-object v0
.end method
