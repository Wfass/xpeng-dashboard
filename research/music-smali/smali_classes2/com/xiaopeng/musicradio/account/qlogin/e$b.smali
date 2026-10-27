.class public Lcom/xiaopeng/musicradio/account/qlogin/e$b;
.super Ljava/lang/Object;
.source "QLoginFlowDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/account/qlogin/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/account/qlogin/e;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/account/qlogin/e;)V
    .locals 0

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    iput-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/e$b;->a:Lcom/xiaopeng/musicradio/account/qlogin/e;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/account/qlogin/e$b;Lcom/xiaopeng/musicradio/account/qlogin/e;)Lcom/xiaopeng/musicradio/account/qlogin/e;
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/e$b;->a:Lcom/xiaopeng/musicradio/account/qlogin/e;

    return-object p1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 308
    iget-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/e$b;->a:Lcom/xiaopeng/musicradio/account/qlogin/e;

    const/4 v0, 0x0

    .line 309
    iput-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/e$b;->a:Lcom/xiaopeng/musicradio/account/qlogin/e;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "QLoginDialog"

    const-string v1, "onCancel: ============="

    .line 313
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-static {p1}, Lcom/xiaopeng/musicradio/account/qlogin/e;->c(Lcom/xiaopeng/musicradio/account/qlogin/e;)Lcom/xiaopeng/musicradio/account/qlogin/h;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 315
    invoke-static {p1}, Lcom/xiaopeng/musicradio/account/qlogin/e;->c(Lcom/xiaopeng/musicradio/account/qlogin/e;)Lcom/xiaopeng/musicradio/account/qlogin/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/account/qlogin/h;->d()V

    const/4 v0, 0x1

    .line 316
    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/account/qlogin/e;->a(Lcom/xiaopeng/musicradio/account/qlogin/e;Z)Z

    :cond_1
    return-void
.end method
