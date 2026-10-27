.class Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout$3;
.super Ljava/lang/Object;
.source "NrAllRadioLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 155
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout$3;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecute(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 159
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout$3;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->change()V

    :cond_0
    return-void
.end method
