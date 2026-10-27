.class Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout$2;
.super Ljava/lang/Object;
.source "NrCategoryOrAreaDetailLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout$2;->a:Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .line 151
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout$2;->a:Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->a(Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;)Lbkd;

    move-result-object p1

    invoke-virtual {p1}, Lbkd;->j()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 152
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 153
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    .line 154
    invoke-static {}, Lbke;->a()Lbke;

    move-result-object p2

    invoke-virtual {p2, p1}, Lbke;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    .line 155
    iget-object p2, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout$2;->a:Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->b(Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "2"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 156
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbkg;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
