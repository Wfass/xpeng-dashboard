.class Lcom/xiaopeng/musicradio/CommonInit$1;
.super Ljava/lang/Object;
.source "CommonInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/CommonInit;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/CommonInit;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/CommonInit;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/xiaopeng/musicradio/CommonInit$1;->a:Lcom/xiaopeng/musicradio/CommonInit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/musicradio/CommonInit$1;->a:Lcom/xiaopeng/musicradio/CommonInit;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/CommonInit;->a(Lcom/xiaopeng/musicradio/CommonInit;)V

    .line 59
    invoke-static {}, Lbdx;->a()Lbdx;

    move-result-object v0

    invoke-virtual {v0}, Lbdx;->d()V

    .line 60
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbsj;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsj;

    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v0}, Lbsj;->loadUserInfo()V

    .line 64
    :cond_0
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->h()V

    .line 65
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbsh;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh;

    if-eqz v0, :cond_1

    .line 67
    invoke-interface {v0}, Lbsh;->loadUserInfo()V

    .line 69
    :cond_1
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbsg;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsg;

    if-eqz v0, :cond_2

    .line 71
    invoke-interface {v0}, Lbsg;->loadUserInfo()V

    .line 74
    :cond_2
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbsf;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsf;

    if-eqz v0, :cond_3

    .line 76
    invoke-interface {v0}, Lbsf;->loadUserInfo()V

    .line 78
    :cond_3
    new-instance v0, Lasj$j;

    invoke-direct {v0}, Lasj$j;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method
