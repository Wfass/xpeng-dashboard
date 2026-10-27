.class Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$2;
.super Ljava/lang/Object;
.source "NrAllRadioActivity.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$c;


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

    .line 127
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$2;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$2;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->access$000(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;)Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/a;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 131
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$f;->c()I

    move-result p1

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$2;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->access$100(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;)Lcom/xiaopeng/xui/widget/XViewPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XViewPager;->setCurrentItem(I)V

    :cond_0
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 0

    return-void
.end method
