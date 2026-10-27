.class Lcom/xiaopeng/musicradio/main/presenter/QQMainPresenter$1;
.super Ljava/lang/Object;
.source "QQMainPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/main/presenter/QQMainPresenter;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/main/presenter/QQMainPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/main/presenter/QQMainPresenter;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/xiaopeng/musicradio/main/presenter/QQMainPresenter$1;->a:Lcom/xiaopeng/musicradio/main/presenter/QQMainPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "QQMainPresenter"

    const-string v1, "playBt: "

    .line 127
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {}, Lbic;->a()Lbic;

    move-result-object v0

    invoke-virtual {v0}, Lbic;->o()V

    return-void
.end method
