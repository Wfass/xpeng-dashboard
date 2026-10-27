.class public Lcom/xiaopeng/musicradio/account/qlogin/e$c;
.super Ljava/lang/Object;
.source "QLoginFlowDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/account/qlogin/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/account/qlogin/e;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/account/qlogin/e;)V
    .locals 0

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    iput-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/e$c;->a:Lcom/xiaopeng/musicradio/account/qlogin/e;

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 330
    iget-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/e$c;->a:Lcom/xiaopeng/musicradio/account/qlogin/e;

    const/4 v0, 0x0

    .line 331
    iput-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/e$c;->a:Lcom/xiaopeng/musicradio/account/qlogin/e;

    if-nez p1, :cond_0

    return-void

    .line 335
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/musicradio/account/qlogin/e;->d(Lcom/xiaopeng/musicradio/account/qlogin/e;)Lcom/xiaopeng/musicradio/account/qlogin/e$b;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 336
    invoke-static {p1}, Lcom/xiaopeng/musicradio/account/qlogin/e;->d(Lcom/xiaopeng/musicradio/account/qlogin/e;)Lcom/xiaopeng/musicradio/account/qlogin/e$b;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/account/qlogin/e$b;->a(Lcom/xiaopeng/musicradio/account/qlogin/e$b;Lcom/xiaopeng/musicradio/account/qlogin/e;)Lcom/xiaopeng/musicradio/account/qlogin/e;

    .line 337
    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/account/qlogin/e;->a(Lcom/xiaopeng/musicradio/account/qlogin/e;Lcom/xiaopeng/musicradio/account/qlogin/e$b;)Lcom/xiaopeng/musicradio/account/qlogin/e$b;

    :cond_1
    const-string v0, "QLoginDialog"

    const-string v1, "onDismiss: ============="

    .line 339
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 340
    invoke-static {v0}, Lcom/xiaopeng/musicradio/account/qlogin/g;->a(Z)V

    .line 341
    invoke-static {p1}, Lcom/xiaopeng/musicradio/account/qlogin/e;->e(Lcom/xiaopeng/musicradio/account/qlogin/e;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/xiaopeng/musicradio/account/qlogin/e;->c(Lcom/xiaopeng/musicradio/account/qlogin/e;)Lcom/xiaopeng/musicradio/account/qlogin/h;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 342
    invoke-static {p1}, Lcom/xiaopeng/musicradio/account/qlogin/e;->c(Lcom/xiaopeng/musicradio/account/qlogin/e;)Lcom/xiaopeng/musicradio/account/qlogin/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/account/qlogin/h;->d()V

    .line 344
    :cond_2
    invoke-static {p1}, Lcom/xiaopeng/musicradio/account/qlogin/e;->c(Lcom/xiaopeng/musicradio/account/qlogin/e;)Lcom/xiaopeng/musicradio/account/qlogin/h;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 345
    invoke-static {p1}, Lcom/xiaopeng/musicradio/account/qlogin/e;->c(Lcom/xiaopeng/musicradio/account/qlogin/e;)Lcom/xiaopeng/musicradio/account/qlogin/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/account/qlogin/h;->a()V

    .line 347
    :cond_3
    new-instance v0, Lcom/xiaopeng/musicradio/account/qlogin/e$c$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/account/qlogin/e$c$1;-><init>(Lcom/xiaopeng/musicradio/account/qlogin/e$c;Lcom/xiaopeng/musicradio/account/qlogin/e;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method
