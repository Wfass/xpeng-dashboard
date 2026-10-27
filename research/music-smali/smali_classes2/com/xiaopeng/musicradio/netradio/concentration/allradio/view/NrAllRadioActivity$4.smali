.class Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$4;
.super Ljava/lang/Object;
.source "NrAllRadioActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$4;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 167
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$4;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->access$500(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;->c()V

    return-void
.end method
