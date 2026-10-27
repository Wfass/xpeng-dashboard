.class Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter$1;
.super Ljava/lang/Object;
.source "NrAllRadioPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;->onCreate(Landroidx/lifecycle/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;->c()V

    return-void
.end method
