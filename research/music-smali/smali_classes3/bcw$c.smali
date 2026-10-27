.class Lbcw$c;
.super Ljava/lang/Object;
.source "LiveDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbcw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field protected a:Z

.field protected b:Lbcw$b;


# direct methods
.method public constructor <init>(Lbcw$b;)V
    .locals 0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput-object p1, p0, Lbcw$c;->b:Lbcw$b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method protected a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 3

    .line 302
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bs;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbeu;->a(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bs;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbeu;->a(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lbcw$c$3;

    invoke-direct {v2, p0, p1}, Lbcw$c$3;-><init>(Lbcw$c;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->zip(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object v0

    .line 344
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lbcw$c$1;

    invoke-direct {v1, p0, p1}, Lbcw$c$1;-><init>(Lbcw$c;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    new-instance p1, Lbcw$c$2;

    invoke-direct {p1, p0}, Lbcw$c$2;-><init>(Lbcw$c;)V

    .line 345
    invoke-virtual {v0, v1, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 298
    iput-boolean v0, p0, Lbcw$c;->a:Z

    return-void
.end method
