.class public Lcom/xiaopeng/musicradio/bean/xpbean/PlayTrackInfoBean$DataBean;
.super Ljava/lang/Object;
.source "PlayTrackInfoBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/xpbean/PlayTrackInfoBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private mIsTrackAuthorized:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "authorized"
    .end annotation
.end field

.field private mPaymentType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "paymentType"
    .end annotation
.end field

.field private mTrackId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
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
.method public getPaymentType()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/PlayTrackInfoBean$DataBean;->mPaymentType:I

    return v0
.end method

.method public getTrackId()J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/PlayTrackInfoBean$DataBean;->mTrackId:J

    return-wide v0
.end method

.method public isTrackAuthorized()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/PlayTrackInfoBean$DataBean;->mIsTrackAuthorized:Z

    return v0
.end method
