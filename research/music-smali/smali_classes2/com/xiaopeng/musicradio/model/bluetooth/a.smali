.class public Lcom/xiaopeng/musicradio/model/bluetooth/a;
.super Ljava/lang/Object;
.source "BluetoothMusicModel.java"

# interfaces
.implements Laqt;
.implements Lcom/xiaopeng/musicradio/common/f;
.implements Lcom/xiaopeng/musicradio/model/bluetooth/g;
.implements Lcom/xiaopeng/musicradio/model/bluetooth/h;
.implements Lcom/xiaopeng/musicradio/model/bluetooth/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/model/bluetooth/a$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field public static c:Ljava/lang/String;


# instance fields
.field private d:Lcom/xiaopeng/musicradio/model/bluetooth/c;

.field private e:Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

.field private f:J

.field private final g:Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

.field private h:J

.field private i:Z

.field private j:Lio/reactivex/disposables/Disposable;

.field private k:Lio/reactivex/disposables/Disposable;

.field private l:Lio/reactivex/disposables/Disposable;

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:I

.field private o:I

.field private p:Lio/reactivex/disposables/Disposable;

.field private q:Lask$a;

.field private r:I

.field private s:Landroid/animation/ValueAnimator;

.field private t:F

.field private u:Layj$c;

.field private v:Layj;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->g:Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    const-wide v0, 0x7fffffffffffffffL

    .line 110
    iput-wide v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->h:J

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->i:Z

    .line 119
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->m:Ljava/util/Map;

    const/4 v0, 0x0

    .line 122
    iput v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->n:I

    .line 123
    iput v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->o:I

    .line 693
    new-instance v1, Lcom/xiaopeng/musicradio/model/bluetooth/a$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a$3;-><init>(Lcom/xiaopeng/musicradio/model/bluetooth/a;)V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->q:Lask$a;

    .line 772
    iput v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->r:I

    const/4 v0, 0x0

    .line 914
    iput v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->t:F

    .line 133
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v1, Lcom/xiaopeng/musicradio/common/k$g;->music_unknow_song:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->a:Ljava/lang/String;

    .line 134
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v1, Lcom/xiaopeng/musicradio/common/k$g;->music_unknow_singer:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->c:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->g:Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    sget-object v1, Lcom/xiaopeng/musicradio/model/bluetooth/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->setSong(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->g:Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    sget-object v1, Lcom/xiaopeng/musicradio/model/bluetooth/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->setSinger(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->g:Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->setLrcContent(Ljava/lang/String;)V

    .line 139
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lanw;->a(Landroid/content/Context;)Lanw;

    move-result-object v0

    invoke-virtual {v0}, Lanw;->b()V

    .line 141
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->T()V

    goto :goto_0

    .line 143
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/model/bluetooth/a$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a$1;-><init>(Lcom/xiaopeng/musicradio/model/bluetooth/a;)V

    invoke-static {v0}, Lbql;->d(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private E()V
    .locals 2

    .line 153
    invoke-static {}, Lpp;->a()Lpp;

    move-result-object v0

    const-string v1, "/XPMusic/service/bluetooth/nfore"

    invoke-virtual {v0, v1}, Lpp;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e:Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e:Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    invoke-interface {v0, p0}, Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;->a(Lcom/xiaopeng/musicradio/model/bluetooth/g;)V

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e:Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

    invoke-interface {v0, p0}, Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;->a(Lcom/xiaopeng/musicradio/model/bluetooth/h;)V

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e:Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

    invoke-interface {v0, p0}, Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;->a(Lcom/xiaopeng/musicradio/model/bluetooth/i;)V

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e:Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;->a()V

    return-void
.end method

.method private F()Z
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAosp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/aa;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sdkVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMusicModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/aa;->a()Z

    move-result v0

    return v0
.end method

.method private G()V
    .locals 2

    .line 432
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->getPlayState()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x5

    .line 433
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bn;->a(I)V

    :cond_1
    return-void
.end method

.method private H()Z
    .locals 2

    .line 612
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private I()V
    .locals 3

    .line 622
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->H()Z

    move-result v0

    const-string v1, "BluetoothMusicModel"

    if-eqz v0, :cond_2

    .line 623
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e:Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

    if-eqz v0, :cond_0

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyStateChanged service:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e:Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e:Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

    invoke-interface {v2}, Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;->i()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "notifyStateChanged service is null"

    .line 626
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 628
    :goto_0
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e:Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;->i()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    :goto_1
    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;-><init>(II)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    const-string v0, "not bluetooth type, notifyStateChanged failed"

    .line 630
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private J()I
    .locals 2

    const-string v0, "bt_play_state"

    const/4 v1, -0x1

    .line 635
    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private K()V
    .locals 1

    .line 840
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->j:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lbnj;->a(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method private L()V
    .locals 1

    .line 883
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lbnj;->a(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method private M()V
    .locals 2

    .line 889
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->g:Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    sget-object v1, Lcom/xiaopeng/musicradio/model/bluetooth/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->setSong(Ljava/lang/String;)V

    .line 890
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->g:Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    sget-object v1, Lcom/xiaopeng/musicradio/model/bluetooth/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->setSinger(Ljava/lang/String;)V

    .line 891
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->g:Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->setDuration(I)V

    .line 892
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->g:Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->setLogo(Ljava/lang/String;)V

    .line 893
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->g:Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->setLrcContent(Ljava/lang/String;)V

    .line 894
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->g:Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->refreshUuid()V

    return-void
.end method

.method private N()V
    .locals 2

    .line 916
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->O()V

    .line 917
    iget v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->t:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->a(FF)V

    return-void
.end method

.method private O()V
    .locals 1

    .line 921
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->s:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->s:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 924
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->l:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 925
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->l:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_1
    return-void
.end method

.method private P()V
    .locals 2

    .line 930
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->O()V

    .line 931
    iget v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->t:F

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->a(FF)V

    return-void
.end method

.method private Q()V
    .locals 0

    .line 985
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->R()V

    return-void
.end method

.method private R()V
    .locals 2

    .line 1003
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->p:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 1004
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const-string v0, "BluetoothMusicModel"

    const-string v1, "dispose mSwitchToMusicDisposable"

    .line 1005
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private S()V
    .locals 3

    const-string v0, "white_list_singers"

    const-string v1, ""

    .line 1023
    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/ao;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1024
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWhiteListSingers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothMusicModel"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1025
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1027
    :try_start_0
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    .line 1028
    invoke-virtual {v1, v0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 1029
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    .line 1030
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1031
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    .line 1032
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 1033
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1035
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e:Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

    if-eqz v0, :cond_1

    .line 1036
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e:Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;->a(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private T()V
    .locals 5

    const-string v0, "com.android.bluetooth/com.android.bluetooth.avrcpcontroller.BluetoothMediaBrowserService"

    .line 1114
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindAosp mediaSrcComp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothMusicModel"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 1117
    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v1, v0}, Lcom/android/car/media/common/source/b;->a(Landroid/content/Context;Landroid/content/ComponentName;)Lcom/android/car/media/common/source/b;

    move-result-object v0

    .line 1118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindAosp mediaSrc: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "bindAosp ==> mediaSrc == null: "

    .line 1123
    invoke-static {v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1124
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/car/media/common/source/d;->a(Landroid/app/Application;I)Lcom/android/car/media/common/source/d;

    move-result-object v0

    .line 1125
    invoke-virtual {v0}, Lcom/android/car/media/common/source/d;->b()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/media/common/source/b;

    .line 1126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindAosp mediaSrcVM: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",,,,"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    .line 1128
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindAosp ===> mediaSrc: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1129
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->U()Layj;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->v:Layj;

    .line 1131
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->U()Layj;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e:Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

    .line 1132
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e:Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

    if-eqz v0, :cond_2

    .line 1133
    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;->init(Landroid/content/Context;)V

    .line 1134
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e:Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

    invoke-interface {v0, p0}, Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;->a(Lcom/xiaopeng/musicradio/model/bluetooth/i;)V

    .line 1135
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e:Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

    invoke-interface {v0, p0}, Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;->a(Lcom/xiaopeng/musicradio/model/bluetooth/g;)V

    .line 1136
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e:Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

    invoke-interface {v0, p0}, Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;->a(Lcom/xiaopeng/musicradio/model/bluetooth/h;)V

    .line 1139
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->v:Layj;

    invoke-virtual {v0}, Layj;->n()Layj$c;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->u:Layj$c;

    .line 1140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindAosp viewModel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->v:Layj;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",service:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e:Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",controller:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->u:Layj$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private U()Layj;
    .locals 2

    .line 1144
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Layj;->a(Landroid/app/Application;I)Layj;

    move-result-object v0

    return-object v0
.end method

.method private V()Layj$d;
    .locals 1

    .line 1148
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->v:Layj;

    if-eqz v0, :cond_0

    .line 1149
    invoke-virtual {v0}, Layj;->m()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layj$d;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/model/bluetooth/a;F)F
    .locals 0

    .line 71
    iput p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->t:F

    return p1
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/model/bluetooth/a;J)J
    .locals 0

    .line 71
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->h:J

    return-wide p1
.end method

.method private a(FF)V
    .locals 2

    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "volumeChange start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMusicModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 936
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->s:Landroid/animation/ValueAnimator;

    .line 937
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->s:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 938
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->s:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 939
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->s:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/xiaopeng/musicradio/model/bluetooth/a$6;

    invoke-direct {p2, p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a$6;-><init>(Lcom/xiaopeng/musicradio/model/bluetooth/a;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 946
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->s:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/model/bluetooth/a;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->E()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/model/bluetooth/a;Z)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->c(Z)V

    return-void
.end method

.method private b(F)V
    .locals 5

    .line 814
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->K()V

    .line 815
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 820
    iput v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->o:I

    const-wide/16 v0, 0x14

    const-wide/16 v2, 0x1f4

    .line 821
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, v3, v4}, Lio/reactivex/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/model/bluetooth/a$4;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/musicradio/model/bluetooth/a$4;-><init>(Lcom/xiaopeng/musicradio/model/bluetooth/a;F)V

    .line 822
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    .line 835
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 836
    invoke-virtual {p1}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->j:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/model/bluetooth/a;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->P()V

    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/model/bluetooth/a;F)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->c(F)V

    return-void
.end method

.method private c(F)V
    .locals 1

    .line 950
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "BluetoothMusicModel"

    const-string v0, "setVolumeInternal failed, in call"

    .line 951
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 954
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->l:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 955
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->l:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 957
    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 958
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->single()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/musicradio/model/bluetooth/a$7;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a$7;-><init>(Lcom/xiaopeng/musicradio/model/bluetooth/a;)V

    .line 959
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->l:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/model/bluetooth/a;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->O()V

    return-void
.end method

.method private c(Z)V
    .locals 2

    .line 341
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    const-string v0, "BluetoothMusicModel"

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->p()Z

    move-result p1

    if-nez p1, :cond_0

    .line 342
    invoke-static {}, Lbsd;->a()V

    const-string p1, "play->openSettingBlueDialog"

    .line 343
    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 347
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->isNotPlayable()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "play->isNotPlayable"

    .line 348
    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$u;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$u;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void

    .line 354
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->t()V

    .line 356
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->F()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 357
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->v:Layj;

    if-nez p1, :cond_2

    return-void

    .line 360
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->z()V

    goto :goto_0

    .line 365
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e:Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

    if-nez p1, :cond_4

    return-void

    :cond_4
    const-string v0, "bt_pause"

    .line 368
    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;->a(Ljava/lang/String;)V

    .line 369
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e:Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;->d()Z

    .line 370
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e:Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;->h()V

    :goto_0
    return-void
.end method

.method private d(I)V
    .locals 5

    .line 582
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->h:J

    sub-long/2addr v0, v2

    .line 583
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rebootPlayIfNeed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " , system: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " , time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->h:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " silence = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/g;->c()Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " focus = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lask;->a()Lask;

    move-result-object p1

    invoke-virtual {p1}, Lask;->l()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", focusName:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Layg;->a()Layg;

    move-result-object p1

    invoke-virtual {p1}, Layg;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "BluetoothMusicModel"

    invoke-static {v2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    cmp-long p1, v0, v3

    if-lez p1, :cond_1

    .line 584
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2

    invoke-virtual {p1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    cmp-long p1, v0, v3

    if-gtz p1, :cond_1

    .line 585
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/g;->c()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lask;->a()Lask;

    move-result-object p1

    invoke-virtual {p1}, Lask;->l()I

    move-result p1

    if-gtz p1, :cond_0

    invoke-static {}, Lask;->a()Lask;

    move-result-object p1

    invoke-virtual {p1}, Lask;->l()I

    move-result p1

    const/4 v0, -0x3

    if-eq p1, v0, :cond_0

    .line 586
    invoke-static {}, Layg;->a()Layg;

    move-result-object p1

    invoke-virtual {p1}, Layg;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lask;->a()Lask;

    move-result-object p1

    invoke-virtual {p1}, Lask;->l()I

    move-result p1

    if-gez p1, :cond_1

    :cond_0
    const-string p1, "rebootPlayIfNeed playByLogic"

    .line 587
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->y()V

    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    .line 591
    iput-wide v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->h:J

    return-void
.end method

.method static synthetic d(Lcom/xiaopeng/musicradio/model/bluetooth/a;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->N()V

    return-void
.end method

.method private d(Z)Z
    .locals 2

    .line 658
    invoke-static {}, Lask;->a()Lask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lask;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 659
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->r()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    .line 661
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v0, Lcom/xiaopeng/musicradio/common/k$g;->tips_can_not_play_bt_music:I

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/as;->b(Landroid/content/Context;I)V

    :cond_1
    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic e(Lcom/xiaopeng/musicradio/model/bluetooth/a;)Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e:Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

    return-object p0
.end method

.method private e(I)V
    .locals 2

    .line 640
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    .line 643
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "savePlayState() called with: playState = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMusicModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->H()Z

    move-result v0

    const-string v1, "bt_play_state"

    if-eqz v0, :cond_1

    .line 645
    invoke-static {v1, p1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    .line 649
    invoke-static {v1, p1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method static synthetic f(Lcom/xiaopeng/musicradio/model/bluetooth/a;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->o:I

    return p0
.end method

.method private f(I)V
    .locals 5

    .line 857
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->L()V

    const/4 v0, 0x0

    .line 859
    iput v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->n:I

    .line 860
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x1f4

    invoke-static {v1, v2, v3, v4, v0}, Lio/reactivex/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/model/bluetooth/a$5;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/musicradio/model/bluetooth/a$5;-><init>(Lcom/xiaopeng/musicradio/model/bluetooth/a;I)V

    .line 861
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    .line 878
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 879
    invoke-virtual {p1}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method static synthetic g(Lcom/xiaopeng/musicradio/model/bluetooth/a;)I
    .locals 2

    .line 71
    iget v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->o:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->o:I

    return v0
.end method

.method static synthetic h(Lcom/xiaopeng/musicradio/model/bluetooth/a;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->n:I

    return p0
.end method

.method static synthetic i(Lcom/xiaopeng/musicradio/model/bluetooth/a;)I
    .locals 2

    .line 71
    iget v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->n:I

    return v0
.end method

.method static synthetic j(Lcom/xiaopeng/musicradio/model/bluetooth/a;)F
    .locals 0

    .line 71
    iget p0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->t:F

    return p0
.end method

.method public static k()Lcom/xiaopeng/musicradio/model/bluetooth/a;
    .locals 1

    .line 170
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a$a;->a()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A()V
    .locals 2

    .line 1187
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->u:Layj$c;

    if-eqz v0, :cond_0

    .line 1188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pauseAosp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->u:Layj$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMusicModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1190
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->v:Layj;

    invoke-virtual {v0}, Layj;->n()Layj$c;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->u:Layj$c;

    .line 1192
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->u:Layj$c;

    if-eqz v0, :cond_1

    .line 1193
    invoke-virtual {v0}, Layj$c;->d()V

    :cond_1
    return-void
.end method

.method public B()V
    .locals 3

    .line 1198
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->V()Layj$d;

    move-result-object v0

    .line 1199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nextAosp state===>: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothMusicModel"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1200
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->u:Layj$c;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1201
    invoke-virtual {v0}, Layj$d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1202
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->u:Layj$c;

    invoke-virtual {v0}, Layj$c;->c()V

    :cond_0
    return-void
.end method

.method public C()V
    .locals 3

    .line 1208
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->V()Layj$d;

    move-result-object v0

    .line 1209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preAosp state===>: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothMusicModel"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1210
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->u:Layj$c;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1211
    invoke-virtual {v0}, Layj$d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1212
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->u:Layj$c;

    invoke-virtual {v0}, Layj$c;->b()V

    :cond_0
    return-void
.end method

.method public D()Z
    .locals 1

    .line 1218
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e:Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;->k()Z

    move-result v0

    return v0
.end method

.method public a()V
    .locals 2

    .line 383
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    invoke-static {}, Lbsd;->a()V

    return-void

    .line 387
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->isNotPlayable()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 390
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->F()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 391
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->v:Layj;

    if-nez v0, :cond_2

    return-void

    .line 394
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->G()V

    .line 395
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->B()V

    goto :goto_0

    .line 397
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e:Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

    if-nez v0, :cond_4

    return-void

    .line 400
    :cond_4
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->G()V

    .line 401
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e:Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;->f()Z

    :goto_0
    return-void
.end method

.method public a(F)V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(IZ)V
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    const-string p1, "BluetoothMusicModel"

    if-eqz p2, :cond_1

    .line 201
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->S()V

    .line 202
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->R()V

    .line 203
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->N()V

    const-string v0, "onConnectStateChanged connected!"

    .line 204
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->H()Z

    move-result p1

    if-nez p1, :cond_0

    .line 207
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    .line 208
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->d(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 211
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->d(I)V

    .line 212
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e:Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

    if-eqz p1, :cond_3

    .line 213
    invoke-interface {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;->h()V

    goto :goto_0

    .line 219
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->H()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 220
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->u()V

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bluetooth disconnected, but not reset to previous audio type :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1}, Laqr;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->Q()V

    .line 227
    :cond_3
    :goto_0
    new-instance p1, Lasa$b;

    invoke-direct {p1, p2}, Lasa$b;-><init>(Z)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    if-nez p1, :cond_5

    .line 229
    new-instance p1, Lasa$c;

    invoke-direct {p1, p2}, Lasa$c;-><init>(Z)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public a(J)V
    .locals 3

    .line 265
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->f:J

    .line 266
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->H()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 267
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;

    const/4 p2, 0x2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->getPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->getDuration()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;-><init>(IIIZ)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Layj$c;)V
    .locals 2

    .line 1157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlaybackControllerChanged playbackController: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMusicModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1159
    invoke-virtual {p1}, Layj$c;->e()V

    .line 1160
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->u:Layj$c;

    :cond_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/model/bluetooth/c;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->d:Lcom/xiaopeng/musicradio/model/bluetooth/c;

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/model/bluetooth/e;)V
    .locals 4

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMetaDataChanged() called with: metaData = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMusicModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->M()V

    .line 240
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b()Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 243
    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->g:Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->setSong(Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->g:Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    sget-object v2, Lcom/xiaopeng/musicradio/model/bluetooth/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->setSong(Ljava/lang/String;)V

    .line 247
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->g:Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->setSinger(Ljava/lang/String;)V

    goto :goto_1

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->g:Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    sget-object v1, Lcom/xiaopeng/musicradio/model/bluetooth/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->setSinger(Ljava/lang/String;)V

    .line 252
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->g:Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    long-to-int p1, v1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->setDuration(I)V

    .line 253
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->g:Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->setLrcContent(Ljava/lang/String;)V

    .line 254
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->g:Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->refreshUuid()V

    .line 256
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->H()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 257
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->u()V

    .line 258
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->getPosition()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->a(J)V

    .line 259
    new-instance p1, Lasa$h;

    invoke-direct {p1}, Lasa$h;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 180
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->K()V

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->o()V

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 190
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/v;->b()V

    .line 192
    :cond_2
    new-instance v0, Lasa$f;

    invoke-direct {v0, p1}, Lasa$f;-><init>(Z)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 408
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    invoke-static {}, Lbsd;->a()V

    return-void

    .line 412
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->isNotPlayable()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 415
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->F()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 416
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->v:Layj;

    if-nez v0, :cond_2

    return-void

    .line 419
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->G()V

    .line 420
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->C()V

    goto :goto_0

    .line 422
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e:Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

    if-nez v0, :cond_4

    return-void

    .line 425
    :cond_4
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->G()V

    .line 426
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e:Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;->g()Z

    :goto_0
    return-void
.end method

.method public b(I)V
    .locals 3

    .line 273
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->H()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 274
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e(I)V

    .line 275
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->I()V

    if-ne p1, v1, :cond_1

    .line 276
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->s()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    invoke-static {}, Laqq;->a()Laqq;

    move-result-object v0

    invoke-virtual {v0}, Laqq;->c()Laqs;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    .line 278
    invoke-interface {v0}, Laqs;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unmute focus:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Layg;->a()Layg;

    move-result-object v2

    invoke-virtual {v2}, Layg;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BluetoothMusicModel"

    invoke-static {v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Layg;->a()Layg;

    move-result-object v2

    invoke-virtual {v2}, Layg;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->o()V

    :cond_1
    if-ne p1, v1, :cond_2

    .line 288
    new-instance p1, Lasa$h;

    invoke-direct {p1}, Lasa$h;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 290
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->K()V

    :goto_0
    return-void
.end method

.method public b(Z)Z
    .locals 2

    .line 533
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e:Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 536
    :cond_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;->a(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isInCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMusicModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p1
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(I)V
    .locals 3

    const-string v0, "BluetoothMusicModel"

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 1167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAospPlayStateChanged PLAYING state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAospPlayStateChanged PAUSED state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1171
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAospPlayStateChanged OTHER state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic d()Lcom/xiaopeng/musicradio/bean/BaseInfo;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->m()Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    move-result-object v0

    return-object v0
.end method

.method public dealAudioPos(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 775
    iget v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->r:I

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;->c()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 778
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;->c()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->r:I

    .line 779
    iget p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->r:I

    rem-int/lit8 p1, p1, 0x5

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->getPlayState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 780
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e:Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

    if-eqz p1, :cond_1

    .line 781
    invoke-interface {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;->h()V

    :cond_1
    return-void
.end method

.method public dispatchInfoEvent()V
    .locals 0

    .line 1223
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->u()V

    return-void
.end method

.method public e()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public f()V
    .locals 0

    .line 899
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->pauseByLogic()V

    return-void
.end method

.method public g()V
    .locals 1

    .line 904
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->F()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 905
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->rebootPlay(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 907
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->rebootPlay(Z)V

    :goto_0
    return-void
.end method

.method public getDuration()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPlayState()I
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e:Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 447
    :cond_0
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;->i()I

    move-result v0

    return v0
.end method

.method public getPosition()I
    .locals 3

    .line 309
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getSecondPosition()I
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->g:Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getDuration()I

    move-result v0

    return v0
.end method

.method public getStartPosition()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasNextSource()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public isNotPlayable()Z
    .locals 1

    const/4 v0, 0x1

    .line 654
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->d(Z)Z

    move-result v0

    return v0
.end method

.method public j()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->m:Ljava/util/Map;

    return-object v0
.end method

.method public m()Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->g:Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    return-object v0
.end method

.method public n()V
    .locals 3

    .line 502
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "mute"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v1, "BluetoothMusicModel"

    const-string v2, "mu_te"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    .line 503
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->f(I)V

    return-void
.end method

.method public o()V
    .locals 3

    .line 507
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "unmute"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v1, "BluetoothMusicModel"

    const-string v2, "unmu_te: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 508
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->f(I)V

    return-void
.end method

.method public onConfigEvent(Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/ConfigurationChangeEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1011
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/ConfigurationChangeEvent;->getChangeList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1012
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/ConfigurationChangeEvent;->getChangeList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/IConfigurationData;

    .line 1013
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/IConfigurationData;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "white_list_singers"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "BluetoothMusicModel"

    const-string v0, "onConfigEvent ============ "

    .line 1014
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->S()V

    :cond_1
    return-void
.end method

.method public onMediaCenterBtStatusChanged(Lasa$e;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 788
    invoke-virtual {p1}, Lasa$e;->a()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->H()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 789
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 790
    invoke-static {}, Layg;->a()Layg;

    move-result-object v0

    invoke-virtual {v0}, Layg;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 791
    invoke-static {}, Laqq;->a()Laqq;

    move-result-object p1

    invoke-virtual {p1}, Laqq;->c()Laqs;

    move-result-object p1

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNMUTE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Layg;->a()Layg;

    move-result-object v1

    invoke-virtual {v1}, Layg;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMusicModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 793
    invoke-interface {p1}, Laqs;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 794
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->F()Z

    move-result p1

    if-nez p1, :cond_1

    .line 795
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->o()V

    :cond_1
    return-void
.end method

.method public onPowerStateChange(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN_ORDERED:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 759
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;->a()Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->i:Z

    .line 760
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPowerStateChange mIsPowerOn: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->i:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothMusicModel"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 761
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->H()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 762
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->i:Z

    if-eqz p1, :cond_0

    .line 763
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->o()V

    goto :goto_0

    .line 765
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->F()Z

    move-result p1

    if-nez p1, :cond_1

    .line 766
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->n()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onUserLogout(Lasj$ag;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN_ORDERED:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 804
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->m:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 805
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 807
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->g:Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    if-eqz p1, :cond_1

    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object p1

    invoke-virtual {p1}, Lbdm;->g()Z

    move-result p1

    if-nez p1, :cond_1

    .line 808
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->g:Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->setLogo(Ljava/lang/String;)V

    .line 809
    new-instance p1, Lasj$a;

    invoke-direct {p1}, Lasj$a;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public p()Z
    .locals 3

    .line 512
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e:Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 513
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e:Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    const-string v0, "BluetoothMusicModel"

    const-string v2, "isBtMusicConnect: mService is null"

    .line 515
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public pause()V
    .locals 2

    const-string v0, "BluetoothMusicModel"

    const-string v1, "pause invoke..."

    .line 376
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->pauseByLogic()V

    .line 378
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bn;->a()V

    return-void
.end method

.method public pauseByLogic()V
    .locals 2

    .line 1074
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1075
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1076
    invoke-static {}, Lbsd;->a()V

    return-void

    .line 1081
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->F()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1082
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->v:Layj;

    if-nez v0, :cond_1

    return-void

    .line 1085
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->A()V

    goto :goto_0

    .line 1088
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e:Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

    if-nez v0, :cond_3

    return-void

    :cond_3
    const-string v1, "bt_play"

    .line 1091
    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;->a(Ljava/lang/String;)V

    .line 1092
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e:Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;->k_()Z

    .line 1094
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e:Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;->i()I

    return-void
.end method

.method public play()V
    .locals 3

    .line 319
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "play"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v2, "BluetoothMusicModel"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 320
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->G()V

    .line 321
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->y()V

    return-void
.end method

.method public playNext(I)I
    .locals 0

    .line 326
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->play()V

    const/4 p1, 0x0

    return p1
.end method

.method public playSub(I)V
    .locals 0

    .line 332
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->play()V

    return-void
.end method

.method public q()Z
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e:Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

    if-eqz v0, :cond_0

    .line 522
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;->b()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public r()Z
    .locals 3

    .line 529
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->getPlayState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->getPlayState()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public rebootPlay(Z)V
    .locals 4

    .line 550
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Laqr;->b(I)V

    .line 551
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->u()V

    .line 553
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/g;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/g;->g()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    .line 554
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->J()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-static {}, Lask;->a()Lask;

    move-result-object v0

    invoke-virtual {v0}, Lask;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 555
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rebootPlay isBtMusicConnect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->p()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",replay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",shouldPlay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",getSavedPlayState:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->J()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",isNeedResume:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-static {}, Lask;->a()Lask;

    move-result-object p1

    invoke-virtual {p1}, Lask;->i()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",isSilenceMode:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/g;->b()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",isMediaVolumeZero:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/g;->g()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BluetoothMusicModel"

    .line 555
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 557
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->p()Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 558
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "rebootPlay() called\uff0cbtStatus\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->getInstance()Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->getBtStatus()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-static {}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->getInstance()Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->getBtStatus()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 560
    new-instance p1, Lcom/xiaopeng/musicradio/model/bluetooth/a$2;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a$2;-><init>(Lcom/xiaopeng/musicradio/model/bluetooth/a;)V

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lbql;->b(Ljava/lang/Runnable;J)V

    goto :goto_1

    :cond_2
    const-string p1, "rebootPlay() called playByLogic"

    .line 569
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->y()V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 573
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "rebootPlay() called: will delay execute, time "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->h:J

    :cond_4
    :goto_1
    return-void
.end method

.method public register()V
    .locals 2

    .line 671
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 672
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->d:Lcom/xiaopeng/musicradio/model/bluetooth/c;

    if-eqz v0, :cond_0

    .line 673
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/c;->a()V

    .line 675
    :cond_0
    invoke-static {}, Lask;->a()Lask;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->q:Lask$a;

    invoke-virtual {v0, p0, v1}, Lask;->a(Laqt;Lask$a;)V

    .line 676
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->o()V

    return-void
.end method

.method public s()Z
    .locals 1

    const/4 v0, 0x0

    .line 544
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->b(Z)Z

    move-result v0

    return v0
.end method

.method public seekTo(I)V
    .locals 0

    return-void
.end method

.method public setVolume(F)Z
    .locals 2

    const/4 v0, 0x0

    .line 482
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->d(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 486
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->b(F)V

    const/4 p1, 0x1

    return p1
.end method

.method public stop()V
    .locals 1

    .line 979
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e:Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

    if-eqz v0, :cond_0

    .line 980
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;->k_()Z

    :cond_0
    return-void
.end method

.method public supportRandom()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public t()V
    .locals 3

    .line 595
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "BluetoothMusicModel"

    const-string v2, "changeToBluetooth"

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 596
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->H()Z

    move-result v0

    if-nez v0, :cond_0

    .line 597
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Laqr;->b(I)V

    .line 598
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->u()V

    .line 599
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->I()V

    .line 601
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->getPlayState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e(I)V

    .line 603
    new-instance v0, Lasa$h;

    invoke-direct {v0}, Lasa$h;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 605
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->o()V

    .line 606
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e:Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

    if-eqz v0, :cond_1

    .line 607
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;->h()V

    :cond_1
    return-void
.end method

.method public u()V
    .locals 2

    .line 616
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public unregister()V
    .locals 2

    .line 681
    invoke-static {}, Lask;->a()Lask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lask;->a(Laqt;)V

    .line 682
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->n()V

    .line 683
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e:Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 684
    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;->b(I)V

    .line 686
    :cond_0
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->b(Ljava/lang/Object;)V

    .line 687
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->d:Lcom/xiaopeng/musicradio/model/bluetooth/c;

    if-eqz v0, :cond_1

    .line 688
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/c;->b()V

    :cond_1
    return-void
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .line 746
    sget-object v0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .line 750
    sget-object v0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public x()Z
    .locals 1

    .line 1046
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e:Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

    if-eqz v0, :cond_0

    .line 1047
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;->j()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public y()V
    .locals 1

    const/4 v0, 0x1

    .line 1099
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->c(Z)V

    return-void
.end method

.method public z()V
    .locals 2

    .line 1176
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->u:Layj$c;

    if-eqz v0, :cond_0

    .line 1177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playAosp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->u:Layj$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMusicModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1179
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->v:Layj;

    invoke-virtual {v0}, Layj;->n()Layj$c;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->u:Layj$c;

    .line 1181
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a;->u:Layj$c;

    if-eqz v0, :cond_1

    .line 1182
    invoke-virtual {v0}, Layj$c;->a()V

    :cond_1
    return-void
.end method
