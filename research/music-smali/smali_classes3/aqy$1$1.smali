.class Laqy$1$1;
.super Ljava/lang/Object;
.source "VuiUpdateHandler.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laqy$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Laqy$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Laqy$1;


# direct methods
.method constructor <init>(Laqy$1;)V
    .locals 0

    .line 44
    iput-object p1, p0, Laqy$1$1;->a:Laqy$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Laqy$a;Laqy$a;)I
    .locals 2

    .line 47
    iget-object v0, p1, Laqy$a;->b:Landroid/view/View;

    instance-of v0, v0, Lcom/xiaopeng/xui/widget/XRecyclerView;

    if-nez v0, :cond_0

    iget-object v0, p2, Laqy$a;->b:Landroid/view/View;

    instance-of v0, v0, Lcom/xiaopeng/xui/widget/XRecyclerView;

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 50
    :cond_0
    iget-object v0, p1, Laqy$a;->b:Landroid/view/View;

    instance-of v0, v0, Lcom/xiaopeng/xui/widget/XRecyclerView;

    if-eqz v0, :cond_1

    iget-object v0, p2, Laqy$a;->b:Landroid/view/View;

    instance-of v0, v0, Lcom/xiaopeng/xui/widget/XRecyclerView;

    if-nez v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 54
    :cond_1
    iget-wide v0, p1, Laqy$a;->c:J

    iget-wide p1, p2, Laqy$a;->c:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 44
    check-cast p1, Laqy$a;

    check-cast p2, Laqy$a;

    invoke-virtual {p0, p1, p2}, Laqy$1$1;->a(Laqy$a;Laqy$a;)I

    move-result p1

    return p1
.end method
