.class final Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean$1;
.super Ljava/lang/Object;
.source "SearchHistoryBean.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;
    .locals 1

    .line 83
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;

    invoke-direct {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;
    .locals 0

    .line 88
    new-array p1, p1, [Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean$1;->newArray(I)[Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;

    move-result-object p1

    return-object p1
.end method
