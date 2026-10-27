.class Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter$1;
.super Ljava/lang/Object;
.source "NrLocationRadioPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean;

.field final synthetic b:Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter$1;->b:Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter$1;->a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter$1;->b:Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter$1;->a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;->a(Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean;)V

    return-void
.end method
