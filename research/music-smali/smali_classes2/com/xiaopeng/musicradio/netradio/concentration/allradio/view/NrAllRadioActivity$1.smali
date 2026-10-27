.class Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$1;
.super Ljava/lang/Object;
.source "NrAllRadioActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->setView()V
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

    .line 114
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 117
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->getFragmentContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lbni;->a(Landroid/content/Context;)V

    return-void
.end method
