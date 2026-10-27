.class Lcom/xiaopeng/musicradio/model/dui/e$11;
.super Ljava/lang/Object;
.source "DuiMusicMediaModel.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/dui/e;->b(Ljava/lang/String;Lio/reactivex/disposables/CompositeDisposable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/xiaopeng/musicradio/model/dui/MusicListBean;",
        "Lio/reactivex/ObservableSource<",
        "Lcom/xiaopeng/musicradio/bean/dui/DuiMusicBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/dui/e;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/dui/e;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/e$11;->a:Lcom/xiaopeng/musicradio/model/dui/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/model/dui/MusicListBean;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/model/dui/MusicListBean;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "Lcom/xiaopeng/musicradio/bean/dui/DuiMusicBean;",
            ">;"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/e$11;->a:Lcom/xiaopeng/musicradio/model/dui/e;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/model/dui/e;->a(Lcom/xiaopeng/musicradio/model/dui/e;Lcom/xiaopeng/musicradio/model/dui/MusicListBean;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 303
    check-cast p1, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/model/dui/e$11;->a(Lcom/xiaopeng/musicradio/model/dui/MusicListBean;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
