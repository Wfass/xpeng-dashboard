.class Lcom/xiaopeng/musicradio/account/qlogin/e$c$1;
.super Ljava/lang/Object;
.source "QLoginFlowDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/account/qlogin/e$c;->onDismiss(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/account/qlogin/e;

.field final synthetic b:Lcom/xiaopeng/musicradio/account/qlogin/e$c;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/account/qlogin/e$c;Lcom/xiaopeng/musicradio/account/qlogin/e;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/e$c$1;->b:Lcom/xiaopeng/musicradio/account/qlogin/e$c;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/account/qlogin/e$c$1;->a:Lcom/xiaopeng/musicradio/account/qlogin/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/e$c$1;->a:Lcom/xiaopeng/musicradio/account/qlogin/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/account/qlogin/e;->a(Lcom/xiaopeng/musicradio/account/qlogin/e;Lcom/xiaopeng/musicradio/account/qlogin/h;)Lcom/xiaopeng/musicradio/account/qlogin/h;

    return-void
.end method
