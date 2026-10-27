.class Lcom/xiaopeng/devtools/view/oled/OledActivity$1;
.super Landroid/os/Handler;
.source "OledActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/oled/OledActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic RG:Lcom/xiaopeng/devtools/view/oled/OledActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/oled/OledActivity;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity$1;->RG:Lcom/xiaopeng/devtools/view/oled/OledActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 61
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 62
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity$1;->RG:Lcom/xiaopeng/devtools/view/oled/OledActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/oled/OledActivity;->a(Lcom/xiaopeng/devtools/view/oled/OledActivity;)I

    .line 66
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity$1;->RG:Lcom/xiaopeng/devtools/view/oled/OledActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/oled/OledActivity;->b(Lcom/xiaopeng/devtools/view/oled/OledActivity;)I

    move-result p1

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity$1;->RG:Lcom/xiaopeng/devtools/view/oled/OledActivity;

    invoke-static {v1}, Lcom/xiaopeng/devtools/view/oled/OledActivity;->c(Lcom/xiaopeng/devtools/view/oled/OledActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 67
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity$1;->RG:Lcom/xiaopeng/devtools/view/oled/OledActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/oled/OledActivity;->c(Lcom/xiaopeng/devtools/view/oled/OledActivity;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity$1;->RG:Lcom/xiaopeng/devtools/view/oled/OledActivity;

    invoke-static {v1}, Lcom/xiaopeng/devtools/view/oled/OledActivity;->b(Lcom/xiaopeng/devtools/view/oled/OledActivity;)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/devtools/bean/oled/CustomOledMusicBook;

    .line 69
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity$1;->RG:Lcom/xiaopeng/devtools/view/oled/OledActivity;

    invoke-static {v1}, Lcom/xiaopeng/devtools/view/oled/OledActivity;->d(Lcom/xiaopeng/devtools/view/oled/OledActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/oled/CustomOledMusicBook;->getNote()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    .line 70
    iget-object v2, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity$1;->RG:Lcom/xiaopeng/devtools/view/oled/OledActivity;

    invoke-static {v2}, Lcom/xiaopeng/devtools/view/oled/OledActivity;->e(Lcom/xiaopeng/devtools/view/oled/OledActivity;)Lcom/xiaopeng/devtools/presenter/oled/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaopeng/devtools/presenter/oled/c;->a(Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;)V

    .line 71
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity$1;->RG:Lcom/xiaopeng/devtools/view/oled/OledActivity;

    invoke-static {v1}, Lcom/xiaopeng/devtools/view/oled/OledActivity;->f(Lcom/xiaopeng/devtools/view/oled/OledActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/oled/CustomOledMusicBook;->getDuration()I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 72
    nop

    .line 78
    :cond_1
    :goto_0
    return-void
.end method
