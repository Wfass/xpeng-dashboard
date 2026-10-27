.class public Lcom/xiaopeng/devtools/view/factorytest/audio/AudioTestActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "AudioTestActivity.java"


# instance fields
.field Gn:Landroid/widget/TextView;

.field Go:Landroid/support/v7/widget/RecyclerView;

.field private Gp:Lcom/xiaopeng/devtools/view/factorytest/audio/a;

.field private Gq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/AudioTestActivity;->Gn:Landroid/widget/TextView;

    .line 24
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/AudioTestActivity;->Go:Landroid/support/v7/widget/RecyclerView;

    .line 25
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/AudioTestActivity;->Gp:Lcom/xiaopeng/devtools/view/factorytest/audio/a;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/AudioTestActivity;->Gq:Ljava/util/List;

    return-void
.end method

.method private dI()V
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/xiaopeng/devtools/utils/g;->V(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/xptestmusic/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/AudioTestActivity;->mPath:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/AudioTestActivity;->mPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/g;->cy(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/AudioTestActivity;->Gq:Ljava/util/List;

    .line 61
    return-void
.end method


# virtual methods
.method public fd()V
    .locals 1

    .line 36
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 37
    const v0, 0x7f0c0024

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/audio/AudioTestActivity;->setContentView(I)V

    .line 38
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/audio/AudioTestActivity;->dI()V

    .line 39
    return-void
.end method

.method public fe()V
    .locals 1

    .line 43
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fe()V

    .line 44
    const v0, 0x7f09043c

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/audio/AudioTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/AudioTestActivity;->Gn:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f09030b

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/audio/AudioTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/AudioTestActivity;->Go:Landroid/support/v7/widget/RecyclerView;

    .line 46
    return-void
.end method

.method public ff()V
    .locals 0

    .line 65
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->ff()V

    .line 66
    return-void
.end method

.method public lJ()V
    .locals 4

    .line 50
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->lJ()V

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/AudioTestActivity;->Gn:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/AudioTestActivity;->Gq:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f1003c3

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/devtools/view/factorytest/audio/AudioTestActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/audio/a;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/AudioTestActivity;->mPath:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/devtools/view/factorytest/audio/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/AudioTestActivity;->Gp:Lcom/xiaopeng/devtools/view/factorytest/audio/a;

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/AudioTestActivity;->Gp:Lcom/xiaopeng/devtools/view/factorytest/audio/a;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/AudioTestActivity;->Gq:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/audio/a;->x(Ljava/util/List;)V

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/AudioTestActivity;->Go:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/AudioTestActivity;->Go:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/AudioTestActivity;->Gp:Lcom/xiaopeng/devtools/view/factorytest/audio/a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 56
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 75
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onDestroy()V

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/AudioTestActivity;->Gp:Lcom/xiaopeng/devtools/view/factorytest/audio/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/view/factorytest/audio/a;->stopPlay()V

    .line 77
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 70
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onResume()V

    .line 71
    return-void
.end method
