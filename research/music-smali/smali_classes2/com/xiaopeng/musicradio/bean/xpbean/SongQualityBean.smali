.class public Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "SongQualityBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private data:Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 204
    new-instance v0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$1;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 197
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 200
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    .line 201
    const-class v0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean;->data:Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean;->data:Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
