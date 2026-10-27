.class public Larh;
.super Ljava/lang/Object;
.source "MusicSongBeanConverter.java"

# interfaces
.implements Lorg/greenrobot/greendao/converter/PropertyConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/greenrobot/greendao/converter/PropertyConverter<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;
    .locals 1

    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 17
    :cond_0
    const-class v0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    return-object p1
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 25
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic convertToDatabaseValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    invoke-virtual {p0, p1}, Larh;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic convertToEntityProperty(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Larh;->a(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    move-result-object p1

    return-object p1
.end method
