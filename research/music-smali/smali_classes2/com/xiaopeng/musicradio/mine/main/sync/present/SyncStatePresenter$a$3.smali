.class Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a$3;
.super Ljava/lang/Object;
.source "SyncStatePresenter.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a$3;->a:Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 1

    .line 231
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a$3;->a:Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;->a(Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    .line 232
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a$3;->a:Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;->c(Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 228
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a$3;->a(Ljava/lang/Long;)V

    return-void
.end method
