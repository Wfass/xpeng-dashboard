.class Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter$6;
.super Ljava/lang/Object;
.source "LoginManagerPresenter.java"

# interfaces
.implements Lbdp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;)V
    .locals 0

    .line 477
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter$6;->a:Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    const-string p1, "LoginManagerPresenter"

    const-string v0, "logoutXmly:onLogout"

    .line 481
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
