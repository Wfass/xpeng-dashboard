.class Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout$2;
.super Ljava/lang/Object;
.source "NrAllRadioLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout$2;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 0

    .line 149
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout$2;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mAdapter:Lbkd;

    invoke-virtual {p1}, Lbkd;->j()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    .line 150
    invoke-static {}, Lbke;->a()Lbke;

    move-result-object p2

    invoke-virtual {p2, p1}, Lbke;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    return-void
.end method
