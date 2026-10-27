.class Lcom/xiaopeng/musicradio/account/qlogin/h$a$2;
.super Ljava/lang/Object;
.source "QrCodePresenter.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/account/qlogin/h$a;->f()V
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
.field final synthetic a:Lcom/xiaopeng/musicradio/account/qlogin/h$a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/account/qlogin/h$a;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a$2;->a:Lcom/xiaopeng/musicradio/account/qlogin/h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 1

    .line 323
    iget-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a$2;->a:Lcom/xiaopeng/musicradio/account/qlogin/h$a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->a(Lcom/xiaopeng/musicradio/account/qlogin/h$a;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    .line 324
    iget-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a$2;->a:Lcom/xiaopeng/musicradio/account/qlogin/h$a;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->e(Lcom/xiaopeng/musicradio/account/qlogin/h$a;)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 320
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/account/qlogin/h$a$2;->a(Ljava/lang/Long;)V

    return-void
.end method
