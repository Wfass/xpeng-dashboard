.class public Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelfAdapter;
.super Landroid/widget/BaseAdapter;
.source "ScreenSelfAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelfAdapter$a;
    }
.end annotation


# instance fields
.field private Kn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelfAdapter;->Kn:Ljava/util/ArrayList;

    .line 24
    if-eqz p1, :cond_0

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelfAdapter;->Kn:Ljava/util/ArrayList;

    .line 27
    :cond_0
    return-void
.end method


# virtual methods
.method public e(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelfAdapter;->Kn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelfAdapter;->Kn:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 32
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelfAdapter;->notifyDataSetChanged()V

    .line 33
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelfAdapter;->Kn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 47
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 53
    if-nez p2, :cond_0

    .line 54
    new-instance p2, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelfAdapter$a;

    invoke-direct {p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelfAdapter$a;-><init>()V

    .line 55
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0c00c8

    const/4 v1, 0x0

    .line 56
    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 57
    const v0, 0x7f09041b

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelfAdapter$a;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelfAdapter$a;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 58
    const v0, 0x7f0903fd

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelfAdapter$a;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelfAdapter$a;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 59
    const v0, 0x7f0903fe

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelfAdapter$a;->c(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelfAdapter$a;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 60
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 62
    move-object p2, p3

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelfAdapter$a;

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelfAdapter;->Kn:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 64
    invoke-static {p3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelfAdapter$a;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelfAdapter$a;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-static {p3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelfAdapter$a;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelfAdapter$a;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-static {p3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelfAdapter$a;->c(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelfAdapter$a;)Landroid/widget/TextView;

    move-result-object p3

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    return-object p2
.end method
