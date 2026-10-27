.class Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5;
.super Ljava/lang/Object;
.source "NrAllRadioActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->getData(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5;->b:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5;->b:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->access$600(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 211
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;

    .line 213
    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5;->b:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->access$600(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5;->b:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->access$800(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5;->b:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;

    invoke-static {v3, v1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->access$700(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5$1;-><init>(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method
