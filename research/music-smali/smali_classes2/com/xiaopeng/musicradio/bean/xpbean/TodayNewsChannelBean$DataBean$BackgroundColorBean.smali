.class public Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$BackgroundColorBean;
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
    name = "BackgroundColorBean"
.end annotation


# instance fields
.field private mEndColorDaytime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "endColorDaytime"
    .end annotation
.end field

.field private mEndColorNight:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "endColorNight"
    .end annotation
.end field

.field private mStartColorDaytime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "startColorDaytime"
    .end annotation
.end field

.field private mStartColorNight:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "startColorNight"
    .end annotation
.end field

.field final synthetic this$0:Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$BackgroundColorBean;->this$0:Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndColorDaytime()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$BackgroundColorBean;->mEndColorDaytime:Ljava/lang/String;

    return-object v0
.end method

.method public getEndColorNight()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$BackgroundColorBean;->mEndColorNight:Ljava/lang/String;

    return-object v0
.end method

.method public getStartColorDaytime()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$BackgroundColorBean;->mStartColorDaytime:Ljava/lang/String;

    return-object v0
.end method

.method public getStartColorNight()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$BackgroundColorBean;->mStartColorNight:Ljava/lang/String;

    return-object v0
.end method
