.class public Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean;
.super Ljava/lang/Object;
.source "TodayNewsChannelBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;,
        Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$BackgroundColorBean;,
        Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;
    }
.end annotation


# instance fields
.field private mList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;",
            ">;"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean;->mList:Ljava/util/List;

    return-object v0
.end method
