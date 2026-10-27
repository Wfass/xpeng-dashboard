.class public final synthetic Lcom/xiaopeng/xvs/xid/auth/-$$Lambda$OAuthContextWrapper$BoSKu2xCrD397tgMkQGnx7pl250;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/xvs/xid/auth/OAuthContextWrapper;

.field public final synthetic f$1:Lcom/xiaopeng/xvs/xid/base/ICallback;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xvs/xid/auth/OAuthContextWrapper;Lcom/xiaopeng/xvs/xid/base/ICallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xvs/xid/auth/-$$Lambda$OAuthContextWrapper$BoSKu2xCrD397tgMkQGnx7pl250;->f$0:Lcom/xiaopeng/xvs/xid/auth/OAuthContextWrapper;

    iput-object p2, p0, Lcom/xiaopeng/xvs/xid/auth/-$$Lambda$OAuthContextWrapper$BoSKu2xCrD397tgMkQGnx7pl250;->f$1:Lcom/xiaopeng/xvs/xid/base/ICallback;

    return-void
.end method


# virtual methods
.method public final run(Landroid/accounts/AccountManagerFuture;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/auth/-$$Lambda$OAuthContextWrapper$BoSKu2xCrD397tgMkQGnx7pl250;->f$0:Lcom/xiaopeng/xvs/xid/auth/OAuthContextWrapper;

    iget-object v1, p0, Lcom/xiaopeng/xvs/xid/auth/-$$Lambda$OAuthContextWrapper$BoSKu2xCrD397tgMkQGnx7pl250;->f$1:Lcom/xiaopeng/xvs/xid/base/ICallback;

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xvs/xid/auth/OAuthContextWrapper;->lambda$getAuthToken$0$OAuthContextWrapper(Lcom/xiaopeng/xvs/xid/base/ICallback;Landroid/accounts/AccountManagerFuture;)V

    return-void
.end method
