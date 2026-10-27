.class Lcom/xiaopeng/musicradio/model/dui/e$14;
.super Ljava/lang/Object;
.source "DuiMusicMediaModel.java"

# interfaces
.implements Lbdm$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/dui/e;->c(Ljava/lang/String;Lio/reactivex/disposables/CompositeDisposable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;

.field final synthetic b:I

.field final synthetic c:Lio/reactivex/disposables/CompositeDisposable;

.field final synthetic d:Lcom/xiaopeng/musicradio/model/dui/e;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/dui/e;Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;ILio/reactivex/disposables/CompositeDisposable;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/e$14;->d:Lcom/xiaopeng/musicradio/model/dui/e;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/model/dui/e$14;->a:Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;

    iput p3, p0, Lcom/xiaopeng/musicradio/model/dui/e$14;->b:I

    iput-object p4, p0, Lcom/xiaopeng/musicradio/model/dui/e$14;->c:Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "DuiMusicMediaModel"

    const-string v1, "onSearchListPlay:onMusicAuthFail"

    .line 569
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)Z
    .locals 3

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSearchListPlay:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DuiMusicMediaModel"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 559
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/e$14;->a:Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getListed()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 560
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/e$14;->d:Lcom/xiaopeng/musicradio/model/dui/e;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/e$14;->a:Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/model/dui/e;->a(Lcom/xiaopeng/musicradio/model/dui/e;Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;)V

    goto :goto_0

    .line 562
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/e$14;->d:Lcom/xiaopeng/musicradio/model/dui/e;

    iget v0, p0, Lcom/xiaopeng/musicradio/model/dui/e$14;->b:I

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/dui/e$14;->a:Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/dui/e$14;->c:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {p1, v0, v1, v2}, Lcom/xiaopeng/musicradio/model/dui/e;->a(Lcom/xiaopeng/musicradio/model/dui/e;ILcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;Lio/reactivex/disposables/CompositeDisposable;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
