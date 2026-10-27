.class Lcom/xiaopeng/musicradio/commonui/adapter/g$a;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "RvDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/commonui/adapter/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/commonui/adapter/g;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TK;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/commonui/adapter/g;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TK;>;",
            "Ljava/util/List<",
            "TK;>;)V"
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g$a;->a:Lcom/xiaopeng/musicradio/commonui/adapter/g;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    .line 144
    iput-object p2, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g$a;->b:Ljava/util/List;

    .line 145
    iput-object p3, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g$a;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g$a;->c:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g$a;->a:Lcom/xiaopeng/musicradio/commonui/adapter/g;

    invoke-virtual {v2, v0, v1, p1, p2}, Lcom/xiaopeng/musicradio/commonui/adapter/g;->b(Ljava/lang/Object;Ljava/lang/Object;II)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public areItemsTheSame(II)Z
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g$a;->c:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g$a;->a:Lcom/xiaopeng/musicradio/commonui/adapter/g;

    invoke-virtual {v2, v0, v1, p1, p2}, Lcom/xiaopeng/musicradio/commonui/adapter/g;->a(Ljava/lang/Object;Ljava/lang/Object;II)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getChangePayload(II)Ljava/lang/Object;
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g$a;->c:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g$a;->a:Lcom/xiaopeng/musicradio/commonui/adapter/g;

    invoke-virtual {v2, v0, v1, p1, p2}, Lcom/xiaopeng/musicradio/commonui/adapter/g;->c(Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNewListSize()I
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g$a;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 161
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g$a;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 153
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
