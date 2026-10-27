.class public Lcom/xiaopeng/musicradio/utils/aj;
.super Ljava/lang/Object;
.source "ListSignUtil.java"


# static fields
.field private static a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/utils/aj;->a:Landroid/util/SparseArray;

    return-void
.end method

.method public static a()Lcom/xiaopeng/musicradio/bean/ListSignBean;
    .locals 2

    .line 75
    new-instance v0, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;-><init>()V

    const-string v1, "listsign_search_song"

    .line 76
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setPrefix(Ljava/lang/String;)V

    const-string v1, "new_music_radio"

    .line 77
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setExtra(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(J)Lcom/xiaopeng/musicradio/bean/ListSignBean;
    .locals 2

    .line 82
    new-instance v0, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;-><init>()V

    const-string v1, "headspeech"

    .line 83
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setPrefix(Ljava/lang/String;)V

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setCollectId(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;
    .locals 2

    .line 66
    new-instance v0, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;-><init>()V

    const-string v1, "listsign_usb_music"

    .line 67
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setPrefix(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setTag(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setCollectId(Ljava/lang/String;)V

    const-string p0, "usb_music_extra"

    .line 70
    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setExtra(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 4

    .line 99
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    .line 100
    sget-object v1, Lcom/xiaopeng/musicradio/utils/aj;->a:Landroid/util/SparseArray;

    add-int v2, p0, v0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    const/16 v3, 0xa

    if-eq p0, v3, :cond_4

    const/16 v3, 0x14

    if-eq p0, v3, :cond_3

    const/16 v3, 0x24

    if-eq p0, v3, :cond_2

    const/16 v3, 0x32

    if-eq p0, v3, :cond_1

    goto :goto_0

    .line 117
    :cond_1
    new-instance v1, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;-><init>()V

    .line 118
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listsign_collect_music_"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setPrefix(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_2
    new-instance v1, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;-><init>()V

    const-string p0, "listsign_user_album"

    .line 108
    invoke-virtual {v1, p0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setPrefix(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_3
    new-instance v1, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;-><init>()V

    const-string p0, "listsign_blue_music"

    .line 113
    invoke-virtual {v1, p0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setPrefix(Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_4
    new-instance v1, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;-><init>()V

    .line 123
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listsign_history_music_"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setPrefix(Ljava/lang/String;)V

    :goto_0
    if-eqz v1, :cond_5

    const-string p0, "new_music_radio"

    .line 129
    invoke-virtual {v1, p0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setExtra(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_5
    const-string p0, ""

    .line 132
    :goto_1
    sget-object v0, Lcom/xiaopeng/musicradio/utils/aj;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .line 40
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    const-class v0, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    invoke-static {p0, v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    if-eqz p0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->getPrefix()Ljava/lang/String;

    move-result-object p0

    const-string v0, "listsign_local_rm_music"

    .line 44
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/String;I)Z
    .locals 2

    .line 156
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 157
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "-1000"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 161
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/aj;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p1, v1

    :cond_1
    return p1
.end method

.method public static a(Ljava/lang/String;J)Z
    .locals 2

    .line 89
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "headspeech"

    .line 90
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\"collectId\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "\","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    .line 137
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-1000_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 2

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-1000_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    .line 53
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    const-class v0, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    invoke-static {p0, v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    if-eqz p0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->getPrefix()Ljava/lang/String;

    move-result-object p0

    const-string v0, "listsign_usb_music"

    .line 57
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Ljava/lang/String;I)Z
    .locals 2

    .line 169
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 170
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "-1003"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 174
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/aj;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p1, v1

    :cond_1
    return p1
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    .line 146
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-1003_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 2

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-1003_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
