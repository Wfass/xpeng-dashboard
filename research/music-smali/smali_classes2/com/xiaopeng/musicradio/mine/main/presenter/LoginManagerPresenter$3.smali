.class Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter$3;
.super Ljava/lang/Object;
.source "LoginManagerPresenter.java"

# interfaces
.implements Lbeo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->h()V
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

    .line 406
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter$3;->a:Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "LoginManagerPresenter"

    const-string v1, "onLogout"

    .line 409
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
