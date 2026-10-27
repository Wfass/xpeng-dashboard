.class Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioSmallPlayerSubViewCreator$1;
.super Ljava/lang/Object;
.source "NetRadioSmallPlayerSubViewCreator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioSmallPlayerSubViewCreator;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioSmallPlayerSubViewCreator;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioSmallPlayerSubViewCreator;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioSmallPlayerSubViewCreator$1;->a:Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioSmallPlayerSubViewCreator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 55
    sget p1, Lbuc$d;->image_love:I

    const/16 v0, 0x3e8

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecuteLong(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioSmallPlayerSubViewCreator$1;->a:Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioSmallPlayerSubViewCreator;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioSmallPlayerSubViewCreator;->access$000(Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioSmallPlayerSubViewCreator;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioSmallPlayerSubViewPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioSmallPlayerSubViewPresenter;->c()V

    :cond_0
    return-void
.end method
