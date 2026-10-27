.class Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout$1;
.super Ljava/lang/Object;
.source "MsRadioTitleLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout$1;->a:Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "MsRadioTitleLayout"

    const-string v1, "onClick: 1"

    .line 70
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecute(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result p1

    invoke-static {p1}, Lbjl;->i(I)V

    .line 73
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout$1;->a:Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout;->access$002(Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout;Z)Z

    .line 74
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout$1;->a:Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout;->access$100(Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->h()V

    .line 75
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout$1;->a:Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout;->access$200(Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout;)Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->updateVuiScene()V

    :cond_0
    return-void
.end method
