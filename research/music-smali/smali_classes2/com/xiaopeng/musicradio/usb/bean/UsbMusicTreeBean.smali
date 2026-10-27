.class public Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;
.super Ljava/lang/Object;
.source "UsbMusicTreeBean.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private beanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation
.end field

.field private foldList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;",
            ">;"
        }
    .end annotation
.end field

.field private path:Ljava/lang/String;

.field private pathPinYinLower:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean$1;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->beanList:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->foldList:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->beanList:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->foldList:Ljava/util/List;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->path:Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->beanList:Ljava/util/List;

    .line 30
    sget-object v0, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->foldList:Ljava/util/List;

    return-void
.end method

.method private static synthetic a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)I
    .locals 4

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    if-nez p1, :cond_2

    const/4 p0, 0x1

    return p0

    .line 162
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getCreatime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getCreatime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getCreatime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getCreatime()J

    move-result-wide p0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getFileSize()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getFileSize()J

    move-result-wide p0

    :goto_0
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method private static synthetic a(Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;)I
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x1

    if-nez p1, :cond_2

    return v2

    .line 177
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->d()Ljava/lang/String;

    move-result-object v3

    .line 178
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->d()Ljava/lang/String;

    move-result-object v4

    .line 177
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v0

    .line 180
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    return v1

    .line 182
    :cond_4
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    return v2

    .line 185
    :cond_5
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->d()Ljava/lang/String;

    move-result-object p0

    .line 186
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$MzHAPVZXxs_5C0ba2ezsRk-jZbE(Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->a(Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$aEZ_FJYsmhRA0LgO1f_jMldrg28(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->beanList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public declared-synchronized a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 1

    monitor-enter p0

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->beanList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;)V
    .locals 1

    monitor-enter p0

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->foldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->path:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->foldList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public declared-synchronized b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 1

    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->beanList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;)Z
    .locals 1

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->foldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 1

    monitor-enter p0

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->beanList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->beanList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 69
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->path:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->path:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->pathPinYinLower:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/by;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->pathPinYinLower:Ljava/lang/String;

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->pathPinYinLower:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 2

    .line 150
    monitor-enter p0

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->beanList:Ljava/util/List;

    sget-object v1, Lcom/xiaopeng/musicradio/usb/bean/-$$Lambda$UsbMusicTreeBean$aEZ_FJYsmhRA0LgO1f_jMldrg28;->INSTANCE:Lcom/xiaopeng/musicradio/usb/bean/-$$Lambda$UsbMusicTreeBean$aEZ_FJYsmhRA0LgO1f_jMldrg28;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 164
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 165
    monitor-enter p0

    .line 166
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->foldList:Ljava/util/List;

    sget-object v1, Lcom/xiaopeng/musicradio/usb/bean/-$$Lambda$UsbMusicTreeBean$MzHAPVZXxs_5C0ba2ezsRk-jZbE;->INSTANCE:Lcom/xiaopeng/musicradio/usb/bean/-$$Lambda$UsbMusicTreeBean$MzHAPVZXxs_5C0ba2ezsRk-jZbE;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 189
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 164
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 102
    :cond_1
    check-cast p1, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->path:Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->path:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 108
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->path:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->beanList:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->foldList:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UsbMusicTreeBean{path=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", beanList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->beanList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", foldList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->foldList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 144
    iget-object p2, p0, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->path:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object p2, p0, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->beanList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 146
    iget-object p2, p0, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->foldList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
