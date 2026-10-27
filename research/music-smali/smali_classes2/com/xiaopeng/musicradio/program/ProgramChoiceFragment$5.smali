.class Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment$5;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "ProgramChoiceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->initMultiType()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment$5;->a:Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment$5;->a:Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->access$500(Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    if-gez p1, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment$5;->a:Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->access$500(Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 238
    instance-of p1, p1, Lbmk;

    if-eqz p1, :cond_1

    return v1

    .line 241
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment$5;->a:Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;

    iget p1, p1, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRankFullSpanCount:I

    return p1

    .line 235
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment$5;->a:Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;

    iget p1, p1, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRankFullSpanCount:I

    return p1
.end method
