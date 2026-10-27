.class Lbnq$1;
.super Ljava/lang/Object;
.source "SearchNetRadioAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbnq;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

.field final synthetic b:Lbnq;


# direct methods
.method constructor <init>(Lbnq;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lbnq$1;->b:Lbnq;

    iput-object p2, p0, Lbnq$1;->a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 71
    iget-object p1, p0, Lbnq$1;->b:Lbnq;

    iget-object p1, p1, Lbnq;->h:Lbnn;

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lbnq$1;->b:Lbnq;

    iget-object p1, p1, Lbnq;->h:Lbnn;

    iget-object v0, p0, Lbnq$1;->a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-interface {p1, v0}, Lbnn;->playNetRadio(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    .line 73
    iget-object p1, p0, Lbnq$1;->a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbom;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
